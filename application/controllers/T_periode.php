<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class T_periode extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('m_t_periode');
	}

	public function get()
	{
		$customActionName=$this->input->post('customActionName');
		if ($customActionName == "delete") {
			$this-> delete_checked();
		}

		$iTotalRecords   = $this->m_t_periode->count_all();
		$iDisplayLength  = intval($_REQUEST['length']);
		$iDisplayLength  = $iDisplayLength < 0 ? $iTotalRecords : $iDisplayLength; 
		$iDisplayStart   = intval($_REQUEST['start']);
		$sEcho           = intval($_REQUEST['draw']);
		
		$records         = array();
		$records["data"] = array(); 

		$end = $iDisplayStart + $iDisplayLength;
		$end = $end > $iTotalRecords ? $iTotalRecords : $end;

		$get = $this->m_t_periode->get($iDisplayStart, $iDisplayLength);

		$id_pelanggan = $this->input->post('id_pelanggan');
		$this->db->where('ID_DATA_PEL', $id_pelanggan);
		$c = $this->db->get('pelanggan');
		if ($c->num_rows() > 0) {
			$r = $c->row();
			$ck = $r->ID_PERIODE;
		} else {
			$ck = 1;
		}
		

		$i=$iDisplayStart+1;

		$status = array('1' => 'ADA', '0'=> 'PENUH' );
		foreach ($get->result_array() as $d) {
		    $id = $d['ID_PERIODE'];
			$ceked = ($ck == $id) ? 'checked' : '' ;                            

            if ($d['KUOTA'] <= $d['KUOTA_TERPAKAI']) {
			    $daftar='<input type="radio" class="flat" '.$ceked.' name="radio" disabled value="'.$id.'" onclick="daftar('.$id.')"> Daftar';
            } else {
			    $daftar='<input type="radio" class="flat" '.$ceked.' name="radio" value="'.$id.'" onclick="daftar('.$id.')"> Daftar';
            }
                              

		  //   $daftar='<a class="btn btn-info" href="javascript:daftar('.$id.');">
				// <i class="fa fa-edit"></i>
				// Daftar
				// </a>';
			
			$records["data"][] = array(
				$i++,
				$d['NAMA'],
				$d['TGL_BRNGKT'].' - '.$d['TGL_PULANG'],
				$d['KUOTA']-$d['KUOTA_TERPAKAI'],
				$status[$d['STATUS']],
				$daftar
			);
		}

		$records["draw"]            = $sEcho;
		$records["recordsTotal"]    = $iTotalRecords;
		$records["recordsFiltered"] = $iTotalRecords;

		$this->output->set_content_type('application/json')->set_output(json_encode($records));
	}

	public function daftar_periode()
	{
		$res['stat'] = $this->m_t_periode->daftar_periode();
		$this->output->set_content_type('application/json')->set_output(json_encode($res));
	}	




}

/* End of file periode.php */
/* Location: ./application/controllers/periode.php */