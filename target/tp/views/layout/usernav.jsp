<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- <%@ taglib prefix="s" uri="/struts-tags"%> --%>
<!-- <s:if test="#session.passenger==null"> -->


	<nav class="menu1">
		<ul>
			<li id="home"><a href="index.jsp">Home</a></li>
			<li id="home"><a href="views/destinations.jsp" >Destinations</a></li>
			<li id="home"><a onclick="$('#advert').load('views/aboutus.html');document.getElementById('work').innerHTML=''">About
					Us</a></li>
			<!-- <li id="home"><a
				onclick="$('#advert').load('Views/contactUs.jsp')">Contact Us</a></li> -->
			<li id="adminlogin"><a
				href="index2.jsp">Admin</a></li>
		</ul>
	</nav>
	
	
	
<!-- </s:if> -->
<!-- <s:else>
	<nav class="menu1">
		<ul>
			<li id="home"><a href="index.jsp">Home</a></li>
			<li id="home"><a href="index.jsp">Our Tours</a></li>
			<li id="home"><a href="destinations.jsp" >Destinations</a></li>
			<li><a onclick="$('#advert').load('Views/aboutus.html')">About
					Us</a></li>
			<li id="home"><a onclick="$('#work').load('Views/contactUs.jsp')">Contacts</a></li>
			<li><a onclick="$('#advert').load('Views/profileUpdate.jsp');document.getElementById('work').innerHTML=''">Profile
					Update</a></li>
			<li><a href="#" onclick="$('#advert').load('managebooking.action');">Ticket
					History</a></li>
		</ul>
	</nav>
</s:else> -->