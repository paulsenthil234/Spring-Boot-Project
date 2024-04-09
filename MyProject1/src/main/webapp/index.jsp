<!DOCTYPE html>
<html>
<head>
<title>Login Database</title>
<script
src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.27/dist/swee
talert2.all.min.js
"></script>
<link
href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.27/dist/swe
etalert2.min.css
" rel="stylesheet">
<style>
body{
background-image: url('images/image7.jpg');
background-size:cover;
}
form{
border:1px solid white;
border-radius:25px;
width:400px;
height:300px;
left:15%;
top:28%;
position:absolute;
}
h1{
color:white;
text-align:center;
}
#email{
border-radius:10px;
width:250px;
height:30px;
top:28%;
left:18%;
position:absolute;
}
#pass{
border-radius:10px;
width:250px;
height:30px;
top:48%;
left:18%;
position:absolute;
}
button{
border-radius:25px;
width:100px;
height:40px;
left:40%;
top:70%;
position:absolute;
}
p{
color:white;
left:2%;
top:85%;
position:absolute;
}
a{
color:white;
left:42%;
top:90%;
position:absolute;
}
</style>
</head>
<body>
<form action="loginsubmit">
<h1>Login</h1>
<input id="email" type="text" placeholder="Email" name="Email"
pattern="^[a-z0-9]+@[a-z]+\.[a-z]{2,3}$" required/>
<input id="pass" type="password" placeholder="Password"
name="Password" required/>
<button value="Login" id="login">Login</button>
<p><strong>Create Account please</strong></p>
<a href="signup"><strong>SignUp</strong></a>
</form>
<% 
String Error = (String) session.getAttribute("Error");
if(Error == "Invalid Username,Password") {
%>
<script> swal.fire("Invalid Username,Password") </script>
<%
} else {
} %>
</body>
</html>
