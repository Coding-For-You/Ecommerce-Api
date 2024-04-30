<?php

  require 'connection.php';


  $users="SELECT * from banner ";
  $result=mysqli_query($con,$users);


  if(mysqli_num_rows($result)>0){


    while($row=$result->fetch_assoc()){

      $response['code']=200;
      $response['banner'][]=$row;
    }
  }
  else{

    $response['code']=400;
    $response['banner']=[];




  }

  
  echo json_encode($response);
    
?>