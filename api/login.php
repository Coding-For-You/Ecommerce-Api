<?php

  require 'connection.php';

  $email=$_POST['email'];
  $password=md5($_POST['password']);

  $checkUser="SELECT email FROM user WHERE email='$email'";

  $result=mysqli_query($con,$checkUser);



  if(mysqli_num_rows($result)>0){ 

    $checkUserquery="SELECT * FROM user WHERE email='$email' and password='$password'";
    $resultant=mysqli_query($con,$checkUserquery);

    if($row=mysqli_num_rows($resultant)>0){

      while($row=$resultant->fetch_assoc())
      
      $response['user']=$row;
      $response['code']=200;
      $response['message']="login success";
    }
    else{
      $response['user']=(object)[];
      $response['code']=400;
      $response['message']="Wrong credentials";

    }
   
    
  }
  else{

    $response['user']=(object)[];
    $response['code']=400;
  	$response['message']="user does not exist";


  }

  echo json_encode($response);
    
?>