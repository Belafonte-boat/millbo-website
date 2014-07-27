//= require "vendor/jquery/jquery"
//= require "vendor/jquery.easing/js/jquery.easing.min"
//= require "vendor/jquery.scrollTo/jquery.scrollTo"
//= require "footable/js/footable.js"

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

			$("a.certificate").click(function(e){
				e.preventDefault();
				$.scrollTo("#certificate",{
			                offset: -20,
			                duration: 750
			            });
			})

		 }
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

	$("a.certificate").click(function(e){
		e.preventDefault();
		$.scrollTo("#certificate",{
	                offset: -20,
	                duration: 750
	            });
	})

}

$(document).ready(function() {
    $('.footable').footable({
            breakpoints: {
                phone: 480,
                tablet: 1024
            }
        }

    );

    $("#menu-icon").click(function (e) {


        $("#nav-toggle").toggleClass("active");
        $("#menu").fadeToggle(400);
        e.preventDefault();
    });
});
// Create a new instance of Headhesive and pass in some options

$(window).load(function () {
    $(".separator").each(function(){
        imgH = $(this).find("img").height();

        $(this).find("hr").each(function(){
            $(this).css("margin-top",imgH*0.5+"px");

        });
    });
});


