<?php
	class Database{
		public $host   = DB_HOST;
		public $user   = DB_USER;
		public $pass   = DB_PASS;
		public $dbname = DB_NAME;


		public $link;
		public $error;

		public function __construct(){
			$this->connectDB();
		}
		
		private function connectDB(){

			$this->link = new mysqli($this->host, $this->user, $this->pass, $this->dbname);
			if (!$this->link) {
				$this->error = "Connection fail".$this->link->connect_error;

				return false;
			}

		}

		//Select of read

		public function select ($query){
		$result = $this->link->query($query) or die ($this->link->error);
		if ($result->num_rows > 0) {
				return $result;
			}else {
				return false;
			}	
			
	}
		//Insert data

		public function insert($query){
			$insert_row = $this->link->query($query) or die ($this->link->error);

			if ($insert_row) {
				header("Location: index.php?msg=".urlencode('Data Insert successfully.'));
				exit();
			}
			else {
				die("Error: (".$this->link->errno.")".$this->link->error);
			}
		}


		//Update data

		public function update($query){
			$update_row = $this->link->query($query) or die ($this->link->error);

			if ($update_row) {
				header("Location: index.php?msg=".urlencode('Data Update successfully.'));
				exit();
			}
			else {
				die("Error: (".$this->link->errno.")".$this->link->error);
			}
		}

		//Delete data 

		public function delete($query){
			$delete_row = $this->link->query($query) or die ($this->link->error);

			if ($delete_row) {
				header("Location: index.php?msg=".urlencode('Data Delete successfully.'));
				exit();
			}
			else {
				die("Error: (".$this->link->errno.")".$this->link->error);
			}
		}
}

?>