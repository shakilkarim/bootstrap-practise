<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Data extends CI_Model {
			public function __construct(){
				parent::__construct();
			}
			public function insert($data){
				//insert data
				$this->db->insert('users', $data);
				
				  return $idOfInsertedData = $this->db->insert_id();
			}
		public function userlogin($username,$password){
			$this->db->where('username',$username);
			$this->db->where('pass',$password);
			
			$query = $this->db->get('users');
			
			if($query->num_rows()>0){
				return $query->row();
			}else{
				return false;
			}
		}
		
  }

	

?>
