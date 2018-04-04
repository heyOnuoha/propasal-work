<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>  <meta charset="utf-8">
    <meta name="viewport" content="width = device-width , initial-scale= 1" >
    <link rel="stylesheet" type="text/css" href="../headerstyle.css">
    <link rel="icon" type="image/png" href="image/ecghanalogo.png" >
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
   <script type="text/javascript" src="../myjs/js.js"> </script>



    <title> CEG GHANA </title>
  </head>
  <body >
  <!-- start of top menu -->
<section>
      <div class="container" >
      <div class="wrapper">
      <div class="menu-bar">
      <div class="left" id="mb">

    <span id="span" class="ico">  <i class="fas fa-bars" id="menbar"></i> CEG GHANA</span>
            <div class="image1"> </div>
      </div>
      <div class="center" id="mb">
        <ul>
            <li><a href="">Home</a></li>
            <li><a href="#" id="min">Ministries <i class="down"></i> </a></li>
            <ul id="ministiedd" style="font-size:13px;">
               <li><a href="#"id="extras" >Challenge Bookshops<a/></li>
               <li><a href="#" id="cinematoday">Cinema Today (CineVan)<a/></li><br>
               <li><a href="#" id="mobilebookshops">Mobile Bookshops<a/></li><br>
               <li><a href="#" id="localfollowup">Local Follow up<a/></li><br>
               <li><a href="#" id="prisonministry">Prison Ministry<a/></li><br>
               <li><a href="#" id="prisonchaplain">Prison Chaplain<a/></li><br>
               <li><a href="#" id="youngsearchersleague">Young Searchers League<a/></li><br>
               <li><a href="#" id="mailboxclub">Mail Box Club<a/></li><br>
               <li><a href="#" id="conferences">Conferences<a/></li><br>
               <li><a href="#" id="counselingservices">Counseling Services<a/></li>
            </ul>
            <li><a href="#" id="mins">Bookshop Locations<i class="down"></i></a></li>
            <ul id="bookshopdb">
               <li><a href="#" id="extra">Accra<a/></li>
               <li><a href="#" id="Tema">Tema<a/></li>
               <li><a href="#" id="Abetifi">Abetifi<a/></li>
               <li><a href="#" id="kumasi">Kumasi<a/></li>
               <li><a href="#" id="sunyani">Sunyani<a/></li>
               <li><a href="#" id="capeCoast">Cape coast<a/></li>
               <li><a href="#" id="Tamale">Tamale<a/></li>
            </ul>
              <li><a href="">About</a></li>
              <li><a href="">Contact </a></li>
           </ul>
      </div>
      <div class="right" id="mb">
       <ul>
         <li style="display:inline-block;"><i class="material-icons" style="margin-left:10px; font-size:24px;vertical-align:middle;">shopping_cart</i> <b id="shoppingcart">0</b> </li>

          <li ><?php if (isset($_SESSION['username'])) {
             echo "<div><i class='material-icons'>person</i> <span>username</span>  </div>";
          }else{
            echo "<li id='login' style='cursor:pointer;'> <a href='#' style='text-decoration:none;'>Login</a></li> ";
          }
           ?></li>
         <li ></li>
       </ul>

    </div>
    </div>
    </div>
  </div>

  </body>
</html>
