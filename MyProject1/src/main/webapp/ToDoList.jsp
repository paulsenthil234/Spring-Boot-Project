<!DOCTYPE html>
<html>
<head>
<title>ToDoList Database</title>
<meta name="viewport" content="width=device-width,
initial-scale=1">
<link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/boot
strap.min.css" rel="stylesheet"
integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztc
QTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script
src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script
src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstr
ap.bundle.min.js"
integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJ
oMp4YLEuNSfAP+JcXn/tWtIaxVXM"
crossorigin="anonymous"></script>
<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sw
eetalert.css">
<script
src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/swe
etalert-dev.js"></script>
<style>
body{
background-image: url('images/image5.jpg');
background-size:cover;
}
h1{
left:15%;
top:8%;
position:absolute;
}
#name{
width:400px;
height:40px;
top:18%;
left:5%;
position:absolute;
}
#status{
width:100px;
height:30px;
top:30%;
left:10%;
position:absolute;
}
button{
width:100px;
height:30px;
top:30%;
left:20%;
position:absolute;
}
a{
top:40%;
left:15%;
position:absolute;
}
</style>
</head>
<body>
<a href="logout" class="btn btn-danger">Logout</a>
<div class="row">
<div class="col-md-6 col=lg-6">
<form action="tasksubmit" method="post">
<h1>Welcome</h1>
<input id="name" type="text" placeholder="Task" name="task" />
<select name="Status" id="status">
<option value="Completed">Completed</option>
<option value="WIP">WIP</option>
<option value="Process">Process</option>
<option value="Wait">Wait</option>
</select>
<button>Add</button>
</form>
</div>
<div class="col-md-6 col=lg-6">
<table id="table" class="table table-dark table-striped">
<thead>
<tr>
<th>Task ID</th>
<th>Task Description</th>
<th>Status</th>
<!-- Add more columns as needed -->
</tr>
</thead>
<tbody>
${todolist}
</tbody>
</table>
</div>
</div>
</body>
</html>