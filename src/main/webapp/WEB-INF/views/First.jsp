<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
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

<title>My JSP 'First.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="resources/main.css" rel="stylesheet" type="text/css" media="screen">
<body>
	<!-- BuySellAds.com Ad Code -->
	<!-- End BuySellAds.com Ad Code -->
	<div id="wrapper">
		<div id="container">
			<script type="text/javascript" src="resources/contentslider.js"></script>
			<div id="header">
				<div id="top">
					<img src="resources/img/123.jpg" style="
    position: absolute;
    left: -98px;
">
				</div>
				<div id="nav_con">
					<div class="top_nav">
						<span><a class="login_link login_button cboxElement" href="http://localhost:8080/facebook/log/signin">Login/Signup</a></span>
					</div>
				</div>
			</div>
			<div id="content">
				<!-- frontpage stuff starts -->
				<div class="content_top_box">
					<div id="container-1" class="home_tab ui-tabs ui-widget ui-widget-content ui-corner-all">
						<div id="fragment-1" class="tab_nr ui-tabs-panel ui-widget-content ui-corner-bottom">
							<div class="tab_nr_form">
								<div id="paginate-slider2" class="pagination">
									<span><a href="#" class="toc selected" rel="1">1</a></span><span><a href="#" class="toc anotherclass" rel="2">2</a></span><span><a href="#" class="toc" rel="3">3</a></span><span><a href="#" class="toc" rel="4" style="display: none;">4</a></span><span><a href="#" class="toc" rel="5" style="display: none;">5</a></span>
								</div>
								<div id="slider2" class="sliderwrapper">
									<div class="contentdiv" style="display: block; z-index: 7; opacity: 1; visibility: visible;">
										<img src="resources/img/1.jpg" alt="">
										<div class="title">
											<h4>
												<a title="View Stock Photo" href="/photo/148272/super-grunge">Super Grunge</a>
											</h4>
											<h5>
												by <a title="Author profile" href="/user/profile/112898">Pixel
													Cabinet</a>
											</h5>
										</div>
									</div>
									<div class="contentdiv" style="display: none; z-index: 6; opacity: 1; visibility: visible;">
										<img src="resources/img/2.jpg" alt="">
										<div class="title">
											<h4>
												<a title="View Stock Photo" href="/photo/145980/birds-on-dome">Birds on dome</a>
											</h4>
											<h5>
												by <a title="Author profile" href="/user/profile/109934">nasir
													rauf</a>
											</h5>
										</div>
									</div>
									<div class="contentdiv" style="display: none; z-index: 5; opacity: 1; visibility: visible;">
										<img src="resources/img/3.jpg" alt="">
										<div class="title">
											<h4>
												<a title="View Stock Photo" href="/photo/113952/black-electric-guitar">Black
													Electric Guitar</a>
											</h4>
											<h5>
												by <a title="Author profile" href="/user/profile/655">Bjorgvin
													Gudmundsson</a>
											</h5>
										</div>
									</div>
								</div>
								<script type="text/javascript">
									featuredcontentslider
											.init({
												id : "slider2", //id of main slider DIV
												contentsource : [ "inline", "" ], //Valid values: ["inline", ""] or ["ajax", "path_to_file"]
												toc : "markup", //Valid values: "#increment", "markup", ["label1", "label2", etc]
												nextprev : [ "Previous", "Next" ], //labels for "prev" and "next" links. Set to "" to hide.
												revealtype : "click", //Behavior of pagination links to reveal the slides: "click" or "mouseover"
												enablefade : [ true, 0.2 ], //[true/false, fadedegree]
												autorotate : [ true, 7000 ], //[true/false, pausetime]
												onChange : function(previndex,
														curindex) { //event handler fired whenever script changes slide
													//previndex holds index of last slide viewed b4 current (1=1st slide, 2nd=2nd etc)
													//curindex holds index of currently shown slide (1=1st slide, 2nd=2nd etc)
												}
											})
								</script>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>