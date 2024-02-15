<?php

$DB_HOST = "localhost";
$DB_USUARIO = "root";
$DB_PASS = "";
$DB_BASE = "mydb";

error_reporting(0);

$conexion = new mysqli ($DB_HOST,$DB_USUARIO,$DB_PASS,$DB_BASE);

if($conexion->connect_errno) {
    echo "Nuestro sitio experimenta fallos ...";
    exit();
}

?>