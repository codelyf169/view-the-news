<!DOCTYPE html>
<html>
<head>
<title>Add news</title>
</head>
<body>
<heading>Add News</heading>
<form action="/add" method="post" enctype="multipart/form-data">
	<div class="container1">
		<label><b>Headline:</b></label>
		<textarea placeholder="Headline" name="headline" class="hl" type="text"></textarea>
	</div>

	<div class="container2">
		<label><b>Details:</b></label>
		<textarea placeholder="Details of the news" name="content" class="cnt" type="text"></textarea>
	</div>
	<div class="container3">
		<input type="file" name="file">
		<button type="submit" class="but">Add news</button>
	</div>
</form>
</body>
<style>
form{
text-align:center;
display: block;
margin: 16px 20%;
background-color: #f1f1f1;
border: 2px solid #987493;
}
heading{
padding:16px;
display: block;
text-align: center;
margin: 8px auto;
color: #798732;
font-size: 50px;
}
div{
display: block;
padding: 10px;
margin: auto;
width: 40%;
}
.hl{
display:block;
padding: 10px;
margin: 8px auto;
width: 80%;
height: 8px;
}
.cnt{
display:block;
padding: 10px;
margin: 8px auto;
width: 80%;
height: 80px;
}
.but{
display:block;
margin:auto;
color:white;
background-color:#4CAF50;
padding: 8px;
border-radius: 50%;
}
.file{
display:block;
margin: 8px auto;
text-align:center;
padding: 8px;
}
</style>
</html>
	

