<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
        <ol class="breadcrumb">
            <li><a href="#">
                    <em class="fa fa-xl fa-home color-green"></em>
                </a></li>
            <li class="active">Customer History</li>
        </ol>
    </div><!--/.row-->

    <div class="row">
			<div class="col-lg-12">
				<h1 class="page-header"></h1>
			</div>
		</div>

    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">Customer History: </div>
                <div class="panel-body">
                    <?php
                    if (isset($_GET['error'])) {
                        echo "<div class='alert alert-danger'>
                                <span class='glyphicon glyphicon-info-sign'></span> &nbsp; Error on Shift Change !
                            </div>";
                    }
                    if (isset($_GET['success'])) {
                        echo "<div class='alert alert-success'>
                                <span class='glyphicon glyphicon-info-sign'></span> &nbsp; Shift Successfully Changed!
                            </div>";
                    }
                    ?>
                    <table class="table table-striped table-bordered table-responsive" cellspacing="0" width="100%"
                           id="rooms">
                        <thead>
                        <tr>
                            <th>Customer id</th>
                            <th>Customer Name</th>
                            <th>Contact No.</th>
                            <th>Email</th>
                            <th>Id Card Type</th>
                            <th>Id Card No.</th>
                            <th>Address</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        $customer_query = "SELECT * FROM customer";
                        $customer_result = mysqli_query($connection, $customer_query);

                        if (mysqli_num_rows($customer_result) > 0) {
                            while ($customer = mysqli_fetch_assoc($customer_result)) { ?>
                                <tr>
                                    <td><?php echo $customer['customer_id']; ?></td>
                                    <td><?php echo $customer['customer_name']; ?></td>
                                    <td><?php echo $customer['contact_no']; ?></td>
                                    <td><?php echo $customer['email']; ?></td>
                                    <td><?php echo $customer['id_card_type_id']; ?></td>
                                    <td><?php echo $customer['id_card_no']; ?></td>
                                    <td><?php echo $customer['address']; ?></td>                                   
                                </tr>
                                <?php
                            }
                        }
                        ?>


                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
        <p class="back-link">Developed By Kamal Kadayat</p>
        </div>
    </div>

</div>    <!--/.main-->

<?php
//$staff_query = "SELECT * FROM staff  JOIN staff_type JOIN shift ON staff.staff_type_id =staff_type.staff_type_id ON shift.";
$staff_query = "SELECT * FROM staff  NATURAL JOIN staff_type NATURAL JOIN shift";
$staff_result = mysqli_query($connection, $staff_query);

if (mysqli_num_rows($staff_result) > 0) {
    while ($staffGlobal = mysqli_fetch_assoc($staff_result)) {
        $fullname = explode(" ", $staffGlobal['emp_name']);
        ?>

       

        <!-- Employee Detail-->
        <div id="changeShift" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Change Shift</h4>
                    </div>
                    <div class="modal-body">

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <form data-toggle="validator" role="form" action="ajax.php" method="post">
                                            <div class="row">
                                            <div class="form-group col-lg-12">
                                                <label>Shift</label>
                                                <select class="form-control" id="shift" name="shift_id" required>
                                                    <option selected disabled>Select Staff Type</option>
                                                    <?php
                                                    $query = "SELECT * FROM shift";
                                                    $result = mysqli_query($connection, $query);
                                                    if (mysqli_num_rows($result) > 0) {
                                                        while ($shift = mysqli_fetch_assoc($result)) {
                                                            // echo '<option value="' . $shift['shift_id'] . '">' . $shift['shift'] . ' - ' . $shift['shift_timing'] . '</option>';
                                                            echo '<option value="' . $shift['shift_id'] . '" ' . (($shift['shift_id'] == $staffGlobal['shift_id']) ? 'selected="selected"' : "") . '>' . $shift['shift_timing'] . '</option>';
                                                        }
                                                    }
                                                    ?>
                                                </select>
                                            </div>
                                            </div>
                                            <input type="hidden" name="emp_id" value="" id="getEmpId">
                                            <button type="submit" class="btn btn-lg btn-primary" name="change_shift">Submit</button>
                                        </form>
                                    </div>
                                </div>
                            </div>


                        </div>

                    </div>
                </div>

            </div>
        </div>
        <?php
    }
}