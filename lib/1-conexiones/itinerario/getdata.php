<?php
include 'conexion.php';

$sentencia=$conexion->query("SELECT i.ID_FECHA, e.NOMBRE, r.RUTAS, v.MODELO,i.FECHA,i.HORA_SALI, i.HORA_LLEG
FROM itinerario AS i, vendedores AS e, ruta AS r, vehiculo AS v
WHERE i.ID_VENDEDOR=e.ID_VENDEDOR AND i.ID_RUTA=r.ID_RUTA AND i.ID_MATRICULA=v.ID_MATRICULA");

$resultado = array();

while($fetchData=$sentencia->fetch_assoc()){
    $resultado[]=$fetchData;
}

echo json_encode($resultado);

?>
