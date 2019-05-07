var $ = require('jquery');
window.$ = $;
require('bootstrap');

var passIcon = document.getElementById("password-icon");
var passwordField = document.getElementById("password");

passIcon.addEventListener("click", function () {
  if (passwordField.type === "password") {
    passwordField.type = "text";
    passIcon.querySelector("i").classList.remove("fa-eye-slash");
    passIcon.querySelector("i").classList.add("fa-eye");
  } else {
    passwordField.type = "password";
    passIcon.querySelector("i").classList.remove("fa-eye");
    passIcon.querySelector("i").classList.add("fa-eye-slash");
  }
});
