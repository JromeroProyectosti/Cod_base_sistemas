<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Comun extends CI_Controller{
	public function __construct(){		
		parent::__construct();
	}
	
	public function generaoptionciudad(){
		$region=$this->input->post('region');
		
		$data=$this->common_model->get_ciudad($region);
		$option='<option value=0>--Selecciona una Ciudad--</option>';
		foreach ($data as  $value) {
			# code...
			$option.='<option value="'.$value['IdCiudad'].'">'.$value['NombreCiudad'].'</option>';
		}

		echo $option;
	}
	public function generaoptioncomuna(){
		$ciudad=$this->input->post('ciudad');
		$data=$this->common_model->get_comuna($ciudad);
		$option='<option value=0>--Selecciona una Comuna--</option>';
		foreach ($data as  $value) {
			# code...
			$option.='<option value="'.$value['IdComuna'].'">'.$value['NombreComuna'].'</option>';
		}

		echo $option;
	}
}