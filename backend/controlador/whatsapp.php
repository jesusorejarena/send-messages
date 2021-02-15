<?php

require_once("../clase/whatsapp.class.php");
require_once("../clase/usuario.class.php");

$obj_wha = new whatsapp;
$obj_usu = new usuario;

$item = array();
$item = $_REQUEST;


$cursos = array();
$usuarios = array();
$i = 0;

/* echo json_encode($item); */

switch ($_SERVER["REQUEST_METHOD"]) {
	case 'POST':
		// Filtrar
		$busqueda_curso = implode(",", $item);
		$obj_wha->fky_curso = $busqueda_curso;
		$obj_wha->puntero = $obj_wha->filtrar();
		while ($curso = $obj_wha->extractData()) {
			$obj_usu->cod_usu_onl = $curso["fky_usuario"];
			$obj_usu->puntero = $obj_usu->listarUsuario();
			$usuario = $obj_usu->extractData();
			$usuarios[$i] = $usuario;

			$i++;
		}
		echo json_encode($usuarios);
		break;

	case 'GET':
		// Obtener
		$obj_wha->puntero  = $obj_wha->listarCursos();
		while ($curso = $obj_wha->extractData()) {
			$cursos[$i] = $curso;
			$i++;
		}
		echo json_encode($cursos);
		break;

	case 'PUT':
		// Actualizar
		// $obj_wha->modificar($item);
		break;

	case 'DELETE':
		// Eliminar
		// $obj_wha->eliminar($item);
		break;
}
