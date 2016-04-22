<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_sponsor extends MY_Model {

	public function __construct()
	{
		parent::__construct();
		$this->table = 'sponsor';
		$this->primary_key = 'ID_SPONSOR';
		$this->soft_deletes=TRUE;
	}


	function get_datatable($start, $pagecount = 10, $count_all=false) {
        $i=0;
        $dataorder    = array();
        $dataorder[$i++] = "ID_SPONSOR";
        $dataorder[$i++] = "NAMA";
        $dataorder[$i++] = "ALAMAT";
        $dataorder[$i++] = "STATUS";
        
        $order  = $this->input->post('order');
        $search = $this->input->post("search");

        if (!empty($search["value"])) {
            $this->db->like('LOWER(NAMA)', strtolower($search["value"]));
        }
        if ($order) {
            $this->db->order_by( $dataorder[$order[0]["column"]],  $order[0]["dir"]);
        }

        $this->where('STATUS', 1);
        if ($count_all) {
            return $this->count_rows();
        }else{
        	$this->limit($pagecount,$start);
            $result = $this->get_all();
            return $result;
        }
    }

    function count_all(){
        return $this->get_datatable(null,null,true);
    }

	public function get_by($id)
	{
		$this->where('ID_SPONSOR', $id);
		$this->where('STATUS', 1);
		return $this->get(1);
	}

	public function save()
	{
		$data = array( 
			'NAMA'   => $this->input->post('nama'),
			'ALAMAT' => $this->input->post('alamat'),
			'STATUS' => 1
			);
		
		$id = $this->input->post('id_sponsor');
		if (empty($id)) {
			$this->insert($data);
			$id = $this->db->insert_id();

			$result = array('id' => $id, 'status' => 'inserted');

		} else {
			$this->db->where('ID_SPONSOR', $id);
			$this->db->update($this->table, $data);

			$result = array('id' => $id, 'status' => 'updated');

		}
		return $result;
	}

	// public function delete($id)
	// {
	// 	$this->db->set('STATUS', 0);
	// 	$this->db->where('ID_SPONSOR', $id);
	// 	$this->db->update($this->table);
		
	// 	return array('id' => $id, 'deleted' => true );
	// }

}

/* End of file M_anggota.php */
/* Location: ./application/models/M_anggota.php */