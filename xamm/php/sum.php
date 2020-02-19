
<!DOCTYPE html>

<html>
<head>
	<title></title>
</head>
<body>
	 <?php include ('function.php'); ?> 
	<form  action="" method="post"> 
		<table>
			<tr>
				<td>Enter first number: </td>
				<td><input type="number" name="num1"></td>
			</tr>
			<tr>
				<td>Enter second  number :</td>
				<td><input type="number" name="num2"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" name="calculation" value="calculate"></td>
			</tr>
		</table>
	</form>
	<?php 
	  	if (isset($_POST['calculation'])) {
	  		$numone = $_POST['num1'];
	  		$numtwo = $_POST['num2'];

	  		if (empty($numone) or empty($numtwo)) {
	  			echo "<span style='color: red'>Feild must not be empty.</span><br>";
	  		}

	  		 $cal = new main;
	  		 $cal->add($numone,$numtwo);
	  		 $cal->sub($numone,$numtwo);
	  		 $cal->mul($numone,$numtwo);
	  		 $cal->divi($numone,$numtwo);			

	  	}
	  ?>
	

