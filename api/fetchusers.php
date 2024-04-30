<?php

  require 'connection.php';

  $users="SELECT * FROM user";
  $result=mysqli_query($con,$users);


  if(mysqli_num_rows($result)>0){


    while($row=$result->fetch_assoc()){

      $response['code']=200;
      $response['users'][]=$row;
    }
  }
  else{

    $response['code']=400;
    $response['users']=[];


  }

  
  echo json_encode($response);
    
?>