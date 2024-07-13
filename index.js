document.addEventListener("DOMContentLoaded", function() {
    const yearEl = document.querySelector('#year');
    const year = new Date().getFullYear();
    yearEl.innerText = year;
});