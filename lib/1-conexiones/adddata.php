<?php

include 'conexion'.php;

$username = $_POST['username'];
$username = $_POST['username'];

	$connect->query("INSERT INTO usuarios (username,password,nivel) VALUES ('".$username."','".$password."','".$nivel."')")



?>
