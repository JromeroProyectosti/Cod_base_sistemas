<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of productos
 *
 * @author John
 */
class sec_productos extends My_Controller{
    //put your code here

    public function __construct() {
        parent::__construct();
        $this->data['titulo']="";
        
    }
    public function listar(){
        $this->load->model("productos_model");
        
        $this->data['titulo']="Productos - Listado";
        $this->data['scripts']="<script>
    $(document).ready(function() {
        $('#datatable-productos').DataTable({
                responsive: true
        });
    });
</script>";
        $detalle['listado']=$this->productos_model->get_listado_productos();
        $this->load->view("template/header",$this->data);
        $this->load->view("mantenedores/productos/listado",$detalle);
        $this->load->view("template/footer",$this->data);
    }
    public function crear(){
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
                $this->data['titulo']="Usuario - Agregar";
                //$detalle['tipo_empresa']=$this->empresas_model->get_tipo_empresa();
                
                $this->load->view("template/header",$this->data);
                $this->load->view("mantenedores/productos/agregar",$detalle);
                $this->load->view("template/footer",$this->data);
        }else{
                $this->usuarios_model->add_usuario();
                redirect('listado_productos');
        }
    }
    public function modificar(){
        
    }
    public function eliminar(){
        
    }
}
