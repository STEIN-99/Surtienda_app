<?php

$conexion = new mysqli ("localhost", "root", "", "bd_app_surtienda");

if($conexion){

}else{
    echo "Conexion fallo";
    exit();
}

?>