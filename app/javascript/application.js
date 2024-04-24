// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// app/javascripts/application.js

// document.addEventListener("DOMContentLoaded", function() {
//   const menuButton = document.getElementById('user-menu-button');
//   const menu = document.getElementById('user-menu');

//   menuButton.addEventListener('click', () => {
//     const expanded = menuButton.getAttribute('aria-expanded') === 'true' || false;
//     menuButton.setAttribute('aria-expanded', String(!expanded));
//     menu.classList.toggle('hidden');
//   });

//   document.addEventListener('click', function(event) {
//     if (!menu.contains(event.target) && event.target !== menuButton) {
//       menu.classList.add('hidden');
//       menuButton.setAttribute('aria-expanded', 'false');
//     }
//   });
// });
