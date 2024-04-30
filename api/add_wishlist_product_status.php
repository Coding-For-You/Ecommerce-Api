<?php

  require 'connection.php';

  $product_id=$_POST['product_id'];
  $wishlist_status=$_POST['wishlist_status'];

  // $users="SELECT * from product WHERE Product_id='$product_id'";
  // $insert_query="INSERT INTO wishlist(Product_id) VALUES ('$product_id')";
  // $result=mysqli_query($con,$insert_query);

  $checkProduct="SELECT Product_id from wishlist WHERE Product_id='$product_id'";
  $checkQuery=mysqli_query($con,$checkProduct);


  if(mysqli_num_rows($checkQuery)>0){

    $update_wishlist_status1 ="UPDATE product SET product.wishlist_status ='$wishlist_status' WHERE id ='$product_id'  ";
    $update_fire1=mysqli_query($con,$update_wishlist_status1);
  
    if($update_fire1){
      $response['code']=200;
      $response['status']=true;
      $response['message']="Updated successful!";
  
    }else{
      $response['code']=401;
      $response['status']=false;
      $response['message']="Can't Added!";
  
    }

  //  $response['code']=403;
  //  $response['message']="Already exist";
 }
 else
 {
    $insertQuery="INSERT INTO wishlist(Product_id,wishlist_status) VALUES ('$product_id' ,1)";
 $result=mysqli_query($con,$insertQuery);

 if($result){
  $update_wishlist_status ="UPDATE product SET product.wishlist_status ='$wishlist_status' 
  WHERE id ='$product_id'";
  $update_fire=mysqli_query($con,$update_wishlist_status);

  if($update_fire){
    $response['code']=200;
    $response['status']=true;
    $response['message']="Added to wishlist!";

  }else{
    $response['code']=402;
    $response['status']=false;
    $response['message']="Can't Added!";

  }

 }
 else
 {
   $response['code']=403;
   $response['status']=false;
   $response['message']="Failed!";
 }



 }

  
  echo json_encode($response);
    
?>