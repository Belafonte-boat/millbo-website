//= require "vendor/jquery/jquery.js"
//= require "vendor/jquery.easing/js/jquery.easing.min.js"
//= require "vendor/jquery.scrollTo/jquery.scrollTo.js"
//= require "footable/js/footable.js"
//= require "vendor/jquery-html5-placeholder-shim-master/jquery.html5-placeholder-shim.js"
//= require "enquire/dist/enquire.min.js"
//= require "bootstrap/alert.js"

var pathname = window.location.pathname;

Parse.initialize("vEGq6bTziGD4yPjrVQIA6uG28e819FaeUECvmAte", "Jk1Qsy5H1ZySqe7SDiwVVD5Wg9QvAxURlHqIBa65");

var loginEnUrl = "/login.html"
var loginItUrl = "/it/login.html"
var registerUrl = "/register.html"
var registratiUrl =  "/it/registrati.html"
var soluzioniUrl  = "/it/soluzioni.html"
var solutionsUrl  = "/solutions.html"



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
function currentUser(){
    var currentUser = Parse.User.current();
    console.log(JSON.stringify(currentUser));
}
function checkUser(itUrl,enUrl, link){
    var currentUser = Parse.User.current();
    if (currentUser) {
        window.location = link;
    } else {
        lang = checkLanguage();
        if (lang == "ita"){
            window.location = itUrl+"?url="+encodeURIComponent(link);
        }else{
            window.location = enUrl+"?url="+encodeURIComponent(link);
        }
    }
}

function checkLanguage(){
    var pathname = window.location.pathname;
    var lang = "";
    if(window.location.href.indexOf("/it/") > -1) {
        lang = "ita";
    }else{
        lang = "eng";
    }

   return lang;
}
function logout(){
    Parse.User.logOut();

}
function activate(activate){
    if(activate) {
        return true;
    }else{
        $("#activate").fadeIn();
        return false;
    }
}
function checkUrl(url){
    console.log(url);
    if (url != ""){
      return true;
    }else{
      return false
    }
}
function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}
function login(username,password){
    Parse.User.logIn(username, password, {
        success: function(user) {

            var activation = activate(user._serverData.emailVerified);
            var url = getParameterByName('url');

            if (activation){
                checkedUrl = checkUrl(url);
                lang = checkLanguage();
                if(checkedUrl){
                    window.location = url;
                }else{
                    if (lang == "ita"){
                        window.location = "/it/";
                    }else{
                        window.location = "/";
                    }
                }

            }
        },
        error: function(user, error) {
            $("#error").text("Error: " + error.code + " " + error.message).fadeIn();



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
            $("#success").fadeIn();
            lang = checkLanguage();
            if (lang == "ita"){
                window.location = soluzioniUrl;
            }else{
                window.location = soluzionsUrl;
            }
        },
        error: function(user, error) {
            // Show the error message somewhere and let the user try again.
            $("#error").text("Error: " + error.code + " " + error.message).fadeIn();

        }
    });
}
function checkPrivate(){

    if(window.location.href.indexOf("/schedetecniche/") > -1 || window.location.href.indexOf("/technicalsheets/") > -1 ){

        var currentUser = Parse.User.current();
        if (currentUser) {

        } else {
            lang = checkLanguage();
            if (lang == "ita"){
                window.location = loginItUrl+"?url="+encodeURIComponent(pathname);
            }else{
                window.location = loginEnUrl+"?url="+encodeURIComponent(pathname);
            }
        }

    }
}
$(document).ready(function() {
    checkPrivate();
    $("a#logout").click(function(e){
        e.preventDefault();
        logout();
    })
    $("a#currentuser").click(function(e){
        e.preventDefault();
        currentUser();
    })
    $("a.view").click(function(e){
        e.preventDefault();
        var link = $(this).attr("href");

        checkUser(loginItUrl,loginEnUrl,link);
    })
    $("a.download").click(function(e){
        e.preventDefault();
        var link = $(this).attr("href");

        checkUser(loginItUrl,loginEnUrl,link);
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


