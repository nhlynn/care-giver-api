<?php
	require 'init.php';

	$u_AlarmTime=$_POST['alarm_time'];

	$sql="insert into tbl_alarm(alarm_time) values('$u_AlarmTime')";

	if (mysqli_query($conn,$sql)) {
		$status=1;
		$message="Success";
	}
	else{
		$status=0;
		$message="Something went wrong.";
	}
	echo json_encode(array("status"=>$status, "message"=>$message));
	mysqli_close($conn);
?>