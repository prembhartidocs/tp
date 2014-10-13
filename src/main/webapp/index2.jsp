<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- <%@ taglib prefix="s" uri="/struts-tags"%> --%>

<!-- adminindexpage -->
<!DOCTYPE html>
<html>
<head>
<title>Travel Portal</title>
<link rel="stylesheet" href="Views/css/input.css" />
<link rel="stylesheet" href="Views/css/jquery-ui.css" />
<!-- Add favicon -->
<link rel="icon" type="image/ico" href="Views/images/favicon.ico"></link>
<link rel="shortcut icon" href="Views/images/favicon.ico"></link>
<!-- -- -->
<link rel="stylesheet" href="Views/css/button.css" />

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css" />
<link rel="stylesheet" href="Views/css/index.css" />
<link rel="stylesheet" href="Views/css/block.css" />

</head>

<body bgcolor="#FBFBFF">
	<div id="container">
		<div id="header">
			<div id="centerheader">
				<div id="logo">
					<jsp:include page="${pageContext.request.contextPath}/layout/logo" />
				</div>
				<div id="headercontent">
					<%-- <jsp:include page="views/adminHeaderContent.jsp" /> --%>
				</div>
				<!-- <div style="width:200px;clear:both;float:right" align="center"><h3 style="color:#ACACFF;border:1px solid black;border-radius:10px;"><a href="index.jsp" style="text-decoration:none;">Back to Home</a></h3></div> -->
			</div>
		</div>
		<div id="content" align="center"
			style="margin-top: 20px; margin-bottom: 20px;">
			<s:if test="#session.passenger==null">
				<div style="width: 200px; clear: both; float: right" align="center">
					<h3
						style="color: #ACACFF; border: 1px solid black; border-radius: 10px;">
						<a href="index.jsp" style="text-decoration: none;">Back to
							Home</a>
					</h3>
				</div>
				<br />
				<br />
				<br />
				<br />
				<%-- <jsp:include page="views/adminlogin.jsp" /> --%>
			</s:if>
			<s:else>
				<%-- <jsp:include page="views/adminContent.jsp" /> --%>
			</s:else>
		</div>
		<div id="work" align="center" style="width: 1100px; margin: 0px auto"></div>

		<div id="footer">
			<%-- <jsp:include page="views/layout/footer.jsp" /> --%>
		</div>

	</div>
</body>
</html>