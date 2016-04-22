<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Bintang extends CI_Controller {

	public function index()
	{

		// 
		$k = $this->input->get('bil');
		for ($p=1; $p<$k; $p++){
			// daun
			for ($q=0; $q<$p+1; $q++){
				$x = $k-$q;
				for ($r=$x; $r>1; $r--){
					echo "&nbsp;";
				}
				for ($r=0; $r<$q+1; $r++){
					echo "*&nbsp";
				}
				echo "<br>";
			}
		}

		// 1234567
		// 0112233
		for ($i=0; $i<$k; $i++){
			for ($j=0; $j<$k/2; $j++){
				echo "&nbsp;";
			}

			if ($k % 2 == 0) {			
				for ($j=0; $j<$k-1; $j++){
					echo "^";
				}
			} else {
				for ($j=0; $j<$k; $j++){
					echo "^";
				}
			}
			echo "<br>";
		}
	}

}

/* End of file Bintang.php */
/* Location: ./application/controllers/Bintang.php */