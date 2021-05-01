<?php
  include 'conexion.php';
  $ID_MATRICULA=$_POST['ID_MATRICULA'];
$conexion->query("DELETE FROM vehiculo WHERE ID_MATRICULA=".$ID_MATRICULA);
?>
