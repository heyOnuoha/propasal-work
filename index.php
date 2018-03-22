<?php include './app/db.php'; ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width = device-width , initial-scale= 1" >
    <script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js" integrity="sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js" integrity="sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="./css/indexstyle.css">
    <link rel="icon" type="image/png" href="image/ecghanalogo.png" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script type="text/javascript" src="myjs/js.js"> </script>


    <title> CEG GHANA </title>
  </head>
  <body >
  <!-- start of top menu -->
<section>
    <div class="image">
    <img src="image/2015+Covers+Collage.3.jpg" alt="bookshop" id="image">
         <div class="overlay" > </div>
  </div>

      <div class="container" >
      <div class="wrapper">
      <div class="menu-bar">
      <div class="left" id="mb">

        <img src="image/ecghanalogo.png" alt="" id="logo"><span id="span">  <i class="fas fa-bars" id="menbar"></i> EC GHANA</span>
            <div class="image1"> </div>
      </div>
      <div class="center" id="mb">
          <ul>
              <li><a href="">Home</a></li>
              <li><a href="#" id="min">Ministries <i class="down"></i> </a></li>
              <ul id="ministiedd" style="font-size:13px;">
                <br>
                 <li><a href="">Challenge Bookshops<a/></li><br>
                 <li><a href="">Cinema Today (CineVan)<a/></li><br>
                 <li><a href="">Mobile Bookshops<a/></li><br>
                 <li><a href="">Local Follow up<a/></li><br>
                 <li><a href="">Prison Ministry<a/></li><br>
                 <li><a href="">Prison Chaplain<a/></li><br>
                 <li><a href="">Young Searchers League<a/></li><br>
                 <li><a href="">Mail Box Club<a/></li><br>
                 <li><a href="">Conferences<a/></li><br>
                 <li><a href="">Counseling Services<a/></li>
              </ul>
              <li><a href="#" id="mins">Bookshop Locations<i class="down"></i></a></li>
              <ul id="bookshopdb">
                 <li><a href="">Accra<a/></li>
                 <li><a href="">Tema<a/></li>
                 <li><a href="">Abetifi<a/></li>
                 <li><a href="">Kumasi<a/></li>
                 <li><a href="">Sunyani<a/></li>
                 <li><a href="">Cape coast<a/></li>
                 <li><a href="">Tamale<a/></li>
              </ul>

              <li><a href="">About</a></li>
              <li><a href="">Contact </a></li>
           </ul>
      </div>
      <div class="right" id="mb">
       <ul>
         <li id="account">Create Accoint</li>
         <li id="login">Login</li>
       </ul>

    </div>
    </div>
    </div>
      <hr id="hr" >
<section>
    <div class="text">
       <p>Buy a text book . Save a bundle <br>
      <b>Buy and save up to 90%</b>  </p>
    </div>

    <div class="seache">
      <div class="seachebar">
        <form class="" action="index.html" method="post">
          <input type="search" name="seache" placeholder="Seach by ISBN, TItle, or Author" id="seach">
          <input type="submit" name="seache" value="Find a Book" id="seachsubmit">
        </form>
      </div>

    </div>
</section>
<section>
  <div class="float">
    <div class="foating">
      <div class="line">

       <p>
        <h3> <i class="fas fa-truck" id="fa"></i>Free Shiping</h3>
        <h4>Both ways</h4>
        <h5>  Learn more <span>&#187;</span> <h5>
        </p>
      </div>
      <div class="line">
        <p>
          <h3><i class="fas fa-sync" id="fa"></i>Easy Returns </h3>
        <h4>  It is Fast! </h4>
        <h5>  Learn more <span>&#187;</span> <h5>
        </p>
      </div>
      <div class="line">
        <p>
          <h3><i class="fas fa-pencil-alt" id="fa"></i>Take Notes</h3>
          <h4>Feel free to highlight</h4>
        <h5>  Learn more <span>&#187;</span> <h5>
        </p>
      </div>
      <div class="line">
        <p>
          <h3><i class="fas fa-thumbs-up" id="fa"></i>Satisfaction</h3>
          <h4>Guaranteed</h4>
        <h5>  Learn more <span >&#187;</span> <h5>
        </p>
      </div>

    </div>
  </div>
</section>
    </div>
</section>
<!-- end of top menu -->

<!-- start of body -->
<section>
  <div class="middle">
    <div class="these">
      <p>Featured Books</p>
    </div >
    <div class="books">
          <?php
          
          $sql = "SELECT * FROM book ORDER BY id DESC LIMIT 8";
          $result = mysqli_query($connect, $sql);
          while ($rows = mysqli_fetch_array($result)) {
            $image = $rows['image'];
            $title = $rows['title'];
            $sbn = $rows['sbn'];
            $author = $rows['author'];
            $binding = $rows['binding'];
            $id = $rows['id'];
            ?>

    <div class="book" id="book" >
      <form method="POST" action="app/detail.php?action=<?php echo $id ?>">
      <i id="load"></i>
      <img src="<?php echo "./image/".$image; ?>" alt="book" id="bookimages">
      <p id="title"><?php echo "$title"; ?></p>
      <p>
        <dl class="det">
          <dt>SBN:</dt>
          <dd><?php echo "$sbn"; ?></dd><br>
          <dt>Author(s):</dt>
          <dd><?php echo "$author"; ?></dd><br>
          <dt>Binding:</dt>
          <dd><?php echo "$binding"; ?></dd><br>
        </dl>
        <div class="btst">
        <input type="submit" name="submit" value="Learne more" id="b"><span>&#187;</span>

      </div>
      </p>
    </form>
    </div>
    <?php
    }
    ?>
  </div>
  </div>

</section>

<!-- end of body-->

<!--  start about us page-->

<div class="aboutus ">
  <img src="image/abou.jpg" alt="" id="aboutimage">
  <div class="about">
    <center>
    <p>ABOUT US</p>
    <div class="p1">
    <p class="numbers">1</p><span id="span2">Incididunt ut labore et dolore</span>
    <p id="para5">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex.</p>
    </div>
    <div class="p1">
    <p class="numbers">2</p><span id="span2">Incididunt ut labore et dolore</span>
    <p id="para5">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex.</p>
    </div>
    <div class="p1">
    <p class="numbers">3</p><span id="span2">Incididunt ut labore et dolore</span>
    <p id="para5">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex.</p>
    </div>
  </center>
  </div>
</div>
<!-- section categories -->
<section>
 <div class="categories">
   <div class="subcategories">
     <p id="para6">Top categories:</p>
     <div class="cate">
         <ul>
            <p id="title2">Arts & Photography</p>
            <br>
              <br>
           <li> <a href="#">Design & Decorative Arts</a> </li>
           <li> <a href="#">Art History & Criticism Textbooks</a> </li>
           <li> <a href="#">Other Media</a> </li>
           <p id="more">+more</p>

         </ul>
     </div>

     <div class="cate">
         <ul>
            <p id="title2">Arts & Photography</p>
            <br>
              <br>
           <li> <a href="#">Design & Decorative Arts</a> </li>
           <li> <a href="#">Art History & Criticism Textbooks</a> </li>
           <li> <a href="#">Other Media</a> </li>
           <p id="more">+more</p>

         </ul>
     </div>

     <div class="cate">
         <ul>
            <p id="title2">Arts & Photography</p>
            <br>
              <br>
			  
           <li> <a href="#">Design & Decorative Arts</a> </li>
           <li> <a href="#">Art History & Criticism Textbooks</a> </li>
           <li> <a href="#">Other Media</a> </li>
           <p id="more">+more</p>

         </ul>
     </div>

     <div class="cate">
         <ul>
            <p id="title2">Arts & Photography</p>
            <br>
              <br>
           <li> <a href="#">Design & Decorative Arts</a> </li>
           <li> <a href="#">Art History & Criticism Textbooks</a> </li>
           <li> <a href="#">Other Media</a> </li>
           <p id="more">+more</p>

         </ul>
     </div>

     <div class="cate">
         <ul>
            <p id="title2">Arts & Photography</p>
            <br>
              <br>
           <li> <a href="#">Design & Decorative Arts</a> </li>
           <li> <a href="#">Art History & Criticism Textbooks</a> </li>
           <li> <a href="#">Other Media</a> </li>
           <p id="more">+more</p>

         </ul>
     </div>

     <div class="cate">
         <ul>
            <p id="title2">Arts & Photography</p>
            <br>
              <br>
           <li> <a href="#">Design & Decorative Arts</a> </li>
           <li> <a href="#">Art History & Criticism Textbooks</a> </li>
           <li> <a href="#">Other Media</a> </li>
           <p id="more">+more</p>

         </ul>
     </div>
  <div class="cate">
         <ul>
            <p id="title2">Arts & Photography</p>
            <br>
              <br>
           <li> <a href="#">Design & Decorative Arts</a> </li>
           <li> <a href="#">Art History & Criticism Textbooks</a> </li>
           <li> <a href="#">Other Media</a> </li>
           <p id="more">+more</p>

         </ul>
     </div>
	  <div class="cate">
         <ul>
            <p id="title2">Arts & Photography</p>
            <br>
              <br>
           <li> <a href="#">Design & Decorative Arts</a> </li>
           <li> <a href="#">Art History & Criticism Textbooks</a> </li>
           <li> <a href="#">Other Media</a> </li>
           <p id="more">+more</p>

         </ul>
     </div>
	  <div class="cate">
         <ul>
            <p id="title2">Arts & Photography</p>
            <br>
              <br>
           <li> <a href="#">Design & Decorative Arts</a> </li>
           <li> <a href="#">Art History & Criticism Textbooks</a> </li>
           <li> <a href="#">Other Media</a> </li>
           <p id="more">+more</p>

         </ul>
     </div>
	  <div class="cate">
         <ul>
            <p id="title2">Arts & Photography</p>
            <br>
              <br>
           <li> <a href="#">Design & Decorative Arts</a> </li>
           <li> <a href="#">Art History & Criticism Textbooks</a> </li>
           <li> <a href="#">Other Media</a> </li>
           <p id="more">+more</p>

         </ul>
     </div>


     <div class="seeall">
             <p>see all categories <span style="color:orange; font-weight:bold;">&#187;</span> </p>
     </div>
   </div>
 </div>
</section>
<!-- end section categories -->
<footer>
 <div class="legone">
 <div class="legswos">
   <div class="firstf">
     <ul>
      <p id="title4">The Company</p>
       <li> <a href="#">About Us </a></li>
        <li> <a href="#">Contact us </a></li>
         <li> <a href="#">Newsroom</a></li>
         <li> <a href="#">Custom Rental Store</a></li>
          <li> <a href="#">Affiliates</a></li>
          <li> <a href="#">Customer care</a></li>


     </ul>
   </div>

   <div class="firstf">
     <ul>
      <p id="title4">Support</p>
       <li> <a href="#">Rental Agreement</a></li>
        <li> <a href="#">Help</a> </li>
         <li> <a href="#">How to Return</a></li>
          <li> <a href="#">Extending Rentals</a></li>
          <li> <a href="#">Shipping Details</a></li>
          <li> <a href="#">Coupons</a></li>

     </ul>
   </div>

   <div class="firstf">
     <ul>
      <p id="title4">What's Hot</p>
       <li> <a href="#">Popular Textbooks </a></li>
        <li> <a href="#">Top Rented Textbooks</a></li>
         <li> <a href="#">Rent Textbooks</a></li>
          <li> <a href="#">All Categories</a></li>
          <li> <a href="#">Top Searches</a></li>
           <li> <a href="#">Customer Quotes</a></li>

     </ul>
   </div>

   <div class="firstf">
     <ul>
      <p id="title4">Follow Us</p>
       <li> <a href="#"  class="fab fa-facebook" style="font-size:15px">Facebook</a></li>
        <li> <a href="#"><i class="fab fa-facebook" style="font-size:15px"></i>Twitter </a></li>
         <li> <a href="#"><i class="fas fa-facebook-f" style="font-size:15px"></i>Skype</a></li>
          <li> <a href="#"><i class="fas fa-facebook-f" style="font-size:15px"></i>instagram</a></li>
          <li> <a href="#"><i class="fas fa-facebook-f" style="font-size:15px"></i>Pinterest</a></li>
           <li> <a href="#"><i class="fas fa-facebook-f" style="font-size:15px"></i>Email </a></li>

     </ul>
   </div>
   <div class="firstf" id="title5">

     </ul>
   </div>

 </div>
 <br>
 <br>
   <hr  id="hr" style="margin-top:100px;" >
    <div class="footerimage">
      <img src="image/ecghanalogo.png" alt="cegghana logo" ><span style="font-size:9px;">&copy; 2018 Challenge Enterprises of Ghana</span>
    </div>
</div>
<script type="text/javascript" src="myjs/main.js"></script>
  </body>
</html>
