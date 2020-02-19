<?php
	define('DB_SERVER','localhost');
	define('DB_USERNAME','root');
	define('DB_PASSWORD', '');
	define('DB_NAME', 'userdata');
	
	$link = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_NAME);
	
	//Check connection
	if($link === false){
		die("ERROR: Could not connet.".mysqli_connect_error());
	}
	//else{
		//echo "success";
	//}
	
	
?>