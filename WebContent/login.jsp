<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Login Page</title>
	<style type="text/css">
		body {  
		    margin: 0;  
		    padding: 0;  
		    background-color:#6abadeba;  
		    font-family: 'Arial';  
		}  
		.login {  
				text-align: center;
		        width: 382px;  
		        overflow: hidden;  
		        margin: auto;  
		        margin: 20 0 0 450px;  
		        padding: 80px;  
		        background: #23463f;  
		        border-radius: 15px ;  
		}  
		h2 {  
		    text-align: center;  
		    color: #277582;  
		    padding: 20px;  
		}  
		label {  
		    color: #08ffd1;  
		    font-size: 17px;  
		}  
		#Uname {  
		    width: 300px;  
		    height: 30px;  
		    border: none;  
		    border-radius: 3px;  
		    padding-left: 8px;  
		}  
		#Pass {  
		    width: 300px;  
		    height: 30px;  
		    border: none;  
		    border-radius: 3px;  
		    padding-left: 8px;  
		 }  
		#log{  
		    width: 300px;  
		    height: 30px;  
		    border: none;  
		    border-radius: 17px;  
		    padding-left: 7px;  
		    color: blue;  
		}  
		span {
			color: red;
		}
	</style>
	</head>
	<body>
		<h2>Sample program using Http session</h2><br>    
	    <div class="login">    
		    <form id="login" action="Login" method="post">    
		        <label><b>User Name     
		        </b>    
		        </label>    
		        <input type="text" name="uname" id="Uname" placeholder="Username">    
		        <br><br>    
		        <label><b>Password     
		        </b>    
		        </label>    
		        <input type="password" name="pass" id="Pass" placeholder="Password">
		        <br><br><span>${message}</span>
		        <br><br>    
		        <input type="submit" name="log" id="log" value="Login">         
		    </form>
		  </div>
	</body>
</html>