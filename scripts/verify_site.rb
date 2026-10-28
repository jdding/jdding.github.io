# frozen_string_literal: true
# Run after Jekyll: bundle exec ruby scripts/verify_site.rb /path/to/_site
require 'yaml'
require 'json'
require 'date'
require 'uri'
require 'nokogiri'

ROOT = File.expand_path('..', __dir__)
SITE = File.expand_path(ARGV.fetch(0, '_site'))
failures = []
checks = 0
check = lambda do |condition, message|
  checks += 1
  failures << message unless condition
end
data = lambda { |name| YAML.load_file(File.join(ROOT, '_data', "#{name}.yml")) }
papers = data.call('publications').reject { |p| p['hidden'] }
by_id = papers.to_h { |p| [p['id'], p] }
programs = data.call('research_programs')
program_ids = programs.map { |p| p['id'] }
selected = %w[igpo-ai-search deltagate hpgr invariant-feature-learning rpe4rec pd-serve]
expected_date = lambda do |p|
  case p['status']
  when 'published' then (p['published_date'] || p['year']).to_s
  when 'preprint' then (p['preprint_date'] || p['year']).to_s
  end
end
html = lambda { |url| Nokogiri::HTML(File.read(File.join(SITE, url.sub(%r{^/}, ''), 'index.html'))) }
check.call(papers.map { |p| p['id'] }.uniq.size == papers.size, 'duplicate publication IDs')
check.call(papers.select { |p| p['selected'] }.map { |p| p['id'] }.sort == selected.sort, 'selected membership changed')
papers.each do |p|
  id = p['id']
  check.call(%w[accepted published preprint].include?(p['status']), "#{id}: invalid status")
  check.call(!p.key?('publication_date'), "#{id}: ambiguous legacy date")
  check.call(p['status'] == 'published' || !p['published_date'], "#{id}: unpublished work has a formal date")
  check.call(!p['program'] || program_ids.include?(p['program']), "#{id}: unknown program")
  %w[preprint_date acceptance_date published_date].each do |key|
    next unless p[key]
    begin
      Date.iso8601(p[key])
    rescue ArgumentError, TypeError
      check.call(false, "#{id}: invalid #{key}")
    end
  end
  (p['related_work'] || []).each do |r|
    check.call(by_id.key?(r['publication_id']) && r['publication_id'] != id && !r['relationship'].to_s.empty?, "#{id}: invalid related work")
  end
  (p['digest_sources'] || []).each do |source|
    check.call(source['url'].start_with?('https://') && !source['label'].to_s.empty?, "#{id}: invalid source")
  end
end
programs.each do |program|
  program['representative_publication_ids'].each do |id|
    p = by_id[id]
    check.call(p && p['program'] == program['id'], "#{id}: representative program mismatch")
    check.call(p && %w[problem mechanism evidence boundary].all? { |key| !p.dig('contribution', key).to_s.empty? }, "#{id}: incomplete contribution")
  end
end
data.call('open_source').each do |resource|
  p = by_id[resource['publication_id']]
  check.call(p && p['program'] == resource['program'], "#{resource['id']}: resource/program mismatch")
end
data.call('research_trajectory').each do |strand|
  check.call(strand['publication_ids'].all? { |id| by_id.key?(id) }, "#{strand['id']}: invalid trajectory references")
end
data.call('news').each do |event|
  p = by_id[event['publication_id']]
  field = { 'accepted' => 'acceptance_date', 'preprint' => 'preprint_date', 'published' => 'published_date' }[event['type']]
  check.call(p && field && p[field] == event['date'], "#{event['publication_id']}: event/date mismatch")
end

home = html.call('/')
list = html.call('/publications/')
graph = JSON.parse(File.read(File.join(SITE, 'api/knowledge-graph.json')))['@graph']
api_papers = JSON.parse(File.read(File.join(SITE, 'api/publications.json')))
check.call(api_papers == papers, 'publication API differs from source')
check.call(home.css('main').size == 1, 'homepage needs one main landmark')
check.call(home.at_css('.skip-links a')['href'] == '#research-navigation', 'skip link targets hidden navigation')
check.call(home.at_css('.hero-actions a[href="#research"]')['data-scroll-ignore'] != nil, 'research link must respect sticky-navigation offset')
check.call(home.css('.paper-card').size == 6, 'rendered selected cards changed')
check.call(home.css('.news-list li').size == 3, 'news should be compact')
check.call(home.css('.record-item').empty?, 'duplicated recent publication list returned')
section_ids = home.css('.homepage > section').map { |s| s['id'] }.compact
check.call(section_ids == %w[research selected updates trajectory connect], 'homepage reading order changed')
check.call(home.at_css('#recent-publications'), 'legacy recent-publications anchor missing')
check.call(list.css('[id^="publication-"]').size == papers.size, 'full list count mismatch')
check.call(list.css('.year-block > h2').size > 0, 'year headings missing')
papers.each do |p|
  id = p['id']
  doc = html.call(p['digest_url'])
  row = list.at_css("#publication-#{id}")
  article = doc.css('script[type="application/ld+json"]').map { |el| JSON.parse(el.text) }.find { |o| o['@type'] == 'ScholarlyArticle' }
  graph_paper = graph.find { |n| n['@id'] == "https://jdding.github.io/publication/#{id}" }
  citation = doc.at_css('meta[name="citation_publication_date"]')&.[]('content')
  micro = row.at_css('[itemprop="datePublished"]')&.[]('content')
  dates = [article['datePublished'], graph_paper['datePublished'], citation, micro]
  check.call(dates.all? { |date| date == expected_date.call(p) }, "#{id}: machine date disagreement #{dates.inspect}")
  check.call(article['creativeWorkStatus'] == p['status'] && graph_paper['creativeWorkStatus'] == p['status'], "#{id}: machine status mismatch")
  if p['status'] != 'published'
    status = p['status'] == 'accepted' ? 'Accepted' : 'Preprint'
    check.call(row.css('.publication-status').text.include?(status), "#{id}: list status absent")
    check.call(doc.css('.digest-kicker .publication-status').text.include?(status), "#{id}: digest status absent")
    topic = html.call("/topics/#{p['topic']}/")
    topic_row = topic.css('.record-item').find { |el| el.at_css('h3 a')&.[]('href') == p['digest_url'] }
    check.call(topic_row && topic_row.css('.publication-status').text.include?(status), "#{id}: topic status absent") unless p['topic_page'] == false
  end
  if p['program']
    check.call(doc.at_css(".digest-research-link a[href='/#program-#{p['program']}']"), "#{id}: digest program absent")
    check.call(graph_paper['about'].any? { |a| a['@id'].end_with?("#program-#{p['program']}") }, "#{id}: graph program absent")
  end
  first_heading = doc.at_css('.digest-main h2')&.text
  check.call(first_heading == (p['digest_blocks'] ? p['digest_blocks'].first['title'] : 'Bibliographic details'), "#{id}: content must precede bibliographic details")
  actions = doc.css('.hero-actions a').map { |a| a['href'] }
  check.call(actions.uniq == actions, "#{id}: duplicate resource links")
  check.call(doc.at_css('link[rel="canonical"]')['href'] == "https://jdding.github.io#{p['digest_url']}", "#{id}: canonical changed")
end
Dir.glob(File.join(SITE, '**/*.json')).each { |path| JSON.parse(File.read(path)) }
Dir.glob(File.join(SITE, '**/*.html')).each do |path|
  doc = Nokogiri::HTML(File.read(path))
  doc.css('script[type="application/ld+json"]').each { |s| JSON.parse(s.text) }
  ids = doc.css('[id]').map { |el| el['id'] }
  check.call(ids.uniq == ids, "#{path}: duplicate IDs")
  doc.css('a[href^="/"]').each do |link|
    uri = URI.parse(link['href']) rescue next
    target = File.join(SITE, URI.decode_www_form_component(uri.path))
    target = File.join(target, 'index.html') if File.directory?(target)
    check.call(File.file?(target), "#{path}: broken internal link #{link['href']}")
    if uri.fragment && File.file?(target) && File.extname(target) == '.html'
      target_doc = Nokogiri::HTML(File.read(target))
      check.call(target_doc.css('[id]').any? { |el| el['id'] == uri.fragment }, "#{path}: missing fragment #{link['href']}")
    end
  end
end
recruitment = data.call('internships')
collab = html.call('/collaborations/')
apply_link = collab.at_css('#research-intern a[href*="?subject="]')
mail = URI.parse(apply_link['href'])
fields = URI.decode_www_form(mail.opaque.split('?', 2).last).to_h
check.call(mail.scheme == 'mailto' && mail.opaque.split('?').first == recruitment['email'], 'application recipient mismatch')
check.call(fields['subject'] == recruitment['subject'] && fields['body'] == recruitment['email_body'], 'application template encoding mismatch')
resources = html.call('/resources/')
data.call('open_source').each do |resource|
  start = resource.fetch('onboarding')
  block = resources.at_css("##{resource['id']}")
  check.call(start['revision'].match?(/\A[0-9a-f]{40}\z/) && start['commands'].include?(start['revision']), 'quickstart revision not pinned')
  check.call(block.at_css('pre code').text == start['commands'], 'quickstart commands altered by rendering')
  paper = by_id.fetch(resource['publication_id'])
  check.call(html.call(paper['digest_url']).at_css("a[href='/resources/##{resource['id']}']"), 'digest quickstart entry absent')
end
check.call(JSON.parse(File.read(File.join(SITE, 'api/research.json')))['openSource'] == data.call('open_source'), 'resource API drift')
if failures.empty?
  puts "PASS: #{checks} assertions; #{papers.size} papers; 6 selected; status/date, relationships, content order, JSON and internal links."
else
  warn failures.join("\n")
  abort "FAIL: #{failures.size} of #{checks} assertions"
end
