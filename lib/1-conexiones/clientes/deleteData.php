<?php
  include 'conexion.php';
  $ID_CLIENTES=$_POST['ID_CLIENTES'];
  $conexion->query("DELETE FROM vendedores WHERE ID_CLIENTES=".$ID_CLIENTES);
?>
