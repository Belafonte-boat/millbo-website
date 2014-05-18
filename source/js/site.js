//= require "vendor/jquery/jquery"
//= require "vendor/jquery.easing/js/jquery.easing.min"
//= require "vendor/jquery.scrollTo/jquery.scrollTo"
//= require "vendor/hypher/dist/jquery.hypher"
//= require "vendor/hyphenation-patterns/dist/browser/it"
//= require "vendor/headhesive.js/dist/headhesive.js"

    // Options
var options = {
    offset: 100,
    classes: {
                clone:   'banner--clone',
                stick:   'banner--stick',
                unstick: 'banner--unstick'
            },
    onStick: function() {
    	$("a.aboutus").click(function(e){
		e.preventDefault();
		$.scrollTo("#aboutus",{
	                offset: -100,
	                duration: 750
	            });
		})

		$("a.efree").click(function(e){
			e.preventDefault();
			$.scrollTo("#efree",{
		                offset: -100,
		                duration: 750
		            });
		})

		$("a.certificate").click(function(e){
			e.preventDefault();
			$.scrollTo("#certificate",{
		                offset: -100,
		                duration: 750
		            });
		})
		$("a.contactus").click(function(e){
			e.preventDefault();
			$.scrollTo("#contactus",{
		                offset: -100,
		                duration: 750
		            });
		})
    }
}

$("a.aboutus").click(function(e){
	e.preventDefault();
	$.scrollTo("#aboutus",{
                offset: -100,
                duration: 750
            });
})

$("a.efree").click(function(e){
	e.preventDefault();
	$.scrollTo("#efree",{
                offset: -100,
                duration: 750
            });
})

$("a.certificate").click(function(e){
	e.preventDefault();
	$.scrollTo("#certificate",{
                offset: -100,
                duration: 750
            });
})
$("a.contactus").click(function(e){
	e.preventDefault();
	$.scrollTo("#contactus",{
                offset: -100,
                duration: 750
            });
})

// Create a new instance of Headhesive and pass in some options
var banner = new Headhesive('.banner', options);
$(document).ready(function(){
    $('.hyphenate').hyphenate('it');

});




