<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel = "stylesheet"
			href = "styles/design2.css">


</head>
<?php include 'data2.php' ?>
<body background="images/cvsuimus.jpg">
	<div class="login-page">
  <div class="form">
    <form class="login-form" method = "post">
    <br>
    
      <input type="text" placeholder="username" name = "user" required="" />
      <input type="password" placeholder="password" name = "pass" required="" />
      <button type  = "submit" name = "login" id = "myBtn">login</button>
      <p class="message">Not registered? <a href="signup.php">Create an account</a></p>
      <p class="message">Forgot Password? <a href="change.php">Click here</a></p>
    </form>
  </div>
</div>





</body>
</html>
