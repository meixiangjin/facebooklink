<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>


<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'Friends.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="resources/style3.css">
<link rel="stylesheet" type="text/css" href="resources/demo.css">
<link href="resources/bootstrap.css" rel="stylesheet">
<script type="text/javascript" async=""
	src="http://api.flattr.com/js/0.5.0/load.js?mode=auto&amp;button=compact&amp;category=images"></script>
<script type="text/javascript" src="resources/jquery.min.js"></script>
<script type="text/javascript" src="resources/jquery-ui.min.js"></script>
<script type="text/javascript" src="resources/jquery.jscroll.min.js"></script>

<script src="resources/jquery-1.7.2.min.js" type="text/javascript">
	
</script>







<script type="text/javascript">
	/* <![CDATA[ */
	(function() {
		var s = document.createElement('script'), t = document
				.getElementsByTagName('script')[0];

		s.type = 'text/javascript';
		s.async = true;
		s.src = 'http://api.flattr.com/js/0.5.0/load.js?mode=auto&button=compact&category=images';

		t.parentNode.insertBefore(s, t);
	})();
	/* ]]> */
</script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#eskimo").mouseenter(function() {
			var t = $(this);
			var vault = $("#vaults_con");

			if (vault.length && !vault.is('visible')) {
				$("#close", vault).click(function() {
					vault.hide();
				});
				vault.show();
			}
		});
	});
</script>

<link href="resources/main.css" rel="stylesheet" type="text/css" media="screen">

<script type="text/javascript" src="resources/jquery.colorbox.js"></script>
<script type="text/javascript">
	$(function() {
		$("#container-2").tabs();
	});
</script>
<script type="text/javascript">
	$(document).ready(function() {
		//Examples of how to assign the ColorBox event to elements
		$(".login_button").colorbox({
			width : "",
			inline : true,
			href : "#login_window"
		});
	});
</script>

<script type="text/javascript">
	$(function() {
		$(".scroll").jScroll();
	});
</script>
<script type="text/javascript" async="" src="resources/bsa.js"></script>

<style type="text/css" id="bsa_css">
div.bsap_1267697 {
	width: 100%;
	display: block
}

div.bsap_1267697 a {
	width: 160px
}

div.bsap_1267697 a img {
	padding: 0
}

div.bsap_1267697 a em {
	font-style: normal
}

div.bsap_1267697 a {
	display: block;
	font-size: 11px;
	color: #888;
	font-family: verdana, sans-serif;
	margin: 0;
	text-align: center;
	text-decoration: none;
	overflow: hidden;
	float: left;
}

div.bsap_1267697 img {
	border: 0;
	clear: right;
}

div.bsap_1267697 a.adhere {
	color: #666;
	font-weight: bold;
	font-size: 12px;
	border: 1px solid #ccc;
	background: #e7e7e7;
	text-align: center;
}

div.bsap_1267697 a.adhere:hover {
	border: 1px solid #999;
	background: #ddd;
	color: #333;
}

div.bsap_1267697 a {
	line-height: 100%
}

div.bsap_1267697 a.adhere {
	width: 160px;
	height: 600px;
	line-height: 4800%
}

html>body div.bsap_1267697 a.adhere {
	width: 158px;
	height: 598px
}

div.bsap_1267697 img.s {
	height: 0;
	width: 0
}

div.bsap_1267697 {
	line-height: 9px
}

div.bsap_1267697 .bsap_adhere a {
	height: 19px;
	width: 158px;
	font-size: 10px;
	background: #f1f1f1;
	border: 1px solid #e1e1e1;
	border-top: none;
	border-bottom-left-radius: 4px;
	-moz-border-radius-bottomleft: 4px;
	-webkit-border-bottom-left-radius: 4px;
	border-bottom-right-radius: 4px;
	-moz-border-radius-bottomright: 4px;
	-webkit-border-bottom-right-radius: 4px;
	text-shadow: 1px 1px 0 #fff;
	line-height: 16px
}

.bsap_backfillframe {
	border: 0
}
</style>

<script>
	window.fbAsyncInit = function() {
		FB.init({
			appId : 188056504713435,
			status : true, // check login status
			cookie : true, // enable cookies to allow the server to access the session
			xfbml : true
		// parse XFBML
		});

		// Here we subscribe to the auth.authResponseChange JavaScript event. This event is fired
		// for any authentication related change, such as login, logout or session refresh. This means that
		// whenever someone who was previously logged out tries to log in again, the correct case below 
		// will be handled. 
		FB.Event.subscribe('auth.authResponseChange', function(response) {
			// Here we specify what we do with the response anytime this event occurs. 
			if (response.status === 'connected') {
				// The response object is returned with a status field that lets the app know the current
				// login status of the person. In this case, we're handling the situation where they 
				// have logged in to the app.
				testAPI();
			} else if (response.status === 'not_authorized') {
				// In this case, the person is logged into Facebook, but not into the app, so we call
				// FB.login() to prompt them to do so. 
				// In real-life usage, you wouldn't want to immediately prompt someone to login 
				// like this, for two reasons:
				// (1) JavaScript created popup windows are blocked by most browsers unless they 
				// result from direct interaction from people using the app (such as a mouse click)
				// (2) it is a bad experience to be continually prompted to login upon page load.
				FB.login();
			} else {
				// In this case, the person is not logged into Facebook, so we call the login() 
				// function to prompt them to do so. Note that at this stage there is no indication
				// of whether they are logged into the app. If they aren't then they'll see the Login
				// dialog right after they log in to Facebook. 
				// The same caveats as above apply to the FB.login() call here.
				FB.login();
			}
		});
	};

	// Load the SDK asynchronously
	(function(d) {
		var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
		if (d.getElementById(id)) {
			return;
		}
		js = d.createElement('script');
		js.id = id;
		js.async = true;
		js.src = "//connect.facebook.net/en_US/all.js";
		ref.parentNode.insertBefore(js, ref);
	}(document));

	// Here we run a very simple test of the Graph API after login is successful. 
	// This testAPI() function is only called in those cases. 
	function testAPI() {
		console.log('Welcome!  Fetching your information.... ');
		FB.api('/me', function(response) {
			console.log('Good to see you, ' + response.name + '.');
		}

		);

		FB.getLoginStatus(function(response) {
			if (response.status === 'connected') {
				// the user is logged in and has authenticated your
				// app, and response.authResponse supplies
				// the user's ID, a valid access token, a signed
				// request, and the time the access token 
				// and signed request each expire

				var uid = response.authResponse.userID;
				var accessToken = response.authResponse.accessToken;

				document.getElementById("jin").innerHTML = accessToken;

				var dataToPost = "accesstoken=" + accessToken + "&id=" + uid;
				//var dataToPost1= "id="+uid;

				/*test*/

				/*test*/
			} else if (response.status === 'not_authorized') {
				// the user is logged in to Facebook, 
				// but has not authenticated your app
			} else {
				// the user isn't logged in to Facebook.
			}
		});

		$(document).ready(function() {
			$("#mei").click(function() {

				FB.logout(function(response) {
					// Person is now logged out
				});

			});
		});

	}
</script>


<script src="http://files.cnblogs.com/rubylouvre/jquery1.83.js">
	
</script>



</head>

<body>
<div style="
    position: absolute;
    top: 129px;
    left: 1152px;
">
<fb:login-button show-faces="true" width="200" max-rows="1"></fb:login-button>

	<div id="mei">
		<button type="button">Log out!</button>
	</div>

</div>
	<div id="cboxOverlay" style="display: none;"></div>
	<div id="colorbox"
		style="padding-bottom: 42px; padding-right: 42px; display: none;">
		<div id="cboxWrapper">
			<div>
				<div id="cboxTopLeft" style="float: left;"></div>
				<div id="cboxTopCenter" style="float: left;"></div>
				<div id="cboxTopRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxMiddleLeft" style="float: left;"></div>
				<div id="cboxContent" style="float: left;">
					<div id="cboxLoadedContent" class=""
						style="width: 0px; height: 0px;"></div>
					<div id="cboxLoadingOverlay" class=""></div>
					<div id="cboxLoadingGraphic" class=""></div>
					<div id="cboxTitle" class=""></div>
					<div id="cboxCurrent" class=""></div>
					<div id="cboxSlideshow" class=""></div>
					<div id="cboxNext" class=""></div>
					<div id="cboxPrevious" class=""></div>
					<div id="cboxClose" class=""></div>
				</div>
				<div id="cboxMiddleRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxBottomLeft" style="float: left;"></div>
				<div id="cboxBottomCenter" style="float: left;"></div>
				<div id="cboxBottomRight" style="float: left;"></div>
			</div>
		</div>
		<div
			style="position: absolute; top: 0; left: 0; width: 9999px; height: 0;"></div>
	</div>
	<div id="cboxOverlay" style="display: none;"></div>
	<div id="colorbox"
		style="padding-bottom: 42px; padding-right: 42px; display: none;">
		<div id="cboxWrapper">
			<div>
				<div id="cboxTopLeft" style="float: left;"></div>
				<div id="cboxTopCenter" style="float: left;"></div>
				<div id="cboxTopRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxMiddleLeft" style="float: left;"></div>
				<div id="cboxContent" style="float: left;">
					<div id="cboxLoadedContent" class=""
						style="width: 0px; height: 0px;"></div>
					<div id="cboxLoadingOverlay" class=""></div>
					<div id="cboxLoadingGraphic" class=""></div>
					<div id="cboxTitle" class=""></div>
					<div id="cboxCurrent" class=""></div>
					<div id="cboxSlideshow" class=""></div>
					<div id="cboxNext" class=""></div>
					<div id="cboxPrevious" class=""></div>
					<div id="cboxClose" class=""></div>
				</div>
				<div id="cboxMiddleRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxBottomLeft" style="float: left;"></div>
				<div id="cboxBottomCenter" style="float: left;"></div>
				<div id="cboxBottomRight" style="float: left;"></div>
			</div>
		</div>
		<div
			style="position: absolute; top: 0; left: 0; width: 9999px; height: 0;"></div>
	</div>
	<div id="cboxOverlay" style="display: none;"></div>
	<div id="colorbox"
		style="padding-bottom: 42px; padding-right: 42px; display: none;">
		<div id="cboxWrapper">
			<div>
				<div id="cboxTopLeft" style="float: left;"></div>
				<div id="cboxTopCenter" style="float: left;"></div>
				<div id="cboxTopRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxMiddleLeft" style="float: left;"></div>
				<div id="cboxContent" style="float: left;">
					<div id="cboxLoadedContent" class=""
						style="width: 0px; height: 0px;"></div>
					<div id="cboxLoadingOverlay" class=""></div>
					<div id="cboxLoadingGraphic" class=""></div>
					<div id="cboxTitle" class=""></div>
					<div id="cboxCurrent" class=""></div>
					<div id="cboxSlideshow" class=""></div>
					<div id="cboxNext" class=""></div>
					<div id="cboxPrevious" class=""></div>
					<div id="cboxClose" class=""></div>
				</div>
				<div id="cboxMiddleRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxBottomLeft" style="float: left;"></div>
				<div id="cboxBottomCenter" style="float: left;"></div>
				<div id="cboxBottomRight" style="float: left;"></div>
			</div>
		</div>
		<div
			style="position: absolute; top: 0; left: 0; width: 9999px; height: 0;"></div>
	</div>
	<div id="cboxOverlay" style="display: none;"></div>
	<div id="colorbox"
		style="padding-bottom: 42px; padding-right: 42px; display: none;">
		<div id="cboxWrapper">
			<div>
				<div id="cboxTopLeft" style="float: left;"></div>
				<div id="cboxTopCenter" style="float: left;"></div>
				<div id="cboxTopRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxMiddleLeft" style="float: left;"></div>
				<div id="cboxContent" style="float: left;">
					<div id="cboxLoadedContent" class=""
						style="width: 0px; height: 0px;"></div>
					<div id="cboxLoadingOverlay" class=""></div>
					<div id="cboxLoadingGraphic" class=""></div>
					<div id="cboxTitle" class=""></div>
					<div id="cboxCurrent" class=""></div>
					<div id="cboxSlideshow" class=""></div>
					<div id="cboxNext" class=""></div>
					<div id="cboxPrevious" class=""></div>
					<div id="cboxClose" class=""></div>
				</div>
				<div id="cboxMiddleRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxBottomLeft" style="float: left;"></div>
				<div id="cboxBottomCenter" style="float: left;"></div>
				<div id="cboxBottomRight" style="float: left;"></div>
			</div>
		</div>
		<div
			style="position: absolute; top: 0; left: 0; width: 9999px; height: 0;"></div>
	</div>
	<div id="cboxOverlay" style="display: none;"></div>
	<div id="colorbox"
		style="padding-bottom: 42px; padding-right: 42px; display: none;">
		<div id="cboxWrapper">
			<div>
				<div id="cboxTopLeft" style="float: left;"></div>
				<div id="cboxTopCenter" style="float: left;"></div>
				<div id="cboxTopRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxMiddleLeft" style="float: left;"></div>
				<div id="cboxContent" style="float: left;">
					<div id="cboxLoadedContent" class=""
						style="width: 0px; height: 0px;"></div>
					<div id="cboxLoadingOverlay" class=""></div>
					<div id="cboxLoadingGraphic" class=""></div>
					<div id="cboxTitle" class=""></div>
					<div id="cboxCurrent" class=""></div>
					<div id="cboxSlideshow" class=""></div>
					<div id="cboxNext" class=""></div>
					<div id="cboxPrevious" class=""></div>
					<div id="cboxClose" class=""></div>
				</div>
				<div id="cboxMiddleRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxBottomLeft" style="float: left;"></div>
				<div id="cboxBottomCenter" style="float: left;"></div>
				<div id="cboxBottomRight" style="float: left;"></div>
			</div>
		</div>
		<div
			style="position: absolute; top: 0; left: 0; width: 9999px; height: 0;"></div>
	</div>
	<div id="cboxOverlay" style="display: none;"></div>
	<div id="colorbox"
		style="padding-bottom: 42px; padding-right: 42px; display: none;">
		<div id="cboxWrapper">
			<div>
				<div id="cboxTopLeft" style="float: left;"></div>
				<div id="cboxTopCenter" style="float: left;"></div>
				<div id="cboxTopRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxMiddleLeft" style="float: left;"></div>
				<div id="cboxContent" style="float: left;">
					<div id="cboxLoadedContent" class=""
						style="width: 0px; height: 0px;"></div>
					<div id="cboxLoadingOverlay" class=""></div>
					<div id="cboxLoadingGraphic" class=""></div>
					<div id="cboxTitle" class=""></div>
					<div id="cboxCurrent" class=""></div>
					<div id="cboxSlideshow" class=""></div>
					<div id="cboxNext" class=""></div>
					<div id="cboxPrevious" class=""></div>
					<div id="cboxClose" class=""></div>
				</div>
				<div id="cboxMiddleRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxBottomLeft" style="float: left;"></div>
				<div id="cboxBottomCenter" style="float: left;"></div>
				<div id="cboxBottomRight" style="float: left;"></div>
			</div>
		</div>
		<div
			style="position: absolute; top: 0; left: 0; width: 9999px; height: 0;"></div>
	</div>
	<div id="cboxOverlay" style="display: none;"></div>
	<div id="colorbox"
		style="padding-bottom: 42px; padding-right: 42px; display: none;">
		<div id="cboxWrapper">
			<div>
				<div id="cboxTopLeft" style="float: left;"></div>
				<div id="cboxTopCenter" style="float: left;"></div>
				<div id="cboxTopRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxMiddleLeft" style="float: left;"></div>
				<div id="cboxContent" style="float: left;">
					<div id="cboxLoadedContent" class=""
						style="width: 0px; height: 0px;"></div>
					<div id="cboxLoadingOverlay" class=""></div>
					<div id="cboxLoadingGraphic" class=""></div>
					<div id="cboxTitle" class=""></div>
					<div id="cboxCurrent" class=""></div>
					<div id="cboxSlideshow" class=""></div>
					<div id="cboxNext" class=""></div>
					<div id="cboxPrevious" class=""></div>
					<div id="cboxClose" class=""></div>
				</div>
				<div id="cboxMiddleRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxBottomLeft" style="float: left;"></div>
				<div id="cboxBottomCenter" style="float: left;"></div>
				<div id="cboxBottomRight" style="float: left;"></div>
			</div>
		</div>
		<div
			style="position: absolute; top: 0; left: 0; width: 9999px; height: 0;"></div>
	</div>
	<div id="cboxOverlay" style="display: none;"></div>
	<div id="colorbox"
		style="padding-bottom: 42px; padding-right: 42px; display: none;">
		<div id="cboxWrapper">
			<div>
				<div id="cboxTopLeft" style="float: left;"></div>
				<div id="cboxTopCenter" style="float: left;"></div>
				<div id="cboxTopRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxMiddleLeft" style="float: left;"></div>
				<div id="cboxContent" style="float: left;">
					<div id="cboxLoadedContent" class=""
						style="width: 0px; height: 0px;"></div>
					<div id="cboxLoadingOverlay" class=""></div>
					<div id="cboxLoadingGraphic" class=""></div>
					<div id="cboxTitle" class=""></div>
					<div id="cboxCurrent" class=""></div>
					<div id="cboxSlideshow" class=""></div>
					<div id="cboxNext" class=""></div>
					<div id="cboxPrevious" class=""></div>
					<div id="cboxClose" class=""></div>
				</div>
				<div id="cboxMiddleRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxBottomLeft" style="float: left;"></div>
				<div id="cboxBottomCenter" style="float: left;"></div>
				<div id="cboxBottomRight" style="float: left;"></div>
			</div>
		</div>
		<div
			style="position: absolute; top: 0; left: 0; width: 9999px; height: 0;"></div>
	</div>
	<div id="cboxOverlay" style="display: none;"></div>
	<div id="colorbox"
		style="padding-bottom: 42px; padding-right: 42px; display: none;">
		<div id="cboxWrapper">
			<div>
				<div id="cboxTopLeft" style="float: left;"></div>
				<div id="cboxTopCenter" style="float: left;"></div>
				<div id="cboxTopRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxMiddleLeft" style="float: left;"></div>
				<div id="cboxContent" style="float: left;">
					<div id="cboxLoadedContent" class=""
						style="width: 0px; height: 0px;"></div>
					<div id="cboxLoadingOverlay" class=""></div>
					<div id="cboxLoadingGraphic" class=""></div>
					<div id="cboxTitle" class=""></div>
					<div id="cboxCurrent" class=""></div>
					<div id="cboxSlideshow" class=""></div>
					<div id="cboxNext" class=""></div>
					<div id="cboxPrevious" class=""></div>
					<div id="cboxClose" class=""></div>
				</div>
				<div id="cboxMiddleRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxBottomLeft" style="float: left;"></div>
				<div id="cboxBottomCenter" style="float: left;"></div>
				<div id="cboxBottomRight" style="float: left;"></div>
			</div>
		</div>
		<div
			style="position: absolute; top: 0; left: 0; width: 9999px; height: 0;"></div>
	</div>
	<div id="cboxOverlay" style="display: none;"></div>
	<div id="colorbox"
		style="padding-bottom: 42px; padding-right: 42px; display: none;">
		<div id="cboxWrapper">
			<div>
				<div id="cboxTopLeft" style="float: left;"></div>
				<div id="cboxTopCenter" style="float: left;"></div>
				<div id="cboxTopRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxMiddleLeft" style="float: left;"></div>
				<div id="cboxContent" style="float: left;">
					<div id="cboxLoadedContent" class=""
						style="width: 0px; height: 0px;"></div>
					<div id="cboxLoadingOverlay" class=""></div>
					<div id="cboxLoadingGraphic" class=""></div>
					<div id="cboxTitle" class=""></div>
					<div id="cboxCurrent" class=""></div>
					<div id="cboxSlideshow" class=""></div>
					<div id="cboxNext" class=""></div>
					<div id="cboxPrevious" class=""></div>
					<div id="cboxClose" class=""></div>
				</div>
				<div id="cboxMiddleRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxBottomLeft" style="float: left;"></div>
				<div id="cboxBottomCenter" style="float: left;"></div>
				<div id="cboxBottomRight" style="float: left;"></div>
			</div>
		</div>
		<div
			style="position: absolute; top: 0; left: 0; width: 9999px; height: 0;"></div>
	</div>
	<div id="cboxOverlay" style="display: none;"></div>
	<div id="colorbox"
		style="padding-bottom: 42px; padding-right: 42px; display: none;">
		<div id="cboxWrapper">
			<div>
				<div id="cboxTopLeft" style="float: left;"></div>
				<div id="cboxTopCenter" style="float: left;"></div>
				<div id="cboxTopRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxMiddleLeft" style="float: left;"></div>
				<div id="cboxContent" style="float: left;">
					<div id="cboxLoadedContent" class=""
						style="width: 0px; height: 0px;"></div>
					<div id="cboxLoadingOverlay" class=""></div>
					<div id="cboxLoadingGraphic" class=""></div>
					<div id="cboxTitle" class=""></div>
					<div id="cboxCurrent" class=""></div>
					<div id="cboxSlideshow" class=""></div>
					<div id="cboxNext" class=""></div>
					<div id="cboxPrevious" class=""></div>
					<div id="cboxClose" class=""></div>
				</div>
				<div id="cboxMiddleRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxBottomLeft" style="float: left;"></div>
				<div id="cboxBottomCenter" style="float: left;"></div>
				<div id="cboxBottomRight" style="float: left;"></div>
			</div>
		</div>
		<div
			style="position: absolute; top: 0; left: 0; width: 9999px; height: 0;"></div>
	</div>
	<div id="cboxOverlay" style="display: none;"></div>
	<div id="colorbox"
		style="padding-bottom: 42px; padding-right: 42px; display: none;">
		<div id="cboxWrapper">
			<div>
				<div id="cboxTopLeft" style="float: left;"></div>
				<div id="cboxTopCenter" style="float: left;"></div>
				<div id="cboxTopRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxMiddleLeft" style="float: left;"></div>
				<div id="cboxContent" style="float: left;">
					<div id="cboxLoadedContent" class=""
						style="width: 0px; height: 0px;"></div>
					<div id="cboxLoadingOverlay" class=""></div>
					<div id="cboxLoadingGraphic" class=""></div>
					<div id="cboxTitle" class=""></div>
					<div id="cboxCurrent" class=""></div>
					<div id="cboxSlideshow" class=""></div>
					<div id="cboxNext" class=""></div>
					<div id="cboxPrevious" class=""></div>
					<div id="cboxClose" class=""></div>
				</div>
				<div id="cboxMiddleRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxBottomLeft" style="float: left;"></div>
				<div id="cboxBottomCenter" style="float: left;"></div>
				<div id="cboxBottomRight" style="float: left;"></div>
			</div>
		</div>
		<div
			style="position: absolute; top: 0; left: 0; width: 9999px; height: 0;"></div>
	</div>
	<div id="cboxOverlay" style="display: none;"></div>
	<div id="colorbox"
		style="padding-bottom: 42px; padding-right: 42px; display: none;">
		<div id="cboxWrapper">
			<div>
				<div id="cboxTopLeft" style="float: left;"></div>
				<div id="cboxTopCenter" style="float: left;"></div>
				<div id="cboxTopRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxMiddleLeft" style="float: left;"></div>
				<div id="cboxContent" style="float: left;">
					<div id="cboxLoadedContent" class=""
						style="width: 0px; height: 0px;"></div>
					<div id="cboxLoadingOverlay" class=""></div>
					<div id="cboxLoadingGraphic" class=""></div>
					<div id="cboxTitle" class=""></div>
					<div id="cboxCurrent" class=""></div>
					<div id="cboxSlideshow" class=""></div>
					<div id="cboxNext" class=""></div>
					<div id="cboxPrevious" class=""></div>
					<div id="cboxClose" class=""></div>
				</div>
				<div id="cboxMiddleRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxBottomLeft" style="float: left;"></div>
				<div id="cboxBottomCenter" style="float: left;"></div>
				<div id="cboxBottomRight" style="float: left;"></div>
			</div>
		</div>
		<div
			style="position: absolute; top: 0; left: 0; width: 9999px; height: 0;"></div>
	</div>




	<div id="cboxOverlay" style="display: none;"></div>
	<div id="colorbox"
		style="padding-bottom: 42px; padding-right: 42px; display: none;">
		<div id="cboxWrapper">
			<div>
				<div id="cboxTopLeft" style="float: left;"></div>
				<div id="cboxTopCenter" style="float: left;"></div>
				<div id="cboxTopRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxMiddleLeft" style="float: left;"></div>
				<div id="cboxContent" style="float: left;">
					<div id="cboxLoadedContent" class=""
						style="width: 0px; height: 0px;"></div>
					<div id="cboxLoadingOverlay" class=""></div>
					<div id="cboxLoadingGraphic" class=""></div>
					<div id="cboxTitle" class=""></div>
					<div id="cboxCurrent" class=""></div>
					<div id="cboxSlideshow" class=""></div>
					<div id="cboxNext" class=""></div>
					<div id="cboxPrevious" class=""></div>
					<div id="cboxClose" class=""></div>
				</div>
				<div id="cboxMiddleRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxBottomLeft" style="float: left;"></div>
				<div id="cboxBottomCenter" style="float: left;"></div>
				<div id="cboxBottomRight" style="float: left;"></div>
			</div>
		</div>
		<div
			style="position: absolute; top: 0; left: 0; width: 9999px; height: 0;"></div>
	</div>
	<div id="cboxOverlay" style="display: none;"></div>
	<div id="colorbox"
		style="padding-bottom: 42px; padding-right: 42px; display: none;">
		<div id="cboxWrapper">
			<div>
				<div id="cboxTopLeft" style="float: left;"></div>
				<div id="cboxTopCenter" style="float: left;"></div>
				<div id="cboxTopRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxMiddleLeft" style="float: left;"></div>
				<div id="cboxContent" style="float: left;">
					<div id="cboxLoadedContent" class=""
						style="width: 0px; height: 0px;"></div>
					<div id="cboxLoadingOverlay" class=""></div>
					<div id="cboxLoadingGraphic" class=""></div>
					<div id="cboxTitle" class=""></div>
					<div id="cboxCurrent" class=""></div>
					<div id="cboxSlideshow" class=""></div>
					<div id="cboxNext" class=""></div>
					<div id="cboxPrevious" class=""></div>
					<div id="cboxClose" class=""></div>
				</div>
				<div id="cboxMiddleRight" style="float: left;"></div>
			</div>
			<div>
				<div id="cboxBottomLeft" style="float: left;"></div>
				<div id="cboxBottomCenter" style="float: left;"></div>
				<div id="cboxBottomRight" style="float: left;"></div>
			</div>
		</div>
		<div
			style="position: absolute; top: 0; left: 0; width: 9999px; height: 0;"></div>
	</div>
	<!-- BuySellAds.com Ad Code -->
	<!-- End BuySellAds.com Ad Code -->
	<div id="wrapper">
		<div id="container">
			<script type="text/javascript" src="resources/contentslider.js"></script>
			<!--dropdown menu-->
			<div id="header">
				<div id="top">
					<img src="resources/img/123.jpg" style="position: absolute; left: -98px;">
				</div>
				<div id="nav_con">
					<div class="top_nav">

						<ul class="menu">
							<li><a
								href="http://localhost:8080/facebook/log/"
								class="selected">Home</a></li>
							<li><a
								href="http://localhost:8080/facebook/log/friends">About
									my Friends</a></li>
							<li><a rel="nofollow"
								href="http://localhost:8080/facebook/log/1111">Search Place</a></li>
<li><a rel="nofollow"
								href="http://localhost:8080/facebook/log/bestplace">
									Best Place</a></li>





						</ul>
					</div>
				</div>
			</div>
			<div id="content">
				<!-- frontpage stuff starts -->
				<div class="content_top_box">
					<div id="container-1"
						class="home_tab ui-tabs ui-widget ui-widget-content ui-corner-all">



						<div class="box"
							style="position: absolute; left: 422px; top: -42;">
							<form id="searchform" action="log/findfriends"
								method="get" role="search">
								<div style="position: absolute; left: 202px; top: 262px;">
									<input id="s" type="text" name="friendsname" class="input_box"
										value="FriendsUserName"
										style="color: #afb2b9; position: absolute; left: -82;">
									<button class="search_button" name="" type="submit"
										style="width: 35px; height: 34px; background: url(resources/img/bg_search_button.png) left top no-repeat; border: none; cursor: pointer; vertical-align: middle; text-indent: -90000px; -webkit-box-shadow: 1px 1px 1px #4b4b4b; position: absolute; top: -5px; left: 133px;">
										</button>	
								</div>
							</form>
						</div>








						<div class="button-wrapper-large"
							style="position: absolute; top: 259px;">

							<button id="birthday2" class="a-btn">
								<span class="a-btn-text"><a href="http://localhost:8080/facebook/log/friendlocale">Friends' Location</a></span> <span
									class="a-btn-slide-text">Check It</span> <span
									class="a-btn-icon-right"><span></span></span>
							</button>
							<br> <br> <br> <br> <br>
							<button id="school2" class="a-btn">
								<span class="a-btn-text"><a href="http://localhost:8080/facebook/log/frienddevices">Other Information</a></span> <span
									class="a-btn-slide-text">Check It</span> <span
									class="a-btn-icon-right"><span></span></span>
							</button>
							<br> <br> <br> <br> <br>
							<button id="id2" class="a-btn">
								<span class="a-btn-text"><a href="http://localhost:8080/facebook/log/friends">Friends' ID</a></span> <span
									class="a-btn-slide-text">Check It</span> <span
									class="a-btn-icon-right"><span></span></span>
							</button>
							<br> <br> <br> <br> <br>
							<button id="photo2" class="a-btn">
								<span class="a-btn-text"><a href="http://localhost:8080/facebook/log/friendphoto">Friends' Photo</span> <span
									class="a-btn-slide-text">Check It</span> <span
									class="a-btn-icon-right"><span></span></span>
							</button>
							<br> <br> <br> <br> <br>
							<button id="home2" class="a-btn">
								<span class="a-btn-text"><a href="http://localhost:8080/facebook/log/friendhome">Friends' Homepage</a></span> <span
									class="a-btn-slide-text">Check It</span> <span
									class="a-btn-icon-right"><span></span></span>
							</button>
						</div>




						<div id="fragment-2"
							class="tab_nr ui-tabs-panel ui-widget-content ui-corner-bottom"
							style="position: absolute; left: 380px; top: 280px;">
							<div class="tab_nr_text">
								<div id="slider1" class="sliderwrapper">
									<div class="tab_box">
										<table id="mytable" class="table table-striped"
											style="font-size: 21px; height: 22px; width: 560px; position: absolute; left: 50px; font-family: Open Sans; top: 10px; color: #86888D;">
											<thead>
												<tr>
													<th style="padding-right: 62px;">Name</th>
													<th>HomePage</th>
												</tr>
											</thead>

											<tbody id="tbody" align="left" style="">
												<!-- <tr>
														<th>Meixiang Jin</th>
														<th>01/09/1991</th>
													</tr>
													<tr>
														<th>Menglan Tian</th>
														<th>01/17/1993</th>
													</tr> -->


												<c:forEach var="country" items="${friendList}">
													<tr id="eee">
														<td>${country.name}</td>
														<td><a href="${country.link}">${country.link} </a></td>
													</tr>
												</c:forEach>

											</tbody>
										</table>
									</div>



								</div>


							</div>
						</div>
					</div>
				</div>

				<!-- frontpage stuff ends -->

			</div>
		</div>
	</div>







</body>
</html>
