<!DOCTYPE html>
<html>8\
<head>
<title>Homepage</title>
</head>
<body>
<heading>Workplace</heading>
<div class="container1">
	<a href=add.tpl><img src="images/addnews" alt="addnews" class="add"></a>
	<p><b><br>Add news</br></b></p>
</div>
<div class="container2">
	<a href=delete1><img src="images/deletenews" alt="deletenews" class="delete"></a>
	<p><b><br>Delete news</br></b></p>
</div>
<div class="container3">
	<a href=show><img src="images/shownews" alt="shownews" class="show"></a>
	<p><b><br>Show news</br></b></p>
</div>
<p class="para"><a href=logout>Logout!!</a></p>
</body>
<style>
heading{
display:block;
margin: 8px auto;
text-align:center;
padding: 30px;
font-size: 50px;
color: #437487;
}
div{
display: inline-block;
width:29%;
padding:20px;
background-color:#f1f1f1;
margin:8px auto;
}
.container1{
text-align:center;
border:2px solid #682763;
margin-left: 12px;
}
.container2{
float:none;
text-align:center;
border:2px solid #682763;
}
.container3{
text-align:center;
border:2px solid #682763;
}
img.add{
text-align:center;
width: 20%;
border-radius: 50%;
}
img.delete{
text-align:center;
width: 20%;
border-radius: 50%;
}
img.show{
text-align:center;
width: 20%;
border-radius: 50%;
}
.para{
text-align: center;
padding: 16px;
}
</style>
</html>
