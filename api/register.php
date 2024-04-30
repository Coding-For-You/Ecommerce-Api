  <?php

  require 'connection.php';
  $username=$_POST['username'];
  $email=$_POST['email'];
  $password=md5($_POST['password']);
  $phone_no=$_POST['phone_no'];
  $state=$_POST['state'];
  $city=$_POST['city'];
  $address=$_POST['address'];
  $pin_code=$_POST['pin_code'];

  $img ="img/profileimage/profile_image.jpg";
  $imagedata = file_get_contents($img);
   // alternatively specify an URL, if PHP settings allow
  $base64 = base64_encode($imagedata);

  // $filename = "IMG".rand ( 10000 , 99999 ).".jpg";
  $filename = $email.".jpg";
  file_put_contents("img/profileimage/".$filename , base64_decode($base64));



  $checkUser="SELECT * from user WHERE email='$email'";
  $checkQuery=mysqli_query($con,$checkUser);

  if(mysqli_num_rows($checkQuery)>0){

  	 $response['code']=403;
  	$response['message']="User exist";
  }
  else
  
  {
     $insertQuery="INSERT INTO user(username,email,password,profile_image,phone_no,state,city,address,pin_code) 
     VALUES('$username','$email','$password','$filename','$phone_no','$state','$city','$address','$pin_code')";
  $result=mysqli_query($con,$insertQuery);

  if($result){

  	$response['code']=200;
  	$response['message']="Register successful!";
  }
  else
  {
  	$response['code']=400;
  	$response['message']="Registeration failed!";
  }



  }

  
  echo json_encode($response);

?>