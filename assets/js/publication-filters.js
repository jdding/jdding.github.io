const filters = document.querySelector('.publication-filters');
const { query, topic, code } = filters.elements;
const years = [...document.querySelectorAll('.year-block')].map(section => ({
  section,
  link: document.querySelector(`.year-navigation a[href="#${section.id}"]`),
  papers: [...section.querySelectorAll('.record-item')].map(row => {
    const venue = row.querySelector('[itemprop="isPartOf"]');
    return {
      row,
      text: `${row.querySelector('h3').textContent} ${row.querySelector('[itemprop="creditText"]').textContent} ${venue.textContent} ${venue.dataset.venueName}`.toLowerCase()
    };
  })
}));

function filterPublications() {
  const terms = query.value.toLowerCase().trim().split(/\s+/);
  let matches = 0;
  years.forEach(({ section, link, papers }) => {
    papers.forEach(({ row, text }) => {
      row.hidden = !terms.every(term => text.includes(term)) ||
        Boolean(topic.value && row.dataset.topic !== topic.value) ||
        (code.checked && !row.hasAttribute('data-with-code'));
      if (!row.hidden) matches++;
    });
    link.hidden = section.hidden = papers.every(({ row }) => row.hidden);
  });
  filters.querySelector('[role="status"]').textContent = matches === 0
    ? 'No publications match. Try changing or clearing the filters.'
    : `${matches} ${matches === 1 ? 'publication' : 'publications'}`;
}

filters.addEventListener('input', filterPublications);
filters.addEventListener('submit', event => event.preventDefault());
filters.addEventListener('reset', () => requestAnimationFrame(filterPublications));
function revealLinkedPaper() {
  const target = document.getElementById(location.hash.slice(1));
  if (target?.closest('[hidden]')) {
    filters.reset();
    filterPublications();
    target.scrollIntoView();
  }
}
window.addEventListener('hashchange', revealLinkedPaper);
filterPublications();
revealLinkedPaper();
filters.hidden = false;
