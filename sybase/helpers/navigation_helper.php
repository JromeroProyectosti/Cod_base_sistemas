<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * menu_ul()
 * Genera una lista desordenada con la clase current en el elemento seleccionado.
 */
if ( ! function_exists('menu_ul'))
{
    function menu_ul($sel = 'home')
   {
        $CI =& get_instance();
        $items = $CI->config->item('navigation');
        
        $menu = '<ul class="sideNav">'."\n";
        foreach($items as $item)
        {
            $current = (in_array($sel, $item)) ? ' class="current"' : '';
            $id = (!empty($item['id'])) ? ' id="'.$item['id'].'"' : '';
            $menu .= '<li'.$current.'><a href="'.$item['link'].'"'.$id.'>'.$item['title'].'</a></li>'."\n";
        }
        $menu .= '</ul>'."\n";
        return $menu;
    }
}