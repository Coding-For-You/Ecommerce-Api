<?php

  require 'connection.php';

  $category_id=$_POST['category_id'];

  $users="SELECT * from product WHERE Category_id='$category_id'";
  // $users="SELECT p.*, GROUP_CONCAT(pi.image_url) AS images
  // FROM product p
  // LEFT JOIN product_images pi ON p.id = pi.product_id WHERE p.Category_id='$category_id'
  // GROUP BY p.id";
 
  $result=mysqli_query($con,$users);

  if(mysqli_num_rows($result)>0){
    while($row=$result->fetch_assoc()){
      // $row['images'] = explode(',', $row['images']);
      $response['code']="200";
      $response['product'][]=$row;
      // $response['product'][]=$row;
    }
  }
  else{

    $response['code']="400";
    $response['product']=[];


  }

  
  echo json_encode($response);
    
?>