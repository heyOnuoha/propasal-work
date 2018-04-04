<?php
 require 'db.php';
 session_start();
 $errors  = array();
 $success = array();
//signup
 if (isset($_POST['signup'])) {
   //collecting user input from the form
   $fullname =  $_POST['fullname'];
   $email = $_POST['email'];
   $password =  $_POST['password'];


    // check if there is no the same email in database

    if (isset($email)) {
      $queemail = "SELECT * FROM users WHERE email ='$email'";
      $result = mysqli_query($connect, $queemail);
      $rows = mysqli_num_rows($result);

      if ($rows > 0) {
        array_push($errors, "This email is already in use");
      }

      if (count($errors) == 0) {
        //encrypte password before inseting
        $password  = md5($password);

        // inserting user input  into database


         $qquery = "INSERT INTO users(fullname, email, password) VALUES('$fullname', '$email', '$password')";
         if ($connect->query($qquery)==TRUE) {
           array_push($success, " you have Succesfuly Registed please login ");
         }
      }
    }

$connect->close();
 }

// logkn

if (isset($_POST['login'])) {
// collecting user input
  $email = mysqli_real_escape_tring($connect, $_POST['email']);
  $password = mysqli_real_escape_tring($connect, $_POST['password']);
// encrypte password

 $password = md5($password);

//fetching data from database

 $login = "SELECT * FROM users WHERE email = '$email' AND password = '$password'";
 $rslogin = mysqli_query($connect, $login);
 if ($connect->query($login)==TRUE) {
   while ($rowsse = mysqli_fetch_array($rslogin)) {
     $username = $rowsse['fullnmane'];
   }
   $_SESSIONT[username] = $username;

  header("Location:index.php");
 }
}


 ?>
