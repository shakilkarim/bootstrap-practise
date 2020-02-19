<?php
	include_once 'Session.php'; 
	include 'Database.php';
	
	class User{
		private $db;
		public function __construct(){
			$this->db = new Database();
		}
		
		public function userRegistration($data){
			$name = $data['name'];
			$username = $data['username'];
			$email = $data['email'];
			$password = md5($data['password']);
			
			$chk_emil = $this->emilCheck($emil);
			if($name == "" OR $username == "" OR $email == "" OR $password == "" ){
				$msg = "<div class="alert alart-danger"><strong>Error!</strong>Field must not be empty</div>";
					return $msg;
			}
			if(filter_var($email, FILTER_VALIDATE_EMAIL === false)){
				$msg = "<div class="alert alart-danger"><strong>Error!</strong>The email address is not valid</div>";
					return $msg;
			}
			
			public function emailCheck($email){
				$sql = "SELECT email FORM tbl_user WHERE email = :email";
				$query = $this->db->pdo->prepare($sql);
				$query->bindValue(':email',$email);
				$query->execute();
				if($query->rowCount() > 0){
					return 0;
				}else {
					return false;
				}
			}
		}
	}
?>