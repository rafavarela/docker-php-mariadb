<?php
echo "¡Hola, PHP 7.3.1 funciona!";
$conn = new mysqli("db", "user", "password", "mydatabase");
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}
echo "<br>Conexión a MariaDB 10.1.37 exitosa!";
?>