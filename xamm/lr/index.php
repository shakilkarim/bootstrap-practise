<?php 
	include 'inc/header.php';
	include 'lb/User.php';
	$user = new User();
?>

<div class="panel panel-default">
	<div class="panel-heading">
		<h2>User list <span class="pull-right"><strong>Welcome!</strong></span></h2>
			</div>
			<div class="panel-body">
				<table class="table table-striped">
						<th width="20%">Serial</th>
						<th width="20%">Name</th>
						<th width="20%">Username</th>
						<th width="20%">Email Address</th>
						<th width="20%">Action</th>
						
						<tr>
							<td>01</td>
							<td>Md rezaul</td>
							<td>Karim</td>
							<td>rezaul9315@gmail.com</td>
							<td>
								<a class=" btn btn-primary" href="profile.php?id=1">view</a>
							</td>
							
						</tr>
						<tr>
							<td>02</td>
							<td>Md mamun</td>
							<td>mamun</td>
							<td>mamun@gmail.com</td>
							<td>
								<a class=" btn btn-primary" href="profile.php?id=1">view</a>
							</td>
							
						</tr>
						<tr>
							<td>03</td>
							<td>Md karim</td>
							<td>Karim</td>
							<td>karim@gmail.com</td>
							<td>
								<a class=" btn btn-primary" href="profile.php?id=1">view</a>
							</td>
							
						</tr>
					</table>
				</div>
			</div>
	<?php
		include 'inc/footer.php';
	?>		