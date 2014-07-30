//= require "vendor/jquery/jquery"
//= require "vendor/jquery.easing/js/jquery.easing.min"
//= require "vendor/jquery.scrollTo/jquery.scrollTo"
//= require "footable/js/footable.js"
//= require "vendor/jquery-html5-placeholder-shim-master/jquery.html5-placeholder-shim.js"
//= require "enquire/dist/enquire.min"




Parse.initialize("vEGq6bTziGD4yPjrVQIA6uG28e819FaeUECvmAte", "Jk1Qsy5H1ZySqe7SDiwVVD5Wg9QvAxURlHqIBa65");






var isMobile= false;
enquire
    .register("screen and (max-width:69.9em)",  {

        match : function() {





        },

        // OPTIONAL
        // If supplied, triggered when the media query transitions
        // *from a matched state to an unmatched state*.
        unmatch : function() {},

        // OPTIONAL
        // If supplied, triggered once, when the handler is registered.
        setup : function() {
            isMobile = true;
            $(document).ready(function() {

                $("li.menu").each(function(){

                        $(this).find("a").click(function(){
                            $("#nav-toggle").toggleClass("active");
                            $("#menu").fadeOut(400);
                        });
                });

            });


        },

        // OPTIONAL, defaults to false
        // If set to true, defers execution of the setup function
        // until the first time the media query is matched
        deferSetup : true
    })
    .register("screen and (min-width: 70em)", {

        deferSetup : true,
        setup : function() {
            isMobile = false;
            $(document).ready(function(){


            });
        },
        match : function() {

        },
        unmatch : function() {

        }

    });

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



}


function login(username,password){
    Parse.User.logIn(username, password, {
        success: function(user) {
            console.log(user._serverData.emailVerified)
            var currentUser = Parse.User.current();
            if (currentUser) {
                console.log(currentUser._serverData.emailVerified)
            } else {
                // show the signup or login page
            }
        },
        error: function(user, error) {
            alert("Error: " + error.code + " " + error.message);
        }
    });
}
function signup(username, company, email, password){
    var user = new Parse.User();
    user.set("username", email);
    user.set("name_lastname", username);
    user.set("password", password);
    user.set("company", company);
    user.set("email", email);
    user.signUp(null, {
        success: function(user) {
            alert("Yay"+ user);
        },
        error: function(user, error) {
            // Show the error message somewhere and let the user try again.
            alert("Error: " + error.code + " " + error.message);
        }
    });
}

$(document).ready(function() {
    $("a.view").click(function(e){
        e.preventDefault();

    })
    $("#register-form").find(".btn").click(function(e){

        var username = $("#register-username").val();
        var company = $("#register-company").val();
        var email = $("#register-email").val();
        var password = $("#register-password").val();

        e.preventDefault();
        signup( username, company, email, password);
    });
    $("#login-form").find(".btn").click(function(e){

        var username = $("#login-username").val();
        var password = $("#login-password").val();

        e.preventDefault();
        login( username, password);
    });
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


