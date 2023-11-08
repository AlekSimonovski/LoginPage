<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Responsive Login in JSP using Bootstrap</title>
<link href="css/bootstrap.css" rel="stylesheet" type ="text/css">
<script type="text/javascript">
	function validate(){
		var user=document.myForm.username.value;
		if(user==""){}
		alert("Please enter username");
		document.myForm.username.focus();
		return false;
	}
	if((user.length<5) || user.length>15){
		alert("Username is too short/long.")
		document.myForm.username.focus();
		return false;
	}
	var password=document.myForm.password.value;
	var illegalChar=/[\W_]/;
	if(password==""){}
	alert("Please enter password");
	document.myForm.password.focus();
	return false;
}Aleklol321!
else if((password.length<6) || password.length>16)){
	alert("Password is too short/long.");
	document.myForm.password.focus();
	return false;
}
else if(illegalChar.test(password))
	alert("Password contains illegal characters.");
	document.myForm.password.focus();
	return false;
	}
}
</script>
</head>
<body>
<form action="AccountController" method="post">
<div class="container">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6 col-xs-12">
<div class="jumbotron">

<h1 class="text-center">Login Page</h1>

<br>
<p class="text-denger">${error}</p>
<div class="form-group">
<label class="control-label" for="username">Username</label>
<input type="text" name="username" class="form-control" placeholder="Username">
</div>
<div class="form-group">
<label class="control-label" for="password">Password</label>
<input type="password" name="password" class="form-control" placeholder="Password">
</div>
<input type="checkbox" name="remember"> Remember me?
<br><br>
<div class="pull-right">
<button type="submit" onClick="return validate();" class="btn btn-outline-warning">Login</button>
<button type="reset" class="btn btn-outline-dark">Close</button>
</div>
</div>

</div>
</div>

<div class="col-md-3"></div>

</div>

</form>
<!--Some JS Put here -->

<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
</body>
</html>