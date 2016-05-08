<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_pelanggan extends CI_Model {

	public $_table = 'data_pelanggan';
	public $primary_key = 'ID_DATA_PEL';

	function get($start, $pagecount = 10, $count_all=false) {
        $i=0;
        $dataorder    = array();
        $dataorder[$i++] = "ID_DATA_PEL";
        $dataorder[$i++] = "PEL_NAMA";
        $dataorder[$i++] = "PEL_ALAMAT";
        $dataorder[$i++] = "PEL_IBU_KANDUNG";
        $dataorder[$i++] = "PEL_JK";
        $dataorder[$i++] = "PEL_NO_PASSPORT";
        $dataorder[$i++] = "STATUS";
        
        $order  = $this->input->post('order');
        $search = $this->input->post("search");

        if (!empty($search["value"])) {
            $this->db->like('LOWER(PEL_NAMA)', strtolower($search["value"]));
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
		$this->db->where('ID_DATA_PEL', $id);
		return $this->db->get($this->_table);
	}

	public function get_pembayaran_by($id)
	{
		$this->db->where('ID_DATA_PEL', $id);
		return $this->db->get('pelanggan');
	}

	public function add_temp()
	{
		$this->db->set('STATUS', 0);
		$this->db->insert($this->_table);
		$id = $this->db->insert_id();
		return $id;
	}

	public function save()
	{
		$data = array( 
			'PEL_NAMA'          => $this->input->post('pel_nama'),
			'PEL_ALAMAT'        => $this->input->post('pel_alamat'),
			'PEL_IBU_KANDUNG'   => $this->input->post('pel_ibu_kandung'),
			'PEL_JK'            => $this->input->post('pel_jk'),
			'PEL_TEMPAT_LAHIR'  => $this->input->post('pel_tempat_lahir'),
			'PEL_PEKERJAAN'     => $this->input->post('pel_pekerjaan'),
			'PEL_NO_PASSPORT'   => $this->input->post('pel_no_passport'),
            'PEL_TANGGAL_LAHIR' => date('Y-m-d',strtotime($this->input->post('pel_tanggal_lahir'))),
			'STATUS'   => 1
			);
		
		$id = $this->input->post('id_data_pel');
		if (empty($id)) {
			$this->db->insert($this->_table, $data);
			$id = $this->db->insert_id();
			
			// insert into pelanggan values('',NEW.ID_DATA_PEL,1,0,0,0 );
			$this->db->set('ID_DATA_PEL', $id);
			$this->db->insert('pelanggan');

			$result = array('id' => $id, 'status' => 'inserted');
		} else {
			$this->db->where('ID_DATA_PEL', $id);
			$this->db->update($this->_table, $data);
			$result = array('id' => $id, 'status' => 'updated');
		}
		return $result;
	}

	public function delete($id)
	{
		$this->db->set('STATUS', 0);
		$this->db->where('ID_DATA_PEL', $id);
		$this->db->update($this->_table);
		
		return array('id' => $id, 'deleted' => true );
	}

}

/* End of file M_anggota.php */
/* Location: ./application/models/M_anggota.php */