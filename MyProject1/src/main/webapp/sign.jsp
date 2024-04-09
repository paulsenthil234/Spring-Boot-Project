<!DOCTYPE html>
<html>
<head>
<title>SignUp Database</title>
<style>
body{
background-image: url('images/image6.jpg');
background-size:cover;
}
form{
border:2px solid black;
border-radius:25px;
width:500px;
height:400px;
left:35%;
top:20%;
position:absolute;
}
h1{
text-align:center;
}
#fname{
top:20%;
left:5%;
position:absolute;
}
#name{
width:250px;
height:30px;
top:23%;
left:40%;
position:absolute;
}
#femail{
top:35%;
left:5%;
position:absolute;
}
#email{
width:250px;
height:30px;
top:38%;
left:40%;
position:absolute;
}
#fpass{
top:50%;
left:5%;
position:absolute;
}
#pass{
width:250px;
height:30px;
top:53%;
left:40%;
position:absolute;
}
#fcpass{
top:65%;
left:5%;
position:absolute;
}
#cpass{
width:250px;
height:30px;
top:68%;
left:40%;
position:absolute;
}
button{
width:100px;
height:40px;
left:56%;
top:80%;
position:absolute;
}
p{
left:25%;
top:89%;
position:absolute;
}
a{
color:black;
left:70%;
top:93%;
position:absolute;
}
</style>
</head>
<body>
<form action="signupsubmit" onsubmit="return sign()"
method="post">
<h1>SignUp</h1>
<h3 id="fname">Name : </h3>
<input id="name" type="text" placeholder="Name" required
name="name"/>
<h3 id="femail">Email : </h3>
<input id="email" type="text" placeholder="Email"
pattern="^[a-z0-9]+@[a-z]+\.[a-z]{2,3}$" name="email" required/>
<h3 id="fpass">Password : </h3>
<input id="pass" type="password" placeholder="Password"
name="password"required/>
<h3 id="fcpass">Confirm Password : </h3>
<input id="cpass" type="password" placeholder="Confirm
Password" name="confpass" required/>
<button value="SignUp" >SignUp</button>
<p><strong>Already have an Account please</strong></p>
<a href="login"><strong>Login</strong></a>
</form>
<script
src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.27/dist/swee
talert2.all.min.js
"></script>
<link
href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.27/dist/swe
etalert2.min.css
" rel="stylesheet">
<script>
function sign()
{
let Name = document.getElementById("name").value;
let Email = document.getElementById("email").value;
let Password = document.getElementById("pass").value;
let ConfirmPassword =
document.getElementById("cpass").value;
if(Name == "")
{
Swal.fire("invalid Name");
return false;
}
else if(Email == "")
{
alert("invalid Email");
return false;
}
else if(Password == "")
{
alert("invalid Password");
return false;
}
else if(ConfirmPassword == "")
{
alert("Retype the ConfirmPassword");
return false;
}else if(Password != ConfirmPassword)
{
Swal.fire("Password & Confirm Password is not
matched");
return false;
}
else{
return true;
}
}
</script>
</body>
</html>