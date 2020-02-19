<?php 
	include 'inc/header.php';
	include 'lb/User.php';
?>
<?php
	$user = new user();
	if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['register'])){
		$usrRegi = $user->userRegistration($_POST);
	}
?>
<div class="panel panel-default">
	<div class="panel-heading">
		<h2>User Regisstration</h2>
			</div>
			<div class="panel-body">
				<div style="max-width:600px; margin: 0 auto">
				<form action="" method="POST">
					<div class="form-group">
						<label for="name">Name</label>
						<input type="text" id="name" name="name" class="form-control" required="" ></input>
	 				</div>
					<div class="form-group">
						<label for="username">Username</label>
						<input type="text" id="username" name="username" class="form-control" required="" ></input>
	 				</div>
					<div class="form-group">
						<label for="email">Email Address</label>
						<input type="text" id="email" name="email" class="form-control" required="" ></input>
	 				</div>
					<div class="form-group">
						<label for="password">Password</label>
						<input type="text" id="password" name="password" class="form-control"></input>
					</div>
					<button type="submit" name="register" class="btn btn-success">submit</button>
				</form>
				</div>
				</div>
			</div>
	<?php
		include 'inc/footer.php';
	?>		