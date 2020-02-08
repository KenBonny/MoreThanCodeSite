function fallback(text) {
    var textArea = document.createElement("textarea");
    textArea.value = text;
    document.body.appendChild(textArea);
    textArea.focus();
    textArea.select();
  
    try {
      document.execCommand('copy');
    } catch (err) {
      console.error('Fallback: Oops, unable to copy', err);
    }
  
    document.body.removeChild(textArea);
  }
  function clipboard(text) {
    if (!navigator.clipboard) {
      fallback(text);
      return;
    }
    navigator.clipboard.writeText(text).then(function() {}, 
    function(err) {
      console.error('Async: Could not copy text: ', err);
    });
  }
  $(function () {
    $('[data-toggle="tooltip"]').tooltip();
  })