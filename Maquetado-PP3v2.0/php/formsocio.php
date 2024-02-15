<?php

require './abrir_conexion.php';
//Enviar datos a la base de datos
if ($_POST) {
    $socio_Usuario=$_POST['Usuario'];
    $contraseña=$_POST['password'];
    $sentencia_usuarioSQL=$conexion->prepare("INSERT INTO `usuario` (`id`, `usuario`, `contraseña`,
    `tipo`) VALUES (NULL, '$socio_Usuario', '$contraseña', '2')");
    
    $Apellido=$_POST['Socio_apellido'];
    $Nombre=$_POST['Socio_nombre'];
    $Lugar_nacimiento=$_POST['Lugar_nacimiento'];
    $fecha_nacimiento=$_POST['FNaciomiento'];
    $domicilio=$_POST['domicilio'];
    $provincia=$_POST['provincia'];
    $localidad=$_POST['localidad'];
    $cp=$_POST['cp'];
    $dni=$_POST['dni'];
    $familiar =$_POST['grupo familiar'];
    $ObraSocial =$_POST['Obra Social'];
   
    $sentenciaSQL=$conexion->prepare("INSERT INTO `socio` (`id`, `nombre`, `apellido`, `numerosocio`, `Lugar nacimiento`, `nacimiento`, `domicilio`, `provincia`, `localidad`,
    `cp`, `dni`, `grupoflia`, `obraSocial`, `estado`) VALUES 
    (NULL, '$Nombre', '$Apellido', '1', '$Lugar_nacimiento', '$fecha_nacimiento', '$domicilio', '$provincia', '$localidad', '$cp', '$dni', '$familiar', '$ObraSocial', '2')");
    $sentencia_usuarioSQL=$conexion->prepare("INSERT INTO `usuario` (`id`, `usuario`, `contraseña`,
     `tipo`) VALUES (NULL, '$socio_Usuario', '$contraseña', '2')");
    
    $sentencia_usuarioSQL->execute();
    $sentenciaSQL->execute();
    //INSERT INTO `login` (`Cuenta_id`, `Login_Usuario`, `Login_contraseña`, `Login_perfil`) VALUES (NULL, 'Usuario', 'contraseña', '1');
}
header('Location: ../login.html');

?>

