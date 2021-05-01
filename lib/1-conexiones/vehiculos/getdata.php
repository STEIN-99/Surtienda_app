<?php
include 'conexion.php';

$sentencia=$conexion->query("SELECT v.ID_MATRICULA, ve.NOMBRE, v.MATRICULA, v.MODELO, v.MOTOR, v.CAPAC
FROM vehiculo as v, vendedores as ve
WHERE v.ID_VENDEDOR=ve.ID_VENDEDOR");

$resultado = array();

while($fetchData=$sentencia->fetch_assoc()){
    $resultado[]=$fetchData;
}

echo json_encode($resultado);

?>
