// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function() {
  $("#contactform").validate({
	errorElement:'div',
	rules: {
		"reset_password[name]":{
					                  required: true,
                        			character:true,
     					              maxlength:49
			},
		
		"reset_password[email]":{
						required:true,
						email:true
		},
		
		"reset_password[message]":{
						required:true,
							minlength:10,
						maxlength:499
		}
		},
	messages: {
		"reset_password[name]":{
			required: "Please enter name",
                        character: "Please enter only character",
			                  maxlength:jQuery.format("do not enter more than 50 charecter")
			},
		
		"reset_password[email]":{
						            required: "Please enter email address",
						            email: "Please enter valid email id"
						
		},
		"reset_password[message]":{
						            required: "Please enter message",
						            minlength:jQuery.format("Please enter at least 10 characters."),
						            maxlength:jQuery.format("Can not exceed 500 characters")
		}
		}
	});
});



$(document).ready(function() {
  $("#skillform").validate({
	errorElement:'div',
	rules: {
		"test_skills[name]":{
					                  required: true,
                        			character:true,
     					              maxlength:49
			},
		
		"test_skills[email]":{
						required:true,
						email:true
		},
		
		
		"test_skills[contact]":{
						required:true
		},
		
		"test_skills[answer]":{
						required:true
		}
		},
	messages: {
		"test_skills[name]":{
						required: "Please enter name",
                        character: "Please enter only character",
			                  maxlength:jQuery.format("do not enter more than 50 charecter")
			},
		
		"test_skills[email]":{
						            required: "Please enter email address",
						            email: "Please enter valid email id"
						
		},
		"test_skills[contact]":{
						            required: "Please enter contact number"
						
		},
		"test_skills[answer]":{
						            required: "Please enter answer"
		}
		}
	});
});
