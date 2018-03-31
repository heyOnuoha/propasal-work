<?php
 $server = 'Localhost';
 $serverusername = 'root';
 $serverpassword = '';
 $dbname = 'project';

 $connect = new mysqli($server, $serverusername, $serverpassword, $dbname);
   if ($connect->connect_error) {
      die("Connection Fail".$connect->connect_error);
   }


 ?>
