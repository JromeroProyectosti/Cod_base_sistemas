<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Usuarios extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->data['nombre_completo']=$this->session->userdata('nombre_completo');
		$this->data['nombre_empresa']=$this->session->userdata('nombre_empresa');
		$this->data['sucursales']=$this->session->userdata('sucursales');
		$this->data['usuario']=$this->session->userdata('username');
	}

	public function index(){
		$this->data['titulo']=ucfirst("Login");
		$this->data['error']="";
		$this->load->view("template/header",$this->data);
		$this->load->view("login",$this->data);
		$this->load->view("template/footer",$this->data);

		$this->session->sess_destroy();

	}
	public function ini_session(){
		$usuario=$_POST['txtUsuario'];
		$password=$_POST['txtPassword'];
		$query=$this->usuarios_model->very_user($usuario,$password);
		if($query){
			$nombre_completo='';
			$nombre_empresa='';
			$tipo_empresa='';
			$rol='';
			$idMaestra='';
			$logo='';
			$sucursales='';
			foreach($query as $row){
				$nombre_completo=$row['NombreUsuario']." ".$row['Apellido'];
				$nombre_empresa=$row['NombreEmpresa'];
				$tipo_empresa=$row['TipoEmpresa'];
				$rol=$row['IdRol'];
				$idMaestra=$row['IdMaestra'];
				$logo=$row['Logo'];
				$sucursales.=$row['NombreSucursal']."<br>";

			}

			$this->session->set_userdata(array(
				'username'=>$usuario,
				'nombre_completo'=>$nombre_completo,
				'nombre_empresa'=>$nombre_empresa,
				'tipo_empresa'=>$tipo_empresa,
				'rol'=>$rol,
				'idMaestra'=>$idMaestra,
				'logo'=>$logo,
				'sucursales'=>$sucursales));
			redirect(base_url()."home");
		}else{
			$this->data['titulo']=ucfirst("Login");
			$this->data['error']="El Usuario/Password es incorrecto";
			$this->load->view("template/header",$this->data);
			$this->load->view("login",$this->data);
			$this->load->view("template/footer",$this->data);

		$this->session->sess_destroy();
		}

	}
}