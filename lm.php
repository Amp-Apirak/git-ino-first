

<?php

$conn = new mysqli('localhost', 'root', '1234', 'ino_db'); //ประกาศตัวแปล $conn เก็บค่า การเชื่อมต่อ 
if ($conn->connect_error) {  //ตรวจสอบเงื่อนไข ฐานข้อมูลเชื่อมต่อได้หรือไม่ หากไม่ให้แสดง error เป็นตัวเลข ออกมา
    die("Connection failed: " . $conn->connect_error);
}
$conn->Set_charset("utf8");


$sql = "SELECT * FROM contact WHERE contact_fullname LIKE '%" . $_POST['keyword'] . "%' ORDER BY contact_fullname ASC";
$query = $conn->query($sql);

//print_r($query);

while ($arr = $query->fetch_assoc()) {
    $name_search = str_replace($_POST['keyword'], '<b><font color="#417fe2">' . $_POST['keyword'] . '</font></b>', $arr['contact_fullname']);
    echo '<li onclick="putValue(\'' . str_replace("'", "\'", $arr['contact_fullname']) . '\',\'' . str_replace("'", "\'", $arr['contact_position']) . '\',\'' . str_replace("'", "\'", $arr['contact_tel']) . '\')">' . $name_search . '</li>';
}
?>
