<?php
include '../app/db.php';
?>
<?php
include "../php/header.php";
?>
<?php
if (isset($_POST['submit'])) {
  if (isset($_GET['action'])) {
    $id = $_GET['action'];
    echo "$id";
  }
   $mysli = "SELECT * FROM book WHERE id = '$id'";
   $myresult = mysqli_query($connect, $mysli);
     while ($rowse = mysqli_fetch_array($myresult)) {
       $image = $rowse['image'];
       $title = $rowse['title'];
       $sbn = $rowse['sbn'];
       $author = $rowse['author'];
       $binding = $rowse['binding'];
	     $price = $rowse['Price'];
	     $description = $rowse['description'];
     }
}

 ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width = device-width, initial-scale= 1">
    <link rel="stylesheet" type="text/css" href="../css/detail.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!--    <link rel="stylesheet" media="screen" href="../indexstyle.css" type="text/css" />-->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
      <script type="text/javascript" src="myjs/js.js"></script>
    <title></title>
  </head>
  <body >
<section>

<div class="bookhistory">
<div class="bookimage">
 <img src="<?php echo "../image/".$image; ?>" alt="bookshop" >
</div>
<div class="descriptions">
  <p id="booktitle"><?php echo "$title"; ?></p>
  <hr >
  <hr>
 <ul>
   <li>Sbn:</li><span><?php echo "$sbn"; ?></span><br>
   <li>Author(s):</li><span> <?php echo "$author"; ?></span><br>
   <li>Binding:</li><span><?php echo "$binding"; ?></span><br>
   <li><b style="color:#c0392b">Price</b>:<big style="color:#c0392b" id="price"><?php echo "$price"?></big> <span> GHS</span> </li>

   <form  id="theform">
    <span style="color:gray; margin-right:10px;">Quantity</span> <input type="number" name="text" value="1" id="quantity"><br>

     <input type="submit" name="buynow" value="buy Now" id="click">
      <input type="submit" name="buynow" value="Add to card" id="clicks">
   </form>
 </ul>
  </div>

    <div class="boookdescription">
  <form style="display:inline-block">
    <input type="submit" name="submit" value="Description" id="desc"><input type="submit" name="submit" value="Reviews" id="descs">
  </form>
        <hr width="1000px" color="lightgray" style="margin-left:0px;margin-top:-0px;">
      <p id="descriptiontext"><?php echo "$description" ?></p>
      <div class="Reviews">
        <div class="">
          <form>
            <P style="text-align:left; font-size:22px;color:#26dac3; margin-left:10px; margin-bottom:10px;"> leave a Review</p>
            <input type="email" name="name" value="" placeholder="Enter your email" id="email"><br>
            <textarea name="name" rows="5" cols="40" id="textarea"></textarea><br>
            <input type="submit" name="comment" value="comment" id="rcomment">
          </form>
        </div>
      </div>
  <hr  style="margin-top:30px; width:1000px; align:center;margin-bottom:30px;">
    </div>
  </div>
</section>
<!-- related books; -->

<section>
  <div class="realatedbooks">
      <div class="middle">
        <div class="these">
          <p>People Also Search For These Books</p>
        </div >
        <div class="books">
              <?php

                $sql = "SELECT * FROM book ORDER BY id DESC ";
                $result = mysqli_query($connect, $sql);
                while ($rows = mysqli_fetch_array($result)) {
                  $image = $rows['image'];
                  $title = $rows['title'];
                  $sbn = $rows['sbn'];
                  $author = $rows['author'];
                  $binding = $rows['binding'];
              ?>

            <div class="book" id="book" >
              <form>
              <i id="load"></i>
              <img src="<?php echo "../image/".$image; ?>" alt="CEG GHANA BOOKS" id="bookimages">
              <p id="title"><?php echo "$title"; ?></p>
              <p>
                <dl class="det">
                  <dt>Author(s):</dt><br>
                  <dd class="author"><?php echo "$author"; ?></dd><br>
                </dl>
                <div class="btst">
                <input type="submit" name="sumit" value="Learne more" id="booksubmit"><span>&#187;</span>

              </div>
              </p>
            </form>
            </div>
        <?php
        }
        ?>
      </div>
    </div>
    </div>
  </div>
</section>
 <div class="buynow">
   <div class="location">
     <div class="closepopup">
     <button type="button" class="close" aria-label="Close">
     <span aria-hidden="true">&times;</span>
     </button>
     </div>
       <div class="buynowcontent">
     <div class="addresses">
         <center>
           <p style="margin:10px 0px;" id="errortext"></p>
            <select class="option" name="" id="thevalue">
              <option value="" selected disabled>Choose an option </option>
              <option value="1">Purchase online</option>
              <option value="2">Pick up at Our office</option>
            </select>
          <form class="form1">
            <input type="text" name="addres" value="" placeholder="Address*" class="formdat1" id="address"><br>

            <input type="text" name="fullname"  placeholder="Full Name*"  class="formdat1" id="fullname"><br>

              <input type="text" name="addres" value="" placeholder="State / Region*" class="formdat1" id="state"><br>

              <input type="text" name="addres" value="" placeholder="City*" class="formdat1" id="city"><br>

            <input type="number" name="phonenumber" value="" placeholder="Phone number*" class="formdat1" id="phonenumber" autocomplete="tel"><br>

          </form>
      <p id="form2text" style="margin:10px 0px;"></p>
          <form class="form2" >
            <select class="option" name="" id="formloaction">
              <option selected disabled>Choose location </option>
              <option value="">Accra</option>
              <option value="">TEMA</option>
              <option value="">ABETIFI</option>
              <option value="">KUMASI</option>
              <option value="">SUNYANI</option>
              <option value="">CAP COAST</option>
              <option value="">TAMALE</option>
            </select><br>

            <input type="text" name="addres" value="" placeholder="Full name " class="formdat1"  id="fullname2"><br>

              <input type="text" name="addres" value="" placeholder="Phone number" class="formdat1" id="phonenumber2"><br>
          </form>
            <button type="button" name="button" id="button">proceed to checkout</button>
 </center>
</div>
 <div class="checkout" style="display:none">
   <center>
  <p id="textreponse" style="margin-bottom:10px;"></p>
     <select class="option" name="" id="payment">
       <option value="" selected disabled>Choose an option </option>
       <option value="mobile money">Mobile Money</option>
       <option value="debit card">Debit card</option>
     </select>
  <div class="paywith">
    <form class="form3">
     <input type="number" name="card number" value="" placeholder="Crad Number*" id="cardnumber" class="formdat1"><br>
    <input type="text" name="card number" value="" placeholder="Name*" id="holdername" class="formdat1"><br>
    <input type="number" name="card number" value="" placeholder="CVV*" id="cvv">
     <input type="text" name="card number" value="" placeholder="Exp:*" id="exp"><br>

    </form>
    <form class="form4">
      <select class="option" id="netowrk">
        <option selected disabled>Mobile network </option>
        <option value="tigo cash">Tigo Cash</option>
        <option value="mtn mobilemoney">MTN Mobile Money</option>
        <option value=" Vodafone">Vodafone</option>
        <option value="Airtel">Airtel</option>

      </select><br>
  <input type="text" name="card number" value="" placeholder="Number*" class="formdat1" id="number"><br>
  <input type="text" name="card number" value="" placeholder="Name on the account *" class="formdat1" id="nameholder"><br>
    </form>
  </div>
  <button type="button" name="button" id="paynow">Pay Now</button>

</center>
 </div>

 <div class="succestext">
    <center>
      <img src="../image/complet.jpg" alt="succes image">
      <h2>thank you</h2>
       <h4>thank you for shopping with us</h4>
      <p>order Succesfuly processed</p>
        <h5 id="h5">Orderid: <b id="orderid"></b></h5>
    </center>
 </div>
       </div>
   </div>
 </div>
<section>

</section>
<footer>
<?php include '../php/footer.php'; ?>
</footer>
 <script type="text/javascript">
   $(document).ready(function(){
     var maxTextLength = 15;
     var specialDets = document.getElementsByClassName("author");

     for(var i = 0; i < specialDets.length; i++) {

      var specText = specialDets[i].innerHTML;
      var subSpec = specText.substring(0, maxTextLength);

       if(specText.length > maxTextLength) {
           specialDets[i].innerHTML = subSpec;
        }
    }

function _(id){
  return document.getElementById(id);
}
 document.getElementById('thevalue').addEventListener('change', valuFunct);
  function valuFunct(){
    var thevalues = document.getElementById('thevalue').value;
    if (thevalues == 1) {
      $(".form1").show("slow");
      $(".form2").hide();
      $("#button").show("slow");
  $("#address").focus(function(){
    $("#address").css('border', '1px solid red');
  });
  $("#address").focusout(function(){
  $("#address").css('border', '1px solid #2980b9');
  });
  $("#fullname").focus(function(){
    $("#fullname").css('border', '1px solid red');
  });
  $("#fullname").focusout(function(){
  $("#fullname").css('border', '1px solid #2980b9');
  });
  $("#state").focus(function(){
    $("#state").css('border', '1px solid red');
  });
  $("#state").focusout(function(){
  $("#state").css('border', '1px solid #2980b9');
  });
  $("#city").focus(function(){
    $("#city").css('border', '1px solid red');
  });
  $("#city").focusout(function(){
  $("#city").css('border', '1px solid #2980b9');
  });
  $("#phonenumber").focus(function(){
    $("#phonenumber").css('border', '1px solid red');
  });
  $("#phonenumber").focusout(function(){
  $("#phonenumber").css('border', '1px solid #2980b9');
  });

   _('button').addEventListener('click', buTon);
   function buTon(){
     var address = _('address').value;
     var fullname = _('fullname').value;
     var state = _('state').value;
     var city = _('city').value;
     var phonenumber = _('phonenumber').value;


  //  var formdata1 = new FormData();
   //formdata1.append('address', address);
  // formdata1.append('fullname', fullname);
//   formdata1.append('state', state);
//   formdata1.append('city', city);
//  formdata1.append('phonenumber', phonenumber);



     if (address == ""|| fullname =="" || state=="" || city=="" ||phonenumber=="") {
       $("#errortext").html("All Fields are require");
       $("#errortext").css('color', 'red');
     }else {
       $(".addresses").hide();
       $(".checkout").show("slow");

       document.getElementById('payment').addEventListener('change', payMt);

       function payMt(){
         var payment = document.getElementById('payment').value;
         if (payment == "mobile money") {
             $(".form4").show("slow");
             $("#paynow").show("slow");
             $(".form3").hide();

                        document.getElementById('paynow').addEventListener('click', payNowt);
                         function payNowt(){
                        var cardnumber = _('number').value;
                        var nameholder = _('nameholder').value;
                        var cvv = _('netowrk').value;
                        var exp = "";
                        if (cardnumber ==""|| nameholder==""|| cvv=="") {
                           $("#textreponse").html("All fileds are required");
                           $("#textreponse").css('color', 'red');
                        }else {
                          var data =
                          "&address="+address+
                        "&fullname="+fullname+
                        "&state="+state+
                        "&city="+city+
                        "&phonenumber="+phonenumber+
                        "&paymenttype="+payment+
                        "&nameholder="+nameholder+
                        "&cardnumber="+cardnumber+
                        "&cvv="+exp+
                        "&exp="+exp;
                          var http = new XMLHttpRequest();
                          http.open("POST","cart.php", true);
                          http.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
                          http.onprogress = function(){
                            $("#button").css('opacity', '0.5');
                          }
                          http.onreadystatechange = function(){
                            if (this.readyState == 4 && this.status == 200) {
                              $(".checkout").hide();
                              $(".succestext").show();
                              $("#orderid").html(this.responseText);
                            }

                          }
                          http.send(data);
                          console.log(data);
                      }
                    }
         }else if (payment == "debit card") {
           $(".form4").hide();
           $(".form3").show("slow");
           $("#paynow").show("slow");

           document.getElementById('paynow').addEventListener('click', payNowt);
            function payNowt(){
           var cardnumber = _('cardnumber').value;
           var nameholder = _('holdername').value;
           var cvv = _('cvv').value;
           var exp = _('exp').value;
           if (cardnumber ==""|| nameholder==""|| cvv=="" || exp=="") {
              $("#textreponse").html("All fileds are required");
              $("#textreponse").css('color', 'red');
           }else {
             var data =
             "&address="+address+
           "&fullname="+fullname+
           "&state="+state+
           "&city="+city+
           "&phonenumber="+phonenumber+
           "&nameholder="+nameholder+
           "&cardnumber="+cardnumber+
           "&paymenttype="+payment+
           "&cvv="+exp+
           "&exp="+exp;
             var http = new XMLHttpRequest();
             http.open("POST","cart.php", true);
             http.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
             http.onprogress = function(){
               $("#button").css('opacity', '0.5');
             }
             http.onreadystatechange = function(){
               if (this.readyState == 4 && this.status == 200) {
                 $(".checkout").hide();
                 $(".succestext").show();
                 $("#orderid").html(this.responseText);
               }

             }
             http.send(data);
         }
       }
     }


       }

     }

   }



    }else if (thevalues == 2) {
      $(".form2").show("slow");
      $(".form1").hide();
      $("#button").show("slow");
  document.getElementById('button').addEventListener('click', clickFunct);
   function clickFunct(){

     var formloaction = _('formloaction').value;
     var fullname = _('fullname2').value;
     var phonenumber = _('phonenumber2').value;

     if (formloaction == "" || fullname2 == "" || phonenumber2 == "") {
      _('form2text').innerHTML = " All Fields are required";
    }else {

    }
   }

    }
  }

    $(".close").click(function(){
      $(".buynow").css('display', 'none');

    });
    $("#click").click(function(e){
      e.preventDefault();
      $(".buynow").css('display', 'block');
    });



   $("#descs").click(function(e){
     e.preventDefault();
     $("#descriptiontext").hide();
     $(".Reviews").show();
     $("#desc").css('background-color', 'lightgray');
     $("#descs").css('background-color', 'white');


   });
   $("#desc").click(function(e){
     e.preventDefault();
   $(".Reviews").hide();
  $("#descriptiontext").show();
  $("#desc").css('background-color', 'white');
  $("#descs").css('background-color', 'lightgray');
   });


   });
 </script>
  </body>
</html>
