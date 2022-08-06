<?php
	require 'init.php';

	$u_UserName=$_GET['username'];
	$u_Contact=$_GET['contact'];
	$u_Password=$_GET['password'];

	$sql="select * from tbl_user where username='$u_UserName'";

	$result=mysqli_query($conn,$sql);

	if (mysqli_num_rows($result)>0) {
		$status=0;
		$message="Already exist.";

	}else{
		$sql="insert into user_info(username,contact,password) values('$u_UserName','$u_Contact','$u_Password')";

		if (mysqli_query($conn,$sql)) {
			$status=1;
			$message="Success";
		}
		else{
			$status=0;
			$message="Something went wrong.";
		}
	}
	echo json_encode(array("status"=>$status, "message"=>$message));
	mysqli_close($conn);
?>