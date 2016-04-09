<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_t_periode extends CI_Model {

	public $_table = 'periode';
	public $primary_key = 'ID_PERIODE';

	public function dropdown_active()
	{
		$options = array();
		$this->db->where('STATUS', 1);
		$result = $this->db->get($this->_table)->result();
		foreach ($result as $row)
        {
            $options[$row->{$this->primary_key}] = $row->NAMA;
        }
        return $options;
	}

	function get($start, $pagecount = 10, $count_all=false) {
        $i = 0;
        $dataorder       = array();
        $dataorder[$i++] = "ID_PERIODE";
        $dataorder[$i++] = "NAMA";
        $dataorder[$i++] = "TGL_BRNGKT";
        $dataorder[$i++] = "TGL_PULANG";
        $dataorder[$i++] = "KUOTA_TERPAKAI";
        $dataorder[$i++] = "KUOTA";
        $dataorder[$i++] = "STATUS";
        
        $order  = $this->input->post('order');
        $search = $this->input->post("search");

        if (!empty($search["value"])) {
            $this->db->like('LOWER(NAMA)', strtolower($search["value"]));
        }
        // $this->db->where('STATUS', 1);
        if ($count_all) {
            return $this->db->count_all_results('v_periode');
        }else{
            if ($order) {
                $this->db->order_by( $dataorder[$order[0]["column"]],  $order[0]["dir"]);
            }
            $result = $this->db->get('v_periode',$pagecount,$start);
            return $result;
        }
    }

    function count_all(){
        return $this->get(null,null,true);
    }
    
    function daftar_periode()
    {
		$id_pelanggan = $this->input->post('id_pelanggan');
		$id_periode   = $this->input->post('id_periode');

    	$this->db->set('ID_PERIODE', $id_periode);
    	$this->db->where('ID_DATA_PEL', $id_pelanggan);
    	$this->db->update('pelanggan');

    	// update kuota baru
    	$this->db->where('ID_PERIODE', $id_periode);
    	$p = $this->db->get('v_periode')->row();

    	$kuota_baru = $p->KUOTA_TERPAKAI;
    	if ($kuota_baru == $p->KUOTA) {
	    	$this->db->set('STATUS', 0);
        	$this->db->where('ID_PERIODE', $id_periode);
        	$this->db->update('periode');    		
        }
    	

    	return true;


    }


}

/* End of file M_anggota.php */
/* Location: ./application/models/M_anggota.php */