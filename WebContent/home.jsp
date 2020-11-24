<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Home Page</title>
		<style>
			body {  
			    margin: 0;  
			    padding: 0;  
			    background-color:#6abadeba;  
			    font-family: 'Arial';  
			    font-size:1.2em;
			}
			div {
				text-align: center;
			}
		</style>
	</head>
	<body>
		<div>
			<%
				if (session != null) {
					if (session.getAttribute("user") != null) {
						String name = (String) session.getAttribute("user");
						out.print("<h2>Hello " + name + "<br/>Welcome to your Profile</h2>");
					} else {
						response.sendRedirect("login.jsp");
					}
				}
			%>
			<p>Keep the page ideal for 1 minute
			<br> And try reloading the page
			<br> you will be logged out 
			<br>and will have to login again!
			</p>
			<br>
			<form action="Logout" method="post">
				<input type="submit" value="Logout">
			</form>
		</div>
	</body>
</html>