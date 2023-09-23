<?php
// ระบุโฟลเดอร์ที่เก็บไฟล์ XML
$xmlFolder = 'xml/';

// เปิดไฟล์ CSV สำหรับเขียน
$csvFile = fopen('xml/combined_data.csv', 'w');

// เขียนหัวข้อ CSV
fputcsv($csvFile, array('Sid', 'ParameterName', 'ParameterCode', 'ResultValue', 'Unit'));

// ค้นหาไฟล์ XML ในโฟลเดอร์
$files = glob($xmlFolder . '*.xml');

// วนลูปผ่านไฟล์ XML ทุกไฟล์
foreach ($files as $xmlFile) {
    // โหลดไฟล์ XML
    $xml = simplexml_load_file($xmlFile);

    // ดึงข้อมูลจาก XML
    $sid = (string)$xml->Sid;

    foreach ($xml->ParameterResults->ParameterResult as $parameterResult) {
        $parameterName = (string)$parameterResult->ParameterName;
        $parameterCode = (int)$parameterResult->ParameterCode;
        $resultValue = (float)$parameterResult->ResultValue;
        $unit = (string)$parameterResult->Unit;

        // เขียนข้อมูลลงใน CSV
        fputcsv($csvFile, array($sid, $parameterName, $parameterCode, $resultValue, $unit));
    }
}

// ปิดไฟล์ CSV
fclose($csvFile);

echo 'ไฟล์ XML ทั้งหมดได้ถูกแปลงเป็นไฟล์ CSV ชื่อ combined_data.csv แล้ว.';
?>
