<?php
$link = mysqli_connect("localhost","root","");
mysqli_select_db($link,"infoassu");

?>



<!DOCTYPE html>
<html>
<head>
	<title>	</title>
	<link rel = "stylesheet"
			href = "styles/design3.css">

</head>
<?php include 'data2.php' ?>
<body>
  <div class="login-page">
  <div class="form">
 
    <form class="login-form" method="post">
      <input type="text" placeholder="Enter your ID" name = "id"/>
      <input type="text" placeholder="Enter your Username" name = "user"/>
      <input type="text" placeholder="Enter your Old Password" name = "old"/>
      <input type="password" placeholder="Enter Your New Password" name = "new"/>
      <input type="password" placeholder="Confirm Password" name = "cpwd"/>

      <button type  = "submit" name = "change">Change Password</a></button>
      
<p class="message">Not registered? <a href="login.php">Create an account</a></p>
    </form>
  </div>
</div>



</body>
</html>