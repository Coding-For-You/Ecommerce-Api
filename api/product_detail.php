<?php

  require 'connection.php';

  $produtct_id=$_POST['produtct_id'];

  $users="SELECT * from product WHERE id='$produtct_id'";
  $result=mysqli_query($con,$users);


  if(mysqli_num_rows($result)>0){


    while($row=$result->fetch_assoc()){

      $response['product'][]=$row;
      $response['error']="200";
    }
  }
  else{

    $response['error']="400";
    $response['product']=[];


  }

  
  echo json_encode($response);
    
?>