<?php
	//Magic mathods
	/*
	--get();
	__set();
	--call();
	*/

	 class student{
	 		public $name;
	 	public function describe(){
	 		echo "I am a student";
	 	}

	 	public function __get($m){
	 		echo "$m dose not exit";
	 	}
	 }

	 $stu = new student();
	 $stu->describe();
	 $stu->shakil;

?>