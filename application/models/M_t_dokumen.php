<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_t_dokumen extends CI_Model {

	public $_table = 'data_dokumen';
	public $primary_key = 'ID_DATA_DOKUMEN';

	function get($start, $pagecount = 10, $count_all=false) {
        $i = 0;
        $dataorder       = array();
        $dataorder[$i++] = "ID_DATA_DOKUMEN";
        $dataorder[$i++] = "DATA_DOKUMEN";
        $dataorder[$i++] = "KETERANGAN";
        
        $order  = $this->input->post('order');
        $search = $this->input->post("search");

        if (!empty($search["value"])) {
            $this->db->like('LOWER(DATA_DOKUMEN)', strtolower($search["value"]));
        }
        $this->db->where('STATUS', 1);
        if ($count_all) {
            return $this->db->count_all_results($this->_table);
        }else{
            if ($order) {
                $this->db->order_by( $dataorder[$order[0]["column"]],  $order[0]["dir"]);
            }
            $result = $this->db->get($this->_table,$pagecount,$start);
            return $result;
        }
    }

    function count_all(){
        return $this->get(null,null,true);
    }
    
    function daftar_dokumen()
    {
        $id_pelanggan    = $this->input->post('id_pelanggan');
        $id_data_dokumen = $this->input->post('id_dokumen');
        $status          = $this->input->post('status');

        $data = array(
            'ID_DATA_DOKUMEN' => $id_data_dokumen,
            'ID_PELANGGAN' => $id_pelanggan,
            'TGL_PENGUMPULAN' => date('Y-m-d'),
            'STATUS' => 1,
             );

        $this->db->set('STATUS', $status);
        $this->db->set('TGL_PENGUMPULAN', date('Y-m-d'));
    	$this->db->where('ID_DATA_DOKUMEN', $id_data_dokumen);
    	$this->db->where('ID_PELANGGAN', $id_pelanggan);
    	$this->db->update('dokumen');

        if ($this->db->affected_rows() < 1) {
            $this->db->insert('dokumen',$data);
        }
    }

    public function get_dokumenArr($id_pelanggan)
    {
        $this->db->where('ID_PELANGGAN', $id_pelanggan);
        $this->db->where('STATUS', 1);
        $d = $this->db->get('dokumen');
        $dokumenArr = [] ; 
        foreach ($d->result() as $v) {
            $dokumenArr[] = $v->ID_DATA_DOKUMEN;
        }
        return $dokumenArr;
    }
}

/* End of file M_anggota.php */
/* Location: ./application/models/M_anggota.php */