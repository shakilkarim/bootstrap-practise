<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

    function __construct(){
		parent::__construct();
		$this->load->model('userdata');
		$this->load->library('pagination');
	}
	
	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$result['data'] = $this->userdata->recent_events();
		$this->load->view('index', $result);
	}
	
	public function generatetoken()
	{
		$event_id = $this->input->post('event_id');
		$appId = $this->input->post('appId');
		$developerKey = $this->input->post('developerKey');
		$user = $this->input->post('user');
		//echo "node G:/xampp/htdocs/vcapp/js/generatetoken/generateToken.js --key=".$developerKey." --appID=".$appId." --userName=".$user." --expiresInSecs=10000 2>&1"; exit;
		$token = shell_exec("node G:/xampp/htdocs/vcapp/js/generatetoken/generateToken.js --key=".$developerKey." --appID=".$appId." --userName=".$user." --expiresInSecs=10000 2>&1");
		
		if($event_id != "")
		{	
		$data = array(
			'event_id'=>$event_id,
			'token'=>trim($token),
			'room_id'=>mt_rand(),
			'open_room'=>1
		);
		$this->userdata->update_token($data);
		}
		echo json_encode(['token'=>trim($token)]);
		
	}
	
	public function live(){
		if($this->session->userdata('username')!= "")
		{
			$data['result']= $this->userdata->connect_data($_GET['event_id']);
			$row=$data['result']->row();
			$data['json'] = json_encode(['autoJoin'=>7,'host'=>'prod.vidyo.io', 'token'=>$row->token, 'displayName'=>$this->session->userdata('username'), 'resourceId'=>$row->room_id]);
			$this->load->view('vidyo/live', $data);
		}
		else
		{
			$data['result']= $this->userdata->connect_data($_GET['event_id']);
			$row=$data['result']->row();
			$data['json'] = json_encode(['autoJoin'=>7,'host'=>'prod.vidyo.io', 'token'=>$row->token, 'displayName'=>'guest', 'resourceId'=>$row->room_id]);
			$this->load->view('vidyo/live', $data);
		}
	}
	
	public function more_events(){
		$config["base_url"] = base_url() . "home/more_events";
        $config["total_rows"] = $this->userdata->record_count();
        $config["per_page"] = 12;
        $config["uri_segment"] = 3;
        $this->pagination->initialize($config);
		$page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
		$ev_result['data'] = $this->userdata->all_events($config['per_page'], $page);
		$ev_result['links'] = $this->pagination->create_links();
		$this->load->view('more_events', $ev_result);
	}
	
	public function details(){
		if($this->uri->segment(3)){
			$data['result'] = $this->userdata->event_data($this->uri->segment(3));
			$this->load->view('details', $data);
		}else{
			$this->load->view('details');
		}
	}
	
}
