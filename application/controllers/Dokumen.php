<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dokumen extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('m_dokumen');
	}

	public function index()
	{
		$data['dokumen'] = 'a';
		$data_content['content'] = $this->load->view('v_dokumen', $data, TRUE);
		$data_content['sidebar'] = $this->load->view('v_sidebar', $data, TRUE);
		$this->load->view('v_main', $data_content, FALSE);
	}	

	public function get()
	{
		$customActionName=$this->input->post('customActionName');
		if ($customActionName == "delete") {
			$this-> delete_checked();
		}

		$iTotalRecords   = $this->m_dokumen->count_all();
		$iDisplayLength  = intval($_REQUEST['length']);
		$iDisplayLength  = $iDisplayLength < 0 ? $iTotalRecords : $iDisplayLength; 
		$iDisplayStart   = intval($_REQUEST['start']);
		$sEcho           = intval($_REQUEST['draw']);
		
		$records         = array();
		$records["data"] = array(); 

		$end = $iDisplayStart + $iDisplayLength;
		$end = $end > $iTotalRecords ? $iTotalRecords : $end;

		$get = $this->m_dokumen->get($iDisplayStart, $iDisplayLength);

		$i=$iDisplayStart+1;

		foreach ($get->result_array() as $d) {
		    $id = $d['ID_DATA_DOKUMEN'];
		    $lihat='<a class="btn btn-primary btn-sm" href="javascript:lihat('.$id.');">
				<i class="fa fa-search-plus"></i>
				Lihat
				</a>';
			$edit='<a class="btn btn-info btn-sm" href="javascript:edit('.$id.');">
				<i class="fa fa-edit"></i>
				Edit
				</a>';
			$hapus='<a class="btn btn-danger btn-sm" href="javascript:hapus('.$id.');">
				<i class="fa fa-trash"></i>
				Hapus
				</a>';
			
			$records["data"][] = array(
				$i++,
				$d['DATA_DOKUMEN'],
				$d['KETERANGAN'],
				$lihat.$edit.$hapus
			);
		}

		$records["draw"]            = $sEcho;
		$records["recordsTotal"]    = $iTotalRecords;
		$records["recordsFiltered"] = $iTotalRecords;

		$this->output->set_content_type('application/json')->set_output(json_encode($records));
	}


	public function add()
	{
		$data['title'] = 'Tambah Dokumen';
		$data['akses_field'] = '';
		$this->load->view('v_dokumen_modal', $data);
	}

	public function edit($id, $readonly='')
	{
		$data['title']       = 'Tambah Dokumen';
		$data['akses_field'] = $readonly;
		$data['dokumen']     = $this->m_dokumen->get_by($id);
		$this->load->view('v_dokumen_modal', $data);
	}

	public function lihat($id)
	{
		$this->edit($id,'readonly', '');
	}

	public function save()
	{
		$res['dokumen'] = $this->m_dokumen->save();
		$this->output->set_content_type('application/json')->set_output(json_encode($res));
	}	

	public function delete($id)
	{
		$res['dokumen'] = $this->m_dokumen->delete($id);
		$this->output->set_content_type('application/json')->set_output(json_encode($res));
	}


}

/* End of file dokumen.php */
/* Location: ./application/controllers/dokumen.php */