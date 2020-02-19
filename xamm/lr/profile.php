<?php 
	include 'inc/header.php';
?>
<div class="panel panel-default">
	<div class="panel-heading">
		<h2>User Profile<span class="pull-right"><a class="btn btn-primary" href="index.php">Back</a></span></h2>
			</div>
			<div class="panel-body">
				<div style="max-width:600px; margin: 0 auto">
				<form action="" method="POST">
					<div class="form-group">
						<label for="name">Name</label>
						<input type="text" id="name" name="name" class="form-control" value="Md rezaul" ></input>
	 				</div>
					<div class="form-group">
						<label for="username">Username</label>
						<input type="text" id="username" name="username" class="form-control" value="karim" ></input>
	 				</div>
					<div class="form-group">
						<label for="email">Email Address</label>
						<input type="text" id="email" name="email" class="form-control" value="	rezaul9315@gmail.com"></input>
	 				</div>
					
					<button type="submit" name="update" class="btn btn-success">update</button>
				</form>
				</div>
				</div>
			</div>
	<?php
		include 'inc/footer.php';
	?>		