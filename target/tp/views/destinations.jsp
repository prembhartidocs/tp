<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/block.css" />
<style>
#header {
	height: 75px;
	background-size: 100% 100%;
	background-repeat: no-repeat;
}

#logo {
	width: 30%;
	height: 100%;
	float: left;
}

#footer {
	width: 1100px;
	margin: 0px auto;
	clear: both;
	background-color: #ACACFF;
	/* padding:10px; */
	border-radius: 5px;
	filter: alpha(opacity =   10);
}

#content {
	width: 1100px;
	margin: 0px auto;
	clear: both;
	margin-bottom: 30px;
	/* background-image: url("aero4.jpg"); */
}
/* #centerheader {
	margin: 0px auto;
	width: 1100px;
	height: 100%;
		
		 border-bottom:1px solid #ACACFF;
		 		 border-top:1px solid #ACACFF;
		
	
} */
#image-container {
	background-size: 100% 100%;
	background-image: url("views/css/logo2.jpg");
	background-repeat: no-repeat;
}
</style>
<title>Destinations</title>
</head>
<body bgcolor="#FBFBFF">
	<div id="content">
		<div style="width: 1050px; margin: 0px auto; border-top: 1px solid black; border-bottom: 1px solid black;">
			<div id="header">
				<div id="logo">
					<div id="image-container"
						style="min-width: 100%; min-height: 100%;">&nbsp;</div>
					<%-- <jsp:include page="Views/layout/logo.jsp" /> --%>
				</div>
				<div id="headercontent" style="float: right; margin-right: 15px;">
					<h1 style="color: #ACACFF;">Destinations</h1>
				</div>
						<div style="width:200px;clear:both;float:right" align="center"><h3 style="color:#ACACFF;border:1px solid black;border-radius:10px;"><a href="index.jsp" style="text-decoration:none;">Back to Home</a></h3></div>
			</div>

		</div>
		<div style="width: 500px; float: left; margin: 25px;">
			<div class="divcontainer" style="width: 500px; float: left;">
				<div class="divheader">GOA BEACH HOLIDAYS</div>
				<div class="divmainbody" align="center"
					style="padding-top: 5px; background-image: url(${pageContext.request.contextPath}/img/sky.jpg);">

					<img src="<c:url value='/img/goa.jpg'/>" width="480px"
						style="border: 1px solid black; border-radius: 5px;" /><br />
					<div style="padding: 5px; width: 450px">The 100 km. long
						coastline of Goa is endowed with some of the loveliest beaches in
						the world. Tucked between the Western Ghats and the Arabian Sea.
						Goa blends scenic beauty with a latin heritage and a leisurely way
						of life. For the beach enthusiast, Goa is a veritable paradise
						that helps you discover an exciting new beach every day. And there
						is a wide variety of them - Colva, Betul, Dona Paula, Calangute,
						Gasper Dias, Baga, Anjuna, Bogmalo and Vagotor fringed with palms
						streching out in the horizon, while the sun beams to the merry
						dances of waves. There are several beach resorts in South, North
						Goa catering to the needs of all levels and to suit all pockets.
						Goa is connected by air with Delhi, Bombay, Bangalore, Cochin,
						Madras, Ahmedabad. Now there is a catamaran service operating
						between Bombay and Goa.</div>
				</div>
				<div class="divfooter"></div>
			</div>


			<div class="divcontainer"
				style="width: 500px; float: left; margin-top: 20px;">
				<div class="divheader">NORTHEN INDIA</div>
				<div class="divmainbody" align="center"
					style="padding-top: 5px; background-image: url(${pageContext.request.contextPath}/img/sky.jpg);">
					<img src="<c:url value='/img/akh.jpg'/>" width="480px"
						style="border: 1px solid black; border-radius: 5px;" /><br />
					<div style="padding: 5px; width: 450px">Splendid Himalayas,
						Thar desert, Indo-Gangetic plains provide variation in the climate
						and topogarphy across the northern India. Himalayas hold some of
						the scenic hill stations of the subcontinent. Delhi, capital of
						India is also located in north India. Before Britishers shifted
						their capital from Calcutta to Delhi, this historical place
						already had seen fanactic political activities for centuries.</div>
				</div>
				<div class="divfooter"></div>
			</div>
		</div>
		<div style="width: 500px; float: left; margin-left: 25px;margin-right:25px;">
			<div class="divcontainer"
				style="width: 500px; clear: both; float: left;">
				<div class="divheader">Agra</div>
				<div class="divmainbody" align="center"
					style="padding-top: 5px; background-image: url(${pageContext.request.contextPath}/img/sky.jpg);">
					<img src="<c:url value='/img/tajmahal.jpg'/>" width="480px"
						style="border: 1px solid black; border-radius: 5px;" /><br />
					<div style="padding: 5px; width: 450px">Close to Agra are
						twin cities of Mathura and Vrindavan. These two places are
						important pilgraimage for Hindus. In Uttar Pradesh, on the banks
						of holy river Ganga is located Varanasi. Varanasi or Banaras as it
						is known has been very sacred for the Hindus as they consider this
						place to be abode of Lord Shiva. While Himachal Pradesh, Uttar
						Pradesh, Jammu and Kashmir have numerous hills stations, the dry
						Thar desert of Rajasthan holds historic cities of Jaipur, Jodhpur,
						Udaipur. The palaces, forts and gardens and lakes add colour to
						this otherwise barren area. The cities of Rajasthan spell Royal
						grandeur in their structure and have been attracting a major chunk
						of foreign tourists.</div>
				</div>
				<div class="divfooter"></div>
			</div>

			<div class="divcontainer"
				style="width: 500px; float: left; margin-top: 20px;">
				<div class="divheader">Southern India</div>
				<div class="divmainbody" align="center"
					style="padding-top: 5px; background-image: url(${pageContext.request.contextPath}/img/sky.jpg);">
					<img src="${pageContext.request.contextPath}/img/ajanta.jpg" width="480px"
						style="border: 1px solid black; border-radius: 5px;" /><br />
					<div style="padding: 5px; width: 450px">While the lofty
						Himalayas have been gaurding the northern frontiers of India, the
						southern plateau has been washed by genetle waves of the oceans.
						The people here are from the Dravidian race and are very
						protective about their culture and traditions. But strangely it is
						the southern region which has been attracting most of foreign
						investment in the recent times. Infact it was on Malabar coast of
						Kerala that first foreigner from the West landed in India. From
						the back waters of Kerala to exotic coral islands and lush green
						hill stations in Tamil Nadu all have a charm of their own. The
						Capital city of Karnataka, Bangalore can match any other city in
						the west. Recently this place has come up as the software hub of
						the world. Popularly called the garden city, Bangalore is one of
						most jazzy places in India. On the line of Bangalore is coming up
						Hyderabad. A quite city known for the Nizam rulers, Hyderbad is
						the second place in India which has a cyber city.</div>
				</div>
				<div class="divfooter"></div>
			</div>
		</div>
		<div id="footer">
			<jsp:include page="/views/layout/footer.jsp" />
		</div>
	</div>
</body>
</html>