<?php

  require 'connection.php';

  $tag=$_POST['tag'];

  $searchQuery="SELECT Name FROM product WHERE Name LIKE '%".$tag."%'";
  $result=mysqli_query($con,$searchQuery);


    if($row=mysqli_num_rows($result)>0){
      while($row=$result->fetch_assoc()){
      
        $response['tag'][]=$row;
      }
      $response['code']=200;
    }
    else{
      $response['tag']=(object)[];
      $response['code']=400;

    }
   

  echo json_encode($response);
    
?>