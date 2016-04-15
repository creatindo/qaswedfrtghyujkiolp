<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class T_pembayaran extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('m_t_pembayaran');
	}


	public function index()
	{
		$data['pelanggan'] = 'a';
		$data_content['content'] = $this->load->view('v_pembayaran', $data, TRUE);
		$data_content['sidebar'] = $this->load->view('v_sidebar', $data, TRUE);
		$this->load->view('v_main', $data_content, FALSE);
	}	


	public function save_pembayaran()
	{
		$this->m_t_pembayaran->save_pembayaran();
	}

		public function get()
	{
		$customActionName=$this->input->post('customActionName');
		if ($customActionName == "delete") {
			$this-> delete_checked();
		}

		$iTotalRecords   = $this->m_t_pembayaran->count_all();
		$iDisplayLength  = intval($_REQUEST['length']);
		$iDisplayLength  = $iDisplayLength < 0 ? $iTotalRecords : $iDisplayLength; 
		$iDisplayStart   = intval($_REQUEST['start']);
		$sEcho           = intval($_REQUEST['draw']);
		
		$records         = array();
		$records["data"] = array(); 

		$end = $iDisplayStart + $iDisplayLength;
		$end = $end > $iTotalRecords ? $iTotalRecords : $end;

		$get = $this->m_t_pembayaran->get($iDisplayStart, $iDisplayLength);

		$i=$iDisplayStart+1;

		foreach ($get->result_array() as $d) {
		    $id = $d['ID_DATA_PEL'];
		    if ($d['JUMLAH_CICILAN'] == $d['TOTAL_CICILAN'] ) {
		    	$bayar = '<button class="btn btn-success btn-xs">LUNAS</button>';
		    } else {
			    $bayar ='<a class="btn btn-primary btn-xs" href="javascript:bayar('.$id.');">
					<i class="fa fa-plus"></i>
					BAYAR
					</a>';
		    }
		    $progres = '<div class="progress progress_sm">
                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="47"></div>
                          </div>
                          <small>'.$d['JUMLAH_CICILAN'].' : Rp. '.number_format($d['JUMLAH_BAYAR']).'</small>
					    ';
			
			$records["data"][] = array(
				$i++,
				$d['PEL_NAMA'],
				$progres,
				$bayar
			);
		}

		$records["draw"]            = $sEcho;
		$records["recordsTotal"]    = $iTotalRecords;
		$records["recordsFiltered"] = $iTotalRecords;

		$this->output->set_content_type('application/json')->set_output(json_encode($records));
	}

	public function add_pembayaran($id='')
	{
		$data['id_data_pel']     = $id;
		$data['id_pembayaran']   = $this->m_t_pembayaran->get_pembayaran_id($id);
		$data_content['content'] = $this->load->view('v_t_pembayaran', $data, TRUE);
		$data_content['sidebar'] = $this->load->view('v_sidebar', $data, TRUE);
		$this->load->view('v_main', $data_content, FALSE);

	}
	
	public function simpan_pembayaran()
	{
		$res['pembayaran'] = $this->m_t_pembayaran->simpan_pembayaran();
		$this->output->set_content_type('application/json')->set_output(json_encode($res));
	}
}

/* End of file T_pembayaran.php */
/* Location: ./application/controllers/T_pembayaran.php */