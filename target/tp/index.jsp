<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Travel Portal</title>

<%--  <link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/input.css" /> --%>


<!-- <script>
	$(function() {
		$("#datepicker").datepicker({
			minDate : "0d",
			maxDate : "+3M",
			dateFormat : 'dd/mm/yy',
			showAnim : 'slide'
		});
	});
</script>
<script>
	$(function() {
		$(".dealdesc").tooltip();
	});
</script>

<style>
div.ui-datepicker {
	font-size: 13px;
}
</style>


<script>
	$("#searchflight").click(function() {
		$("#advert").toggle(1000);

	});
</script>
<script>
	function classDPicker(clas, max, range) {
		$("." + clas).datepicker({
			maxDate : max,
			changeMonth : true,
			changeYear : true,
			yearRange : range,
			dateFormat : 'mm/dd/yy'
		});
	}
</script>
<script>
	$(function() {
		$("#tabs").tabs({
			collapsible : true
		});
	});
</script>

<script src="http://code.jquery.com/jquery-1.9.1.js"></script> -->
<!-- <script src="Views/js/jquery-1.9.1.js"></script>
<script src="Views/js/jquery-ui.js"></script> -->
<%--
</script>

<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="Views/js/jquery-1.9.1.js"></script>
<script src="Views/js/jquery-ui.js"></script>
 --%>

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/jquery-ui.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/button.css" />

<!-- Add favicon -->
<link rel="icon" type="image/ico" href="/img/favicon.ico"></link>
<link rel="shortcut icon" href="img/favicon.ico"></link>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/index.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/block.css" />
<script src="${pageContext.request.contextPath}/js/jquery-1.9.1.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-ui.js"></script>
</head>
<body>
	<div id="container">
		<div id="header">
			<div id="centerheader">
				<div id="logo">
					<jsp:include page="views/layout/logo.jsp" />
				</div>
				<div id="headercontent">
					<c:choose>
						<c:when test="${sessionScope.user != null}">
							<div>
								<a style="float: right; margin: 10px" class="mybutton"
									href="${pageContext.request.contextPath}/user/logout">Logout</a>									
								<span style="float: right; margin: 10px" class="mybutton">${sessionScope.user.userName}</span>
							</div>
						</c:when>
						<c:otherwise>
							<a style="float: right; margin: 10px" class="mybutton"
								href="${pageContext.request.contextPath}/login">Login</a>
						</c:otherwise>
					</c:choose>

					<%-- <jsp:include page="views/layout/headercontent.jsp" /> --%>
				</div>
			</div>
		</div>
		<div id="nav">
			<jsp:include page="views/layout/usernav.jsp" />
		</div>
		<div id="content">
			<div id="leftcontent">
				<div id="searchflight">
					<jsp:include page="views/search.html" />
				</div>
				<div id="manage">
					<jsp:include page="views/manage.jsp" />
				</div>
			</div>
			<div id="rightcontent" style="margin-top: 5px;">
				<div id="advert" style="float: right; overflow: none;">
					<jsp:include page="views/offer.jsp" />
				</div>
				<div id="work" style="float: right; overflow: none;">
					<jsp:include page="views/aboutus.html" />
				</div>
			</div>
		</div>
		<div id="footer">
			<jsp:include page="views/layout/footer.jsp" />
		</div>
	</div>
</body>
</html>
<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/input.css" />
 --%>

<!-- <script>
	$(function() {
		$("#datepicker").datepicker({
			minDate : "0d",
			maxDate : "+3M",
			dateFormat : 'dd/mm/yy',
			showAnim : 'slide'
		});
	});
</script>
<script>
	$(function() {
		$(".dealdesc").tooltip();
	});
</script>

<style>
div.ui-datepicker {
	font-size: 13px;
}
</style>


<script>
	$("#searchflight").click(function() {
		$("#advert").toggle(1000);

	});
</script>
<script>
	function classDPicker(clas, max, range) {
		$("." + clas).datepicker({
			maxDate : max,
			changeMonth : true,
			changeYear : true,
			yearRange : range,
			dateFormat : 'mm/dd/yy'
		});
	}
</script>
<script>
	$(function() {
		$("#tabs").tabs({
			collapsible : true
		});
	});
</script> -->
<%--
</script>

<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="Views/js/jquery-1.9.1.js"></script>
<script src="Views/js/jquery-ui.js"></script>
 --%>