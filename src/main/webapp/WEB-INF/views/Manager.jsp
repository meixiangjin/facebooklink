<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'Manager.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="resources/style6.css">
<link href="resources/bootstrap.css" rel="stylesheet">
<script type="text/javascript" async=""
	src="http://api.flattr.com/js/0.5.0/load.js?mode=auto&amp;button=compact&amp;category=images"></script>
<script type="text/javascript" src="jquery.min.js"></script>
<script type="text/javascript" src="jquery-ui.min.js"></script>
<script type="text/javascript" src="jquery.jscroll.min.js"></script>
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

<link href="resources/main.css" rel="stylesheet" type="text/css"
	media="screen">

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
</head>

<body>
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
					<img src="resources/img/123.jpg"
						style="position: absolute; left: -98px;">
				</div>
				<div id="nav_con">
					<div class="top_nav">

						<ul class="menu">
							<li><a
								href="http://localhost:8080/facebook/log/"
								class="selected">Home</a></li>
							<li><a rel="nofollow"
								href="http://localhost:8080/facebook/log/bestplace2">
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



					</div>
				</div>

				<!-- frontpage stuff ends -->

			</div>
		</div>
	</div>

	<div class="box"></div>



<!-- 
	<div class="tab_box">
		<table id="mytable" class="table table-striped"
			style="font-size: 21px; height: 22px; width: 860px; position: absolute; left: 260px; font-family: Open Sans; top: 270px; color: #86888D;">
			<thead>
				<tr>
					<th style="padding-right: 62px;">No.</th>
					<th style="padding-right: 62px;">Lontitude</th>
					<th style="padding-right: 62px;">Latitude</th>


					<th style="padding-right: 62px;">Type of Place</th>

					<th style="padding-right: 62px;">Place Name</th>


					<th>Address</th>

				</tr>
			</thead>
			<tbody id="tbody" align="left" style="">
				<c:forEach var="bestplace" items="${BestPlace}">
					<tr id="bestplace1">
						<td>${bestplace.id}</td>
						<td>${bestplace.longtitude}</td>
						<td>${bestplace.latitude}</td>
						<td>${bestplace.typeOfPlace}</td>
						<td>${bestplace.placeName}</td>
						<td>${bestplace.address}</td>
						<th><p>
						<td><a href="http://localhost:8080/facebook/log/delete?id=${bestplace.id}">delete</a>
						</td>
						</p>
						</th>
					</tr>
				</c:forEach>



			</tbody>
		</table>
	</div>
 -->
	<div class="button-wrapper" style="position: absolute; left: 390px; top: 352px;">
		<a href="http://localhost:8080/facebook/log/add" class="a-btn"> <span></span>
			<span>Add Place</span> <span style="position: absolute;">Go!</span>
		</a>
	</div>
	
	<div class="button-wrapper" style="position: absolute; left: 690px; top: 352px;">
	<a href="http://localhost:8080/facebook/log/deleting" class="a-btn"> <span></span>
			<span>Delete Place</span> <span style="position: absolute;">Go!</span>
		</a>
		</div>
</body>
</html>
