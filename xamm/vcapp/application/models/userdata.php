<?php 
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class UserData extends CI_Model {

	function __construct() {
		parent::__construct();
	}
	
    public function insert($data) {
		
        // Inserting into your table
        $this->db->insert('user', $data);
        // Return the id of inserted row
        return $idOfInsertedData = $this->db->insert_id();
		
    }
	
	public function update_token($data){
		//if($data['event_id'])
		$this->db->where('event_id', $data['event_id']);
		$query = $this->db->get('vidyo_connect');
		
		if($query->num_rows()>0) {
			$this->db->where('event_id', $data['event_id']);
			$this->db->update('vidyo_connect', $data);
		}else {
			$this->db->insert('vidyo_connect', $data);
		}
		
		
	}
	
	public function insertEvent($data) {
		
        // Inserting into your table
        $this->db->insert('events', $data);
        // Return the id of inserted row
		 return $idOfInsertedData = $this->db->insert_id();
    }
	
	public function userlogin($username, $password) {
		$this->db->where('username', $username);
		$this->db->where('password', $password);
		$query = $this->db->get('user');
		
		if($query->num_rows()>0) {
			return $query->row();
		}else {
			return false;
		}
	}
	
	public function fetch_data($user_id){
		$this->db->where('user_id', $user_id);
		$query = $this->db->get('events');
		return $query;
	}
	
	public function event_data($id){
		$this->db->where('event_id', $id);
		$query = $this->db->get('events');
		return $query;
	}
	
	public function update_record($id, $data){
		
        $this->db->where('event_id', $id);
        $this->db->update('events', $data);
    }
	
	public function delete_record($id){
		$this->db->where('event_id', $id);
		$this->db->delete('events');
	}
	
	public function connect_data($id){
		$this->db->where('event_id', $id);
		$query = $this->db->get('vidyo_connect');
		return $query;
	}
	
	public function recent_events(){
		$rows = $this->db->count_all('events') - 3;
		$query = $this->db->get('events', 3, rand(1,$rows));
		return $query;
	}
	
	public function all_events($limits, $start){
		$this->db->order_by('event_id', 'DESC');
		$query = $this->db->get('events', $limits, $start);
		return $query;
	}
	
	public function record_count(){
		return $this->db->count_all('events');
	}


}