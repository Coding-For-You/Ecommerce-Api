  <?php

  require 'connection.php';
  $username=$_POST['username'];
  $email=$_POST['email'];
  $phone_no=$_POST['phone_no'];
  $state=$_POST['state'];
  $city=$_POST['city'];
  $address=$_POST['address'];
  $pin_code=$_POST['pin_code'];
  $img=$_POST['profile_image'];



  // $filename = "IMG".rand ( 10000 , 99999 ).".jpg";
  $filename = $email.".jpg";
  file_put_contents("img/profileimage/".$filename , base64_decode($img));


  $userData;

  $checkUser="SELECT  email from user WHERE email='$email'";
  $checkQuery=mysqli_query($con,$checkUser);
  while($row=$checkQuery->fetch_assoc()) {    
    $userData= $row;     
    $response['user']=$userData;
  } 

  if(mysqli_num_rows($checkQuery)>0){
    
    $insertQuery="UPDATE `user` SET username='$username' ,phone_no='$phone_no', state='$state'
    ,city='$city',address='$address' ,pin_code='$pin_code',profile_image='$filename' WHERE email = '$email' ";
    $result=mysqli_query($con,$insertQuery);

    if($result){  
        $checkUserquery="SELECT * FROM user WHERE email='$email'";
        $resultant=mysqli_query($con,$checkUserquery);    
        while($row=$resultant->fetch_assoc())  {        
           $response['user']=$row;
        }
        $response['code']=200;
        $response['message']="Profile Updated Successfully";       
    
    }
    else
    {
      $response['user']=$userData;
      $response['code']=401;
      $response['message']="Failed to update your profile";
    }

  }
  else
  {
    //  $insertQuery="UPDATE user(username,email,profile_image) VALUES('$username','$email','$filename')";

    $response['user']=$userData;
    $response['code']=403;
    $response['message']="Usser not Exist";
 


  }

  
  echo json_encode($response);

?>