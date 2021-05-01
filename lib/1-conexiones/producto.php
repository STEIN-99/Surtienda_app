<?php

include 'conexion.php';


$sentencia=$conexion->query("SELECT * FROM productos");

$resultado = array();

while($fetchData=$sentencia->fetch_assoc()){
    $resultado[]=$fetchData;
}

echo json_encode($resultado);

?>