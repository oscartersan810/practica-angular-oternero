<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");

include 'config.php'; // Asegúrate de que config.php contiene la conexión a la BD

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die(json_encode(["error" => "Conexión fallida: " . $conn->connect_error]));
}

// Verificar si se pasó el filtro por año (a)
if (isset($_GET['a'])) {
    $año = intval($_GET['a']); // Convertir a entero
    $sql = "SELECT * FROM samsunggalaxy WHERE año = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $año);
}
// Verificar si se pasó el filtro por nombre (n)
elseif (isset($_GET['n'])) {
    $nombre = "%" . $_GET['n'] . "%"; // Permitir búsqueda parcial
    $sql = "SELECT * FROM samsunggalaxy WHERE nombre LIKE ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $nombre);
}
// Si no hay filtros, obtener todos los registros de la tabla samsunggalaxy
else {
    $sql = "SELECT * FROM samsunggalaxy";
    $stmt = $conn->prepare($sql);
}

$stmt->execute();
$result = $stmt->get_result();
$data = [];

while ($row = $result->fetch_assoc()) {
    $data[] = $row;
}

echo json_encode($data, JSON_PRETTY_PRINT);
$stmt->close();
$conn->close();
?>
