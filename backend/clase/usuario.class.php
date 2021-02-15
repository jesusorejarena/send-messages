<?php

require_once("utilidad.class.php");

class usuario extends utilidad
{

	public $cod_tip_cur;
	public $nom_tip_cur;
	
	public $cod_usu_onl;

	public function listarUsuario()
	{
		$this->que_bda = "SELECT * FROM usuario_online WHERE cod_usu_onl = '$this->cod_usu_onl';";
		return $this->run();
	} //Fin Listar cursos
	//==============================================================================

}//Fin de la Clase