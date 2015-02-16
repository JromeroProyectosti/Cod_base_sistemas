<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of sec_usuario
 *
 * @author John
 */
class sec_usuario extends My_Controller{
    //put your code here
    public function __construct(){
        parent::__construct();
        
    }
    public function listar($filtro=""){
        $this->data['titulo']="Usuarios - Listado";
        $detalle['listado']=$this->usuarios_model->listado_usuarios($this->session->userdata('idMaestra'),$filtro);
        $this->load->view("template/header",$this->data);
        $this->load->view("mantenedores/usuario/listado",$detalle);
        $this->load->view("template/footer",$this->data);
    }
    public function crear(){
        
        /*$this->data['titulo']="Empresa - Agregar";
        //$detalle['tipo_empresa']=$this->empresas_model->get_tipo_empresa();
        
        $detalle['comuna']=$this->common_model->get_comuna();
        $detalle['region']=$this->common_model->get_region();
        $this->load->view("template/header",$this->data);
        $this->load->view("mantenedores/empresa/agregar",$detalle);
        $this->load->view("template/footer",$this->data);*/
        $detalle['estado']=$this->common_model->get_estado_usuario();
        $detalle['tipo']=$this->common_model->get_tipo_usuario();
        $this->load->library('form_validation');
        $this->form_validation->set_rules('txtRutUsuario','Rut','required|callback_valida_rut');
        $this->form_validation->set_rules('txtNombreUsuario','Nombre','required');
        $this->form_validation->set_rules('txtCorreo','Correo','required|valid_email');
        $this->form_validation->set_rules('txtUsuario','Usuario','required|max_length[250]');
        $this->form_validation->set_rules('txtPassword','Password','required');
        
        //$this->form_validation->set_rules('cboTipoEmpresa','Tipo Empresa','required');
        if($this->form_validation->run()===FALSE){
                $this->data['titulo']="Empresa - Agregar";
                //$detalle['tipo_empresa']=$this->empresas_model->get_tipo_empresa();
                
                $this->load->view("template/header",$this->data);
                $this->load->view("mantenedores/usuario/agregar",$detalle);
                $this->load->view("template/footer",$this->data);
        }else{
                $this->usuarios_model->add_usuario();
                redirect('listado_empresas');
        }
   
    }
    public function modificar(){
        
    }
    
    
}
