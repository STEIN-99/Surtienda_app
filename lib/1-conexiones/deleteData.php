<?php
  include 'conexion.php';
  $id=$_POST['id'];
  $connect->query("DELETE FROM vendedores WHERE ID_VENDEDOR=".$id);
?>
