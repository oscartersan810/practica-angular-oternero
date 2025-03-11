<?php
require_once "config.php"; // Incluir la configuración de la base de datos

header("Access-Control-Allow-Origin: *"); // Permite que cualquier origen haga peticiones a la API

// Iniciar la conexión a la base de datos usando PDO
try {
    // Crear una nueva conexión PDO usando las variables del archivo de configuración
    $conexion = new PDO("mysql:host=$db_host;dbname=$db_nombre;charset=$db_charset", $db_usuario, $db_contraseña);
    // Configurar el modo de error de PDO
    $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    // Si hay un error en la conexión, se muestra un mensaje
    die(json_encode(["error" => "Error en la conexión: " . $e->getMessage()]));
}

// Inicializar un arreglo para almacenar los dispositivos
$dispositivos = [];

// Construir la consulta base
$sql = "SELECT id, nombre, modelo, versionAndroid, versionActualizada, interfaz, anio, imagen FROM samsunggalaxy";

// Agregar filtros si existen
$where = [];

if (isset($_GET['n'])) {
    $nombre = $_GET['n'];
    $where[] = "nombre LIKE '%$nombre%'";
}

if (isset($_GET['a'])) {
    $anio = $_GET['a']; 
    $where[] = "anio = $anio";
}

if (!empty($where)) {
    $sql .= " WHERE " . implode(" AND ", $where);
}



// Ejecutar la consulta
$consulta = $conexion->query($sql);
// Recuperar los resultados
while ($reg = $consulta->fetch(PDO::FETCH_ASSOC)) {
    $dispositivos[] = $reg;
}

header('Content-Type: application/json; charset=utf-8');
echo json_encode($dispositivos, JSON_PRETTY_PRINT);
?>
