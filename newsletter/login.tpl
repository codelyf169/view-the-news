<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
</head>
<body>
<form action="login" method="post">
	<div class="imgcontainer">
		<img src="/images/login.png" alt="login" class="Login">
	</div>
	
	<div class="container">
		<label align="middle"><b>Username</b></label>
		<input type="text" placeholder="Enter Username" name="uname" required>
		<label><b>Password</b></label>
		<input type="password" placeholder="Enter password" name="psw" required>

		<button type="submit">Login</button>
	</div>

	<div class="container" style="background-color:#f1f1f1; text-align: center;">
		<span class="signup"><a href="signup.tpl">Not an  user yet? Sign up Now!</a></span>
	</div>
</form>
</body>
<style>
form {
    border: 3px solid #727;
}

input[type=text], [type=password]{
	display: block;
	width:80%;
	padding: 12px 10px;
	margin: 8px auto;
	text-align: center;
}
.imgcontainer{
	text-align: center;
	margin: 24px 0 12px 0;
}
.container{
	padding: 16px;
}
button{
	display: block;
	border-radius: 50%;
	text-align:center;
	padding: 12px 10px;
	margin: 8px auto;
	color: white;
	background-color: #4CAF50;
}
img.Login{
	width:20%;
	border-radius: 50%;
}
label {
  display: block;
  margin: 8px auto;
  text-align: center;
}​
span.signup{
	display: block;
	margin: 8px auto;
	width: 40%;
	padding: 10px;
	text-align: center;
}
</style>
</html>
