<?php

	require 'init.php';

	$response=array();
	$sql="select * from tbl_first_aid";

	$result=mysqli_query($conn,$sql);

	if (mysqli_num_rows($result)>0) {
		while ( $row=mysqli_fetch_array($result)) {
			array_push($response,array("instruction"=>$row['instruction'],"caution"=>$row['caution'],"photo"=>$row['photo']));
		}
		
		$status=1;
		$message="Success";

		echo json_encode(array("status"=>$status,"message"=>$message, "new_feed"=>$response));
	}else{
		$status=1;
		$message="No Data";
		echo json_encode(array("status"=>$status,"message"=>$message));
	}

	mysqli_close($conn);
?> 
