//= require "vendor/jquery/jquery"
//= require "vendor/jquery.easing/js/jquery.easing.min"
//= require "vendor/jquery.scrollTo/jquery.scrollTo"
//= require "vendor/hypher/dist/jquery.hypher"
//= require "vendor/hyphenation-patterns/dist/browser/it"
//= require "vendor/headhesive.js/dist/headhesive.js"
//= require "vendor/jquery-html5-placeholder-shim-master/jquery.html5-placeholder-shim.js"
var pathname = window.location.pathname;
    // Options
var options = {
    offset: 0,
    classes: {
                clone:   'banner--clone',
                stick:   'banner--stick',
                unstick: 'banner--unstick'
            },
    onStick: function() {
    	$("a.aboutus").click(function(e){
		e.preventDefault();
		$.scrollTo("#aboutus",{
	                offset: -20,
	                duration: 750
	            });
		})

		$("a.efree").click(function(e){
			e.preventDefault();
			$.scrollTo("#efree",{
		                offset: -20,
		                duration: 750
		            });
		})

		$("a.certificate").click(function(e){
			e.preventDefault();
			$.scrollTo("#certificate",{
		                offset: -20,
		                duration: 750
		            });
		})
		$("a.contactus").click(function(e){
			e.preventDefault();
			$.scrollTo("#contactus",{
		                offset: -20,
		                duration: 750
		            });
		})
    }
}
if(pathname == "/" || pathname == "/it/"){
	$("a.aboutus").click(function(e){
		e.preventDefault();
		$.scrollTo("#aboutus",{
	                offset: -20,
	                duration: 750
	            });
	})

	$("a.efree").click(function(e){
		e.preventDefault();
		$.scrollTo("#efree",{
	                offset: -20,
	                duration: 750
	            });
	})
	$("a.products").click(function(e){
		e.preventDefault();
		
	})
	$("a.certificate").click(function(e){
		e.preventDefault();
		$.scrollTo("#certificate",{
	                offset: -20,
	                duration: 750
	            });
	})
	$("a.contactus").click(function(e){
		e.preventDefault();
		$.scrollTo("#contactus",{
	                offset: -20,
	                duration: 750
	            });
	})
}
// Create a new instance of Headhesive and pass in some options
var banner = new Headhesive('.banner', options);
$(document).ready(function(){
    $('.hyphenate').hyphenate('it');

});




