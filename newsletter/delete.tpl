<!DOCTYPE html>
<html>
<head>
<title>Delete news</title>
</head>
<body>
<heading>Delete news</heading>
<form action="delete" method="post">
	%for x in range(i):
		<div>
		<input type="radio" name="radio" value="{{headline[x]}}">{{headline[x]}}<br>
		</div>
	%end
	<button type="submit">Delete</button>
</form>
</body>
<style>
form{
display:block;
margin:16px 20%;
background-color:#f1f1f1;
border: 2px solid #879238;
}
div{
display:block;
margin: 4px 20%;
padding:8px;
text-align:left;
}
button{
display:block;
margin:8px auto;
padding:8px;
color:white;
background-color:#4CAf50;
border-radius:50%;
}
heading{
display:block;
font-size:50px;
color:#768288;
text-align:center;
margin: 8px auto;
}
</style>
</html>


