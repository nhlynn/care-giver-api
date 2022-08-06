<?php

	require 'init.php';

	$response=array();
	$sql="SELECT * FROM tbl_alarm WHERE flag='1'";

	$result=mysqli_query($conn,$sql);

	if (mysqli_num_rows($result)>0) {
		while ( $row=mysqli_fetch_array($result)) {
			array_push($response,array("alid"=>$row['alid'],"alarm_time"=>$row['alarm_time']));
		}
		
		$status=1;
		$message="Success";

		echo json_encode(array("status"=>$status,"message"=>$message, "alarm"=>$response));
	}else{
		$status=1;
		$message="No Data";
		echo json_encode(array("status"=>$status,"message"=>$message));
	}

	mysqli_close($conn);
?> 
