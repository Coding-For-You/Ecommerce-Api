<?php

  require 'connection.php';


  // $users="SELECT * from product LIMIT 5 OFFSET 0 ";
  if(!(isset($_POST['tag']))){    
        $users="SELECT * from product";
      
        // $users="SELECT p.*, GROUP_CONCAT(pi.image_url) AS images
        // FROM product p
        // LEFT JOIN product_images pi ON p.id = pi.product_id
        // GROUP BY p.id";
        $result=mysqli_query($con,$users);
        if(mysqli_num_rows($result)>0){
          while($row=$result->fetch_assoc()){
            // $row['images'] = explode(',', $row['images']);
            
            $response['error']="200";
            $response['product'][]=$row;
          }
        }
        else{

          $response['error']="400";
          $response['product']=[];


        }

}else{
  
  $tag=$_POST['tag'];
  $users="SELECT * from product WHERE Name LIKE '%".$tag."%'";
      
  // $users="SELECT p.*, GROUP_CONCAT(pi.image_url) AS images
  // FROM product p
  // LEFT JOIN product_images pi ON p.id = pi.product_id
  // GROUP BY p.id";
  $result=mysqli_query($con,$users);
  if(mysqli_num_rows($result)>0){
    while($row=$result->fetch_assoc()){
      // $row['images'] = explode(',', $row['images']);
      
      $response['error']="200";
      $response['product'][]=$row;
    }
  }
  else{

    $response['error']="400";
    $response['product']=[];


  }
}
  
  echo json_encode($response);
    
?>