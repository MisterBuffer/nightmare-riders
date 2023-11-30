document.addEventListener('DOMContentLoaded', function() {
  document.getElementById('show_input').addEventListener('click', function() {
    var inputFields = document.getElementById('inputFields');
    inputFields.style.display = (inputFields.style.display === 'none') ? 'block' : 'none';
  });