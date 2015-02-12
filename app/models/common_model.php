<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Common_model extends CI_Model{
	public function __construct(){
		parent::__construct();
	}

	public function get_comuna($id_ciudad=0,$id_comuna=0){

            $this->db->order_by("NombreComuna","Asc");

            if($id_comuna>0){
                $this->db->where('IdComuna',$id_comuna);
            }
            if($id_ciudad>0){
                $this->db->where('IdCiudad',$id_ciudad);
            }
            $result=$this->db->get('comuna');
            return $result->result_array();
		
	}
	public function get_ciudad($id_region=0, $id_ciudad=0){
           
            $this->db->order_by("NombreCiudad","Asc");
            if($id_region>0){
                $this->db->where('IdRegion',$id_region);
            }
            if($id_ciudad>0){
                $this->db->where('IdCiudad',$id_ciudad);
            }
            
            $result=$this->db->get('ciudad');
            return $result->result_array();
           
	}
	public function get_region($id_region=0){

            $this->db->order_by("DescripcionRegion","Asc");
            if($id_region>0){
                $this->db->where('IdRegion',$id_region);
            }
            $result=$this->db->get('region');
            return $result->result_array();
	}
}