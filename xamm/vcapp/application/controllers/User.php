<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

	
	
	function __construct() {
        parent::__construct();
        $this->load->helper(array('form','url'));
		$this->load->library('form_validation');
		$this->load->model('userdata');
    }
	
	public function register()
	{
		$this->load->view('register');
	}
	public function login() 
	{
		$this->load->view('login');
	}
	
	public function regSave()
	{
		$this->form_validation->set_rules('fname', 'First name', 'trim|html_escape|stripslashes|required|callback_regex_match');
		$this->form_validation->set_rules('lname', 'Last name', 'trim|html_escape|stripslashes|required|callback_regex_match');
		$this->form_validation->set_rules('email', 'Email address', 'trim|html_escape|stripslashes|required|valid_email');
		$this->form_validation->set_rules('pass', 'Password', 'trim|html_escape|stripslashes|required|min_length[4]|alpha_dash');
		$this->form_validation->set_rules('cpass', 'Confirm password', 'trim|html_escape|stripslashes|required|min_length[4]|matches[pass]|alpha_dash');
		$this->form_validation->set_rules('username', 'Username', 'trim|html_escape|stripslashes|required|min_length[6]|max_length[9]|alpha_dash|is_unique[user.username]');
		//echo "niku"; exit;
		if($this->form_validation->run() == false ){
			$this->load->view('register');
		} else {
			//echo "<pre>";
			//print_r($this->input->post());
			//exit;
			$fname = $this->input->post('fname');
			$lname=$this->input->post('lname');
			$username=$this->input->post('username');
			$email=$this->input->post('email');
			$pass=$this->input->post('pass');
			$pass2= md5($pass);
			$cpass=$this->input->post('cpass');
			$cpass2= md5($cpass);
			
			
			$data = array('fname'=>$fname,
					'lname'=>$lname,
					'username'=>$username,
					'email'=>$email,
					'password'=>$pass2,
					'cpass'=>$cpass2
			);
			
			$this->userdata->insert($data);
			redirect(base_url()."user/login");
		}
	
		
	}
	
	public function regex_match($str,$regex){
		$regex = "/^[a-zA-Z ]*$/";
		if (!preg_match($regex, $str)) {
			$this->form_validation->set_message("regex_match","Only letters and whitespaces are allowed.");
			return false;
		} else 
			return true;
	}
	
	public function loginform (){
		
		$this->form_validation->set_rules('username', 'Username', 'required|trim|stripslashes|html_escape');
		$this->form_validation->set_rules('password', 'Password', 'required|trim|stripslashes|html_escape');
	    
		if($this->form_validation->run()){
			
			$username = $this->input->post('username');
			$pass=$this->input->post('password');
			$pass2= md5($pass);
			$userData = $this->userdata->userlogin($username, $pass2);
		if($userData->id)
		{
			$session_data = array(
			    'username' => $username,
				'user_id'  => $userData->id
			);
			
			$this->session->set_userdata($session_data);
			
			redirect(base_url()."user/enter");
		} 
		else 
		{
			$this->session->set_flashdata('error', 'Invalid Username and Password');
			redirect(base_url().'user/login');
		}
		
		} else {
			$this->load->view('login');
		
		}
	}
	
	public function enter() {
		if($this->session->userdata('username')!= "")
		{
			$data['fetch_data'] = $this->userdata->fetch_data($this->session->userdata('user_id'));
			//print_r($_SESSION); exit;
			$this->load->view('dashboard', $data);
			
		}
		else
		{
			redirect(base_url().'user/login');
		}
		
	}
	
	public function events() {
		if($this->session->userdata('username')!= "")
		{
		    $data['user_id'] = $this->session->userdata('user_id');
			$this->load->view('event',$data);
			
		}
		else
		{
			redirect(base_url().'user/login');
		}
		
	}
	
	public function eventform() {
		if($this->session->userdata('username')!= "")
		{
			$this->form_validation->set_rules('title', 'Event title', 'trim|html_escape|stripslashes|required');
			$this->form_validation->set_rules('startdate', 'Start date & time', 'trim|html_escape|stripslashes|required');
		    $this->form_validation->set_rules('enddate', 'End date & time', 'trim|html_escape|stripslashes|required');
		    $this->form_validation->set_rules('place', 'Place', 'trim|html_escape|stripslashes|required');
			$this->form_validation->set_rules('sdescrip', 'Short description', 'trim|html_escape|stripslashes|required');
		    $this->form_validation->set_rules('ldescrip', 'Long description', 'trim|html_escape|stripslashes|required');
			
			
			if($this->form_validation->run()){
				$title = $this->input->post('title');
				$start = $this->input->post('startdate');
				$end = $this->input->post('enddate');
				$place = $this->input->post('place');
				$sdes = $this->input->post('sdescrip');
				$ldes = $this->input->post('ldescrip');
				$user_id = $this->input->post('user_id');
				
				$data = array(
					'user_id' => $user_id,
					'title'=>$title,
					'start'=>$start,
					'end'=>$end,
					'place'=>$place,
					's_description'=>$sdes,
					'l_description'=>$ldes,
			    );
				//print_r($_FILES);exit;
				if($_FILES['file']['size'] > 0){
					$config['upload_path']          = './uploads/';
					$config['allowed_types']        = 'gif|jpg|png';
					$config['max_size']             = 1000;
					$config['max_width']            = 1024;
					$config['max_height']           = 768;

					$this->load->library('upload', $config);
					if ( ! $this->upload->do_upload('file'))
					{
							$error = array('error' => $this->upload->display_errors());
							$this->load->view('event', $error);
					}
					else
					{      
							$datam = array('upload_data' => $this->upload->data());
							//print_r($datam);exit;
							//$this->load->view('upload_success', $datam);
							$data['img_name'] = $datam['upload_data']['file_name'];
							$this->userdata->insertEvent($data);
							redirect(base_url().'user/enter');
					}   
				} else {
					$this->userdata->insertEvent($data);
					redirect(base_url().'user/enter');
				}
				
				
			}else {
				$this->load->view('event');
			}
		}
		else
		{
			redirect(base_url().'user/login');
		}
		
	}
	
	public function edit(){
		if($this->session->userdata('username')!= "")
		{
			$data['user_id'] = $this->session->userdata('user_id');
			$data['event_data'] = $this->userdata->event_data($_GET['event_id']);
			
		    $this->load->view('edit_event', $data);
			
		}
		else
		{
			redirect(base_url().'user/login');
		}
	}
	
	public function editevent(){
		if($this->session->userdata('username')!= "")
		{
			$this->form_validation->set_rules('title', 'Event title', 'trim|html_escape|stripslashes|required');
			$this->form_validation->set_rules('startdate', 'Start date & time', 'trim|html_escape|stripslashes|required');
		    $this->form_validation->set_rules('enddate', 'End date & time', 'trim|html_escape|stripslashes|required');
		    $this->form_validation->set_rules('place', 'Place', 'trim|html_escape|stripslashes|required');
			$this->form_validation->set_rules('sdescrip', 'Short description', 'trim|html_escape|stripslashes|required');
		    $this->form_validation->set_rules('ldescrip', 'Long description', 'trim|html_escape|stripslashes|required');
			
			
			if($this->form_validation->run()){
				$title = $this->input->post('title');
				$start = $this->input->post('startdate');
				$end = $this->input->post('enddate');
				$place = $this->input->post('place');
				$sdes = $this->input->post('sdescrip');
				$ldes = $this->input->post('ldescrip');
				$user_id = $this->input->post('user_id');
				$event_id = $this->input->post('event_id');
				
				$data = array(
					'user_id' => $user_id,
					'title'=>$title,
					'start'=>$start,
					'end'=>$end,
					'place'=>$place,
					's_description'=>$sdes,
					'l_description'=>$ldes,
			    );
				//print_r($_FILES);exit;
				if($_FILES['file']['size'] > 0){
					$config['upload_path']          = './uploads/';
					$config['allowed_types']        = 'gif|jpg|png';
					$config['max_size']             = 1000;
					$config['max_width']            = 1024;
					$config['max_height']           = 768;

					$this->load->library('upload', $config);
					if ( ! $this->upload->do_upload('file'))
					{
							$error = array('error' => $this->upload->display_errors());
							$this->load->view('edit_event', $error);
					}
					else
					{      
							$datam = array('upload_data' => $this->upload->data());
							//print_r($datam);exit;
							//$this->load->view('upload_success', $datam);
							$data['img_name'] = $datam['upload_data']['file_name'];
							$this->userdata->update_record($event_id,$data);
							redirect(base_url().'user/enter');
					}   
				} else {
					$this->userdata->update_record($event_id,$data);
					redirect(base_url().'user/enter');
				}
				
				
			}else {
				$this->load->view('edit_event');
			}
			
		}
		else
		{
			redirect(base_url().'user/login');
		}
	}
	
	public function delete_event(){
		if($this->session->userdata('username')!= "")
		{
			$id= $this->uri->segment(3);
			$this->userdata->delete_record($id);
			redirect(base_url().'user/enter');
			
		}
		else
		{
			redirect(base_url().'user/login');
		}
	}
	
	public function profile(){
		if($this->session->userdata('username')!= "")
		{
			$this->load->view('profile');
		}
		else
		{
			redirect(base_url().'user/login');
		}
	}
	
	public function profile_update(){
		if($this->session->userdata('username')!= "")
		{
			//print_r($_FILES);exit;
			if($_FILES['profile_pic']['size'] > 0){
					$config['upload_path']          = './gallery/';
					$config['allowed_types']        = 'gif|jpg|png';
					$config['max_size']             = 2000;
					$config['max_width']            = 1024;
					$config['max_height']           = 700;

					$this->load->library('upload', $config);
					if ( ! $this->upload->do_upload('profile_pic'))
					{
							$error = array('error' => $this->upload->display_errors());
							$this->load->view('profile', $error);
					}
					else
					{      
							$datam = array('upload_data' => $this->upload->data());
							//print_r($datam);exit;
							//$this->load->view('upload_success', $datam);
							//$data['img_name'] = $datam['upload_data']['file_name'];
							//$this->userdata->update_record($event_id,$data);
							redirect(base_url().'user/enter');
					}   
				} else {
					//$this->userdata->update_record($event_id,$data);
					redirect(base_url().'user/profile');
				}
		}
		else
		{
			redirect(base_url().'user/login');
		}
	}
	
	public function tables(){
		if($this->session->userdata('username')!= "")
		{
			$data['fetch_data'] = $this->userdata->fetch_data($this->session->userdata('user_id'));
			$this->load->view('tables', $data);
		}
		else
		{
			redirect(base_url().'user/login');
		}
	}
	
	public function forgot_password(){
		
		$this->load->view('forgot-password');
		
	}
	
	public function logout(){
		$this->session->unset_userdata('username');    // $this->session->sess_destroy();
		$this->session->unset_userdata('user_id');
	    redirect(base_url()."user/login");
	}
}
