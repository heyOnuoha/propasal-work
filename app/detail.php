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
      <script type="text/javascript" src="myjs/main.js"></script>
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
      <input type="submit" name="buynow" value="Add to card" id="click">
   </form>
 </ul>
  </div>

    <div class="boookdescription">
  <form style="display:inline-block">
    <input type="submit" name="submit" value="Description" id="desc"><input type="submit" name="submit" value="Reviews" id="descs">
  </form>
        <hr width="1000px" color="lightgray" style="margin-left:0px;">
      <p id="descriptiontext"><?php echo "$description" ?></p>
  <hr  style="margin-top:30px; width:1000px; align:center;margin-bottom:30px;">
    </div>
  </div>
</section>
<!-- related books; -->

<section>
  <div class="realatedbooks">
    <section>
      <div class="middle">
        <div class="these">
          <p>People Also Search For These Books</p>
        </div >
        <div class="books">
              <?php

                $sql = "SELECT * FROM book ORDER BY id DESC LIMIT 4";
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
                  <dt>SBN:</dt>
                  <dd><?php echo "$sbn"; ?></dd><br>
                  <dt>Author(s):</dt>
                  <dd><?php echo "$author"; ?></dd><br>
                  <dt>Binding:</dt>
                  <dd><?php echo "$binding"; ?></dd><br>
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

    </section>
  </div>
</section>
<footer>
<?php include '../php/footer.php'; ?>
</footer>
  </body>
</html>
