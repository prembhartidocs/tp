<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<link href="${pageContext.request.contextPath}/css/webwidget_slideshow_dot.css" rel="stylesheet" />
<script src="${pageContext.request.contextPath}/js/webwidget_slideshow_dot.js"></script>

<script type="text/javascript">

	$(document).ready(function() {
		
		$.getJSON('findtopdeals.action', {}, function(data) {			
			for ( var i = 0; i < 4; i++) {			
				$("#link"+i).attr("title",data.deals[i]);
			}
		});
		return false;
	});
</script>
<div class="divcontainer" style="width:720px">
	<div class="divheader">Offers</div>
	<div class="divmainbody" >
	
		<script>
			$(function() {
				$("#demo3").webwidget_slideshow_dot({
					slideshow_time_interval : '4000',
					slideshow_window_width : '720',
					slideshow_window_height : '300',
					slideshow_title_color : '#FFF',
					soldeshow_foreColor : '#7799BB',
					directory : '${pageContext.request.contextPath}/img/'
				});
			});
		</script>
		<div id="demo3" class="webwidget_slideshow_dot">
			<ul>
				<li><a id="link0"><img
						src="${pageContext.request.contextPath}/img/1.jpg" style="width:720px;height:250px;"
						alt="slideshow_large" /></a></li>
				<li><a id="link1" ><img
						src="${pageContext.request.contextPath}/img/2.jpg" style="width:720px;height:250px;"
						alt="slideshow_large" /></a></li>
				<li><a id="link2" ><img
						src="${pageContext.request.contextPath}/img/3.jpg" style="width:720px;height:250px;"
						alt="slideshow_large" /></a></li>
				<li><a id="link3" ><img
						src="${pageContext.request.contextPath}/img/4.jpg" style="width:720px;height:250px;"
						alt="slideshow_large" /></a></li>
			</ul>
			<div style="clear: both"></div>
		</div>
	</div>
</div>
