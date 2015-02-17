<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Usuarios_model extends CI_Model{
    public function __construct(){
        parent::__construct();
        define("DBEXT","");
    }

    public function very_user($usuario, $password){
        //$result=$this->db->get_where('usuario', array('Usuario'=>$usuario,'Clave'=>$password));
        $result=$this->db->query("select u.IdUsuario, u.NombreUsuario, u.ApellidoUsuario, u.IdTipousuario
        from ".DBEXT."Usuarios u
        where	u.UsuarioUsuario='$usuario' and 
                u.ClaveUsuario = md5('$password') and
                u.IdEstadousuario=1 ");


        if($result->num_rows()>0){
                return $result->result_array();
        }else{
                return false;
        }
    }
    public function menu($idUsuario){

        $this->db->select("NombreMenu,RutaMenu");
        $this->db->from("menu");
        $this->db->join("submenu","submenu.IdMenu=menu.IdMenu");
        $this->db->join("usuariosubmenu","usuariosubmenu.IdSubmenu=submenu.IdSubmenu");
        $this->db->where("usuariosubmenu.IdUsuario",$idUsuario);
        $result=$this->db->get();

        if($result->num_rows()){
                return $result->row_array();

        }else{
                return false;
        }
    }
    public function listado_usuarios($id_maestra,$filtro=""){

        $this->db->select('*');
        $this->db->from('Usuarios u');
        $this->db->join('Tipousuario tu','tu.IdTipousuario=u.idTipousuario');
        $this->db->join('Estadousuario eu','eu.IdEstadousuario=u.idEstadousuario');
        //$this->db->join('tipoempresa','tipoempresa.IdTipoempresa=empresa.IdTipoempresa');
        //$this->db->where('IdMaestra',$id_maestra);
        if($filtro!=""){
            $this->db->or_like("NombreEstadousuario",$filtro);
            $this->db->or_like("NombreTipousuario",$filtro);
            $this->db->or_like("NombreUsuario",$filtro);
            $this->db->or_like("ApellidoUsuario",$filtro);
            $this->db->or_like("UsuarioUsuario",$filtro);
        }
        $result=$this->db->get();

        if($result->num_rows()){


            return $result->result_array();

        }else{
                return false;
        }
    }
    public function add_usuario(){
        try{
        $this->db->set("idTipousuario",$this->input->post("cboTipo1"));
        $this->db->set("idEstadousuario",$this->input->post("cboEstado1"));
        $this->db->set("RutUsuario",$this->input->post("txtRutUsuario"));
        $this->db->set("NombreUsuario",$this->input->post("txtNombreUsuario"));
        $this->db->set("ApellidoUsuario",$this->input->post("txtApellidoUsuario"));
        $this->db->set("CorreoUsuario",$this->input->post("txtCorreo"));
        $this->db->set("UsuarioUsuario",$this->input->post("txtUsuario"));
        $this->db->set("claveUsuario",md5($this->input->post("txtPassword")));
        $this->db->set("FecharegistroUsuario", date("Y-m-d"));
        $this->db->insert('Usuarios');
        }
        catch (Exception $e){
            return FASLSE;
        }
        
    }
    public function get_usuario($rut){
        $this->db->select("*");
        $this->db->from("Usuarios u");
        $this->db->where("IdEstadousuario","1");
        $this->db->where("RutUsuario",$rut);
        $result=$this->db->get();

        if($result->num_rows()){
            return $result->result_array();
        }else{
            return FALSE;
        }
        
        
        
    }
}

