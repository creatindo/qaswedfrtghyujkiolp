<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_t_pembayaran extends CI_Model {

	public function save_pembayaran()
	{
		$id               = $this->input->post('id');
		$jumlah_cicilan   = $this->input->post('jumlah_cicilan');
		$total_bayar = $this->input->post('total_bayar');

		for($i=0; $i < $jumlah_cicilan; $i++){
			$data = array( 
						'ID_PELANGGAN' => $id,
						'STATUS'       => 0 );
			$this->db->insert('pembayaran',$data);
		}

		$this->db->set('JUMLAH_CICILAN', $jumlah_cicilan);
		$this->db->set('TOTAL_BAYAR', $total_bayar);
		$this->db->where('ID_DATA_PEL', $id);
		$this->db->update('pelanggan');

	}

	function get($start, $pagecount = 10, $count_all=false) {
        $i = 0;
        $dataorder    = array();
        $dataorder[$i++] = "ID_PELANGGAN";
        $dataorder[$i++] = "ID_DATA_PEL";
        $dataorder[$i++] = "PEL_NAMA";
        $dataorder[$i++] = "TOTAL_CICILAN";
        $dataorder[$i++] = "TOTAL_BAYAR";
        $dataorder[$i++] = "JUMLAH_CICILAN";
        $dataorder[$i++] = "JUMLAH_BAYAR";
        
        $order  = $this->input->post('order');
        $search = $this->input->post("search");

        if (!empty($search["value"])) {
            $this->db->like('LOWER(PEL_NAMA)', strtolower($search["value"]));
        }
        if ($order) {
            $this->db->order_by( $dataorder[$order[0]["column"]],  $order[0]["dir"]);
        }

        if ($count_all) {
            return $this->db->count_all_results('v_pembayaran');
        }else{
            $result = $this->db->get('v_pembayaran',$pagecount,$start);
            return $result;
        }
    }

    function count_all(){
        return $this->get(null,null,true);
    }


}

/* End of file M_t_pembayaran.php */
/* Location: ./application/models/M_t_pembayaran.php */