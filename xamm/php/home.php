<!DOCTYPE html>
<html>
<body>
	<?php
		echo "My first php script!";
		echo'<br>';
		
		$x = 10;
		$y = 20;
		
		 echo $x+$y;
		 echo '<hr>';
		 //global variable
		
		$x = 5; //global variable
		function myTest(){
			echo "<p>variable x inside function is:$x</p>";
			
		}
		
		echo "<p>Variable x outside function :$x</p>";
		echo "<hr>";
		//static 
		
		
	?>
</body>
</html>
