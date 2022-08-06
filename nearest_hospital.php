<?php

	require 'init.php';

	$lat=$_POST['lat'];
	$lng=$_POST['lng'];

	$response=array();

	//distance <= 5 you can change your location distance
	$sql = "SELECT * , (3956 * 2 * ASIN(SQRT( POWER(SIN(( $lat - latitude) *  pi()/180 / 2), 2) +COS( $lat * pi()/180) * COS(latitude * pi()/180) * POWER(SIN(( $lng - longitude) * pi()/180 / 2), 2) ))) as distance  
                                from tbl_hospital  
                                having  distance <= 5 
                                order by distance LIMIT 3";
 
    $result = mysqli_query($conn, $sql);

	if (mysqli_num_rows($result) > 0) {
		while ( $row=mysqli_fetch_array($result)) {
			array_push($response,array("hospital_name"=>$row['hospital_name'],"phone"=>$row['phone'],"address"=>$row['address']));
		}
		
		$status=1;
		$message="Success";

		echo json_encode(array("status"=>$status,"message"=>$message, "nearest_hospital"=>$response));
	}else{
		$status=1;
		$message="No Data";
		echo json_encode(array("status"=>$status,"message"=>$message));
	}

	mysqli_close($conn);
?> 
