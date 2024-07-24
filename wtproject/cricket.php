<?php
include 'connection.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
  <link rel="stylesheet" href="styles.css">

		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
		<link rel="stylesheet" href="css/font-awesome.min.css">
</head>
<script id="jsbin-javascript">
  
(function (global) {
	if(typeof (global) === "undefined")
	{
		throw new Error("window is undefined");
	}
    var _hash = "!";
    var noBackPlease = function () {
        global.location.href += "#";
		// making sure we have the fruit available for juice....
		// 50 milliseconds for just once do not cost much (^__^)
        global.setTimeout(function () {
            global.location.href += "!";
        }, 50);
    };	
	// Earlier we had setInerval here....
    global.onhashchange = function () {
        if (global.location.hash !== _hash) {
            global.location.hash = _hash;
        }
    };
    global.onload = function () {        
		noBackPlease();
		// disables backspace on page except on input fields and textarea..
		document.body.onkeydown = function (e) {
            var elm = e.target.nodeName.toLowerCase();
            if (e.which === 8 && (elm !== 'input' && elm  !== 'textarea')) {
                e.preventDefault();
            }
            // stopping event bubbling up the DOM tree..
            e.stopPropagation();
        };		
    };
})(window);
</script>
<body>
<div class="body">
<?php
include 'head.php';

?>
<div class="row" >
      <div class="small-12">

      <div class="product-display" style="margin:6%;" >
      <h1>CRICKET</h1>
 
          <?php
          $product_query = "SELECT * FROM prdt where sport_name='cricket'";
          $run_query = mysqli_query($con,$product_query);
          if(mysqli_num_rows($run_query) > 0){
            while($row = mysqli_fetch_array($run_query)){
              $pro_id    = $row['id'];
              // $pro_cat   = $row['product_cat'];
              // $pro_brand = $row['product_brand'];
              $pro_title = $row['product_name'];
              $pro_price = $row['price'];
              $pro_image = $row['product_image'];
                    
                    // $cat_name = $row["cat_title"];
              echo "
                
                      <div class='col-md-4 col-xs-6' style=' padding:4%;' >
                      <form action='cart.php' method='post'>        
                        <a href='product.php?p=$pro_id'>
                        <div class='product'>
                          <div class='product-img'>
                            <img src='new images/$pro_image' style='max-height:170px;' alt=''>
                          </div></a>
                          <div class='product-body'>
                          <p>$pro_id</p>
                            <p class='product-category'>cat_name</p>
                            <h3 class='product-name header-cart-item-name'><a href='product.php?p=$pro_id'>$pro_title</a></h3>
                            <h4 class='product-price header-cart-item-info'>RS.$pro_price</h4>
                            
                            <div class='product-btns'>
                              <button class='add-to-wishlist'><i class='fa fa-heart-o'></i><span class='tooltipp'>add to wishlist</span></button>
                              <button class='add-to-compare'><i class='fa fa-exchange'></i><span class='tooltipp'>add to compare</span></button>
                              <button class='quick-view'><i class='fa fa-eye'></i><span class='tooltipp'>quick view</span></button>
                            </div>
                          </div>
                          <div class='add-to-cart'>
                          <button type=\"submit\" class=\"btn btn-warning my-3\" name=\"add\">Add to Cart <i class=\"fas fa-shopping-cart\"></i></button>
                          <input type='hidden' name='product_id' value='$pro_id'>
                          </div> 
                        </div>
                        </form>
                      </div>
                                
              ";
            }
          }
  ?>
      </div>
      </div>
</div>
</div>

 </body>
 <?php include 'footer.php';?>
</html>
 <!-- <button type=\"submit\" class=\"btn btn-warning my-3\" name=\"add\">Add to Cart <i class=\"fas fa-shopping-cart\"></i></button>
  <input type='hidden' name='product_id' value='$pro_id'>                          -->