<%@ page contentType="text/html; charset=UTF-8"%>
<%-- <%@ taglib prefix="s" uri="/struts-tags"%> --%>

<script src="${pageContext.request.contextPath}/js/loadonQuery.js"></script>
<script>
	function check() {
		var pwd = document.getElementById("pwd").value;
		var rpassword = document.getElementById("rpassword").value;
		if (pwd == rpassword) {
			document.getElementById("notmatch").innerHTML = "";
		} else {
			document.getElementById("rpassword").value = "";
			document.getElementById("notmatch").innerHTML = "Password don't match";
		}
	}
	function checkuser() {	
		uid=document.getElementById("passenger").value;	
				$.post(
						"userExist.action",
						{
							userid : uid
						},
						function(data, status) {
							if (data == "1") {
								document.getElementById("err").innerHTML = "&nbsp;&nbsp;&nbsp;<span style='color:red'>"+uid+" Exists Already</span>";
								document.getElementById("passenger").value = "";
							} else {
								document.getElementById("err").innerHTML = "&nbsp;&nbsp;&nbsp;<span style='color:green'>Available</span>";
							}
						});
	}
</script>

<script>
	$(function() {
		$("#loginform").dialog({
			autoOpen : false,
			show : {
				effect : "puff",
				duration : 750
			},
			hide : {
				effect : "explode",
				duration : 400
			},
			height : 225,
			width : 400,
			modal : true
		});
		$("#loginbutton").button().click(function() {
			$("#loginform").dialog("open");
		});
		$("#logout").button().click(function() {
			$("#loginform").dialog("open");
		});
	});
</script>

<script>
	$(function() {
		$("#registerform").dialog({
			autoOpen : false,
			show : {
				effect : "puff",
				duration : 750
			},
			hide : {
				effect : "explode",
				duration : 400
			},
			height : 390,
			width : 500,
			modal : true

		});
		$("#registerbutton").button().click(function() {
			$("#registerform").dialog("open");
		});
	});
</script>
<style>
.mybutton1 {
	background-color: #ACACFF;
	padding: 5px;
	border-radius: 5px;
	font: 15px Arial, sans-serif;
	font-weight: bolder;
	cursor: pointer;
}

.mybutton1:hover {
	box-shadow: 10px 5px 4px #888888;
}
</style>
<div id="loginform" title="Login" style="background-color: #ACACFF;"
	align="center">
	<form id="login" action="doLogin" method="post">
		<table>
			<tr>
				<td>Email</td>
				<td><input name="pid" type="text" placeholder="  Email ID"
					id="email" pattern="^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"
					class="textfield" title="Enter Valid Email..!! i.e. prem@gmail.com"
					autofocus required /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input name="password" type="password" id="password"
					class="textfield" placeholder="  Password" required /></td>
			</tr>
			<tr>
				<td></td>
				<td align="right"><input type="submit" class="mybutton1"
					id="login" value="Sign in" /></td>
			</tr>
			<tr>
			<td></td>
			<td align="right"><a style="cursor:pointer;"onclick='$("#loginform").dialog("close");$("#advert").load("Views/forgetPassword.html");'>Forget Password</a></td>
			</tr>
		</table>
	</form>
</div>
<div id="registerform" title="register"
	style="background-color: #ACACFF;" align="center">
	<form id="register" action="signup" method="post">
		<table>
			<tr>
				<td>Email</td>
				<td><input type="text" name="pid" size="35" id="passenger"
					class="textfield" onblur='if(this.value.length!=0)checkuser()'
					pattern="^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"
					title="Enter Valid Email..!! i.e. prem@gmail.com" autofocus
					required /></td>
			</tr>
			<tr>
				<td></td>
				<td><span id="err"></span></td>
			</tr>
			<tr>
				<td>First Name</td>
				<td><input type="text" name="fname" size="35" id="fname"
					class="textfield" title="Enter Your Nick name..!! " required /></td>

			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password" size="35" id="pwd"
					class="textfield" required /></td>
			</tr>
			<tr>
				<td>Repeat Password</td>
				<td><input type="password" name="rpassword" size="35"
					class="textfield" id="rpassword"
					title="Retype Password should Match Above Password."
					onblur="check()" required />
					<p id="notmatch" style="color: red"></p></td>
			</tr>
			<tr>
				<td>Mobile</td>
				<td><input type="text" name="mobile" size="35" maxlength="10"
					class="textfield" pattern="[0-9]{10}"
					title="Enter 10 digit for Phone No. i.e. 9718883333" required /></td>
			</tr>
			<tr>
				<td><br /></td>
				<td align="right"><input type="submit" class="mybutton1"
					value="Sign Up" /></td>
			</tr>
		</table>
	</form>
</div>



<s:if test="#session.passenger==null">
	<div class="rightheader" style="float: right; padding-top: 12px;">
		<div id="notlogin">
			<table style="align: right;">
				<tr>
					<td>
						<button id="registerbutton">Register</button>
					</td>
					<td>
						<button id="loginbutton">Login</button>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<div id="welcome" style="float: right"></div>
	<div id="welcomeuser" style="float: right"></div>
</s:if>
<s:else>
	<div class="rightheader" style="float: right; padding-top: 12px;">
		<table style="align: right;">
			<tr>
				<td>
					<div
						style="padding: 5px; font-family: font-family :Lucida Console; display: block; background-color: #ACACFF; border-radius: 5px; font-size: 20px;">
						&nbsp;&nbsp; Welcome &nbsp;&nbsp;
						<s:property value="#session.passenger.fname" />
						..!!&nbsp;&nbsp;&nbsp;&nbsp;
					</div>
				</td>
				<td><a class="mybutton" href="logout.action">LogOut</a></td>
			</tr>
		</table>
	</div>

	<div id="welcome" style="float: right"></div>
	<div id="welcomeuser" style="float: right"></div>
</s:else>
<script>
	$('#login').submit(function() { // catch the form's submit event
		$.ajax({ // create an AJAX call...
			data : $(this).serialize(), // get the form data
			type : $(this).attr('method'), // GET or POST
			url : $(this).attr('action'), // the file to call
			success : function(response) { // on success..				
				$('#headercontent').html(response); // update the DIV				
				$('#nav').load('usernav.jsp');
				$('#registerContainer').load('Views/welcomeuser.jsp');
				$('#advert').load('managebooking.action');
				$("#loginform").dialog("close");
			}
		});
		return false; // cancel original event to prevent form submitting
	});
</script>

<script>
	$('#register').submit(function() { // catch the form's submit event
		$.ajax({ // create an AJAX call...
			data : $(this).serialize(), // get the form data
			type : $(this).attr('method'), // GET or POST
			url : $(this).attr('action'), // the file to call
			success : function(response) { // on success..
				$('#advert').load('Views/userAdded.jsp');
				$("#registerform").dialog("close");
			}
		});
		return false; // cancel original event to prevent form submitting
	});
</script>