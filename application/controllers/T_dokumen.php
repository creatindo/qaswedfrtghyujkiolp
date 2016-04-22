<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class T_dokumen extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('m_t_dokumen');
	}

	public function get()
	{
		$customActionName=$this->input->post('customActionName');
		if ($customActionName == "delete") {
			$this-> delete_checked();
		}

		$iTotalRecords   = $this->m_t_dokumen->count_all();
		$iDisplayLength  = intval($_REQUEST['length']);
		$iDisplayLength  = $iDisplayLength < 0 ? $iTotalRecords : $iDisplayLength; 
		$iDisplayStart   = intval($_REQUEST['start']);
		$sEcho           = intval($_REQUEST['draw']);
		
		$records         = array();
		$records["data"] = array(); 

		$end = $iDisplayStart + $iDisplayLength;
		$end = $end > $iTotalRecords ? $iTotalRecords : $end;

		$get = $this->m_t_dokumen->get($iDisplayStart, $iDisplayLength);

		$id_pelanggan = $this->input->post('id_pelanggan');
		$dokumenArr = $this->m_t_dokumen->get_dokumenArr($id_pelanggan);		

		$i=$iDisplayStart+1;

		foreach ($get->result_array() as $d) {
		    $id = $d['ID_DATA_DOKUMEN'];
			$ceked = (in_array($id, $dokumenArr)) ? 'checked' : '' ;                            

		    $daftar='<input type="checkbox" '.$ceked.' id="ck_'.$id.'" onchange="status_dokumen('.$id.')">';

			$records["data"][] = array(
				$i++,
				$d['DATA_DOKUMEN'],
				$d['KETERANGAN'],
				$daftar
			);
		}

		$records["draw"]            = $sEcho;
		$records["recordsTotal"]    = $iTotalRecords;
		$records["recordsFiltered"] = $iTotalRecords;

		$this->output->set_content_type('application/json')->set_output(json_encode($records));
	}

	public function daftar_dokumen()
	{
		$res['stat'] = $this->m_t_dokumen->daftar_dokumen();
		$this->output->set_content_type('application/json')->set_output(json_encode($res));
	}	




}

/* End of file dokumen.php */
/* Location: ./application/controllers/dokumen.php */