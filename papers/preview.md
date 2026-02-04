---
layout: single
author_profile: true
title: "Paper Preview"
permalink: /papers/preview/
classes: wide
---

# Paper Preview

<iframe id="pdf-preview" width="100%" height="800px" style="border: none;">
</iframe>

<script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/3.4.120/pdf.min.js" integrity="sha512-V/9Y7pcXXYEHjyzyLUVZN7wGaw2Mo9tJCUFDJgUJBfhaGF80vbC6yFnVbx9x4PXaC6jZ0fl5QPSF0QJLpAwPw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script>
  document.addEventListener('DOMContentLoaded', function() {
    const urlParams = new URLSearchParams(window.location.search);
    const pdfUrl = urlParams.get('file');
    
    if(pdfUrl) {
      const iframe = document.getElementById('pdf-preview');
      iframe.src = `/assets/papers/${pdfUrl}`;
    } else {
      iframe.srcdoc = '<div style="display:flex;align-items:center;justify-content:center;height:800px;"><p>Select a paper to preview</p></div>';
    }
  });
</script>