<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Usuarios_model extends CI_Model{
	public function __construct(){
		parent::__construct();
		define("DBEXT","ptv_");
	}

	public function very_user($usuario, $password){
		//$result=$this->db->get_where('usuario', array('Usuario'=>$usuario,'Clave'=>$password));
		$result=$this->db->query("select u.IdUsuario, u.NombreUsuario, u.Apellido, e.NombreEmpresa, t.TipoEmpresa, u.IdRol,u.IdMaestra, m.Logo, s.NombreSucursal
		from ".DBEXT."usuario u, ".DBEXT."empresa e, ".DBEXT."tipoempresa t, ".DBEXT."sucursalusuario su,".DBEXT."sucursal s,".DBEXT."maestra m 
		where	u.Usuario='$usuario' and 
			u.Clave = '$password' and
			su.IdUsuario=u.IdUsuario and
			su.IdSucursal=s.IdSucursal and
			s.RutEmpresa = e.RutEmpresa and
			e.IdTipoempresa = t.IdTipoempresa and
			e.IdMaestra=m.IdMaestra ");
		
		
		if($result->num_rows()>0){
			return $result->result_array();
		}else{
			return false;
		}
	}
}

