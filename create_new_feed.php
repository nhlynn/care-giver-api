<?php
	require 'init.php';

	$u_name=$_POST['name'];
	$u_instruction=$_POST['instruction'];
	$u_caution=$_POST['caution'];
	$u_photo=$_POST['photo'];

	$sql="insert into tbl_first_aid(name, instruction, caution, photo) values('$u_name', '$u_instruction', '$u_caution', '$u_photo')";

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