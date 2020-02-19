<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->helper(array('form', 'url'));
		$this->load->library('form_validation');
		$this->load->model('userdata');
	}
	public function register()
	{
		$this->load->view('register');
	}
	public function login(){
		$this->load->view('login');
	}
	
	public function regidata(){
		
		$this->form_validation->set_rules('fname', 'First name', 'trim|html_escape|stripslashes|required|callback_regex_match');
		$this->form_validation->set_rules('lname', 'Last name', 'trim|html_escape|stripslashes|required|callback_regex_match');
		
		$this->form_validation->set_rules('pass', 'Password', 'required|matches[pass]|min_length[8]|alpha_numeric|callback_password_check');
		$this->form_validation->set_rules('email', 'Email address', 'trim|html_escape|stripslashes|required|is_unique[users.email]');
		$this->form_validation->set_rules('cpass', 'Password', 'required|matches[pass]|min_length[8]|alpha_numeric');
		$this->form_validation->set_rules('username', 'Username', 'trim|html_escape|stripslashes|required|min_length[6]|max_length[9]|alpha_dash|is_unique[users.username]');
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
					'pass'=>$pass2,
					'cpass'=>$cpass2
			);
			
			$this->data->insert($data);
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
	public function password_check($str)
	{
   if (preg_match('#[0-9]#', $str) && preg_match('#[a-zA-Z]#', $str)) {
     return TRUE;
   }
   return FALSE;
	}
	public function loginform(){
		$this->form_validation->set_rules('username', 'username', 'required|trim|stripslashes|html_escape');
		$this->form_validation->set_rules('password', 'Password', 'required|trim|stripslashes|html_escape');
		
		if($this->form_validation->run()){
			$username = $this->input->post('username');
			$pass=$this->input->post('password');
			$pass2=md5($pass);
			$userData = $this->data->userlogin($username,$pass2);
			
			if($userData->id)
			{
				$session_data = array(
					'username' => $username,
					'user_id' =>$userData->id
				);
				$this->session->set_userdata($session_data);
				redirect(base_url()."user/enter");
			}
			else{
				$this->session->set_flashdata('error', 'Invalid username and Password');
				redirect(base_url().'user/login');
			}
			
		}else{
			$this->load->view('login');
		}
		
	}
	public function enter()
	{
		if($this->session->userdata('username')!= "")
		{
			$data['fetch_data'] = $this->userdata->fetch_data($this->session->userdata('user_id'));
			//print_r($_SESSION); exit;	
			$this->load->view('dashboard',$data);
		}else{
			redirect(base_url().'user/login');
		}
	}
	public function events(){
		if($this->session->userdata('username')!= "")
		{
			$data['user_id'] = $this->session->userdata('user_id');
			$this->load->view('event',$data);
		}else{
			redirect(base_url().'user/login');
		}
	}
	public function eventform(){
		if($this->session->userdata('username')!= ""){
			
			$this->form_validation->set_rules('title', 'Event title', 'trim|html_escape|stripslashes|required');
			$this->form_validation->set_rules('startdate', 'Start date & time', 'trim|html_escape|stripslashes|required');
			$this->form_validation->set_rules('enddate', 'End date & time', 'trim|html_escape|stripslashes|required');
			$this->form_validation->set_rules('place', 'Location', 'trim|html_escape|stripslashes|required');
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

				$data = array (
					'user_id' =>$user_id,
					'title' =>$title,
					'place' =>$place,
					'start' =>$start,
					'end' =>$end,
					's_description' =>$sdes,
					'l_description' =>$ldes,
				);
			}
		}
		
		
	}	
	
	
	
	public function forgot_password(){
		$this->load->view('forgot-password');
	}
	
	}
	
