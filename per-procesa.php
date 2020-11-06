<?php 
require_once('librerias/conexionBD.php');

$usuario = $_POST['usuario'];
$roles = $_POST['roles'];

$sql = "insert into permisos (usuario, roles) values ('$usuario','$roles')";
$result =  $conn->query($sql);

if (!$result) die('Error al insertar');
header('Location: permisos.php');

 ?>