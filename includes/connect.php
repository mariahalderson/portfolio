<?php

$host = "localhost";
$un = "root";
$pw = "";
$dbname = "db_portfolio";

$connect = mysqli_connect($host, $un, $pw, $dbname);
mysqli_set_charset($connect, 'utf8');

if(!$connect){
    echo "something broke!";
    exit;
}

//echo "connected!";

if(isset($_GET["imagename"])) {
$images = $_GET["imagename"];
$query = "SELECT * FROM tbl_images WHERE images_name = '$images'";
$result = mysqli_query($connect, $query);
$rows = array();

while($row = mysqli_fetch_assoc($result)){
    $rows[] = $row;
}
}

echo json_encode($rows);

?>