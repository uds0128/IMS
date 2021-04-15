<!DOCTYPE html>
<html>
<head>
    <title>Update</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">

</head>
<body>

</body>
</html>
<?php
	include('config.php');
	$id = $_POST['id'];
	$not = $_POST['not'];
	$amt = $_POST['totalbill'];
	$gst = $_POST['totalgst'];
	$tcost = $_POST['totalcost'];
	$paid = $_POST['totalpaid'];
	$pend = $_POST['totalpending'];
	$sql = "UPDATE tblinwardbillmst set TotalGST='$gst',Transport_extracost='tcost',TotalAmount='$amt',AmountPaid='$paid',AmountPending='$pend',Notes = '$not' where InwardId = '$id' ";
	$update = mysqli_query($conn, $sql);
	if($update){
		echo '<script>
setTimeout(function () { 
swal({
  title: "Inward updated Succesfully",
  text: "",
  type: "success",
  confirmButtonText: "OK"
},
function(isConfirm){
  if (isConfirm) {
    window.location.href = "s&minward.php";
  }
}); }, 1);
</script>';

	}


	// header("Location:s&minward.php");
?>