<?php

  require 'connection.php';


  // this is the right query 
  $users="SELECT * FROM product 
  WHERE id IN (SELECT product_id FROM wishlist WHERE product.wishlist_status=1) ";
  $result=mysqli_query($con,$users);



  // $users="SELECT p.*, GROUP_CONCAT(pi.image_url) AS images
  // FROM product p
  // LEFT JOIN product_images pi ON p.id = pi.product_id
  // WHERE p.id IN (SELECT product_id FROM wishlist WHERE p.wishlist_status='1') ";
  // $result=mysqli_query($con,$users);


  if(mysqli_num_rows($result)>0){
    while($row=$result->fetch_assoc()){
      // $row['images'] = explode(',', $row['images']);
      $response['code']="200";
      $response['product'][]=$row;
    }
  }
  else{

    $response['code']="400";
    $response['product']=[];


  }

  
  echo json_encode($response);
    
?>