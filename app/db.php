<?php
 $server = 'Localhost';
 $serverusername = 'root';
 $serverpassword = 'root';
 $dbname = 'project';

 $connect = new mysqli($server, $serverusername, $serverpassword, $dbname);
   if ($connect->connect_error) {
      die("Connection Fail".$connect->connect_error);
   }

   //error handler function
function customError($errno, $errstr) {
  header("location:../index.php");
}

//set error handler
set_error_handler("customError");


 ?>
