
<?php

require 'init.php';

$u_UserName=$_POST['username'];
$u_Password=$_POST['password'];

$sql="SELECT * FROM tbl_user WHERE username ='$u_UserName' AND password ='$u_Password'";

$result=mysqli_query($conn,$sql);

if (mysqli_num_rows($result)>0) {
	$row=mysqli_fetch_array($result);
	$userid=$row['userid'];
	$username=$row['username'];
	$contact=$row['contact'];

	$user=array("user_id"=>$userid ,"user_name"=>$username,"contact"=>$contact);

	echo json_encode(array("status"=>1,"message"=>"Success","user"=>$user));
}

else{
		echo json_encode(array("status"=>0,"message"=>"Username or password is wrong!"));
}

mysqli_close($conn);
?> 
