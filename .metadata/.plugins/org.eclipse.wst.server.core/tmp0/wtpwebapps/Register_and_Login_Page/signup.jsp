<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Register</title>
</head>

<body>
	<div align="center">
		<fieldset>
			<legend>
				<h1>Sign Up</h1>
			</legend>
			<form onsubmit="return validate()" action="SignUpServlet"
				method="post">
				<table>
					<tr>
						<td>Email:</td>
						<td><input type="email" name="email" placeholder="Email ID"
							id="email"></td>
						<td><span style="color: red;" id="emailerror">*</span></td>
					</tr>
					<tr>
						<td>Password:</td>
						<td><input type="password" name="pass" placeholder="Password"
							id="pass"></td>
						<td><span style="color: red;" id="passerror">*</span></td>
					</tr>
					<tr>
						<td>Confirm Password:</td>
						<td><input type="password" name="cpass"
							placeholder="Confirm Password" id="cpass"></td>
						<td><span style="color: red;" id="cpasserror">*</span></td>
					</tr>
					<tr>
						<td><input type="submit" value="Register"></td>
					</tr>
				</table>
			</form>
			<br>
			<hr>
			<a href="login.jsp">Login</a>
		</fieldset>
	</div>

	<script>
			function validate() {
				var email = document.getElementById("email").value;
				var pass = document.getElementById("pass").value;
				var cpass = document.getElementById("cpass").value;

				if (email == "") {
					document.getElementById("emailerror").innerHTML = "Please enter your email...";
					return false;
				}
				else {
					document.getElementById("emailerror").innerHTML = "";
				}
				if (pass == "") {
					document.getElementById("passerror").innerHTML = "Please enter new password...";
					return false;
				}
				else {
					document.getElementById("passerror").innerHTML = "";
				}
				if (pass.length < 5 && pass.length > 15) {
					document.getElementById("passerror").innerHTML = "Password should be min 5 and max 15 character...";
					return false;
				}
				else {
					document.getElementById("passerror").innerHTML = "";
				}
				if (cpass == "") {
					document.getElementById("cpasserror").innerHTML = "Please confirm your password...";
					return false;
				}
				else {
					document.getElementById("cpasserror").innerHTML = "";
				}
				if (cpass != pass) {
					document.getElementById("cpasserror").innerHTML = "Both passwords should match...";
					return false;
				}
				else {
					document.getElementById("cpasserror").innerHTML = "";
				}
				return true;
			}
		</script>
</body>

</html>