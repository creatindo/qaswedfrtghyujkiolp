<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pelanggan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('m_pelanggan');
	}

	public function index()
	{
		$data['pelanggan'] = $this->m_pelanggan->get();
		$data_content['content'] = $this->load->view('v_pelanggan', $data, TRUE);
		$data_content['sidebar'] = $this->load->view('v_sidebar', $data, TRUE);
		$this->load->view('v_main', $data_content, FALSE);
	}	

	public function add()
	{
		$data['pelanggan'] = $this->m_pelanggan->get();
		$data_content['content'] = $this->load->view('v_pelanggan_form', $data, TRUE);
		$data_content['sidebar'] = $this->load->view('v_sidebar', $data, TRUE);
		$this->load->view('v_main', $data_content, FALSE);
	}

	public function edit($id, $readonly="")
	{
		$data['akses_field'] = $readonly;
		$data['akses_select'] =  ($readonly) ?'disabled':'';
		$data['pelanggan'] = $this->m_pelanggan->get_by($id);
		$data_content['content'] = $this->load->view('v_pelanggan_form', $data, TRUE);
		$data_content['sidebar'] = $this->load->view('v_sidebar', $data, TRUE);
		$this->load->view('v_main', $data_content, FALSE);
	}

	public function lihat($id)
	{
		$this->edit($id,'readonly');
	}

	public function save()
	{
		$res['pelanggan'] = $this->m_pelanggan->save();
		$this->output->set_content_type('application/json')->set_output(json_encode($res));
	}	

	public function delete($id)
	{
		$res['pelanggan'] = $this->m_pelanggan->delete($id);
		$this->output->set_content_type('application/json')->set_output(json_encode($res));
	}

}

/* End of file Pelanggan.php */
/* Location: ./application/controllers/Pelanggan.php */