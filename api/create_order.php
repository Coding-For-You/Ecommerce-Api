  <?php

  require 'connection.php';

  $product_id=$_POST['product_id'];
  $user_id=$_POST['user_id'];
  // $short_name=$_POST['short_name'];
  // $desc=$_POST['desc'];
  // $price=$_POST['price'];
  // $qty=$_POST['qty'];
  // $img=$_POST['product_image'];


  $today = date("Ymd");
  $rand = strtoupper(substr(uniqid(sha1(time())),0,4));
  $uniqueOrderId = "Od".$today . $rand;

  $today = date("dmY");
  $rand = strtoupper(substr(uniqid(sha1(time())),0,5));
  $uniquePaymentId = "pt".$today . $rand;

  $payment_status = 1;


      $insertQuery="INSERT INTO order_detail(Order_id_random,User_id,Product_id,Payment_id_random,Payment_status) 
      VALUES('$uniqueOrderId','$user_id','$product_id','$uniquePaymentId','$payment_status')";
     $result=mysqli_query($con,$insertQuery);
 
      if($result){
        // $response['code']=200;
        // $response['status']=true;
        // $response['message']="Payment Successful";
        $orderQuery="SELECT * FROM order_detail WHERE user_id ='$user_id'";
        $orderResult=mysqli_query($con,$orderQuery);      
        if(mysqli_num_rows($orderResult)>0){
          while($row=$orderResult->fetch_assoc()){  
            $response['code']=200;
            $response['status']=true;
            $response['message']="Order Created Successfully";
            $response['order_detail'][]=$row;
          }
        } 
        
      }
      else
      {
        $response['code']=400;
        $response['status']=false;
        $response['message']="Payment Failed!";
      }
 
    
 


  // }

  
  echo json_encode($response);

?>