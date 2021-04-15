<?php
                                error_reporting(E_ERROR | E_PARSE);
    include('connection.php');
    	$q_id = @$_GET['id'];
    	$query= "SELECT challanmst.TotalAmount, challanmst.DueAmount, tblcustomermst.CustomerName, challanmst.ChallanId FROM challanmst JOIN tblcustomermst WHERE challanmst.CustomerId=tblcustomermst.CustomerId AND challanmst.RecStatus=1 AND challanmst.ChallanNo='$q_id'";
    	//echo $query;
    	$result = mysqli_query($conn, $query);
    	while ($row=mysqli_fetch_array($result))
    	{
        	$pcname=$row[2];
        	$ptamount=$row[0];
        	$pdueamount=$row[1];
        	$ChallanId=$row[3];
    }


?>
<!DOCTYPE html>
<html>
<head>
	    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title><?php echo $_POST['q_id'] ?></title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <style>
        /* for removing arrow buttons in muber type field. */
        input[type=number] {
            -moz-appearance: textfield;
        }

        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }

        .txt-box {
            border-radius: 5px;
        }
    </style>
</head>
<body>
	<div class="container-fluid col-lg-12">
        <div class="row">
            <div class="col-md-12">
                <div class="card card-primary">
                    <div class="card-header" style="background-color: #2B60DE">
                        <h3 class="card-title" style="color: white" align="center">Make Payment</h3>
                    </div>
                    <div class="card-body">
                        <form class="row g-3" id="radio-buttons" action="InsertPayment.php?update_form=<?php echo $q_id; ?>" method="post">
                            <div class="form-group col-md-12">
                                <div class="row mt-3">
                                    <div class="col-md-4 form-group">
                                        <Label class="form-label">Date of Payment:</Label>
                                        <input type="date" value="pdate" name="edate" class="form-control" id="pdate" required="1">
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-4 form-group">
                                        <Label class="form-label">Customer Name :</Label>
                                        <input type="text" name="pcname" value="<?php echo $pcname;?>" class="form-control" id="pcname" readonly>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-4 form-group">
                                        <Label class="form-label">Total Payment :</Label>
                                        <input type="number" name="ptamount" value="<?php echo $ptamount;?>" class="form-control" id="ptamount" readonly>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-4 form-group">
                                        <Label class="form-label">Pending Payment :</Label>
                                        <input type="number" name="pdueamount" value="<?php echo $pdueamount;?>" class="form-control" id="pdueamount" readonly>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-4 form-group">
                                        <Label class="form-label">Payment Recive/Paid :</Label>
                                        <input type="number" name="precive" value="" class="form-control" id="precive" required="">
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-4 form-group">
                                        <Label class="form-label">Roundoff/Dade Payment :</Label>
                                        <input type="number" name="pdade" value="" class="form-control" id="pdade" required="">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-2 mt-4">
                                        <input type="submit" value="Save" name="update" id="update" class="btn btn-primary">
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
<?php

  include 'connection.php';


  if(isset($_POST['update'])){

  	$InwardID=0;
  	$PaymentDate=$_POST['pdate'];
  	$AmountPaid=$_POST['precive'];
  	$dade=$_POST['dade'];
  	$temp=$ptamount-$AmountPaid-$dade;
  	$ChallanId=$q_id;

  	$sql1="INSERT INTO tblinwardpayment (InwardId,PaymentDate, AmountPaid, AmountPending, PaymentMode, RoundOffDade, RecStatus, ChallanId) VALUES('$Inward','$PaymentDate','$AmountPaid','$temp','Customer','$dade',1,'$ChallanId')";
      
    $sql = "UPDATE tblinwardpayment SET AmountPaid= AmountPaid + '$AmountPaid',AmountPending = AmountPending-'$AmountPaid' -'$dade',RoundOffDade = '$dade',PaymentDate='$PaymentDate' where PaymentID='$PaymentID' and RecStatus='1' ";

  $id1=$_GET['update_form'];
  // $id1=$_POST['cid'];  
  $date_1=$_POST['edate'];
  $amount_1=$_POST['eamount'];
  $dis_1=$_POST['edis'];
  
    $q="UPDATE tblexpencemst SET Discription = '$dis_1',  ExpanceDate = '$date_1', Amount = '$amount_1',  ModifiedDate = NOW() WHERE ExpanceId = '$id1'";

    // echo $q;


  $update = mysqli_query($conn,$q);
     
 if($update)
 {
  echo '<script>
setTimeout(function () { 
swal({
  title: "Expense updated Succesfully",
  text: "",
  type: "success",
  confirmButtonText: "OK"
},
function(isConfirm){
  if (isConfirm) {
    window.location.href = "ManageExpense.php";
  }
}); }, 1);
</script>';
  // echo "<script>window.open('ManageExpence.php','_self')</script>";
  
 }
  else{
    echo "not updated";
  }

 
 }

?>