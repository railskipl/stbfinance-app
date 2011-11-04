// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function () {
$("#contactform").validate({
debug: true,
rules: {
  "reset_password[name]": {required: true},
  "reset_password[email]": {required: true, email: true},
  "reset_password[message]": {required: true, minlength: 10}
}
});
});