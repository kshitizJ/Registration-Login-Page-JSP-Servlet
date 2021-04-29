<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Login</title>
</head>

<body>
	<div align="center">
		<fieldset>
			<%
				String status = (String) request.getAttribute("status");
			if (status != null) {
				out.println(status);
			}
			%>
			<legend>
				<h1>Login</h1>
			</legend>
			<form onsubmit="return validate()" action="LoginServlet" method="POST">
				<table>
					<tr>
						<td>Email:</td>
						<td><input type="email" name="emailid" placeholder="Email ID"
							id="email"></td>
						<td><span style="color: red;" id="emailerror">*</span></td>
					</tr>
					<tr>
						<td>Password:</td>
						<td><input type="password" name="password" placeholder="Password"
							id="pass"></td>
						<td><span style="color: red;" id="passerror">*</span></td>
					</tr>
					<tr>
						<td><input type="submit" value="Login"></td>
					</tr>
				</table>
			</form>
			<br>
			<hr>
			<a href="signup.jsp">Register</a>
		</fieldset>
	</div>
	<script>
            function validate() {
                var email = document.getElementById("email").value;
                var pass = document.getElementById("pass").value;

                if (email == "") {
                    document.getElementById("emailerror").innerHTML = "Please enter your email...";
                    return false;
                }
                else {
                    document.getElementById("emailerror").innerHTML = "";
                }
                if (pass == "") {
                    document.getElementById("passerror").innerHTML = "Please enter your password...";
                    return false;
                }
                else {
                    document.getElementById("passerror").innerHTML = "";
                }
                if (pass.length < 5 || pass.length > 15) {
                    document.getElementById("passerror").innerHTML = "Password should be min 5 and max 15 character...";
                    return false;
                }
                else {
                    document.getElementById("passerror").innerHTML = "";
                }
                return true;
            }
        </script>
</body>

</html>