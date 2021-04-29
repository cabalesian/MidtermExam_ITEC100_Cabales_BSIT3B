<?php
$link = mysqli_connect("localhost","root","");
mysqli_select_db($link,"infoassu");

?>

<!DOCTYPE html>
<html>
<head>
	<title>Create an Account</title>
	<link rel = "stylesheet"
			href = "styles/create1.css">
</head>
<body>
<div class="main-w3layouts wrapper">
		<h1>Sign Up</h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
				<form action="#" method="post">
					<input class="text" type="text" name="username" placeholder="Username" required= ""/>
					<input class="text email" type="email" name="email" placeholder="Email" required=""/>
					<input class = "text" type="password" id="password" name="password" placeholder = "Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required = ""/>
					<input class = "text w3lpass" type="password" id="password1" name="password" placeholder="Confirm Passowrd" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required = ""/>
					<div class="wthree-text">
						<label class="anim">
							<input class = "checkbox" type="checkbox" onclick="myFunction()" require = "">Show Password
						</label>
						<div class="clear"> </div>
					</div>
					<br>
					<div class="wthree-text">
						<label class="anim">
							<input type="checkbox" class="checkbox" required="">
							<span>I Agree To The Terms & Conditions</span>
						</label>
						<div class="clear"> </div>
					</div>
					<button class = "submit" type="submit" value="Sign Up" name = "submit">Sign Up</button>
				</form>
				<p>Have an Account already? <a href="login.php"> Login Now!</a></p>
			</div>
		</div>

		<script>
function myFunction() {
  var x = document.getElementById("password");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
  var y = document.getElementById("password1");
  if (y.type === "password") {
    y.type = "text";
  } else {
    y.type = "password";
  }
}
</script>

<?php

if(isset($_POST['submit'])){

$n1=$_POST['username'];
$n2=$_POST['password'];
$n3=$_POST['email'];

$stmt="INSERT INTO user (username,password, email)VALUES('$n1','$n2','$n3')";
if(mysqli_query($link,$stmt)){
	header("Location: login.php");
}
else{
	echo "fail";
}
}
?>

</body>
</html>