<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Manakamana Hotel</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/datepicker3.css" rel="stylesheet">
    <link href="css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">

    <!--Custom Font-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
</head>
<body>

<nav class="navbar navbar-light navbar-fixed-top bg-dark" style="background-color: green;" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse"><span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span></button>
            <a class="navbar-brand" href="home.php"><span>MANAKAMANA </span> HOTEL</a>
            <ul class="nav navbar-nav navbar-right">
                    <li><a href="http://www.facebook.com"><img src="img/facebook.png"></a></li>
                    <li><a href="http://www.twitter.com"><img src="img/twitter.png"></a></li>                    
                </ul>
                    
        </div>
    </div><!-- /.container-fluid -->
</nav>


<?php
include('db.php');

?>
<html>
<head>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/login.css"/>
    
</head>

<body>
<div class="container">
    <div class="card card-container">
        <img id="profile-img" class="profile-img-card" src="img/login.png"/>
        
        <br>
        <div class="result">
            <?php
            if (isset($_GET['empty'])){
                echo '<div class="alert alert-danger">Enter Email or Password</div>';
            }elseif (isset($_GET['login'])){
                echo '<div class="alert alert-danger">Email or Password Did\'t Match</div>';
            } ?>
        </div>
        <form class="form-signin" data-toggle="validator" action="ajax.php" method="post">
            <div class="row">
                <div class="form-group col-lg-12">
                    <label>Email</label>
                    <input type="text" name="email" class="form-control" placeholder="" required
                           data-error="Enter Username">
                    <div class="help-block with-errors"></div>
                </div>
                <div class="form-group col-lg-12">
                    <label>Password</label>
                    <input type="password" name="password" class="form-control" placeholder="" required
                           data-error="Enter Password">
                    <div class="help-block with-errors"></div>
                </div>
            </div>

            <button class="btn btn-lg btn-success btn-block btn-signin" type="submit" name="login">LOGIN</button>

        </form><!-- /form -->
    </div><!-- /card-container -->
</div><!-- /container -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/validator.min.js"></script>
</body>
</html>
