  <?php

  require 'connection.php';
  $product_id=$_POST['product_id'];
  $user_id=$_POST['user_id'];
  $name=$_POST['name'];
  // $short_name=$_POST['short_name'];
  $desc=$_POST['desc'];
  $price=$_POST['price'];
  $qty=$_POST['numberInCart'];
  $img=$_POST['product_image'];


    // check for already in cart
    $checCartQuery = "SELECT * FROM cart WHERE Product_id = '$product_id'";
    $fire=mysqli_query($con,$checCartQuery);
    if(mysqli_num_rows($fire)>0){
    // update cart data 
      $updateCartQuery = "UPDATE `cart` SET Product_id='$product_id',user_id='$user_id',Name='$name',Description='$desc',Price='$price',Image='$img',
      quantity='$qty' WHERE Product_id = '$product_id'";    
      $run=mysqli_query($con,$updateCartQuery);
      if($run){
      $response['code']=200;
      $response['status']=true;
      $response['message']=" Cart updated successful!";
      }
      else
      {
        $response['code']=401;
        $response['status']=false;
        $response['message']="Can't updated!";
      }
    }
    else
    {
      $insertQuery="INSERT INTO cart(Product_id,user_id,Name,Description,
      Price,Image,quantity) 
      VALUES('$product_id','$user_id','$name','$desc','$price','$img','$qty')";
     $result=mysqli_query($con,$insertQuery);
 
      if($result){
        $response['code']=200;
        $response['status']=true;
        $response['message']=" Cart list created successful!";
      }
      else
      {
        $response['code']=402;
        $response['status']=false;
        $response['message']="Can't Added!";
      }
 
    }
    
 


  // }

  
  echo json_encode($response);

?>