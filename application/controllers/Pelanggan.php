<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pelanggan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('m_pelanggan');
	}

	public function get()
	{
		$customActionName=$this->input->post('customActionName');
		if ($customActionName == "delete") {
			$this-> delete_checked();
		}

		$iTotalRecords   = $this->m_pelanggan->count_all();
		$iDisplayLength  = intval($_REQUEST['length']);
		$iDisplayLength  = $iDisplayLength < 0 ? $iTotalRecords : $iDisplayLength; 
		$iDisplayStart   = intval($_REQUEST['start']);
		$sEcho           = intval($_REQUEST['draw']);
		
		$records         = array();
		$records["data"] = array(); 

		$end = $iDisplayStart + $iDisplayLength;
		$end = $end > $iTotalRecords ? $iTotalRecords : $end;

		$get = $this->m_pelanggan->get($iDisplayStart, $iDisplayLength);

		$i=$iDisplayStart+1;

		foreach ($get->result_array() as $d) {
		    $id = $d['ID_DATA_PEL'];
		    $lihat = '<button type="button" class="btn btn-primary">lihat</button>';
		    $edit = '<button type="button" class="btn btn-info">Edit</button>';
		    $hapus = '<button type="button" class="btn btn-danger">Hapus</button>';
			
			$records["data"][] = array(
				$i++,
				$d['PEL_NAMA'],
				$d['PEL_ALAMAT'],
				$d['PEL_IBU_KANDUNG'],
				$d['PEL_JK'],
				$d['PEL_NO_PASSPORT'],
				$d['STATUS'],
				$lihat.$edit.$hapus
			);
		}

		$records["draw"]            = $sEcho;
		$records["recordsTotal"]    = $iTotalRecords;
		$records["recordsFiltered"] = $iTotalRecords;

		$this->output->set_content_type('application/json')->set_output(json_encode($records));
	}

	public function index()
	{
		$data['pelanggan'] = 'a';
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