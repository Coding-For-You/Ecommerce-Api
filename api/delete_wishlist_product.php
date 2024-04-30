<?php 
 	
 	require 'connection.php';
 	$produtct_id=$_POST['produtct_id'];
 	
    
    $deleteUser = mysqli_query($con,"DELETE FROM `wishlist` WHERE Product_id='$produtct_id'");

     if($deleteUser > 0){

		$response['code']=200;
		$response['status']=true;
		$response['message']="Product removed from wishlist";
		  }else{

			$response['code']=400;
			$response['status']=false;
			$response['message']="Can't remove from wishlist";
		    
		  }


		  echo json_encode($response);
 ?>