<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Common_model extends CI_Model{
	public function __construct(){
		parent::__construct();
	}

	public function get_comuna($id_ciudad=0){

			$this->db->order_by("NombreComuna","Asc");
		if($id_ciudad==0){
			$result=$this->db->get('comuna');
			return $result->result_array();
		}else{
			$result=$this->db->get_where('comuna',array('IdCiudad'=>$id_ciudad));
			return $result->result_array();
		}
	}
	public function get_ciudad($id_region=0){
		
			$this->db->order_by("NombreCiudad","Asc");
		if($id_region==0){
			$result=$this->db->get('ciudad');
			return $result->result_array();
		}else{
			$result=$this->db->get_where('ciudad',array('IdRegion'=>$id_region));
			return $result->result_array();
		}
	}
	public function get_region(){

			$this->db->order_by("DescripcionRegion","Asc");
		$result=$this->db->get('region');
		return $result->result_array();
	}
}