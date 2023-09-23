<?php
// ระบุโฟลเดอร์ที่เก็บไฟล์ XML
$xmlFolder = 'xml/';

// เปิดไฟล์ CSV สำหรับเขียน
$csvFile = fopen('xml/combined_data.csv', 'w');

// เขียนหัวข้อ CSV
fputcsv($csvFile, array('Id', 'IsActive', 'IsDelete', 'UpdateTime', 'UpdateBy', 'Fullname', 'OrganizeID', 'DepartmentId'));

// ค้นหาไฟล์ XML ในโฟลเดอร์
$files = glob($xmlFolder . '*.xml');

// วนลูปผ่านไฟล์ XML ทุกไฟล์
foreach ($files as $xmlFile) {
    // โหลดไฟล์ XML
    $xml = simplexml_load_file($xmlFile);

    // ดึงข้อมูลจาก XML
    $id = (int)$xml->Id;
    $isActive = (bool)$xml->IsActive;
    $isDelete = (bool)$xml->IsDelete;
    $updateTime = (string)$xml->UpdateTime;
    $updateBy = (string)$xml->UpdateBy;
    $fullname = (string)$xml->Fullname;
    $organizeID = (int)$xml->OrganizeID;
    $departmentId = (int)$xml->DepartmentId;

    // เขียนข้อมูลลงใน CSV
    fputcsv($csvFile, array($id, $isActive, $isDelete, $updateTime, $updateBy, $fullname, $organizeID, $departmentId));
}

// ปิดไฟล์ CSV
fclose($csvFile);

echo 'ไฟล์ XML ทั้งหมดได้ถูกแปลงเป็นไฟล์ CSV ชื่อ combined_data.csv แล้ว.';
?>
