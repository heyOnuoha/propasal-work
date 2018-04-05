<?php
// include database connection
    require 'db.php';

// checking if data exist

    if (isset($_POST['address'])) {$address = $_POST['address'];}
    if (isset($_POST['fullname'])) {$fullname = $_POST['fullname'];}
    if (isset($_POST['state'])) {$state = $_POST['state'];}
    if (isset($_POST['city'])) {$city = $_POST['city'];}
    if (isset($_POST['phonenumber'])) {$phonenumber = $_POST['phonenumber'];}
    if (isset($_POST['paymenttype'])) {$paymenttype = $_POST['paymenttype'];}
    if (isset($_POST['cardnumber'])) {$cardnumber = $_POST['cardnumber'];}
    if (isset($_POST['nameholder'])) {$holdername = $_POST['nameholder'];}
    if (isset($_POST['cvv'])) {$cvv = $_POST['cvv'];}
    if (isset($_POST['exp'])) {$exps = $_POST['exp'];}
// create a random orderid
   $orderid  = mt_rand();

   $booktitle = "";
  // insert data into database


   $cart = "INSERT INTO adresse(address, fullname, state, city, phonenumber, paymenttype, carnumber, holdername, cvv, exps, orderid, booktitle)
   VALUES('$address', '$fullname', '$state', '$city', '$phonenumber', '$paymenttype', '$cardnumber', '$holdername', '$cvv', '$exps', '$orderid', '$booktitle')";
    if ($connect->query($cart)== TRUE) {
      echo "$orderid";
    }
 ?>
