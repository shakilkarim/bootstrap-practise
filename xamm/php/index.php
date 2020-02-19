<?php
	
	
spl_autoload_register(function ($classname) {
     include "class/" . $classname . ".php"; 
  
  });


	$ruby = new Ruby;
	$java = new Java;
	$php  = new Php;
?>