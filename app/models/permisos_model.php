<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Permisos_model extends CI_Model{
    public function __construct() {
        parent::__construct();
    }
    
    public function lista_permisos($id_usuario=0, $constructor=""){
        $this->db->select("pa.nombre, metodo");
        $this->db->from("permisos_accion pa");
        $this->db->join("permisos p", "p.id=pa.IdPermiso");
        if($id_usuario>0){
            $this->db->join("usuario_permiso_accion upa","upa.IdPermisoAccion=pa.id");
            $this->db->where("upa.IdUsuario",$id_usuario);
        }
        if($constructor!=""){
            $this->db->where("p.constructor",$constructor);
        }
        $result=$this->db->get();
        $resultado_permisos=array();
        if($result->num_rows())
        {
            foreach($result->result() as $item){
                $resultado_permisos[]=$item->metodo;
            }
            return $resultado_permisos;
        }else{
            return false;
        }
    }
    
}