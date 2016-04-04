<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_pelanggan extends CI_Model {

	public $_table = 'data_pelanggan';
	public $primary_key = 'ID_DATA_PEL';

	public function get()
	{
		$this->db->where('status', 1);
		return $this->db->get($this->_table);
	}
	public function get_by($id)
	{
		$this->db->where('ID_DATA_PEL', $id);
		$this->db->where('status', 1);
		return $this->db->get($this->_table);
	}
	public function save()
	{
		$data = array( 
			'pel_nama'          => $this->input->post('pel_nama'),
			'pel_alamat'        => $this->input->post('pel_alamat'),
			'pel_ibu_kandung'   => $this->input->post('pel_ibu_kandung'),
			'pel_jk'            => $this->input->post('pel_jk'),
			'pel_tempat_lahir'  => $this->input->post('pel_tempat_lahir'),
			'pel_pekerjaan'     => $this->input->post('pel_pekerjaan'),
			'pel_no_passport'   => $this->input->post('pel_no_passport'),
			'status'   => 1
			);
            // $this->db->set('pel_tanggal_lahir', "TO_DATE('".$this->input->post("pel_tanggal_lahir")."', 'dd/mm/yyyy')", false);
		
		$id = $this->input->post('id_data_pel');
		if ($id == '') {
			$this->db->insert($this->_table, $data);
			$id = $this->db->insert_id();
		} else {
			$this->db->where('ID_DATA_PEL', $id);
			$this->db->update($this->_table, $data);
		}
		$result = array('id' => $id, 'status' => true );
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