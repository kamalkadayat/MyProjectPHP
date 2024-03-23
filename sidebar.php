<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
    <div class="profile-sidebar">
        <div class="profile-userpic">
            <img src="img/admin.jpg" class="img-responsive" alt="">
        </div>
        <div class="profile-usertitle">
            <div class="profile-usertitle-name"><?php echo $user['name'];?></div>
            <div class="profile-usertitle-status"><span class="indicator label-success"></span>Admin</div>
        </div>
        <div class="clear"></div>
    </div>
    <div class="divider"></div>
    <ul class="nav menu">
    <?php 

        if (isset($_GET['dashboard'])){ ?>
            <li class="active">
                <a href="index.php?dashboard"><em class="fa fa-book color-green" >&nbsp;</em>
                    Dashboard
                </a>
            </li>
        <?php } else{?>
            <li>
                <a href="index.php?dashboard"><em class="fa fa-book color-green ">&nbsp;</em>
                    Dashboard
                </a>
            </li>
        <?php }
        if (isset($_GET['reservation'])){ ?>
            <li class="active">
            <a href="index.php?reservation"><em class="fa fa-phone color-green ">&nbsp;</em>
                    Reservation
                </a>
            </li>
        <?php } else{?>
            <li>
            <a href="index.php?reservation"><em class="fa fa-phone color-green">&nbsp;</em>
                    Reservation
                </a>
            </li>
        <?php }
        if (isset($_GET['room_mang'])){ ?>
            <li class="active">
                <a href="index.php?room_mang"><em class="fa fa-home color-green">&nbsp;</em>
                    Manage Rooms & Guests
                </a>
            </li>
        <?php } else{?>
            <li>
            <a href="index.php?room_mang"><em class="fa fa-home color-green">&nbsp;</em>
                    Manage Rooms & Guests 
                </a>
            </li>
        <?php }
        if (isset($_GET['staff_mang'])){ ?>
            <li class="active">
                <a href="index.php?staff_mang"><em class="fa fa-users color-green">&nbsp;</em>
                    Staff Section
                </a>
            </li>
        <?php } else{?>
            <li>
                <a href="index.php?staff_mang"><em class="fa fa-users color-green">&nbsp;</em>
                    Staff Section
                </a>
            </li>
        <?php }
        if (isset($_GET['customerhistory'])){ ?>
            <li class="active">
                <a href="index.php?customerhistory"><em class="fa fa-book color-green" >&nbsp;</em>
                Customer History
                </a>
            </li>
        <?php } else{?>
            <li>
                <a href="index.php?customerhistory"><em class="fa fa-book color-green ">&nbsp;</em>
                Customer History
                </a>
            </li>
        <?php }
        ?>
          <?php
        if (isset($_GET['statistics'])){ ?>
            <li class="active">
                <a href="index.php?statistics"><em class="fa fa-pie-chart color-green">&nbsp;</em>
                    Statistics
                </a>
            </li>
        <?php } else{?>
        <li>
            <a href="index.php?statistics"><em class="fa fa-pie-chart color-green">&nbsp;</em>
                Statistics
            </a>
        </li>
        <?php }?>

    </ul>
</div><!--/.sidebar--> 
    <style>
        .well
        {
            background: rgba(0,0,0,0.7);
            border: none;
    
        }
        .wellfix
        {
            background: rgba(0,0,0,0.7);
            border: none;
            height: 150px;
        }
		body
		{
			background-image: url('img/home_bg.jpg');
			background-repeat: no-repeat;
			background-attachment: fixed; 
        
		}
		p
		{
			font-size: 13px;
		}
        .pro_pic
        {
            border-radius: 50%;
            height: 50px;
            width: 50px;
            margin-bottom: 15px;
            margin-right: 15px;
        }
		
    </style>
    
    
</head>

</html>