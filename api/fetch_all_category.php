<?php

  require 'connection.php';


  $users="SELECT * from category ";
  $result=mysqli_query($con,$users);


  if(mysqli_num_rows($result)>0){


    while($row=$result->fetch_assoc()){

      $response['code']=200;
      $response['category'][]=$row;
    }
  }
  else{

    $response['code']=400;
    $response['category']=[];




  }

  
  echo json_encode($response);
    
?>