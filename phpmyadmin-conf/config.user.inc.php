<?php
$cfg['Servers'][1]['auth_type'] = 'cookie'; // Forzar autenticación basada en cookies
$cfg['Servers'][1]['user'] = ''; // No definir un usuario por defecto
$cfg['Servers'][1]['password'] = ''; // No definir una contraseña por defecto
$cfg['LoginCookieValidity'] = 1440; // Tiempo de validez de la cookie de sesión (24 minutos)
$cfg['blowfish_secret'] = 'a9Xq7Lp2ZmRt'; // Clave secreta para encriptar cookies (cámbiala por una cadena aleatoria)