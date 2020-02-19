<?php include 'new.php';?>
<?php
class Student {
		
		 public $name;

		 public $attendence;

		 public $total_mark;


		public function studat ($name,$att,$total){
			$this->name = $name;
			$this->attendence= $att;
			$this->total_mark= $total;

		} 
} 
$var = new Student();
	$var->studat('shakil',false,98);	
	echo $var->name;
   


