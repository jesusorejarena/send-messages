<?php

require_once("utilidad.class.php");

class whatsapp extends utilidad
{

	public $cod_tip_cur;
	public $nom_tip_cur;
	public $fky_usuario;
	public $fky_curso;

	public function listarCursos()
	{
		$this->que_bda = "SELECT cod_tip_cur, nom_tip_cur FROM tipo_curso ORDER BY nom_tip_cur ASC;";
		return $this->run();
	} //Fin Listar cursos
	//==============================================================================

	function filtrar()
	{

		/* $filtro1 = ($this->fky_usuario != "") ? "AND fky_usuario='$this->fky_usuario'" : ""; */
		$filtro2 = ($this->fky_curso != "") ? "AND fky_curso IN ($this->fky_curso)" : "";

		$this->que_bda = "SELECT * FROM cursos_usuarios WHERE 1=1 $filtro2 GROUP BY fky_usuario;";
		/* echo json_encode($this->que_bda); */
		return $this->run();
	} // fin de filtrar respaldo


}//Fin de la Clase
