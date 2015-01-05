<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Empresas_model extends CI_Model{
	public function __construct(){
		parent::__construct();
	}

	public function get_tipo_empresa(){
		$result=$this->db->get('tipoempresa');
		return $result->result_array();
	}

	public function add_empresa($id_maestra){
		$rutempresa=$this->input->post('txtRutEmpresa');
		$this->db->set('RutEmpresa',$this->input->post('txtRutEmpresa'));
		$this->db->set('NombreEmpresa',$this->input->post('txtNombreEmpresa'));
		$this->db->set('RazonSocial',$this->input->post('txtRazonSocial'));
		$this->db->set('Telefono',$this->input->post('txtTelefono'));
		$this->db->set('Direccion',$this->input->post('txtDireccion'));
		$this->db->set('IdTipoempresa',$this->input->post('cboTipoEmpresa'));
		$this->db->set('IdMaestra',$id_maestra);
		$this->db->insert('empresa');

		$this->db->set('RutEmpresa',$this->input->post('txtRutEmpresa'));
		$this->db->set('NombreSucursal','Matriz');
		$this->db->set('TelefonoSucursal',$this->input->post('txtTelefono'));
		$this->db->set('DireccionSucursal',$this->input->post('txtDireccion'));
		$this->db->set('IdComuna', $this->input->post('cboComuna'));
		$this->db->set('IdMaestra',$id_maestra);
		$this->db->insert('sucursal');

	}
	public function modificar_empresa(){
		
		
		$data=array('NombreEmpresa'=>$this->input->post('txtNombre'),
				'RazonSocial'=>$this->input->post('txtRazonSocial'),
				'Telefono'=>$this->input->post('txtTelefono'),
				'Direccion'=>$this->input->post('txtDireccion'),
				'IdTipoempresa'=>$this->input->post('cboTipoEmpresa')
		);
		$this->db->where('RutEmpresa',$this->input->post('txtRut'));
		$this->db->update('empresa',$data);

		

	}
	public function valida_rut($rut){
		$this->db->where('RutEmpresa',$rut);
		$result=$this->db->get('empresa');

		if($result->num_rows()){
			return true;
		}
		else
		{

			return false;
		}

	}
	public function listado_empresas($id_maestra){
		
		$this->db->select('TipoEmpresa, NombreEmpresa, RutEmpresa, RazonSocial, Telefono, Direccion');
		$this->db->from('empresa');
		$this->db->join('tipoempresa','tipoempresa.IdTipoempresa=empresa.IdTipoempresa');
		$this->db->where('IdMaestra',$id_maestra);
		$result=$this->db->get();

		if($result->num_rows()){
			return $result->result_array();

		}else{
			return false;
		}
	}
	public function get_empresa($rutempresa){
		$this->db->select('RutEmpresa, NombreEmpresa, Direccion, Telefono, RazonSocial, empresa.IdTipoempresa, TipoEmpresa');
		$this->db->from('empresa');
		$this->db->join('tipoempresa','tipoempresa.IdTipoempresa=empresa.IdTipoempresa');
		$this->db->where('RutEmpresa',$rutempresa);
		$result=$this->db->get();

		if($result->num_rows()){
			return $result->row_array();

		}else{
			return false;
		}
	}
}