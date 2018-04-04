<?php include 'app/server.php'; ?>
<!DOCTYPE html>

<html>
    <head>
        <title>CEG - SignUp</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale = 1" />

        <link rel="stylesheet" type="text/css" href="signup.css" media="screen"/>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Maven+Pro" rel="stylesheet">

        <script src="js/jquery-3.3.1.js" type="text/javascript"></script>
      <!--  <script src="js/signup.js" type="text/javascript"></script> -->

    </head>
    <body>
        <center id="center1">
            <div id="left">
                <div id="top_level">
                    <div id="container">
                    <img src="image/anyone.png" />
                    <?php include 'app/errors.php'; ?>
                      <?php include 'app/success.php'; ?>
                    <div id="thecontent" style="margin-bottom:20px;margin-top:-20px;"></div>

                    <form method="POST" action="signup.php" name="form1">
                        <div class="form_input">
                            <input id="fname" class="i_3" type="text" placeholder="Full Name" name="fullname" />
                            <input id="mail" class="i_3" type="text" placeholder="Email" name="email" />
                            <input id="pass" class="i_3" type="password" placeholder="Enter a Password" name="password" />
                            <input id="cpass" class="i_3" type="password" placeholder="Confirm Password" />

                            <input type="submit" value="Sign up" class="btn_login" id="btn_login" name="signup" />

                        </div>
                    </form>
                    </div>

                <div id="bottom_layer">
                    <p>Already have an account ? <span class="lil_link"><a href="log-in.html">Login</a></span> </p>
                </div>
                <div class="clear"></div>
                </div>
            </div>
        </center>
        <div class="clear"></div>
        <script type="text/javascript">

           function _(id){
             return document.getElementById(id);
           }

     _('btn_login').addEventListener('click', signUp);

      function signUp(){

           var fullname = _('fname').value;
           var email = _('mail').value;
           var password = _('pass').value;
           var cpassword = _('cpass').value;
        if (fullname == ""|| email =="" || password ==""|| cpassword =="") {
             _('thecontent').innerHTML = "Please fill out all the fields";

        }else if (password !== cpassword) {
           _('thecontent').innerHTML = "Password do not match";

        }
          //var formdata = new FormData();
          //formdata.append('fullname', fullname);
          //formdata.append('email', email);
          //formdata.append('password', password);
      }

        </script>
    </body>
</html>
