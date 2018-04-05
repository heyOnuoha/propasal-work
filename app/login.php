<?php
if (isset($_POST['email'])) {$email = $_POST['email'];}
if (isset($_POST['password'])) {$password = $_POST['password'];}

$password = md5($password);

$log = "SELECT * FROM users WHERE email = '$email' AND password = '$password'";
 $result = mysqli_query($connect, $log);
 if ($connect->query($result)== TRUE) {
   echo "row finded";
 }
 ?>
