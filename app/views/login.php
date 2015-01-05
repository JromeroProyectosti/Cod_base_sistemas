<?php echo form_open_multipart('usuarios/ini_session');?>
<h2><?=$error?></h2>
<table>
	<tr>
		<td>Usuario</td><td><input type='text' name='txtUsuario'></td>
	</tr>
	<tr>
		<td>Password</td><td><input type='text' name='txtPassword'> </td>
	</tr>
	<tr>
		<td colspan=2><input type='submit' value='Enviar'></td>
	</tr>
</table>
</form>