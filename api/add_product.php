  <?php

  require 'connection.php';
  $category_id=$_POST['category_id'];
  $name=$_POST['name'];
  $desc=$_POST['description'];
  $price=$_POST['price'];
  $image=$_POST['image'];



  // $checkProduct="SELECT * from product WHERE Name='$name'";
  // $checkQuery=mysqli_query($con,$checkProduct);

  // if(mysqli_num_rows($checkQuery)>0){

  // 	$response['error']="403";
  // 	$response['message']="User exist";
  // }
  // else
  // {
     $insertQuery="INSERT INTO product(Category_id,Name,Description,Price,Image) VALUES('$category_id','$name','$desc','$price','$image')";
  $result=mysqli_query($con,$insertQuery);

  if($result){

  	$response['error']="200";
  	$response['message']="Product Added Successful!";
  }
  else
  {
  	$response['error']="400";
  	$response['message']="Failed!";
  }



  // }

  
  echo json_encode($response);

?>