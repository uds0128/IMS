<?php

  session_start();  
?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <title>Balaji Pipe & Feetings</title>

        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/style.css" rel="stylesheet" type="text/css" />

        <script src="assets/js/modernizr.min.js"></script>

         <!--Fonts in title-->
        <link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
        <style type="text/css">
            .heading{
            font-family: 'Aclonica';color: black;font-size: 3vw;}
      .banner {
      position: relative;
      height: 5vw; 
      background-size: cover;
      display: flex;
      justify-content: center;
      align-items: center;
      text-align: center;
      }
      .banner::after {
      content: "";
      background-color: rgba(0, 0, 0, 0.5); 
      position: absolute;
      width: 100%;
      height: 100%;
      }

   .btn-group   .button {
     display: block;
  border-radius: 12px;
  border: none;
  color: #0000000;
  text-align: center;
  font-size: 20px;
  padding: 10px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 25px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}

#mybutton {
  /*  margin-left: 270px;*/
}
#mybutton1 {
 /*   margin-left: 270px;*/
 float: right;
 padding-top: -10px;

}
#mybutton2 {
    width: 200px;
    height: 40px;
    border: 0px;
    float: right;
    border-radius: 10px;
    padding-top: 0px;
    font-size: 20px;

/*    background-color: #59a9f8;*/
}
        </style>

    </head>


    <body class="fixed-left">

            <div class="left side-menu">
                <div class="sidebar-inner slimscrollleft">


<!--                 <div class="user-box">
                        <div class="user-img">
                            <img src="assets/images/users/avatar-1.png" alt="user-img" title="admin" class="rounded-circle img-thumbnail img-responsive">
                            <div class="user-status offline"><i class="mdi mdi-adjust"></i></div>
                        </div>
                        <h5><a href="#"><?php echo $_SESSION['username']; ?></a> </h5>
                        <ul class="list-inline">
                            <li class="list-inline-item">
                                <a href="#" >
                                    <i class="mdi mdi-settings"></i>
                                </a>
                            </li>

                            <li class="list-inline-item">
                                <a href="logout.php" class="text-custom">
                                    <i class="mdi mdi-power"></i>
                                </a>
                            </li>
                        </ul>
                    </div> -->


                    <div id="sidebar-menu">

                        <!-- <div class="topbar-left">
                            <a href="index.html" class="logo"><span><img src="assets/images/img.png" height="120px" width="120px"></span><i class="mdi mdi-layers"></i>
                            </a>
                        </div> -->
                        <br><br><br>
<br>                    <br><br><br>
<br>                    <br><br><br>
<br><br><br>
<br>	
                        <ul>
                            <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="mdi mdi-account-box"></i> <span>Inward </span> <span class="menu-arrow"></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="temp.html">New Inward</a></li>
                                    <li><a href="temp.html">Search & Manage Inward</a></li>            
                                </ul>
                            </li>

                            <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="mdi mdi-account-box"></i> <span>Challan </span> <span class="menu-arrow"></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="temp.html">New Challan</a></li>
                                    <li><a href="temp.html">Search & Manage Challan</a></li>           
                                </ul>
                            </li>

                            <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="mdi mdi-account-box"></i> <span>Invoice </span> <span class="menu-arrow"></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="temp.html">New Invoice</a></li>
                                    <li><a href="temp.html">Search & Manage Invoice</a></li> 
                                    <li><a href="temp.html">Convert Invoice to Challan</a></li>            
                                </ul>
                            </li>

                            <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="mdi mdi-account-box"></i> <span>Return </span> <span class="menu-arrow"></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="temp.html">New Return</a></li>
                                    <li><a href="temp.html">Search & Manage Return</a></li>             
                                </ul>
                            </li>

                           <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="mdi mdi-account-box"></i> <span>Breakage & Damage </span> <span class="menu-arrow"></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="temp.html">New Bracakage & Damage</a></li>
                                    <li><a href="temp.html">Search Bracakage & Damage</a></li>            
                                </ul>
                            </li>

                            <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="mdi mdi-account-box"></i> <span>Expense </span> <span class="menu-arrow"></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="Expense/NewExpense.php">New Expense</a></li>
                                    <li><a href="Expense/ManageExpense.php">Search & Manage Expense</a></li>            
                                </ul>
                            </li>

                            <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="mdi mdi-account-box"></i> <span>Quatation </span> <span class="menu-arrow"></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="Quatation/newQuotation.php">New Quatation</a></li>
                                    <li><a href="Quatation/ManageQuatation.php">Search & Manage Quatation</a></li>            
                                </ul>
                            </li>

                            <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="mdi mdi-account-box"></i> <span>Payment </span> <span class="menu-arrow"></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="temp.html">New Payment</a></li>
                                    <li><a href="temp.html">Search & Manage Payment</a></li> 
                                </ul>
                            </li>
                        </ul>
                        
                        <div class="clearfix"></div>
                    </div>

                    <div class="clearfix"></div>

                </div>

            </div>

        <div id="wrapper">

            <div class="topbar">

                <div class="topbar-left">
                    <!-- <a href="index.html" class="logo"><span>Admin<span> Dashboard</span></span><i class="mdi mdi-layers"></i></a> -->
                    <img src="assets/images/balaji.svg" alt="Logo is placed here" height="200px" width="200px">
                </div>
                

               
                <div class="navbar navbar-default" role="navigation">
                <div class="myclass">   
                    <div class="container-fluid">

<div class="testbox">
    <div class="banner">
<center><h1 class="heading">Balaji Ceramic & Pipe Fitting</h1></center>
</div>


<div id="sidebar-menu">


                        <ul>
                            <li class="has_sub1">
                                <a href="javascript:void(0);" class="waves-effect"><i class="mdi mdi-account-box"></i> <span>Categories </span> <span class="menu-arrow"></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="temp.html">Manage Categories</a></li>
                                    <li><a href="temp.html">Manage Sub Categories</a></li>
                                    <li><a href="temp.html">Add Brands</a></li>
                                    <li><a href="temp.html">Manage Brands Mapping</a></li> 
                                    <li><a href="temp.html">Add Grade</a></li>
                                    <li><a href="temp.html">Manage Grade</a></li>           
                                </ul>
                            </li>

                            <li class="has_sub1">
                                <a href="javascript:void(0);" class="waves-effect"><i class="mdi mdi-account-box"></i> <span>Product </span> <span class="menu-arrow"></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="temp.html">New Product</a></li>
                                    <li><a href="temp.html">Search & Manage Product</a></li>            
                                </ul>
                            </li>

                            <li class="has_sub1">
                                <a href="javascript:void(0);" class="waves-effect"><i class="mdi mdi-account-box"></i> <span>Vendor </span> <span class="menu-arrow"></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="Vendor/NewVendor.php">New Vendor</a></li>
                                    <li><a href="Vendor/ManageVendor.php">Search & Manage Vendor</a></li>           
                                </ul>
                            </li>

                            <li class="has_sub1">
                                <a href="javascript:void(0);" class="waves-effect"><i class="mdi mdi-account-box"></i> <span>Customer </span> <span class="menu-arrow"></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="Customer/NewCustomer.php">New Customer</a></li>
                                    <li><a href="Customer/ManageCustomer.php">Search & Manage Customer</a></li>             
                                </ul>
                            </li>

                            <li class="has_sub1">
                                <a href="javascript:void(0);" class="waves-effect"><i class="mdi mdi-account-box"></i> <span>Stock </span> <span class="menu-arrow"></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="temp.html">New Stock</a></li>
                                    <li><a href="temp.html">Search & Manage Stock</a></li>             
                                </ul>
                            </li>

                           <li class="has_sub1">
                                <a href="temp.html" class="waves-effect"><i class="mdi mdi-account-box"></i><span>Report</span> <span class="menu-arrow"></span></a>
                                <!-- <ul class="list-unstyled">
                                    <li><a href="view.php">New Bracakage & Damage</a></li>
                                    <li><a href="search.php">Search Bracakage & Damage</a></li>            
                                </ul> -->
                            </li>

                            
                        </ul>
                        <div class="clearfix"></div>
                    </div>

                    <div class="clearfix"></div>

                </div>

    
</div>



                        <!-- <ul class="nav navbar-nav list-inline navbar-left">
                            <li class="list-inline-item">
                                <button class="button-menu-mobile open-left">
                                    <i class="mdi mdi-menu"></i>
                                </button>
                            </li>
                            <li class="list-inline-item">
                                <h4 class="page-title">Dashboard</h4>
                            </li>
                        </ul>

                        <nav class="navbar-custom">

                            <ul class="list-unstyled topbar-right-menu float-right mb-0">


                                <li class="hide-phone">
                                    <form class="app-search">
                                        <input type="text" placeholder="Search..."
                                                  class="form-control">
                                        <button type="submit"><i class="fa fa-search"></i></button>
                                    </form>
                                </li>

                            </ul>
                        </nav> -->
 
                </div>
            </div>

                   </div>
            




                <footer class="footer text-right">
                    <div class="btn-group" id="mybutton">
                    <button class="button" onclick="location.href = 'temp.html';" ><span>New Challan </span></button>
                    <button class="button" onclick="location.href = 'temp.html';" ><span>New Invoice </span></button>
                    <button class="button" onclick="location.href = 'temp.html';"><span>New Quatation </span></button>
                    <button class="button" onclick="location.href = 'temp.html';"><span>Add Payment </span></button>
                    <button class="button" onclick="location.href = 'Expense/NewExpense.php';"><span>Add Expense </span></button>
                    </div>
                    <div style="float: left; margin-top: 10px;">
                        Copyright &copy; <script>document.write(new Date().getFullYear())</script> Balaji Ceramic & Pipe Fitting All Rights Reserved                    
                    </div>
                     <div id="mybutton1">
                        <span><button class="button" id="mybutton2" onclick="location.href = '../Ceramic/admin.php';"><span>Ceramic Hub</span></button></span>
                    </div>
                </footer>


</div>


        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.app.js"></script>

    </body>
</html>

