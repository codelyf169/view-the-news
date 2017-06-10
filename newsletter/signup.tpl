<!DOCTYPE html>
<html>
<head>
<title>Signup</title>
<head>
<body>
<form action="/signup" method="post">
	<div class="imgcontainer">
		<img src="/images/signup.png" alt="login" class="signup">
	</div>

	<div class="container">
		<label><b>Username</b></label>
		<input type="text" placeholder="Enter new Username" name="uname" required>
		
		<label><b>Password</b></label>
		<input type="password" placeholder="Enter new Password" name="pwd" id="psw1" required>

		<label><b>Confirm Password</b></label>
		<input type="password" placeholder="Confirm Password" name="cpwd" id="psw2" required>
	</div>

	<div class="container" style="background-color:#f1f1f1;">
		<button type="submit" onclick="check()">Signup</button>
	</div>
	<script>
	function check(){
	var password=document.getElementById("psw1");
	var cpassword=document.getElementById("psw2");
	if(password.value != cpassword.value)
	{
		cpassword.setCustomValidity("Passwords Dont Match!!");
	}
	else
	{
		cpassword.setCustomValidity("");
	}
	return false;
	}
	password.onchange=check;
	cpassword.onkeyup=check;
	</script>
</form>
</body>
<style>
input[type=text],[type=password]{
	display: block;
	margin: 8px auto;
	width: 80%;
	text-align:center;
	padding:12px 20px;
}
label{
	text-align:center;
	display: block;
	margin: auto;
}
.container{
	padding: 16px;
}
form{
	border:3px solid #662669;
}
button{
	color:white;
	background-color:#4CAf50;
	display:block;
	text-align:center;
	margin: auto;
	padding: 8px 12px;
	border-radius: 50%;
}
.imgcontainer{
	display:block;
	text-align:center;
	padding: 16px;
	margin:auto;
}
img.signup{
	width:20%;
	border-radius:50%;
}
</style>
<html>
