<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_periode extends CI_Model {

	public $_table = 'periode';
	public $primary_key = 'ID_PERIODE';

	function get($start, $pagecount = 10, $count_all=false) {
        $i=0;
        $dataorder    = array();
        $dataorder[$i++] = "ID_PERIODE";
        $dataorder[$i++] = "NAMA";
        $dataorder[$i++] = "TGL_BRNGKT";
        $dataorder[$i++] = "TGL_PULANG";
        $dataorder[$i++] = "KUOTA";
        $dataorder[$i++] = "PENUH";
        $dataorder[$i++] = "STATUS";
        
        $order  = $this->input->post('order');
        $search = $this->input->post("search");

        if (!empty($search["value"])) {
            $this->db->like('LOWER(NAMA)', strtolower($search["value"]));
        }
        if ($order) {
            $this->db->order_by( $dataorder[$order[0]["column"]],  $order[0]["dir"]);
        }

        $this->db->where('STATUS', 1);
        if ($count_all) {
            return $this->db->count_all_results($this->_table);
        }else{
            $result = $this->db->get($this->_table,$pagecount,$start);
            return $result;
        }
    }

    function count_all(){
        return $this->get(null,null,true);
    }

	public function get_by($id)
	{
		$this->db->where('ID_PERIODE', $id);
		$this->db->where('STATUS', 1);
		return $this->db->get($this->_table);
	}

	public function save()
	{
		$data = array( 
			'NAMA'       => $this->input->post('nama'),
			'KUOTA'      => $this->input->post('kuota'),
			'TGL_BRNGKT' => date('Y-m-d',strtotime($this->input->post('tgl_brngkt'))),
			'TGL_PULANG' => date('Y-m-d',strtotime($this->input->post('tgl_pulang'))),
			'STATUS'     => 1
			);
		
		$id = $this->input->post('id_periode');
		if (empty($id)) {
			$this->db->insert($this->_table, $data);
			$id = $this->db->insert_id();

			$result = array('id' => $id, 'status' => 'inserted');

		} else {
			$this->db->where('ID_periode', $id);
			$this->db->update($this->_table, $data);

			$result = array('id' => $id, 'status' => 'updated');

		}
		return $result;
	}

	public function delete($id)
	{
		$this->db->set('STATUS', 0);
		$this->db->where('ID_PERIODE', $id);
		$this->db->update($this->_table);
		
		return array('id' => $id, 'deleted' => true );
	}

}

/* End of file M_anggota.php */
/* Location: ./application/models/M_anggota.php */