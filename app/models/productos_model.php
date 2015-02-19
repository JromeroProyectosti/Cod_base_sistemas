<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of productos_model
 *
 * @author John
 */
class productos_model extends CI_Model{
    //put your code here
    public function __construct() {
        parent::__construct();
    }
    
    /**
    * Devuelve listado completo de prodsuctos
    *
    * @access	publico
    * @param    String str_productos es un texto que contiene los campos que se quiere que se devuelva separados por coma(,).
    * @param    int $id_producto es el id principal del producto 
    * @return	un row_array o un result_array dependiendo del @param
    */
    public function get_listado_productos($str_productos="*",$id_producto=NULL){
        $this->db->select($str_productos);
        $this->db->from("Productos p");
        if($id_producto==NULL){
            $result=$this->db->get();
            if($result->num_rows()){
                return $result->result_array();
            
            }
            
        }else{
            $this->where("IdProducto",$id_producto);
            $result=$this->db->get();
            if($result->num_rows()){
                return $result->row_array();
            }
        }
        
        return false;
    }
    /**
    * Creacion de productos
    *
    * @access	publico
    * @param    String[] array_campos, contiene los campos a insertar Array('campo1'=>'valor1','campo2'=>'valor2')
    * @return	boolean
    */
    public function crear($array_campos=FALSE){
        if($array_campos==FALSE){
            return FALSE;
        }else{
            $this->db->insert($array_campos,"Prodcutos");
            return TRUE;
        }
    }
     /**
    * Modificar productos
    *
    * @access	publico
      * @param int $id_producto Id interno del producto
    * @param    String[] array_campos, contiene los campos a insertar Array('campo1'=>'valor1','campo2'=>'valor2')
    * @return	boolean
    */
    public function modificar($id_producto,$array_campos){
        if($array_campos==NULL){
            return FALSE;
        }else{
            $this->db->where("idProducto",$id_producto);
            $this->db->update("Productos",$array_campos);
            return TRUE;
        }
    }
}
