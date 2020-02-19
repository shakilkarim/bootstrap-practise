<?php include "config.php";?>
<?php include "database.php";?>


<?php
	
	$name ='';
	$email=''; 
	$skill='';

	 $db = new Database();

	 if (isset($_POST['submit'])) {
	 	$name  = mysqli_real_escape_string($db->link,  $_POST['name']);
	 	$email = mysqli_real_escape_string($db->link,  $_POST['email']);
	 	$skill = mysqli_real_escape_string($db->link,  $_POST['skill']);

	 }
	 if ($name == '' || $email == '' || $skill == "") {
	 	$error = "Field must not be Empty !!";
	 }
	 else {
	 	$query ="INSERT INTO crud (name,email,skill) Values ('$name', '$email', '$skill');";

	 	$create = $db->insert($query);
	 }
	
?>

	<?php 
	if (isset ($error)) {
		echo "<span style='color: red'>".$error."</span>";
	}
?>
<form action="create.php" method="post">	
<table>
	
	<tr>
		<td>Name</td>
		<td><input type="text" name="name" placeholder="please enter name"></td>
	</tr>
	<tr>
		<td>Email</td>
		<td><input type="text" name="email" placeholder="please enter email"></td>
	</tr>
	<tr>
		<td>Skill</td>
		<td><input type="text" name="skill" placeholder="please enter skill"></td>
	</tr>

	<tr>
		<td></td>
		<td>
		<input type="submit" name="submit" value="submit">
		<input type="reset" value="cancel">
	</td>
	</tr>
</table>
</form>
<a href="index.php">Go back to</a>