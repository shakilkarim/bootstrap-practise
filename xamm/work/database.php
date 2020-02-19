<?php 
	
	$conn = new mysqli("localhost","root","","crud") OR die ("Error:".mysqli_error($conn));
//code to save user's data
if(isset($_POST['save'])){
	if(!empty($_POST['username'])&& !empty($_POST['password'])){
		$username = $_POST['username'];
		$password = $_POST['password'];
		
		$iQuery = ("INSERT INFO account(username,password) values(?, ?)");
		
		$stmt = $conn->prepare($iQuery);
		mysqli_stmt_bind_param ('ss', $username, $password);
		if($stmt->execute()){
			# alert msg
		}
		$stmt->close();
		$conn->close();
	}else{
		# alert msg
	}
	header("location: index.php");
}	
?>