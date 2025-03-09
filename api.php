<?php
require_once "config.php"; // Incluir la configuración de la base de datos

header("Access-Control-Allow-Origin: *"); // Permite que cualquier origen haga peticiones a la API
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE"); // Métodos HTTP permitidos
header("Access-Control-Allow-Headers: Content-Type, Authorization"); // Cabeceras permitidas

// Establecer el encabezado para la respuesta JSON
header('Content-Type: application/json; charset=utf-8');

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

// Comprobar si se proporcionaron parámetros de búsqueda
$whereClauses = [];
$params = [];

if (isset($_GET['n']) && !empty($_GET['n'])) {
    $whereClauses[] = "nombre LIKE :nombre";
    $params[':nombre'] = "%" . $_GET['n'] . "%"; // Filtro por nombre
}

if (isset($_GET['a']) && !empty($_GET['a'])) {
    $whereClauses[] = "anio = :anio";
    $params[':anio'] = $_GET['a']; // Filtro por año
}

// Construir la consulta con filtros, si existen
$sql = "SELECT id, nombre, modelo, versionAndroid, versionActualizada, interfaz, anio, imagen FROM samsunggalaxy";

if (count($whereClauses) > 0) {
    $sql .= " WHERE " . implode(" AND ", $whereClauses);
}

// Preparar la consulta
$consulta = $conexion->prepare($sql);

// Ejecutar la consulta con los parámetros
$consulta->execute($params);

// Recuperar los resultados
while ($reg = $consulta->fetch(PDO::FETCH_ASSOC)) {
    $dispositivos[] = $reg;
}

// Devolver los resultados en formato JSON
echo json_encode($dispositivos, JSON_PRETTY_PRINT);
?>
