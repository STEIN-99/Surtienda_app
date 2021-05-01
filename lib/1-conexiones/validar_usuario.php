<?php

include 'conexion.php';
$CORREO_ELEC=$_POST['CORREO_ELEC'];
$CONTRASENA=$_POST['CONTRASENA'];


$sentencia=$conexion->query("SELECT * FROM usuarios WHERE CORREO_ELEC='".$CORREO_ELEC."' AND CONTRASENA='".$CONTRASENA."'");

$resultado = array();

while($fetchData=$sentencia->fetch_assoc()){
    $resultado[]=$fetchData;
}

echo json_encode($resultado);

?>