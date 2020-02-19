<?php

class User{

	public $name = "shakil";

	private $pass ="123456";

	protected $email = "shkail@gamil.com";

	public function password(){
		return  $this->pass;
	}

}
class Admin extends User{

	function  __construct(){
	echo $this->email;
	}
}
$admin = new Admin();
 
  