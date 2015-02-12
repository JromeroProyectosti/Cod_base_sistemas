<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


	<title><?=$titulo?></title><!--
	<link href="<?=base_url();?>css/transdmin.css" rel="stylesheet" type="text/css" media="screen" />
	<script type="text/javascript" src='<?=base_url();?>js/jquery.js'></script>
	<script type="text/javascript" src='<?=base_url();?>js/ajax.js'></script>
	<script type="text/javascript" src="<?=base_url();?>js/jNice.js"></script>-->
        
        <link href="<?=base_url();?>css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="<?=base_url();?>css/bootstrap-responsive.css" rel="stylesheet" media="screen">
        <style type="text/css">
            body {
              padding-top: 40px;
              padding-bottom: 40px;
              background-color: #f5f5f5;
            }

            .form-signin {
              max-width: 300px;
              padding: 19px 29px 29px;
              margin: 0 auto 20px;
              background-color: #fff;
              border: 1px solid #e5e5e5;
              -webkit-border-radius: 5px;
                 -moz-border-radius: 5px;
                      border-radius: 5px;
              -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                 -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                      box-shadow: 0 1px 2px rgba(0,0,0,.05);
            }
            .form-signin .form-signin-heading,
            .form-signin .checkbox {
              margin-bottom: 10px;
            }
            .form-signin input[type="text"],
            .form-signin input[type="password"] {
              font-size: 16px;
              height: auto;
              margin-bottom: 15px;
              padding: 7px 9px;
            }

        </style>
        
</head>
    <body>
        <div class="container">
            <?php echo form_open_multipart('usuarios/ini_session',array("class"=>"form-signin"));?>
            
            <h2 class="form-signin-heading">Login</h2>
            <?=$error?>
            
            <table>
                    <tr>
                            <td>Usuario</td><td><input type='text' name='txtUsuario'  class="input-block-level"></td>
                    </tr>
                    <tr>
                            <td>Password</td><td><input type='text' name='txtPassword'  class="input-block-level"> </td>
                    </tr>
                    <tr>
                        <td colspan=2><input type='submit' value='Enviar' class="btn btn-large btn-primary"></td>
                    </tr>
            </table>
            </form>
        </div>
    </body>
</html>