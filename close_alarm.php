
<?php

require 'init.php';

$alid=$_POST['alid'];
$flag=$_POST['flag'];

$sql = "UPDATE tbl_alarm SET flag='$flag' WHERE alid='$alid'";

if (mysqli_query($conn, $sql)) {
	$status=1;
	$message="Success"
} else {
    $status=0;
	$message="Something went wrong!"
}
echo json_encode(array("status"=>$status, "message"=>$message));

mysqli_close($conn);
?>