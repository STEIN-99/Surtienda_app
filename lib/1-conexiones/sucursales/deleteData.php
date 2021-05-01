<?php
  include 'conexion.php';
  $id=$_POST['id'];
  $conexion->query("DELETE FROM sucursales WHERE ID_SUCURSAL=".$id);
?>
