<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>My events</title>

    <!-- Bootstrap core CSS-->
    <link href="<?php echo base_url();?>vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="<?php echo base_url();?>vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="<?php echo base_url();?>vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<?php echo base_url();?>css/sb-admin.css" rel="stylesheet">

  </head>

  <body id="page-top">

    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

      <a class="navbar-brand mr-3" href="<?php echo base_url();?>">LIVE EVENT</a>

      <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fas fa-bars"></i>
      </button>
	  
	  

      <!-- Navbar Search -->
      <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
          <div class="input-group-append">
            <button class="btn btn-primary" type="button">
              <i class="fas fa-search"></i>
            </button>
          </div>
        </div>
      </form>

      <!-- Navbar -->
      <ul class="navbar-nav ml-auto ml-md-0">
        <li class="nav-item dropdown no-arrow mx-1">
          <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-bell fa-fw"></i>
            <span class="badge badge-danger">9+</span>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">
            <a class="dropdown-item" href="#">Action</a>
            <a class="dropdown-item" href="#">Another action</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Something else here</a>
          </div>
        </li>
        <li class="nav-item dropdown no-arrow mx-1">
          <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-envelope fa-fw"></i>
            <span class="badge badge-danger">7</span>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
            <a class="dropdown-item" href="#">Action</a>
            <a class="dropdown-item" href="#">Another action</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Something else here</a>
          </div>
        </li>
        <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-user-circle fa-fw"></i>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
		    <h5 class="dropdown-header"><?php echo $this->session->userdata('username');?></h5>
			<div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Settings</a>
            <a class="dropdown-item" href="#">Activity Log</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Logout</a>
          </div>
        </li>
      </ul>

    </nav>

    <div id="wrapper">

      <!-- Sidebar -->
      <ul class="sidebar navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="<?php echo base_url();?>user/enter">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span>
          </a>
        </li>
		<li class="nav-item">
          <a class="nav-link" href="<?php echo base_url();?>user/events">
            <i class="fas fa-fw fa-plus"></i>
            <span>Create an event</span></a>
        </li>
		<li class="nav-item">
          <a class="nav-link" href="<?php echo base_url();?>user/tables">
            <i class="fas fa-fw fa-table"></i>
            <span>My Events</span></a>
        </li>
		<li class="nav-item">
          <a class="nav-link" href="<?php echo base_url();?>user/profile">
            <i class="fas fa-fw fa-id-card"></i>
            <span>Edit Profile</span></a>
        </li>
		<li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-folder"></i>
            <span>Pages</span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <h6 class="dropdown-header">Login Screens:</h6>
            <a class="dropdown-item" href="<?php echo base_url();?>user/login">Login</a>
            <a class="dropdown-item" href="<?php echo base_url();?>user/register">Register</a>
            <a class="dropdown-item" href="<?php echo base_url();?>user/forgot_password">Forgot Password</a>
            <div class="dropdown-divider"></div>
            <h6 class="dropdown-header">Other Pages:</h6>
            <a class="dropdown-item" href="404.html">404 Page</a>
            <a class="dropdown-item" href="blank.html">Blank Page</a>
          </div>
        </li>
      </ul>

      <div id="content-wrapper">

        <div class="container-fluid">
          
		  <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="#">Dashboard</a>
            </li>
            <li class="breadcrumb-item active">Overview</li>
          </ol>

           <!-- DataTables Example -->
          <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-table"></i>
              Event List</div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Event title</th>
                      <th>Start date</th>
                      <th>End date</th>
					  <th>Action</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>Event title</th>
                      <th>Start date</th>
                      <th>End date</th>
					  <th>Action</th> 
                    </tr>
                  </tfoot>
                  <tbody>
                    <?php
					if($fetch_data->num_rows()>0){
						foreach($fetch_data->result() as $row){
					?>
					<tr>
					  <td><?php echo $row->title;?></td>
					  <td><?php echo $row->start;?></td>
					  <td><?php echo $row->end;?></td>
					  <td><a class= "badge badge-secondary" href="<?php echo base_url(); ?>user/edit?event_id=<?php echo $row->event_id; ?>">Edit</a> / <a class="badge badge-secondary delete" href="#" id="<?php echo $row->event_id; ?>">Delete</a> / <a class="badge badge-danger"  onclick="accessToken('<?php echo $row->event_id; ?>');" href="#">Live</a></td>
					</tr>  
					<?php
						}
					}else{
					?>
					<tr>
					  <td>No Data Found</td>
					  <td>No Data Found</td>
					  <td>No Data Found</td>
					  <td></td>
					</tr>	
					<?php
					}
					?>
                  </tbody>
                </table>
              </div>
            </div>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
          </div>

        </div>
        <!-- /.container-fluid -->

        <!-- Sticky Footer -->
        <footer class="sticky-footer">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <p >Copyright © www.liveevent.com 2019</p>
            </div>
          </div>
        </footer>

      </div>
      <!-- /.content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="<?php echo base_url();?>user/logout">Logout</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="<?php echo base_url();?>vendor/jquery/jquery.min.js"></script>
    <script src="<?php echo base_url();?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="<?php echo base_url();?>vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="<?php echo base_url();?>vendor/chart.js/Chart.min.js"></script>
    <script src="<?php echo base_url();?>vendor/datatables/jquery.dataTables.js"></script>
    <script src="<?php echo base_url();?>vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="<?php echo base_url();?>js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="<?php echo base_url();?>js/demo/datatables-demo.js"></script>
    <script src="<?php echo base_url();?>js/demo/chart-area-demo.js"></script>
	
	<script>
	$(document).ready(function(){
		$('.delete').click(function(){
			var id = $(this).attr("id");
			if(confirm("Are you sure you want to delete this event?"))
			{
				window.location = "<?php echo base_url();?>user/delete_event/" + id;
			}
			else
			{
				return false;
			}
		});
	});
	</script>
	<script>
	function accessToken(event_id){
		
		var url = "<?php echo base_url(); ?>/home/generatetoken";
		var data = {'appId':'ad02af.vidyo.io', 'developerKey': '5e9d1341e665482ebaf93fbc761dde29', 'user': '<?php echo $this->session->userdata('username');?>', 'event_id':event_id };
        $.ajax({
		  type: "POST",
		  url: url,
		  data: data,
		  dataType: 'json',
		  success: function(response){
			  var token = response.token;
			  if(token){
				  window.location = "<?php echo base_url(); ?>home/live?event_id=" + event_id;
			  }
		  },
		});
    
	}
	</script>

  </body>

</html>
