-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2023 at 03:09 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ino_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_scat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Service Category',
  `cat_sub` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Category',
  `cat_item` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Sub Category',
  `problem` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Problem',
  `site` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'โครงการ',
  `cat_case` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'สาเหตุ',
  `cat_resovle` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'วิธีการแก้ไข',
  `cat_staff` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ผู้บันทึก',
  `cat_crt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'วันที่สร้าง',
  `cat_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ชนิดการบริการ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_scat`, `cat_sub`, `cat_item`, `problem`, `site`, `cat_case`, `cat_resovle`, `cat_staff`, `cat_crt`, `cat_type`) VALUES
(1, 'Platform (Lab)', 'Service Interface Program', 'Error ', 'ปัญหาไม่สามารถใช้งานระบบ LIS เนื่องจาก Service Interface Program ขึ้น Error ', 'โรงพยาบาลมิตรไมตรี (Lab)', 'Parameter Log ที่ส่งมาจากระบบ HIS ไม่ตรงกับ Service Interface ตัวรับ จึงทำให้เกิด Error (HL7)', 'ลบ Log Files HL7 ออก ทำการ Backup ข้อมูลไว้ Run Service Interface Programs สามารถใช้งานได้ปกติ', 'Apirak Bangpuk', '2023-09-04 03:25:25', ''),
(3, 'Platform (LIS)', 'Design UX/UI Form/Page', 'Design', 'ขอบริการ Design UX/UI Form/Page เพิ่มเติม', 'คุณประพัฒน์ จันทร์เกื้อ (PROMs Company)', 'Design UX/UI Form/Page', 'ดำเนินการ Design UX/UI Form/Page เพิ่มเติม เรียบร้อย', 'Apirak bangpuk', '2023-09-04 03:26:55', 'Service'),
(13, 'Platform (KYD)', 'Service Support', 'Configuration', 'แจ้งปัญหา ทำการส่งเคสไปยังหน่วยงาน EMS ไม่แจ้งเตือนที่หน้าจอ (Monitor Platform)', 'รองศาสตราจารย์ วิรุฬห์ ศรีบริรักษ์ (บริษัท เซนโกรท จำกัด - Zanegrowth Smart City Thailand)', 'ระบบยังไม่ได้รับการผูกกับ Platform Monitoring', 'ผูกหน่วยงาน EMS กับ Platform Monitoring สามารถใช้งานได้ปกติasdasdasdsd', 'Apirak bangpuk', '2023-09-04 04:17:03', 'Incident'),
(16, 'Platform (KYD)', 'Document Report', 'Makeup Report', 'ขอบริการ จัดทำเอกสารส่งมอบงาน ดูแลสุขภาพแบบอัจฉริยะ (Smart Health Care) สำหรับผู้สูงอายุ', 'นายสิรวิชฐ์ อำไพวงษ์ (องค์การบริหารส่วนตำบลบ่อวิน)', 'ส่งมอบงานตามสัญญาจ้าง (TOR)', 'ดำเนินการจัดทำเอกสารส่งมอบงานเรียบร้อย', 'Apirak bangpuk', '2023-09-13 03:14:49', 'Service'),
(17, 'Platform (LIS)', 'UX/UI', 'Developer', 'ขอบริการ แจ้ง Requirment เพิ่มเติม ในส่วนของระบบ LIS', 'คุณประพัฒน์ จันทร์เกื้อ (PROMs Company)', 'ให้ทางพี่ต้นดำเนินการแก้ไข ตัว Print barcode ให้สามารถออกได้', 'ดำเนินการประสานงานพี่ต้น Dev  Print barcode เรียบ้รอยแล้ว', 'Apirak bangpuk', '2023-09-15 12:55:50', 'Service'),
(18, 'Platform (LIS)', 'Service Interface Programs', 'Error Code', 'แจ้งปัญหา Programs InterfaceResult ไม่สามารถกด Start ได้ ', 'คุณภัทราอร อมรโอภาคุณ  (พอยท์ ไอที คอนซัลทิ่ง จำกัด)', '-', 'Restart เครื่อง Computer สามารถใช้งานได้ปกติ', 'Apirak bangpuk', '2023-09-18 03:41:13', 'Incident'),
(19, 'Platform (LIS)', 'Printer', 'UAT/Tester', 'ขอบริการ Test Print Laos Font ของระบบ LIS เพื่อรองรับการ Print ภาษาลาว', 'คุณประพัฒน์ จันทร์เกื้อ (PROMs Company)', 'UAT/Tester', 'ดำเนินการทดสอบจัดทำเอกสารแนบเรียบร้อย ', 'Apirak bangpuk', '2023-09-18 08:41:10', 'Service'),
(20, 'Platform (LIS)', 'System', 'Training', 'Trainning  สรุปเนื้อหาก่อนการอบรมเจ้าหน้าที่ เกี่ยวกับระบบ Nexlab (LAOS LIMS) ,(Work Scope Training)', 'คุณประพัฒน์ จันทร์เกื้อ (PROMs Company)', '-', '-', 'Apirak bangpuk', '2023-09-26 01:39:13', 'Select'),
(21, 'Platform (LIS)', 'Service Operation ', 'Trianning', 'Service Operation Onsite Support ลูกค้าระบบ NEXLAB (LIMS)', 'คุณประพัฒน์ จันทร์เกื้อ (PROMs Company)', 'Service Operation Onsite Support ลูกค้าระบบ NEXLAB (LIMS) ระหว่างวันที่ 20-22 เดือน กันยายน พ.ศ. 2566  โครงการ : Laos LIS (CHAI) หัวข้อ : Training LIS Systems  หน่วยงาน :  Minitry of health (NCLE) ณ เวียงจันทร์ ประเทศลาว ผู้รับผิดชอบโครงการ : คุณประพัฒน์ ', 'ดำเนินการเรียบร้อยแล้ว', 'Apirak bangpuk', '2023-09-26 01:51:31', 'Service'),
(22, 'Platform (LIS)', 'Printer Sticker', 'Setup/Configuration', 'ขอบริการ Setup Printer Sticker สำหรับทดสอบการสั่งพิมพ์บาร์โค้ด (Barcode) ในระบบ LIS ', 'คุณประพัฒน์ จันทร์เกื้อ (PROMs Company)', 'ขอบริการ Setup Printer Sticker สำหรับทดสอบการสั่งพิมพ์บาร์โค้ด (Barcode) ในระบบ LIS  ระหว่างวันที่ 21 เดือน กันยายน พ.ศ. 2566  โครงการ : Laos LIS (CHAI) หัวข้อ : Training LIS Systems  หน่วยงาน :  Minitry of health (NCLE) ณ เวียงจันทร์ ประเทศลาว ผู้รับผิดช', 'ดำเนินการ Setup Printer Sticker เรียบร้อยแล้ว', 'Apirak bangpuk', '2023-09-26 01:57:20', 'Service'),
(23, 'Platform (LIS)', 'Printer', 'Setup/Configuration', 'ขอบริการ Setup Printer Brother สำหรับทดสอบการสั่งพิมพ์เอกสาร ในระบบ LIS ', 'คุณประพัฒน์ จันทร์เกื้อ (PROMs Company)', 'ขอบริการ Setup Printer Brother สำหรับทดสอบการสั่งพิมพ์เอกสาร ในระบบ LIS   ระหว่างวันที่ 21 เดือน กันยายน พ.ศ. 2566  โครงการ : Laos LIS (CHAI) หัวข้อ : Training LIS Systems  หน่วยงาน :  Minitry of health (NCLE) ณ เวียงจันทร์ ประเทศลาว ผู้รับผิดช', 'ดำเนินการ Setup Printer Sticker เรียบร้อยแล้ว', 'Apirak bangpuk', '2023-09-26 02:06:32', 'Service'),
(24, 'Platform (LIS)', 'Service Operation ', 'Training', 'ขอบริการ เป็นผู้ช่วยในการจัดอบรบ (Support Training) ระบบ LIS ', 'คุณประพัฒน์ จันทร์เกื้อ (PROMs Company)', 'ขอบริการ เป็นผู้ช่วยในการจัดอบรบ (Support Training) ระบบ LIS  ระหว่างวันที่ 21 เดือน กันยายน พ.ศ. 2566 เวลา 08:00 - 17.00 โครงการ : Laos LIS (CHAI) หัวข้อ : Training LIS Systems  หน่วยงาน :  Minitry of health (NCLE) ณ เวียงจันทร์ ประเทศลาว ผู้รับผิดชอบโคร', 'ดำเนินการ เป็นผู้ช่วยในการจัดอบรบ (Support Training) ระบบ LIS เรียบร้อยแล้ว', 'Apirak bangpuk', '2023-09-26 02:11:17', 'Service'),
(25, 'Platform (LIS)', 'Service Operation ', 'Training', 'Service Operation Onsite Support ลูกค้าระบบ NEXLAB (LIMS)', 'คุณประพัฒน์ จันทร์เกื้อ (PROMs Company)', 'Service Operation Onsite Support ลูกค้าระบบ NEXLAB (LIMS) ระหว่างวันที่ 20-22 เดือน กันยายน พ.ศ. 2566  โครงการ : Laos LIS (CHAI) หัวข้อ : Training LIS Systems  หน่วยงาน :  Minitry of health (NCLE) ณ เวียงจันทร์ ประเทศลาว ผู้รับผิดชอบโครงการ : คุณประพัฒน์ ', 'ดำเนินการเรียบร้อยแล้ว', 'Apirak bangpuk', '2023-09-26 02:11:43', 'Service'),
(26, 'Platform (LIS)', 'Service Interface Program', 'Error Code', 'แจ้งปัญหา Programs InterfaceResult ไม่สามารถกด Start ได้ ', 'คุณภัทราอร อมรโอภาคุณ  (พอยท์ ไอที คอนซัลทิ่ง จำกัด)', '-', 'Restart เครื่อง Computer สามารถใช้งานได้ปกติ', 'Apirak bangpuk', '2023-09-26 02:15:36', 'Incident'),
(27, 'Platform (Lab)', 'Service Interface Program', 'Error Setup/Configuration', 'ขอบริการ ติดตั้งโปรแกรมเชื่อมต่อผลจากเครื่องวิเคราะห์ GeneXpert ไปยังระบบ LIS (Service Interface)', 'คุณประพัฒน์ จันทร์เกื้อ (PROMs Company)', 'ขอบริการ ติดตั้งโปรแกรมเชื่อมต่อผลจากเครื่องวิเคราะห์ GeneXpert ไปยังระบบ LIS (Service Interface) \r\nระหว่างวันที่ 21 เดือน กันยายน พ.ศ. 2566  โครงการ : Laos LIS (CHAI) \r\nหัวข้อ : Training LIS Systems  \r\nหน่วยงาน :  Minitry of health (NCLE) ณ เวียงจันทร์ ประเทศล', 'ดำเนินการ ติดตั้งโปรแกรมเชื่อมต่อผลจากเครื่องวิเคราะห์ GeneXpert ไปยังระบบ LIS (Service Interface) เรียบร้อย', 'Apirak bangpuk', '2023-09-27 07:17:35', 'Service'),
(28, 'Platform (LIS)', 'Service Interface Program', 'Error Code', 'แจ้งปัญหา Programs InterfaceResult ไม่สามารถกด Start ได้ ', 'คุณภัทราอร อมรโอภาคุณ  (พอยท์ ไอที คอนซัลทิ่ง จำกัด)', '-', 'Restart เครื่อง Computer สามารถใช้งานได้ปกติ', 'Apirak bangpuk', '2023-09-26 02:19:35', 'Incident'),
(29, 'Platform (LIS)', 'Service Operation ', 'Training', 'Service Operation Onsite Support ลูกค้าระบบ NEXLAB (LIMS)', 'คุณประพัฒน์ จันทร์เกื้อ (PROMs Company)', 'Service Operation Onsite Support ลูกค้าระบบ NEXLAB (LIMS) \r\nระหว่างวันที่ 20-22 เดือน กันยายน พ.ศ. 2566  \r\nโครงการ : Laos LIS (CHAI) \r\nหัวข้อ : Training LIS Systems  \r\nหน่วยงาน :  Minitry of health (NCLE) ณ เวียงจันทร์ ประเทศลาว \r\nผู้รับผิดชอบโครงการ : คุณประพัฒน์ ', 'ดำเนินการเรียบร้อยแล้ว', 'Apirak bangpuk', '2023-09-27 07:20:05', 'Service'),
(30, 'Platform (LIS)', 'Document Report', 'Borrow Document ', 'ขอบริการ จัดทำเอกสารยืม อุปกรณ์สำหรับใช้งานทดสอบระบบ LIS ', 'คุณประพัฒน์ จันทร์เกื้อ (PROMs Company)', 'ขอบริการ จัดทำเอกสารยืม อุปกรณ์สำหรับใช้งานทดสอบระบบ LIS  \r\nระหว่างวันที่ 22 เดือน กันยายน พ.ศ. 2566  \r\nโครงการ : Laos LIS (CHAI) \r\nหัวข้อ : Training LIS Systems  \r\nหน่วยงาน :  Minitry of health (NCLE) ณ เวียงจันทร์ ประเทศลาว \r\nผู้รับผิดชอบโครงการ : คุณประพัฒน์ จัน', 'ดำเนินการ  จัดทำเอกสารยืม อุปกรณ์เรียบร้อย', 'Apirak bangpuk', '2023-10-30 02:40:05', 'Service'),
(31, 'Platform (LIS)', 'Manaul', 'System For Printing', 'ขอบริการ จัดทำคู่มือการตั้งค่า (System For Printing) สำหรับใช้งานทดสอบระบบ LIS ', 'คุณประพัฒน์ จันทร์เกื้อ (PROMs Company)', 'ขอบริการ จัดทำคู่มือการตั้งค่า (System For Printing) สำหรับใช้งานทดสอบระบบ LIS \r\n ระหว่างวันที่ 25 เดือน กันยายน พ.ศ. 2566  \r\nโครงการ : Laos LIS (CHAI) \r\nหัวข้อ : Training LIS Systems \r\n หน่วยงาน :  Minitry of health (NCLE) ณ เวียงจันทร์ ประเทศลาว \r\nผู้รับผิดชอบโครง :', 'ดำเนินการ จัดทำคู่มือการตั้งค่า (System For Printing) เรียบร้อย', 'Apirak bangpuk', '2023-10-30 02:49:53', 'Service'),
(32, 'Platform (LIS)', 'Printer', 'UAT/Tester', 'ขอบริการ ทดสอบการสั่งพิมพ์บาร์โค้ด ภาษาอังกฤษ - ลาวในระบบ LIS ', 'คุณประพัฒน์ จันทร์เกื้อ (PROMs Company)', 'ขอบริการ ทดสอบการสั่งพิมพ์บาร์โค้ด ภาษาอังกฤษ - ลาวในระบบ LIS  \r\nระหว่างวันที่ 25 เดือน กันยายน พ.ศ. 2566  \r\nโครงการ : LAOS LIMS \r\nหัวข้อ : ทดสอบการสั่งพิมพ์บาร์โค้ด ภาษาอังกฤษ - ลาวในระบบ', 'ดำเนินการเรียบร้อยแล้ว', 'Apirak bangpuk', '2023-09-27 07:18:21', 'Service'),
(33, 'Platform (LIS)', 'Parameter', 'Editing', 'ขอบริการ แก้ไขค่า Parameter ในระบบ LIS', 'คุณภัทราอร อมรโอภาคุณ  (พอยท์ ไอที คอนซัลทิ่ง จำกัด)', 'ขอบริการ แก้ไขค่า Parameter ในระบบ LIS ประกอบด้วย Parameter ดังนี้ ', 'ดำเนินการ  แก้ไขค่า Parameter ในระบบ LIS เรียบร้อย', 'Apirak bangpuk', '2023-09-26 08:35:19', 'Service'),
(34, 'Platform (KYD)', 'Emergency', 'Document Report', 'ขอบริการ ออกแบบสรุปรายงานงวดงานในรูปแบบวีดีโอ (Vedio Summary Report) โครงการเฝ้าระวังเหตุฉุกเฉินทางไกล, ', 'นายสิรวิชฐ์ อำไพวงษ์ (องค์การบริหารส่วนตำบลบ่อวิน)', 'ขอบริการ ออกแบบสรุปรายงานงวดงานในรูปแบบวีดีโอ (Vedio Summary Report) \r\nโครงการเฝ้าระวังเหตุทางไกล, \r\nโครงการ : โครงการ \"บ่อวิน สมาร์ท ซิตี้” ดูแลสุขภาพแบบอัจฉริยะ (Smart Health Care) สำหรับผู้สูงอายุ ประจำปีงบประมาณ 2566, \r\nหน่วยงาน :  องค์การบริหารส่วนตำบลบ่อวิน', 'ดำเนินการออกแบบสรุปรายงานงวดงานในรูปแบบวีดีโอ (Vedio Summary Report) เรียบร้อย', 'Apirak bangpuk', '2023-09-27 07:16:24', 'Service'),
(35, 'Platform (LIS)', 'Printer Sticker', 'Setup/Configuration', 'แจ้งปัญหา Print Sticker ในระบบ LIS ตัวอักษรขาด/เอียง', 'คุณประพัฒน์ จันทร์เกื้อ (PROMs Company)', 'ระบบไม่จำรูปแบบการ Setup/Configuration ', 'ดำเนินการ\r\n1. Caribate Print Sticker , \r\n2. ปิดเปิดเครื่อง , \r\n3. Stop-Start เปิดโปรแกรม Nexlab Print Barcode , \r\n4. ทดสอบสั่ง Print Sticker Test ผ่าน Driver Print (ออก) , \r\n5. ทดสอบสั่ง Print Sticker ผ่านระบบ LIS สามารถใช้งานได้ปกติ ', 'Apirak bangpuk', '2023-09-27 07:17:55', 'Service'),
(36, 'POINT IT', 'Database', 'Backup Database', 'ขอบริการ สำรองข้อมูล/โอนย้าย (Backup Database) โครงการทั้งหมดของ Point IT', 'คุณผาณิต เผ่าพันธ์ (พอยท์ ไอที คอนซัลทิ่ง จำกัด)', 'เนื้อที่ใน Google Drive ไม่เพียงพอในการเก็บข้อมูล', 'ดำเนินการ สำรองข้อมูล/โอนย้าย (Backup Database) และย้ายไปยังพื้นที่ใช้งาน Cloud  One Drive เนื่องจากเนื้อที่เพียงพอในการเก็บข้อมูล ', 'Apirak bangpuk', '2023-09-27 03:44:04', 'Select'),
(40, 'Platform (LIS)', 'Username/Password', 'Setup/Configuration', 'ขอบริการสร้าง User เข้าใช้งานระบบ LIS', 'คุณภัทราอร อมรโอภาคุณ  (พอยท์ ไอที คอนซัลทิ่ง จำกัด)', 'ขอบริการสร้าง User เข้าใช้งานระบบ LIS \r\nโครงการ : บริษัท น้ำทองแล็บ เซ็นเตอร์ จำกัด (NextIT)\r\nUsername : LN1\r\nPassword : LN1\r\nLocation : โรงพยาบาลน่าน\r\nRole : Guest', 'ดำเนินการ สร้าง User เข้าใช้งานระบบ LIS เรียบร้อยแล้ว ', 'Apirak bangpuk', '2023-09-29 05:28:59', 'Service'),
(41, 'Platform (KYD)', 'Document Report', 'Editing', 'ขอบริการ แก้ไขวีดีโอ (Vedio Summary Report) โครงการเฝ้าระวังเหตุฉุกเฉินทางไกล', 'นายสิรวิชฐ์ อำไพวงษ์ (องค์การบริหารส่วนตำบลบ่อวิน)', 'ขอบริการแก้ไขวีดีโอ (Vedio Summary Report) โครงการเฝ้าระวังเหตุฉุกเฉินทางไกล  โครงการ : โครงการ \"บ่อวิน สมาร์ท ซิตี้” ดูแลสุขภาพแบบอัจฉริยะ (Smart Health Care) สำหรับผู้สูงอายุ ประจำปีงบประมาณ 2566 หน่วยงาน : องค์การบริหารส่วนตำบลบ่อวิน  ในส่วนของการใส่เสียงเพิ่มเติมการอธิบายใน วีดีโอ', 'ดำเนินการขอบริการ แก้ไขวีดีโอ (Vedio Summary Report) เรียบร้อย', 'Apirak bangpuk', '2023-09-29 05:43:48', 'Service'),
(42, 'Platform (LIS)', 'Service Interface Program', 'Result', 'แจ้งปัญหา NexLab ไม่ Link แปลผล เข้าระบบ LIS', 'คุณภัทราอร อมรโอภาคุณ  (พอยท์ ไอที คอนซัลทิ่ง จำกัด)', 'แจ้งปัญหา NexLab ไม่ Link แปลผล เข้าระบบ LIS\r\nโครงการ : ระบบ Nexlab \r\nลูกค้า : บริษัท น้ำทองแล็บ เซ็นเตอร์ จำกัด (NextIT) น่าน', 'ดำเนินการประสานงานพี่ต้น ตรวจสอบ และแก้ไขเรียบร้อยแล้วครับ \r\n- ดำเนินการ Restart Server  (Nexit At Pointit server)\r\n- ดำเนินการ Stop/Start Service Interface Programs ', 'Apirak bangpuk', '2023-10-02 05:16:17', 'Incident'),
(43, 'Platform (KYD)', 'Database', 'Service Interface Program', 'แจ้งปัญหา การบันทึกผลการตรวจค่าสุขภาพ และแบบสอบถามเข้าระบบ กิน-อยู่-ดี (ม.มหิดล) ไม่เชื่อมต่อไปยัง Prower BI Dashboard ', 'อ.ชะนวนทอง ธนสุกาญจน์ (มหาวิทยาลัยมหิดล)', 'รบกวนตรวจสอบ : รบกวนพี่ตั้มดูเรื่องที่แจ้งเมื่อวานด้วยนะครับ ไม่แน่ใจว่าทำไมข้อมูลที่มีการทำแล้วไม่เข้า BI แต่เห็นข้อมูลการทำแบบสอบถามใน ระบบ กินอยู่ดี ไม่แน่ใจว่า ข้อมูลที่อยู่บน Server กินอยู่ดี มีการ duplicate ไปยังถัง Data ที่ พี่ตั้ม ให้พี่ตั้ม Point เชื่อมข้อมูลเข้า BI หรือป่าว ครับ\r\nโครงการ : โครงการนวัตกรรมบริการชุมชนเพื่อควบคุมการแพร่ระบาดเชื้อไวรัสโคโรน่า 2019 ย่านนวัตกรรมการแพทย์โยธี\r\nผู้รับผิดชอบโครงการ : รองศาสตราจารย์ ดร. ชะนวนทอง ธนสุกาญจน์\r\nAccounting  :  คุณผาณิต เผ่าพันธ์\r\n\r\nหมายเหตุ : ตรวจสอบทาง Prower BI มีการตั้งเวลาในการดึงข้อมูลจากถึง Database มา Update ปกติ พบข้อมูลล่าสุดช่วงเดือน : กุมพาพันธ์ 2023 ', 'ทีม Platform Kin Yoo Dee ดำเนินการตรวจสอบแก้ไข สามารถใช้งานได้ปกติครับ ', 'Apirak bangpuk', '2023-10-30 02:45:24', 'Service'),
(44, 'Platform (LIS)', 'Service Interface Program', 'Result', ' แจ้งปัญหา Server Nexit Down ไม่สามารถแปลผล เชื่อมต่อระบบ LIS ได้', 'คุณภัทราอร อมรโอภาคุณ  (พอยท์ ไอที คอนซัลทิ่ง จำกัด)', 'แจ้งปัญหา Server Nexit Down ไม่สามารถแปลผล เชื่อมต่อระบบ LIS ได้   โครงการ : ระบบ Nexlab  ลูกค้า : บริษัท น้ำทองแล็บ เซ็นเตอร์ จำกัด (NextIT) น่าน', 'ดำเนินการ Restart Server เรียบร้อยแล้ว ', 'Apirak bangpuk', '2023-10-02 06:20:05', 'Incident'),
(45, 'Uplevel', 'Database', 'Cleansing data', 'ขอบริการ จัดเรียงข้อมูล (Cleansing data) สำหรับนำเข้าระบบจัดเก็บลงฐานข้อมูล (Server Point)', 'คุณภัทราอร อมรโอภาคุณ  (พอยท์ ไอที คอนซัลทิ่ง จำกัด)', 'ขอบริการ จัดเรียงข้อมูล (Cleansing data) สำหรับนำเข้าระบบจัดเก็บลงฐานข้อมูล (Server Point)\r\nโครงการ : Uplevel \r\nลูกค้า : คุณอาทิตย์ (พี่เหน่ง)\r\nวันที่ 04/10/2023 ', 'ดำเนินการ จัดเรียงข้อมูล (Cleansing data) สำหรับนำเข้าระบบจัดเก็บลงฐานข้อมูล (Server Point)  เรียบร้อยแล้ว', 'Apirak bangpuk', '2023-10-30 02:34:39', 'Service'),
(46, 'Platform (KYD)', 'Database', 'Service Interface Program', 'แจ้งปัญหา บันทึกข้อมูลค่าสุขภาพ และแบบสอบถาม ไม่แสดงผลที่ Prower BI', 'อ.ชะนวนทอง ธนสุกาญจน์ (มหาวิทยาลัยมหิดล)', 'แจ้งปัญหา บันทึกข้อมูลค่าสุขภาพ และแบบสอบถาม ไม่แสดงผลที่ Prower BI\r\nวันที่ 03/10/2023 ', 'ให้ทางพี่ตั้ม (Dev) และพี่ตั้ม Point IT ตรวจสอบแก้ไขสามารถ แสดงผลหน้า Prower BI ปกติครับ', 'Apirak bangpuk', '2023-10-05 04:37:13', 'Incident'),
(47, 'Platform (KYD)', 'Meeting Room', 'Issue', 'ประชุม สรุปปัญหาบันทึกข้อมูล ข้อมูลไม่แสดงผลใน Power BI', 'อ.ชะนวนทอง ธนสุกาญจน์ (มหาวิทยาลัยมหิดล)', 'ประชุม สรุปปัญหาบันทึกข้อมูล ข้อมูลไม่แสดงผลใน Power BI\r\nผู้เข้าร่วม\r\nวันที่ 03/10/2023 \r\nหัวข้อ\r\n', 'ดำเนินการประชุมสรุปได้ดังนี้ ', 'Apirak bangpuk', '2023-10-05 04:42:57', 'Select'),
(48, 'Platform (LIS)', 'Server ', 'Move', 'ขอบริการ ย้ายที่ตั้ง Server ................ ในห้อง Server ..................', 'คุณภัทราอร อมรโอภาคุณ  (พอยท์ ไอที คอนซัลทิ่ง จำกัด)', 'ขอบริการ ย้ายที่ตั้ง Server ................ ในห้อง Server ..................\r\nเนื่องจาก ........................................', 'ดำเนินการย้ายเรียบร้อยแล้ว ', 'Apirak bangpuk', '2023-10-05 04:53:43', 'Select'),
(49, 'Platform (KYD)', 'Emergency', 'UAT Project Summary', 'ออกปฏิบัติงานนอกสถานที่ รายงานสรุปโครงการ .......................... (Service Operation Onsite UAT Project Summary )', 'คุณภัทราอร อมรโอภาคุณ  (พอยท์ ไอที คอนซัลทิ่ง จำกัด)', 'ออกปฏิบัติงานนอกสถานที่ รายงานสรุปโครงการ .......................... (Service Operation Onsite UAT Project Summary )\r\nระหว่างวันที่ ....... เดือน .......... พ.ศ. 2566\r\nโครงการ : \r\nหัวข้อ : ..................................\r\nหน่วยงาน :  ..................................\r\nผู้รับผิดชอบโครงการ :  ..................................', 'นำเสนอรายงานสรุปโครกงาร ......................... เรียบร้อย', 'Apirak bangpuk', '2023-10-10 02:03:55', 'Service'),
(50, 'Developer', 'Application', 'QC Device and report', 'ขอบริการ จัดทำ Application สำหรับ QC อุปกรณ์ AI Tracker เพื่อสรุปรายงานส่งมอบโครงการ', 'คุณภัทราอร อมรโอภาคุณ  (พอยท์ ไอที คอนซัลทิ่ง จำกัด)', 'ขอบริการจัดทำ Application สำหรับ QC อุปกรณ์ AI Tracker เพื่อสรุปรายงานส่งมอบโครงการ\r\nระหว่างวันที่ ....... เดือน .......... พ.ศ. 2566\r\nโครงการ :\r\nหัวข้อ : ..................................\r\nหน่วยงาน : ..................................\r\nผู้รับผิดชอบโครงการ : ..................................', 'ดำเนินการจัดทำ Application สำหรับ QC อุปกรณ์ AI Tracker เรียบร้อยแล้ว ', 'Apirak bangpuk', '2023-10-30 02:40:18', 'Service'),
(51, 'Developer', 'Application', 'QC Device and report', 'ขอบริการ ปรับเพิ่มเติม Application สำหรับ QC อุปกรณ์ AI Tracker เพื่อสรุปรายงานส่งมอบโครงการ', 'คุณภัทราอร อมรโอภาคุณ  (พอยท์ ไอที คอนซัลทิ่ง จำกัด)', 'ขอบริการ ปรับเพิ่มเติม Application สำหรับ QC อุปกรณ์ AI Tracker เพื่อสรุปรายงานส่งมอบโครงการ ระหว่างวันที่ ....... เดือน .......... พ.ศ. 2566โครงการ :หัวข้อ : ..................................หน่วยงาน : ..................................ผู้รับผิดชอบโครงการ : ..................................', 'ดำเนินการปรับเพิ่มเติม Application สำหรับ QC อุปกรณ์ AI Tracker เรียบร้อยแล้ว ', 'Apirak bangpuk', '2023-10-20 01:43:49', 'Service'),
(52, 'Application', 'Database', 'Edit/Update', 'ขอบริการ อัพเดทรายชื่อผู้รับบริการ (Update) เข้า Application Appsheet เพื่อใช้ในการทำเอกสารส่งมอบงาน QC อุปกรณ์', 'คุณภัทราอร อมรโอภาคุณ  (พอยท์ ไอที คอนซัลทิ่ง จำกัด)', 'ขอบริการ อัพเดทรายชื่อผู้รับบริการ (Update) เข้า Application Appsheet เพื่อใช้ในการทำเอกสารส่งมอบงาน QC อุปกรณ์\r\n\r\nเนื่องจากทาง.............ส่งรายชื่อมาให้เพื่อวางแผนการลงพื้นที่การ QC อุปกรณ์ ', 'ดำเนินการ อัพเดทรายชื่อผู้รับบริการ (Update) เข้า Application Appsheet เพื่อใช้ในการทำเอกสารส่งมอบงาน QC อุปกรณ์ เรียบร้อยแล้ว', 'Apirak bangpuk', '2023-10-20 01:56:03', 'Select'),
(53, 'Emergency', 'Onsite Service', 'QC Device and report', 'ขอบริการ ลงพื้นที่เพื่อปฏิบัติงาน QC อุปกรณ์ (Onsite Service)', 'คุณภัทราอร อมรโอภาคุณ  (พอยท์ ไอที คอนซัลทิ่ง จำกัด)', 'ขอบริการ ลงพื้นที่เพื่อปฏิบัติงาน QC อุปกรณ์ (Onsite Service)\r\nระหว่างวันที่ 19-20 เดือน ตุลาคม 2566 \r\n\r\nโครงการ : โครงการติดตั้งการใช้งานอุปกรณ์ตรวจจับการล้มแบบอัตโนมัติพร้อมกดปุ่มขอความช่วยเหลือในผู้สูงอายุ\r\nหน่วยงาน : \r\nผู้รับผิดชอบ : ', 'ดำเนินการลงพื้นที่เพื่อปฏิบัติงาน QC อุปกรณ์ (Onsite Service) เรียบร้อย', 'Apirak bangpuk', '2023-10-20 04:23:02', 'Service'),
(54, 'Platform (KYD)', 'Emergency', 'Document Report', 'ขอบริการ ร่างสรุปรายงานการ QC อุปกรณ์ สำหรับสรุปการดำเนินงานการลงพื้นที่เพื่อปฏิบัติงาน (Onsite Service) ', 'คุณภัทราอร อมรโอภาคุณ  (พอยท์ ไอที คอนซัลทิ่ง จำกัด)', 'ขอบริการ ร่างสรุปรายงานการ QC อุปกรณ์ สำหรับสรุปการดำเนินงานการลงพื้นที่เพื่อปฏิบัติงาน (Onsite Service) ', 'ดำเนินการ ร่างสรุปรายงานการ QC อุปกรณ์ สำหรับสรุปการดำเนินงานการลงพื้นที่เพื่อปฏิบัติงาน (Onsite Service)  เรียบร้อย', 'Apirak bangpuk', '2023-10-20 04:28:27', 'Service'),
(55, 'Emergency', 'Information ', 'Keep Data', 'ขอบริการ รวบรวมจัดเก็บข้อมูล (Keep Data) จากการลงพื้นที่เพื่อปฏิบัติงาน การ QC อุปกรณ์ ', 'คุณภัทราอร อมรโอภาคุณ  (พอยท์ ไอที คอนซัลทิ่ง จำกัด)', 'ขอบริการ รวบรวมจัดเก็บข้อมูล (Keep Data) จากการลงพื้นที่เพื่อปฏิบัติงาน การ QC อุปกรณ์   โดยประกอบด้วย   การจัดเก็บรูปถาพ  ข้อมูลผู้รับบริการ Update  ข้อมูลแบบประเมิน   ข้อมูลเจ้าหน้าที่ และอื่นๆ เข้าไปยัง Clond Point   เพื่อนำไปใช้งาน ประกอบการจัดทำเอกสารส่งมอบ การปฏิบัติงาน   วันที่ 19/10/2566  โครงการ : โครงการติดตั้งการใช้งานอุปกรณ์ตรวจจับการล้มแบบอัตโนมัติพร้อมกดปุ่มขอความช่วยเหลือในผู้สูงอายุ   ', 'ดำเนินการรวบรวมจัดเก็บข้อมูล (Keep Data) เรียบร้อย', 'Apirak bangpuk', '2023-10-20 04:34:59', 'Service'),
(56, 'Device', 'UAT/Demo', 'Setup/Configuration', 'ขอบริการ จัดเตรียมอุปกรณ์ AI Tracker และ Platform สำหรับ UAT โครงการ ', 'คุณภัทราอร อมรโอภาคุณ  (พอยท์ ไอที คอนซัลทิ่ง จำกัด)', 'ขอบริการ จัดเตรียมอุปกรณ์ AI Tracker และ Platform (ยืม) สำหรับ UAT โครงการ \r\nจำนวน 1 ชุด \r\n\r\nโครกงาร : โครงการติดตั้งการใช้งานอุปกรณ์ตรวจจับการล้มแบบอัตโนมัติพร้อมกดปุ่มขอความช่วยเหลือในผู้สูงอายุ\r\nหน่วยงาน : UTI\r\nผู้รับผิดชอบ : คุณทอม\r\nระยะเวลายืม : 01/11/2556 - 15/11/2566', 'ดำเนินการ ขอบริการ จัดเตรียมอุปกรณ์ AI Tracker และ Platform (ยืม) สำหรับ UAT โครงการ  ', 'Apirak bangpuk', '2023-10-20 04:40:59', 'Select'),
(57, 'Platform (LIS)', 'Meeting Room', 'Document Report', 'ประชุม สรุปการจัดส่งงาน PMS งวดงานแรก (Phase 1)', 'คุณประพัฒน์ จันทร์เกื้อ (PROMs Company)', 'ประชุม สรุปการจัดส่งงาน PMS งวดงานแรก (Phase 1)\r\nประกอบด้วย 3 หัวข้อ\r\n1. Analyzer \r\n2. Notification\r\n3. Dashboard\r\n4. Isue\r\nวันที่  27/10/2023', 'ดำเนินการสรุปการจัดส่งงาน PMS งวดงานแรก (Phase 1)เรียบร้อย', 'Apirak bangpuk', '2023-10-30 02:13:51', 'Service'),
(58, 'Platform (LIS)', 'Design UX/UI Form/Page', 'Editing', 'ขอบริการ แก้ไขหน้า UX/UI ในระบบ PMS ', 'คุณประพัฒน์ จันทร์เกื้อ (PROMs Company)', 'ขอบริการ แก้ไขหน้า UX/UI ในระบบ PMS \r\n1. แก้ไขหน้า Analyzer\r\n2. แก้ไขหน้า .....................................', 'ดำเนินการ แก้ไข UX/UI ในระบบ PMS ในระบบเรียบร้อยแล้ว ', 'Apirak bangpuk', '2023-10-30 02:31:11', 'Service'),
(59, 'Platform (LIS)', 'Design UX/UI Form/Page', 'Update/Insert', 'ขอบริการ เพิ่มเติมหน้า UX/UI ในระบบ PMS ', 'คุณประพัฒน์ จันทร์เกื้อ (PROMs Company)', 'ขอบริการ เพิ่มเติมหน้า UX/UI ในระบบ PMS \r\n1. เพิ่มหน้า Computer สำหรับเก็บข้อมูลเครื่อง Computer เพิ่มเชื่อมต่อกับเครื่องตรวจวิเคราะห์', 'ดำเนินการ เพิ่มเติมหน้า UX/UI ในระบบ PMS ในระบบเรียบร้อยแล้ว ', 'Apirak bangpuk', '2023-10-30 02:35:33', 'Service'),
(60, 'Platform (KYD)', 'Document Report', 'Presentation', 'ขอบริการ ออกแบบแผนนำเสนอ Product Innovation สำหรับนำเสนอลูกค้า', 'คุณภัทราอร อมรโอภาคุณ  (พอยท์ ไอที คอนซัลทิ่ง จำกัด)', 'ขอบริการ ออกแบบแผนนำเสนอ Product Innovation สำหรับนำเสนอลูกค้า\r\nรวบรวม Product ตาม Requiement ของลูกค้า สรุปเนื้อหน้าประกอบด้วย \r\n1.  ภาพรวม\r\n2. ขั้นตอน (Flow)\r\n3. อ้างอิง (ภาพ)', 'ดำเนินการออกแบบแผนนำเสนอ Product Innovation เรียบร้อย', 'Apirak bangpuk', '2023-10-30 02:45:04', 'Service'),
(61, 'Platform (LIS)', 'Document Report', 'Export/Import data', 'ขอบริการ ดึงรายงานในระบบ LIS ', 'คุณภัทราอร อมรโอภาคุณ  (พอยท์ ไอที คอนซัลทิ่ง จำกัด)', 'ขอบริการ ดึงรายงานในระบบ LIS เพื่อนำมาใช้ในการออกแบบพัฒนาระบบ Dev ให้ทางพี่เบียร์ โดยมีหัวข้อดังนี้ \r\n1. รายงาน Organization\r\n2. รายงาน Analyzer\r\n3. รายงาน Laboratory', 'ดำเนินการ ดึงรายงานในระบบ LIS เรียบร้อยแล้ว', 'Apirak bangpuk', '2023-10-30 02:49:13', 'Service'),
(62, 'Platform (KYD)', 'Document Report', 'Presentation', 'ขอบริการ ออกแบบแผนนำเสนอ 24x7 Care Center สำหรับ ส่งมอบโครงการ', 'รองศาสตราจารย์ วิรุฬห์ ศรีบริรักษ์ (บริษัท เซนโกรท จำกัด - Zanegrowth Smart City Thailand)', 'ขอบริการ ออกแบบแผนนำเสนอ 24x7 Care Center สำหรับ ส่งมอบโครงการ\r\nประกอบด้วย \r\n\r\n1. ขั้นตอนระบบการทำงาน ของ Partner\r\n2. ภาพอ้างอิง การดำเนินงาน\r\n3. สรุปความพึงพอใจในการให้บริการ', ' ดำเนินการออกแบบแผนนำเสนอ 24x7 Care Center สำหรับ ส่งมอบโครงการเรียบร้อยแล้ว', 'Apirak bangpuk', '2023-10-30 02:56:52', 'Service'),
(63, 'Point it', 'Document Report', 'Presentation', 'ขอบริการ ออกแบบแผนนำเสนอ Solution Point Product สำหรับจัดแสดงที่บูท', 'คุณภัทราอร อมรโอภาคุณ  (พอยท์ ไอที คอนซัลทิ่ง จำกัด)', 'สำหรับออกงานจัดบูท ', 'ขอบริการ ออกแบบแผนนำเสนอ Solution Point Product สำหรับจัดแสดงที่บูท', 'Apirak bangpuk', '2023-11-03 02:29:03', 'Service'),
(64, 'Device', 'UAT/Demo', 'Setup/Configuration', 'ขอบริการ ทดสอบฟักง์ชั่นการใช้งานระบบ PMS Demo (Tester/UAT)', 'คุณภัทราอร อมรโอภาคุณ  (พอยท์ ไอที คอนซัลทิ่ง จำกัด)', 'ขอบริการ ทดสอบฟักง์ชั่นการใช้งานระบบ PMS Demo (Tester/UAT)', 'ดำเนินการ ทดสอบฟักง์ชั่นการใช้งานระบบ PMS Demo (Tester/UAT) เรียบร้อย ', 'Apirak bangpuk', '2023-11-03 02:00:24', 'Select'),
(65, 'Platform (LIS)', 'Single Test', 'Setup/Configuration', ' แจ้งปัญหาระบบ Nexlab ยกเลิกการใช้งาน Single test แล้วยังแสดงให้เลือก', 'คุณภัทราอร อมรโอภาคุณ  (พอยท์ ไอที คอนซัลทิ่ง จำกัด)', 'ไม่ได้ Un Active', 'ดำเนินการ Setup/Configuration Not Active Single Test สามารถใช้งานได้ปกติ', 'Apirak bangpuk', '2023-11-03 02:06:36', 'Incident'),
(66, 'Point it', 'Document Report', 'Presentation', 'ขอบริการ จัดทำสรุปรายงานการทดสอบระบบ PMS (Tester/ Uat Report)', 'คุณภัทราอร อมรโอภาคุณ  (พอยท์ ไอที คอนซัลทิ่ง จำกัด)', 'สรุปรายงาน', ' ดำเนินการ จัดทำสรุปรายงานการทดสอบระบบ PMS (Tester/ Uat Report) เรียบร้อย ', 'Apirak bangpuk', '2023-11-03 02:30:08', 'Service'),
(67, 'Event', 'Booth', 'Stand by', 'ขอบริการ ลงพื้นที่ Stand by นำเสนอ Solution pointit product ', 'คุณภัทราอร อมรโอภาคุณ  (พอยท์ ไอที คอนซัลทิ่ง จำกัด)', 'ขอบริการ ลงพื้นที่ Stand by นำเสนอ Solution pointit product ', 'ดำเนินการ ลงพื้นที่ Stand by นำเสนอ Solution pointit product  เรียบร้อย', 'Apirak bangpuk', '2023-11-03 04:04:46', 'Service');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL COMMENT 'รหัส',
  `contact_fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ชื่อ-สกุล',
  `contact_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ตำแหน่ง',
  `contact_agency` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'หน่วยงาน',
  `contact_tel` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '้เบอร',
  `contact_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'อิเมล',
  `contact_detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'รายละเอียดบริษัทและธุรกิจ',
  `contact_company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'บริษัท',
  `contact_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ลูกค้า,พนักงาน,หุ่นส่วน',
  `contact_crt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'วันที่สร้าง',
  `contact_staff` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ผู้สร้าง',
  `contact_province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'จังหวัด'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_fullname`, `contact_position`, `contact_agency`, `contact_tel`, `contact_email`, `contact_detail`, `contact_company`, `contact_type`, `contact_crt`, `contact_staff`, `contact_province`) VALUES
(10, 'นายตรีลุพธ์ ธูปกระจ่าง', 'นายกเทศบาลนครนครรังสิต', 'เทศบาลนครนครรังสิต', '(025) 676-0000', 'rangsitcity@gmail.com', 'เทศบาลนครนครรังสิต เลขที่ 151 ถนนรังสิต-ปทุมธานี ตำบลประชาธิปัตย์ อำเภอธัญบุรี จังหวัดปทุมธานี 12130 0-2567-6000 02-567-6000 ต่อ 131', 'เทศบาลนครนครรังสิต', 'Customer', '2023-09-02 06:09:23', 'Apirak bangpuk', '36f7051a199d39d46449e5f50920e1a5cc007317'),
(12, 'นายสิรวิชฐ์ อำไพวงษ์', 'นายกเทศบาลตาบลบ่อวิน', 'องค์การบริหารส่วนตำบลบ่อวิน', '(038) 345-918_', 'admin@bowin.go.th', 'องค์การบริหารส่วนตำบลบ่อวิน เลขที่ 1 หมู่ที่ 6 ตำบลบ่อวิน อำเภอศรีราชา จังหวัดชลบุรี 20230 โทรศัพท์ 0-3834-5949 ,0-3834-5918 โทรสาร 0-3834-6116 สายด่วนร้องทุกข์ 24 ชม. 08-1949-7771', 'องค์การบริหารส่วนตำบลบ่อวิน', 'Customer', '2023-09-02 06:11:27', 'Apirak bangpuk', '8d67df5e76466cb0e3e61eef70e9ef1d0c8f1e0e'),
(13, 'อ.ชะนวนทอง ธนสุกาญจน์', 'คณบดีคณะสาธารณสุขศาสตร์ มหาวิทยาลัยมหิดล', 'คณะสาธารณสุขศาสตร์ มหาวิทยาลัยมหิดล', '(081) 823-7880', 'chanuantong.tan@mahidol.ac.th', '420/1 ถนน ราชวิถี แขวง ทุ่งพญาไท เขตราชเทวี กรุงเทพมหานคร 10400\r\nคณะสาธารณสุขศาสตร์ มหาวิทยาลัยมหิดล', 'มหาวิทยาลัยมหิดล', 'Customer', '2023-09-02 11:07:49', 'Apirak bangpuk', 'd5d600b3ca994884c37c8fb8bdc5501ffd5e932f'),
(14, 'คุณชาคริยา นาคมณี', 'Customer', 'บริษัท เอเชี่ยน เอ็กซ์ฟิดิชั่น จำกัด', '(090) 317-7256', 'Non@non.co.th', '9/1 อาคารมูลนิธิสนธิอิสลาม ชั้น 4 ห้อง 402 ถนนอรุณอมรินทร์ แขวงอรุณอมรินทร์ เขตบางกอกน้อย กรุงเทพมหานคร\r\nบริษัท เอเชี่ยน เอ็กซ์ฟิดิชั่น จำกัด', 'บริษัท เอเชี่ยน เอ็กซ์ฟิดิชั่น จำกัด', 'Customer', '2023-09-02 11:19:04', 'Apirak bangpuk', 'd5d600b3ca994884c37c8fb8bdc5501ffd5e932f'),
(15, 'Pakorn Kulsupakorn', 'Customer', 'สถาบันส่งเสริมการสอนวิทยาศาสตร์และเทคโนโลยี (สสวท.)', '(086) 680-4500', 'pkuls@ipst.ac.th', 'เลขที่ 924 ถนนสุขุมวิท แขวงพระโขนง เขตคลองเตย กรุงเทพมหานคร 10110\r\nสถาบันส่งเสริมการสอนวิทยาศาสตร์และเทคโนโลยี (สสวท.)', 'สถาบันส่งเสริมการสอนวิทยาศาสตร์และเทคโนโลยี (สสวท.)', 'Customer', '2023-09-02 11:30:03', 'Apirak bangpuk', 'd5d600b3ca994884c37c8fb8bdc5501ffd5e932f'),
(16, 'รองศาสตราจารย์ วิรุฬห์ ศรีบริรักษ์', 'หัวหน้าโครงการความร่วมมือนวัตกรรมเมืองอัจฉริยะ กิน อยู่ ดี. Platform', 'มหาวิทยาลัยบูรพา', '(086) 139-8887', 'wiroon@eng.buu.ac.th', 'บริษัท เซนโกรท จำกัด\r\n15/133 หมู่ที่ 5\r\nตำบลห้วยกะปิ อำเภอเมืองชลบุรี จังหวัดชลบุรี 20130\r\nเว็บไซต์: https://zanegrowth.com/\r\nKIN-YOO-DEE PLATFORM', 'บริษัท เซนโกรท จำกัด - Zanegrowth Smart City Thailand', 'Customer', '2023-09-04 02:35:26', 'Apirak bangpuk', 'ชลบุรี'),
(17, 'คุณภานุวัฒน์ พรหมศิริ (ตั้ม)', 'Executive Director', 'มหาวิทยาลัยบูรพา', '(063) 249-2845', 'panuwat@zanegrowth.com', 'บริษัท เซนโกรท จำกัด\r\n15/133 หมู่ที่ 5\r\nตำบลห้วยกะปิ อำเภอเมืองชลบุรี จังหวัดชลบุรี 20130\r\nเว็บไซต์: https://zanegrowth.com/\r\nKIN-YOO-DEE PLATFORM', 'บริษัท เซนโกรท จำกัด - Zanegrowth Smart City Thailand', 'Customer', '2023-09-04 02:35:26', 'Apirak bangpuk', 'ชลบุรี'),
(18, 'คุณประพัฒน์ จันทร์เกื้อ', 'หัวหน้าโครงการ LIS (LAOS)', 'PROMs Company', '(081) 111-1111', 'Non1@zanegrowth.com', 'PROJECT MANAGEMENT OFFICE SERVICE COMPANY LIMITED', 'PROMs Company', 'Customer', '2023-09-22 02:49:50', 'Apirak bangpuk', 'กรุงเทพมหานคร'),
(19, 'คุณธีรชาติ ติยพงศ์พัฒนา', 'IT Service Manager', 'Service SolutionTeam', '(081) 983-8998', 'theerachart@pointit.co.th', '19 ซอย สุภาพงษ์ 1 แยก 6 แขวงหนองบอน เขต ประเวศ กรุงเทพมหานคร 10250', 'พอยท์ ไอที คอนซัลทิ่ง จำกัด', 'Staff', '2023-09-04 02:49:18', 'Apirak bangpuk', 'กรุงเทพมหานคร'),
(20, 'คุณผาณิต เผ่าพันธ์', 'Executive Director', 'พอยท์ ไอที คอนซัลทิ่ง จำกัด', '(086) 995-8396', 'Panit@pointit.co.th', '19 ซอย สุภาพงษ์ 1 แยก 6 แขวงหนองบอน เขต ประเวศ กรุงเทพมหานคร 10250', 'พอยท์ ไอที คอนซัลทิ่ง จำกัด', 'Staff', '2023-09-04 02:43:12', 'Apirak bangpuk', 'กรุงเทพมหานคร'),
(21, 'คุณบุลากร พัวพันธุ์', 'Executive Director', 'พอยท์ ไอที คอนซัลทิ่ง จำกัด', '(081) 360-2828', 'Bulakorn@pointit.co.th', '19 ซอย สุภาพงษ์ 1 แยก 6 แขวงหนองบอน เขต ประเวศ กรุงเทพมหานคร 10250', 'พอยท์ ไอที คอนซัลทิ่ง จำกัด', 'Staff', '2023-09-04 02:43:12', 'Apirak bangpuk', 'กรุงเทพมหานคร'),
(22, 'คุณพิสุทธ์ วงศ์โสภา', 'Tecnical Support', 'Service SolutionTeam', '(091) 545-0988', 'Service@pointit.co.th', '19 ซอย สุภาพงษ์ 1 แยก 6 แขวงหนองบอน เขต ประเวศ กรุงเทพมหานคร 10250', 'พอยท์ ไอที คอนซัลทิ่ง จำกัด', 'Staff', '2023-09-04 02:49:19', 'Apirak bangpuk', 'กรุงเทพมหานคร'),
(23, 'คุณธนาคม อ่องสถาน', 'Tecnical Support', 'Service SolutionTeam', '(089) 777-1155', 'Service@pointit.co.th', '19 ซอย สุภาพงษ์ 1 แยก 6 แขวงหนองบอน เขต ประเวศ กรุงเทพมหานคร 10250', 'พอยท์ ไอที คอนซัลทิ่ง จำกัด', 'Staff', '2023-09-04 02:49:22', 'Apirak bangpuk', 'กรุงเทพมหานคร'),
(24, 'คุณสุภาภรณ์ สมสงวน', 'Document Administrator', 'Innovation Team', '(082) 790-2068', 'innovation@pointit.co.th', '19 ซอย สุภาพงษ์ 1 แยก 6 แขวงหนองบอน เขต ประเวศ กรุงเทพมหานคร 10250', 'พอยท์ ไอที คอนซัลทิ่ง จำกัด', 'Staff', '2023-09-04 02:49:25', 'Apirak bangpuk', 'กรุงเทพมหานคร'),
(25, 'นายศราวุธ กล้วยจำนงค์', 'นายกเทศบาลตำบลบางจะเกร็ง', 'เทศบาลตำบลบางจะเกร็ง', '(081) 111-1112', 'Non2@gmail.co.th', '3/4 หมู่ที่ 2 ถนนราชญาติรักษา ตำบลบางจะเกร็ง อำเภอเมืองสมุทรสงคราม จังหวัดสมุทรสงคราม 75000\nเทศบาลตำบลบางจะเกร็ง จังหวัดสมุทรสงคราม', 'เทศบาลตำบลบางจะเกร็ง', 'Customer', '2023-09-04 03:28:22', 'Apirak bangpuk', 'สมุทรสงคราม'),
(26, 'คุณพีรเดช ลออธรรม', 'Software Architect Engineer', 'มหาวิทยาลัยบูรพา', '(085) 557-1556', 'peeradach@zanegrowth.com', 'บริษัท เซนโกรท จำกัด\r\n15/133 หมู่ที่ 5\r\nตำบลห้วยกะปิ อำเภอเมืองชลบุรี จังหวัดชลบุรี 20130\r\nเว็บไซต์: https://zanegrowth.com/\r\nKIN-YOO-DEE PLATFORM', 'บริษัท เซนโกรท จำกัด - Zanegrowth Smart City Thailand', 'Partner', '2023-09-04 02:35:26', 'Apirak bangpuk', 'ชลบุรี'),
(27, 'คุณโอฬาร สินธุพันธุ์', 'Sale Manager', 'Sale Maketing', '(085) 151-1551', 'Sintupha@pointit.co.th', '223/16 หมู่บ้าน เซนสิริทาวน์ หมู่ที่ 1ซอย พรประภานิมิตร 17 ถนนแยกมิตรกมล ตำบลหนองปรือ อำเภอบางละมุง จ.ชลบุรี 20150', 'บริษัท ซูม อินฟอร์เมชั่น ซิสเต็ม จํากัด', 'Sale', '2023-09-04 09:01:38', 'Apirak bangpuk', 'กรุงเทพมหานคร'),
(28, 'คุณปวิชชา เกตุคง', 'Sale Maketing', 'Sale', '(082) 692-9497', 'pawitcha@pointit.co.th', '19 ซ.สุภาพงษ์ 1 แยก 6 แขวงหนองบอน เขตประเวศ กรุงเทพมหานคร 10250\r\nบริษัท พอยท์ ไอที คอนซัลทิ่ง จำกัด', 'พอยท์ ไอที คอนซัลทิ่ง จำกัด', 'Customer', '2023-09-04 05:31:04', 'Apirak bangpuk', 'd5d600b3ca994884c37c8fb8bdc5501ffd5e932f'),
(29, 'พล.ต.ท.ดร.เสนิต สำราญสำรวจกิจ', 'ผู้บัญชาการ', 'โรงเรียนนายร้อยสามพาน', '(081) 111-1113', 'Non3@gmail.com', 'โรงเรียนนายร้อยตำรวจ\r\n90 หมู่ 7 ตำบลสามพราน\r\nอำเภอสามพราน จังหวัดนครปฐม 73110\r\nโทรศัพท์ +663-431-2009 หมายเลขโทรสาร +663-431-1106', 'โรงเรียนนายร้อยสามพาน', 'Customer', '2023-09-04 06:07:28', 'Apirak bangpuk', 'นครปฐม'),
(30, 'คุณภัทราอร อมรโอภาคุณ ', 'Sale Maketing', 'Innovation Team', '(061) 952-2111', 'phattraorn@pointit.co.th', 'บริษัท พอยท์ ไอที คอนซัลทิ่ง จำกัด ซอย สุภาพงษ์ 1 แยก 6 แขวงหนองบอน เขต ประเวศ กรุงเทพมหานคร', 'พอยท์ ไอที คอนซัลทิ่ง จำกัด', 'Sale', '2023-09-04 06:38:36', 'Apirak bangpuk', 'd5d600b3ca994884c37c8fb8bdc5501ffd5e932f'),
(31, 'นายเฉลิมศักดิ์ มณีศรี', 'นายกเทศบาลเมืองป่าตอง ', 'เทศบาลเมืองป่าตอง ', '(076) 344-275_', 'patongcity.pr@gmail.com', 'เลขที่ 12/3 ถนนราชปาทานุสรณ์ ตำบลป่าตอง อำเภอกะทู้ จังหวัดภูเก็ต 83150\r\nโทร. 0 7634 4275 แฟกซ์. 0 7634 4255\r\nE-mail : patongcity.pr@gmail.com', 'เทศบาลเมืองป่าตอง ', 'Customer', '2023-09-04 07:00:00', 'Apirak bangpuk', 'ภูเก็ต'),
(32, 'นายถวิล โพธิบัวทอง', 'นายกเทศมนตรีเมืองมาบตาพุด', 'เทศมนตรีเมืองมาบตาพุด', '(063) 919-2828', 'admin@mtp.go.th', '9 ถนน เมืองใหม่มาบตาพุด ตำบล ห้วยโป่ง อำเภอเมืองระยอง ระยอง 21150', 'เทศมนตรีเมืองมาบตาพุด', 'Customer', '2023-09-04 07:07:41', 'Apirak bangpuk', 'ระยอง'),
(33, 'พญ.ฤทัย วรรธนวินิจ', 'ผู้อำนวยการโรงพยาบาลอุดรธานี', 'โรงพยาบาลอุดรธานี', '(042) 243-364_', 'udh41000@gmail.com', 'เลขที่ 33 ถ.เพาะนิยม ต.หมากแข้ง อำเภอเมืองอุดรธานี จังหวัดอุดรธานี 41000\r\n', 'โรงพยาบาลอุดรธานี', 'Customer', '2023-09-04 08:44:15', 'Apirak bangpuk', 'อุดรธานี'),
(34, 'คุณตรีเทศ หะหวัง', 'เจ้าหน้าที่ส่วนบริการเสริมโทรศัพท์เคลื่อนที่ (สคส.)', 'บริษัท โทรคมนาคมแห่งชาติ จำกัด (มหาชน)', '(089) 482-2387', '1888@ntplc.co.th', '99 ถนนแจ้งวัฒนะ แขวงทุ่งสองห้อง เขตหลักสี่ กรุงเทพ 10210\r\n', 'บริษัท โทรคมนาคมแห่งชาติ จำกัด (มหาชน)', 'Customer', '2023-09-04 08:47:55', 'Apirak bangpuk', 'กรุงเทพมหานคร'),
(35, 'คุณสร้างรัฐ หัตถวงษ์', 'Chief Executive Officer', 'INSPIRE COMMUNICATIONS CO., LTD.', '(061) 515-2929', 'srangrath@inspirecomm.co.th', '', 'INSPIRE COMMUNICATIONS CO., LTD.', 'Customer', '2023-09-04 08:57:50', 'Apirak bangpuk', 'สมุทรปราการ'),
(36, 'คุณสถาพร ภาสุรเลิศสกุล', 'Assistant Medical', '-', '(089) 690-9716', 'satapornpa@gmail.com', '-', '-', 'Partner', '2023-09-22 06:57:02', 'Apirak bangpuk', 'กรุงเทพมหานคร'),
(37, 'อาจารย์ณรงค์', 'อาจารย์', 'ญานิศา', '(000) 000-0000', 'yanisa@pointit.co.th', '', 'มหาวิทยาลัยขอนแก่น', 'Customer', '2023-09-22 08:31:38', 'Panit', '5e10c1870d0fa97ede5923e385e8a12ce19fc4d3'),
(38, 'พี่ต้น', 'Technical Support Print ', 'Zebra Technologies', '(082) 789-6152', 'Zebra@zebra.com', ' ZEBRA Thailand Official', 'Zebra Technologies', 'Partner', '2023-09-27 02:12:38', 'Apirak bangpuk', 'กรุงเทพมหานคร');

-- --------------------------------------------------------

--
-- Table structure for table `doc`
--

CREATE TABLE `doc` (
  `doc_id` int(11) NOT NULL COMMENT 'รหัส',
  `folder_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'เลือกโฟลเดอร์ที่ต้องการเก็บข้อมูล',
  `doc_crt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'วันที่สร้าง',
  `doc_staff` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ผู้สร้าง',
  `project_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'โปรเจค',
  `task_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_type` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ประเภอเอกสาร',
  `doc_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ชื่อเอกสาร',
  `doc_link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'แนบลิงค์',
  `doc_remark` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'รายละเอียดเพิ่มเติม',
  `doc_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'สถานะเอกสาร',
  `file_upfile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ไฟล์อัพโหลด'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doc`
--

INSERT INTO `doc` (`doc_id`, `folder_name`, `doc_crt`, `doc_staff`, `project_name`, `task_name`, `doc_type`, `doc_name`, `doc_link`, `doc_remark`, `doc_status`, `file_upfile`) VALUES
(38, 'Apirak-Point IT', '2023-09-27 03:29:56', 'Apirak bangpuk', 'POINT IT', '', 'Word', 'แบบฟอร์ม_PointIT_เบิกค่าเดินทางออกปฏิบติงานนอกสถานที่_(พี่เพชร)', 'https://drive.google.com/drive/u/0/folders/1uhc9Ya4rkBitWT99RXJnuVlDZsm2xTjm', 'แบบฟอร์ม_PointIT_เบิกค่าเดินทางออกปฏิบติงานนอกสถานที่_(พี่เพชร)', 'Complated', 'แบบฟอร์ม_Pointit_เบิกค่าเดินทางออกปฏิบติงานนอกสถานที่_พี่เพรช.xlsx'),
(39, 'Apirak-Point IT', '2023-09-27 03:37:34', 'Apirak bangpuk', 'POINT IT', '', 'Word', 'แบบฟอร์ม_PointIT_เบิกค่าเดินทางออกปฏิบติงานนอกสถานที่_(พี่ซีน)', 'https://drive.google.com/drive/u/0/folders/1uhc9Ya4rkBitWT99RXJnuVlDZsm2xTjm', 'แบบฟอร์ม_PointIT_เบิกค่าเดินทางออกปฏิบติงานนอกสถานที่_(พี่ซีน)', 'Complated', 'แบบฟอร์ม_Pointit_เบิกค่าเดินทางออกปฏิบติงานนอกสถานที่_(พี่ซีน).xlsx'),
(40, 'Apirak-LAOS LIS', '2023-10-02 02:25:46', 'Apirak bangpuk', 'โครงการ LAOS LIS (Nexlab)', '', 'PDF', 'รายงานการปฏิบัติงานนอกสถานที่ (Onsite LAOS LISM 200923)', 'https://docs.google.com/document/d/1Yxst7E0R6OUL1WtNvPfjGBXQ_UPmLeVo7mXBm37JcMU/edit', 'รายงานการปฏิบัติงานนอกสถานที่ (Onsite LAOS LISM 200923)', 'Complated', 'Onsite_Laos(Chai)_22092556.pdf'),
(41, 'Apirak-Point IT', '2023-10-20 09:43:11', 'Apirak bangpuk', 'การจ้างพัฒนาระบบการจัดซื้อจัดจ้าง กบข. ', '', 'PDF', '01 - กบข. Project Man-days', '', 'บนเมฆ', 'Complated', '01 - กบข. Project Man-days.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `folder_doc`
--

CREATE TABLE `folder_doc` (
  `folder_id` int(11) NOT NULL COMMENT 'รหัส',
  `folder_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ชื่อโฟร์เดอร์',
  `folder_crt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'วันที่สร้าง',
  `folder_staff` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ผู้สร้าง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `folder_doc`
--

INSERT INTO `folder_doc` (`folder_id`, `folder_name`, `folder_crt`, `folder_staff`) VALUES
(18, 'Apirak-Point IT', '2023-09-26 13:26:12', 'Apirak bangpuk'),
(19, 'Apirak-LAOS LIS', '2023-10-02 02:08:16', 'Apirak bangpuk');

-- --------------------------------------------------------

--
-- Table structure for table `pipeline`
--

CREATE TABLE `pipeline` (
  `pip_id` int(11) NOT NULL COMMENT 'เลขไอดีของ Project',
  `project_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ชื่อโครงการ',
  `project_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ชื่อผลิตภัณฑ์',
  `project_brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'แบรน์',
  `pip_vat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Vat',
  `pip_salen` int(11) NOT NULL COMMENT 'ราคาขายไม่รวมภาษี Amount/Manaul',
  `pip_sale` int(11) NOT NULL COMMENT 'ราคาขายรวมภาษี',
  `pip_costn` int(11) NOT NULL COMMENT 'ราคาต้นทุนไม่รวมภาษี Amount/Manaul',
  `pip_cost` int(11) NOT NULL COMMENT 'ราคาทุนรวมภาษี',
  `pip_gp` int(11) NOT NULL COMMENT 'ผลกำไร',
  `pip_gp2` int(11) NOT NULL COMMENT 'ผลกำไร (%)',
  `pip_p` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ประมาณการโครงการ  Dropdown/Manaul',
  `contact_id` int(11) NOT NULL COMMENT 'Contact',
  `pip_r` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'เพิ่มเติม',
  `pip_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'วันเดือนปีที่สร้าง',
  `pip_staff` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ผู้สร้าง',
  `pip_ess` int(11) NOT NULL COMMENT 'ประมาณการขาย',
  `pip_esc` int(11) NOT NULL COMMENT 'ประมาณการต้นทุน',
  `pip_esp` int(11) NOT NULL COMMENT 'ประมาณผลกำไร',
  `date_start` date NOT NULL COMMENT 'วันเริ่มโครงการ',
  `date_end` date NOT NULL COMMENT 'วันสิ้นสุดโครงการ',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Win,Loss',
  `con_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'เลขที่สัญญา'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pipeline`
--

INSERT INTO `pipeline` (`pip_id`, `project_name`, `project_product`, `project_brand`, `pip_vat`, `pip_salen`, `pip_sale`, `pip_costn`, `pip_cost`, `pip_gp`, `pip_gp2`, `pip_p`, `contact_id`, `pip_r`, `pip_date`, `pip_staff`, `pip_ess`, `pip_esc`, `pip_esp`, `date_start`, `date_end`, `status`, `con_number`) VALUES
(6, 'ระบบเฝ้าระวังเหตุฉุกเฉิน และเฝ้าระวังค่าสุขภาพทางไกล (เทศบาลนครนครรังสิต)', 'Emergency Platform', 'KYD', '7', 500000, 535000, 300000, 321000, 200000, 40, '100', 10, 'ระบบเฝ้าระวังเหตุฉุกเฉิน และเฝ้าระวังค่าสุขภาพทางไกลโดย เจ้าหน้าที่ประจำศูนย์command centerเทศบาลนครรังสิต  POC อุปกรณ์จำนวน 15 ตัว ระยะเวลา 01-04-56 ถึง 30-09-56 \r\n', '2023-09-04 06:51:06', 'Apirak bangpuk', 500000, 300000, 200000, '2023-05-01', '2023-09-30', 'On-Hold', 'TH20230501'),
(7, 'โครงการ นวัตกรรมบริการชุมชนเพื่อควบคุมการแพร่ระบาดเชื้อไวรัสโคโรน่า 2019 ย่านนวัตกรรมการแพทย์โยธี', 'Health Care', 'KYD', '7', 1457480, 1559504, 600000, 642000, 857480, 59, '100', 13, 'โครงการ นวัตกรรมบริการชุมชนเพื่อควบคุมการแพร่ระบาดเชื้อไวรัสโคโรน่า 2019 ย่านนวัตกรรมการแพทย์โยธี', '2023-09-04 06:39:33', 'Apirak bangpuk', 1457480, 600000, 857480, '2022-02-01', '2023-12-31', 'Done', 'QT-000000809'),
(8, 'ระบบเฝ้าระวังเหตุฉุกเฉิน และเฝ้าระวังค่าสุขภาพทางไกล (เทศบาลตำบลบางจะเกร็ง จังหวัดสมุทรสงคราม)', 'Emergency Platform', 'KYD', '7', 2220000, 2375400, 300000, 321000, 1920000, 86, '10', 25, 'ระบบเฝ้าระวังเหตุฉุกเฉิน และเฝ้าระวังค่าสุขภาพทางไกลโดย เจ้าหน้าที่ประจำศูนย์command centerเทศบาลนครรังสิต  POC อุปกรณ์จำนวน 15 ตัว ระยะเวลา 01-04-56 ถึง 30-09-56 \r\n', '2023-09-04 06:53:19', 'Apirak bangpuk', 222000, 30000, 192000, '2023-01-02', '2023-12-30', 'Wiating for approve', ''),
(9, 'ติดตั้งระบบ Access Control (Aiface) ร่าง TOR (สถาบันสุขภาพจิต)', 'Facescan', 'Aiface', '7', 182700, 195489, 100000, 107000, 82700, 45, '100', 14, 'Lost ติดตั้งระบบ Access Control (Aiface) ร่าง TOR (สถาบันสุขภาพจิต) Lost เนื่องจากลูกค้าเปลี่ยนรูปแบบการใช้เปฌนแบบที่ไม่ใช่ Facescan', '2023-09-02 11:21:36', 'Apirak bangpuk', 182700, 100000, 82700, '2023-02-28', '2023-12-31', 'Done', ''),
(10, 'โครงการซื้อระบบ Access Control', 'Facescan', 'Aiface', '7', 136449, 146000, 100000, 107000, 36449, 27, '100', 14, 'โครงการซื้อระบบ Access Control ติดตั้งระบบ Access Control ที่อาคารชั่วคราว ยูนิตเลขที่ 903-904 ชั้น 9 อาคารสิริภิญโญ 475 ถนนศรีอยุธยา แขวงถนนพญาไท เขตราชเทวี กรุงเทพฯ\r\nชุดอุปกรณ์ ZK 4 Set', '2023-09-02 11:32:35', 'Apirak bangpuk', 136449, 100000, 36449, '2023-01-27', '2023-02-03', 'Done', 'ศธ 5305.2/468'),
(11, 'โครงการสร้างแผนดูแลผู้สูงอายุที่อยู่บ้านเพียงลำพังด้วยอุปกรณ์ iOT ในการดูแลของ อปท', 'Saijai Platform', 'Saijai', '7', 5000000, 5350000, 100000, 107000, 4900000, 98, '10', 28, 'โครงการสร้างแผนดูแลผู้สูงอายุที่อยู่บ้านเพียงลำพังด้วยอุปกรณ์ iOT ในการดูแลของ อปท นำเสนอนโยบายดูแลประชาชนด้วย โครงการดูแลผู้สูงอายุที่อยู่บ้านเพียงลำพัง เป็นการนำเสนอให้กับทางคุณสุดารัตน์ เกยุราพันธ์ หัวพรรคไทยสร้างชาติ เพื่อนำไปเป็นแผนในการดูแลผู้สูงอาย', '2023-09-04 05:33:59', 'Apirak bangpuk', 500000, 10000, 490000, '2023-12-03', '2023-03-11', 'Wiating for approve', ''),
(12, 'โครงการพัฒนาความร่วมมือนวัตกรรมเมืองอัจฉริยะความร่วมมือระหว่างเกาหลีและไทยในด้านระบบชาญฉลาดสำหรับการรักษาความปลอดภัย', 'Research Project', 'Global Fund Thai-Korea', '7', 4500000, 4815000, 200000, 214000, 4300000, 96, '100', 29, 'ภายใต้แผนโครงการพัฒนาเครือข่ายความร่วมมือนานาชาติเพื่อการพัฒนา ววน. ของประเทศโปรแกรม 16 ปฏิรูประบบการอุดมศึกษา วิทยาศาสตร์ วิจัย และนวตกรรม สัญญาเลขที่ C16F640358\r\nEnterprise Team C16F640358 งบปี 2565 \r\n(Zoom , PSU)', '2023-09-04 06:11:27', 'Apirak bangpuk', 4500000, 200000, 4300000, '2022-10-03', '2022-10-03', 'Done', 'C16F640358'),
(13, 'โครงการค่าเช่าใช้ชุดเฝ้าระวังเหตุฉุกเฉินการล้มในผู้สูงอายุภายในบ้านและภายนอกบ้านพร้อมระบบแพลตฟอร์มเฝ้าระวังเหตุฉุกเฉินในผู้สูงอายุ ระยะเวลา 1 ปี ', 'Emergency Platform', 'KYD', '7', 2400000, 2568000, 500000, 535000, 1900000, 79, '10', 30, 'โครงการค่าเช่าใช้ชุดเฝ้าระวังเหตุฉุกเฉินการล้มในผู้สูงอายุภายในบ้านและภายนอกบ้านพร้อมระบบแพลตฟอร์มเฝ้าระวังเหตุฉุกเฉินในผู้สูงอายุ ระยะเวลา 1 ปี \r\n\r\nรอประเมินจากการ POC 3 เดือน ทำงบปี 67  (300 ชุด)', '2023-09-04 06:42:40', 'Apirak bangpuk', 240000, 50000, 190000, '2023-02-23', '2023-12-30', 'Wiating for approve', ''),
(14, 'ระบบเฝ้าระวังเหตุฉุกเฉินตรวจจับการล้มในผู้สูงอายุภายในบ้านและภายนอกบ้าน (Emergency Monitoring) เทศบาลเมืองป่าตอง', 'Emergency Monitoring', 'KYD', '7', 2000000, 2140000, 0, 0, 0, 0, 'Select', 31, 'ระบบเฝ้าระวังเหตุฉุกเฉินตรวจจับการล้มในผู้สูงอายุภายในบ้านและภายนอกบ้าน (Emergency Monitoring) เทศบาลเมืองป่าตอง\r\n--- Pending - รอ CCR ขึ้นโครงการก่อน กลางปี 66 ---\r\nhttps://drive.google.com/drive/u/0/folders/1j8k246eiv1HM-Z9lVBXZu8wLbLkTbURZ', '2023-09-04 07:04:42', 'Apirak bangpuk', 0, 0, 0, '0000-00-00', '0000-00-00', 'Wiating for approve', ''),
(15, 'โครงการเช่าใช้อุปกรณ์และระบบแพลตฟอร์มเฝ้าระวังเหตุฉุกเฉินการล้มในผู้สูงอายุภายในบ้านและภายนอกบ้าน (เทศบาลเมืองมาบตาพุด)', 'Emergency Monitoring', 'KYD', '7', 1519200, 1625544, 0, 0, 0, 0, '100', 0, '            เพื่อลดปัญหาการพลัดตกหกล้มในผู้สูงอายุ ที่เพิ่มขึ้นอย่างต่อเนื่องในทุกปี ซึ่งทางนายกเทศบาลเมืองมาบตาพุด ได้เล็งเห็นความสำคัญของการดูแลสุขภาพ และการบริการ ให้เป็นไปตาม แผนยุทธศาสตร์การพัฒนาของทางเทศบาลเมืองมาบตาพุด และนโยบายของท่านนายกด้านสวัสด', '2023-09-04 07:09:33', 'Apirak bangpuk', 1519200, 0, 0, '0000-00-00', '0000-00-00', 'Done', ''),
(16, 'จัดซื้อแผ่นเก็บเลือดแบบ 100 ชิ้นต่อกล่อง และ เข็มเจาะเลือดปลายนิ้วแบบ 200 ชิ้นต่อกล่อง', 'Blood collection plate', 'AccuCHEK', '7', 0, 0, 0, 0, 0, 0, 'Select', 13, '', '2023-09-04 08:33:13', 'Apirak bangpuk', 0, 0, 0, '2023-05-10', '0000-00-00', 'Wiating for approve', 'QT-000000809'),
(17, 'เช่าใช้อุปกรณ์เพื่อจัดตั้งศูนย์ปฏิบัติการชั่วคราว (ศปก.สตม.)  APEC 2022 (เก็บเงินเรียบร้อยแล้ว)', 'Rent office equipment', 'Rent office equipment', '7', 1044133, 1117222, 0, 0, 0, 0, '100', 30, 'Contact : ศปก.สตม.', '2023-09-04 08:37:53', 'Apirak bangpuk', 1044133, 0, 0, '0000-00-00', '0000-00-00', 'Done', ''),
(18, 'ดูแลอุปกรณ์และระบบงาน Smart Safety Zone 4.0 (จักรกริช พ้นภัย)', 'Smart Safety Zone', 'Smart Safety Zone', '7', 0, 0, 0, 0, 0, 0, '0', 20, 'ดูแลอุปกรณ์และระบบงาน Smart Safety Zone 4.0 (จักรกริช พ้นภัย) Contact :สำนักงานตำรวจแห่งชาติ', '2023-09-04 08:40:32', 'Apirak bangpuk', 0, 0, 0, '0000-00-00', '0000-00-00', 'On Process', ''),
(19, 'จัดซื้อชุดกระเป๋า Health Set พร้อมระบบ Mobile Healthcare Screening', 'Health Set', 'KYD', '7', 270000, 288900, 0, 0, 0, 0, '0', 33, 'ชุดกระเป๋า Health Set พร้อมระบบ Mobile Healthcare Screening นำเสนอโดยทางบริษัท โรชฯ เป็นผู้แนะนำ เงื่อนไข : 1.บริษัทฯ มีการรับประกันอุปกรณ์เสียหายจากการใช้งานตามปกติ เป็นระยะเวลา 1 ปี  กรณีอุปกรณ์ไม่สามารถใช้งานได้จะดำเนินการซ่อมแซมหรือเปลี่ยนทดแทน ภายในไ', '2023-09-04 08:46:20', 'Apirak bangpuk', 0, 0, 0, '2023-02-18', '0000-00-00', 'Wiating for approve', 'QT-000000716'),
(20, 'งานจ้างบำรุงรักษาระบบ Mobile Face Recognition', 'MA Mobile Face Recognition', 'Mobile Face Recognition', '7', 1100000, 1177000, 591745, 633166, 508256, 46, '100', 34, '', '2023-10-11 10:11:56', 'Apirak bangpuk', 1100000, 591744, 508256, '2023-06-01', '0000-00-00', 'On Process', 'A02/3160029760/2566'),
(21, 'โครงการ VAM Stack Platform AI Surveillance Samutprakarn (เทศบาลเมืองสมุทรปราการ)', 'VAM Stack Platform', 'VAM Stack', '7', 980000, 1048600, 0, 0, 980000, 100, '100', 35, 'เปิดบิล ธ.ค.65. รอชำระเงิน\r\nVAM On-premise – Advance Security and Surveillance SolutionFeatures\r\nVAMStack Platform AI Surveillance Samutprakarn (เทศบาลเมืองสมุทรปราการ)\r\nสมุทรปราการ', '2023-09-13 02:45:58', 'Apirak bangpuk', 980000, 0, 980000, '0000-00-00', '0000-00-00', 'Done', ''),
(22, 'โครงการ Smart City (อบจ.ชลบุรี)', 'Smart City', 'Smart City', '7', 1262600, 1350982, 0, 0, 0, 0, '10', 27, 'โครงการ Smart City (อบจ.ชลบุรี)   << พี่ปืน >>', '2023-09-04 09:03:42', 'Apirak bangpuk', 126260, 0, 0, '0000-00-00', '0000-00-00', 'Wiating for approve', ''),
(23, 'โครงการสร้างแผนดูแลผู้สูงอายุที่อยู่บ้านเพียงลำพังด้วยอุปกรณ์ iOT ในการดูแลของ (อปท)', 'Data Analytics', 'Saijai Platform', '7', 5000000, 5350000, 0, 0, 0, 0, '10', 28, 'นำเสนอนโยบายดูแลประชาชนด้วย โครงการดูแลผู้สูงอายุที่อยู่บ้านเพียงลำพัง เป็นการนำเสนอให้กับทางคุณสุดารัตน์ เกยุราพันธ์ หัวพรรคไทยสร้างชาติ เพื่อนำไปเป็นแผนในการดูแลผู้สูงอายุ', '2023-09-04 09:27:49', 'Apirak bangpuk', 500000, 0, 0, '2023-03-12', '2023-12-30', 'Wiating for approve', ''),
(24, 'ระบบแพลตฟอร์มจัดเก็บและวิเคราะห์ข้อมูลสุขภาพพร้อมเฝ้าระวังเหตุฉุกเฉิน เทศบาลตําบลโคกกลอย (จังหวัดพังงา)', 'Data Analytics', 'Saijai Platform', '7', 1000000, 1070000, 0, 0, 0, 0, '10', 27, 'พี่ปืนนำเสนอโครงการให้กับทางนายกเทศบาลตําบลโคกกลอย จังหวัดพังงา\r\n', '2023-09-04 09:30:35', 'Apirak bangpuk', 0, 0, 0, '2023-05-25', '2023-05-31', 'Wiating for approve', ''),
(25, 'ระบบแพลตฟอร์มจัดเก็บและวิเคราะห์ข้อมูลสุขภาพพร้อมเฝ้าระวังเหตุฉุกเฉิน เทศบาลตําบลโคกกลอย (จังหวัดพังงา)', 'Data Analytics', 'Saijai Platform', '7', 1000000, 0, 0, 0, 0, 0, '10', 28, 'พี่นกเป็นผู้นำเสนอโครงการ งบประมาณประมาณ 1,000,000 บาท สัญญาเช่า Clound 3 Y ทางหน่วยงานยังติดปัญหาเรื่องการเชื่อมโยงข้อมูลไปยัง HDC ไม่อยากให้เจ้าหน้าที่ทำงานซ้ำซ้อน ทางหน้างานใช้ App อสม.', '2023-09-04 09:32:57', 'Apirak bangpuk', 0, 0, 0, '2023-05-09', '2023-05-31', 'Wiating for approve', ''),
(26, 'โครงการพัฒนาความร่วมมือนวัตกรรมเมืองอัจฉริยะความร่วมมือระหว่างเกาหลีและไทยในด้านระบบชาญฉลาดสำหรับการรักษาความปลอดภัย', 'Global Fund Thai-Korea', 'Research Project', '7', 4500000, 4815000, 0, 0, 0, 0, '100', 29, 'โครงการพัฒนาความร่วมมือนวัตกรรมเมืองอัจฉริยะความร่วมมือระหว่างเกาหลีและไทยในด้านระบบชาญฉลาดสำหรับการรักษาความปลอดภัย ภายใต้แผนโครงการพัฒนาเครือข่ายความร่วมมือนานาชาติเพื่อการพัฒนา ววน. ของประเทศโปรแกรม 16 ปฏิรูประบบการอุดมศึกษา วิทยาศาสตร์ วิจัย และนวตกรร', '2023-09-04 09:35:23', 'Apirak bangpuk', 4500000, 0, 0, '2022-10-30', '2022-10-30', 'Done', 'C16F640358'),
(27, 'ระบบแพลตฟอร์มเชิงรุกสำหรับบริหารระบบ Home Isolation (HI) Community  Isolation (CI) และ Factory Isolation (FI) สำหรับการดูแลผู้ป่วยติดเชื้อ”  (สัญญาเลขที่ C10F640372)', 'BCG-Covid-19 Home Isolation', 'Research Project', '7', 1000000, 1070000, 0, 0, 0, 0, '100', 16, 'ระบบแพลตฟอร์มเชิงรุกสำหรับบริหารระบบ Home Isolation (HI) Community  Isolation (CI) และ Factory Isolation (FI) สำหรับการดูแลผู้ป่วยติดเชื้อ”  (สัญญาเลขที่ C10F640372)  ดำเนินการ 24/7 Care Centre เพื่อการจัดเตรียมระบบติดตั้งโดเมน และ Technical Support ให้คำ', '2023-09-04 09:37:57', 'Apirak bangpuk', 1000000, 0, 0, '2021-12-01', '2022-11-30', 'Done', 'C10F640372'),
(28, 'AI ตรวจวิเคราะห์คนตีกัน', 'AI', 'IBOC', '7', 150000, 0, 100000, 0, 0, 0, '10', 37, 'โอ๋ นัดอาจารย์มากรุงเทพวันที่ 6 ตุลาคม 2566', '2023-09-22 08:40:24', 'Panit', 0, 0, 0, '2023-10-06', '0000-00-00', 'Wiating for approve', 'IBOC-001'),
(29, 'AI Dashboard - Live CCTV on Map', 'AI', 'IBOC', '0', 50000, 50000, 0, 0, 50000, 100, '100', 27, 'POINT IT\r\nแอม  ทำ UXUI\r\nขวัญ  ทำ Front End\r\nพีท  ควบคุมการเชื่อม AI ของระบบ\r\nนัท  ดูแลการติดตั้งระบบ', '2023-09-26 12:36:49', 'Apirak bangpuk', 50000, 0, 50000, '2023-09-15', '2023-09-30', 'On Process', 'IBOC-002'),
(30, 'โครงการการจ้างพัฒนาระบบการจัดซื้อจัดจ้าง กบข.', 'Systems Platform', 'ระบบการซื้อจัดจ้าง', '7', 467290, 500000, 0, 0, 467290, 100, '10', 30, '', '2023-10-20 10:01:56', 'Apirak bangpuk', 46729, 0, 46729, '2023-10-20', '2024-10-20', 'Wiating for approve', '');

-- --------------------------------------------------------

--
-- Table structure for table `pip_file`
--

CREATE TABLE `pip_file` (
  `file_id` int(11) NOT NULL COMMENT 'Key',
  `pip_id` int(11) NOT NULL COMMENT 'เชื่อมข้อมูลโครกการ',
  `t_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'โฟรเดอร์',
  `file_type` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ชนิดไฟล์',
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ชื่อไฟล์',
  `file_upfile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ไฟล์',
  `file_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Link Google Drive',
  `file_r` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'คำอธิบาย',
  `file_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'สถานะ',
  `file_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'วันที่สร้าง',
  `file_staff` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ผู้สร้าง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pip_file`
--

INSERT INTO `pip_file` (`file_id`, `pip_id`, `t_name`, `file_type`, `file_name`, `file_upfile`, `file_link`, `file_r`, `file_status`, `file_date`, `file_staff`) VALUES
(1, 5, 'Work', 'Word', 'รายงานงวดงานที่ 1', 'Data.xlsx', 'https://github.com/Amp-Apirak/ino/tree/dev-4', 'เปอร์เซ็นต์ คืออะไร หลักการพื้นฐานของเรื่องนี้ เปอร์เซ็นต์ (%) หมายถึง ร้อยละ/เศษส่วนที่มีส่วนเป็น 100 เสมอ ดังนั้นทุกครั้งที่คำนวณเปอร์เซ็นต์จะต้องคิดจาก 100 ทุกครั้ง', 'Complated', '2023-09-03 17:18:18', 'Apirak Bangpuk'),
(2, 7, 'Work', 'Word', 'รายงานงวดงานที่ 1', 'Data.xlsx', 'https://github.com/Amp-Apirak/ino/tree/dev-4', 'เปอร์เซ็นต์ คืออะไร หลักการพื้นฐานของเรื่องนี้ เปอร์เซ็นต์ (%) หมายถึง ร้อยละ/เศษส่วนที่มีส่วนเป็น 100 เสมอ ดังนั้นทุกครั้งที่คำนวณเปอร์เซ็นต์จะต้องคิดจาก 100 ทุกครั้ง', 'Complated', '2023-09-03 17:18:16', 'Apirak Bangpuk'),
(3, 6, 'Work', 'Word', 'รายงานงวดงานที่ 1', 'Data.xlsx', 'https://github.com/Amp-Apirak/ino/tree/dev-4', 'เปอร์เซ็นต์ คืออะไร หลักการพื้นฐานของเรื่องนี้ เปอร์เซ็นต์ (%) หมายถึง ร้อยละ/เศษส่วนที่มีส่วนเป็น 100 เสมอ ดังนั้นทุกครั้งที่คำนวณเปอร์เซ็นต์จะต้องคิดจาก 100 ทุกครั้ง', 'Complated', '2023-09-03 17:16:25', 'Apirak bangpuk'),
(4, 6, 'Work', 'Word', 'รายงานงวดงานที่ 2', 'INO  Pipeline.xlsx', 'https://drive.google.com/drive/u/0/my-drive 456', 'เปอร์เซ็นต์ คืออะไร หลักการพื้นฐานของเรื่องนี้ เปอร์เซ็นต์ (%) หมายถึง ร้อยละ/เศษส่วนที่มีส่วนเป็น 100 เสมอ ดังนั้นทุกครั้งที่คำนวณเปอร์เซ็นต์จะต้องคิดจาก 100 ทุกครั้ง', 'Wait Approve', '2023-09-03 17:16:28', 'Apirak bangpuk'),
(5, 9, 'Work', 'Excel', 'รายงานงวดงานที่ 1', 'INO  Pipeline (1).xlsx', 'https://drive.google.com/drive/u/0/my-drive 45633', 'เปอร์เซ็นต์ คืออะไร หลักการพื้นฐานของเรื่องนี้ เปอร์เซ็นต์ (%) หมายถึง ร้อยละ/เศษส่วนที่มีส่วนเป็น 100 เสมอ ดังนั้นทุกครั้งที่คำนวณเปอร์เซ็นต์จะต้องคิดจาก 100 ทุกครั้ง', 'Process', '2023-09-03 17:16:31', 'Apirak bangpuk'),
(6, 9, 'Work', 'Presentatio', 'รายงานงวดงานที่ 2', 'รายงานงานดูแลบำรุงรักษาแบบแก้ไขเหตุชำรุ.docx', 'https://drive.google.com/drive/u/0', 'เปอร์เซ็นต์ คืออะไร หลักการพื้นฐานของเรื่องนี้ เปอร์เซ็นต์ (%) หมายถึง ร้อยละ/เศษส่วนที่มีส่วนเป็น 100 เสมอ ดังนั้นทุกครั้งที่คำนวณเปอร์เซ็นต์จะต้องคิดจาก 100 ทุกครั้ง', 'Wait Approve', '2023-09-03 17:16:35', 'Apirak bangpuk'),
(7, 7, 'Work', 'PDF', 'รายงานงวดงานที่ 2', 'Investor Relations - Sitemap VSK.pdf', 'https://docs.google.com/document/d/1EjTWrHHDzXUtaUwOcwiNwNHbOeuf-bmIn9j_XV5fCC0/edit', 'เปอร์เซ็นต์ คืออะไร หลักการพื้นฐานของเรื่องนี้ เปอร์เซ็นต์ (%) หมายถึง ร้อยละ/เศษส่วนที่มีส่วนเป็น 100 เสมอ ดังนั้นทุกครั้งที่คำนวณเปอร์เซ็นต์จะต้องคิดจาก 100 ทุกครั้ง', 'Complated', '2023-09-03 17:16:38', 'Apirak bangpuk'),
(8, 5, 'Work', 'Word', 'รายงานงวดงานที่ 2', 'Data.xlsx', 'https://github.com/Amp-Apirak/ino/tree/dev-4', 'เปอร์เซ็นต์ คืออะไร หลักการพื้นฐานของเรื่องนี้ เปอร์เซ็นต์ (%) หมายถึง ร้อยละ/เศษส่วนที่มีส่วนเป็น 100 เสมอ ดังนั้นทุกครั้งที่คำนวณเปอร์เซ็นต์จะต้องคิดจาก 100 ทุกครั้ง', 'Complated', '2023-09-03 17:18:18', 'Apirak Bangpuk'),
(9, 11, 'Presentation', 'PDF', 'การนำเสนอข้อมูลโครงการดูแลผู้สูงอายุที่อยู่บ้านเพียงลำพัง (อปท)', 'Concept_1.pdf', 'https://drive.google.com/file/d/1Qet6vC7qO27rNa1uJGXPL0jezemB0RzK/view', 'การนำเสนอข้อมูลโครงการดูแลผู้สูงอายุที่อยู่บ้านเพียงลำพัง (อปท)', 'Complated', '2023-09-04 05:53:53', 'Apirak bangpuk'),
(10, 12, 'Z_User Manual', 'PDF', 'คู่มือการใช้งานระบบตรวจสอบ เฝ้าระวังความปลอดภัย และติดตามวัตถุที่สนใจ (Smart Security Platform)', 'Smart-Security-Platform-Manual_compressed (1).pdf', 'https://drive.google.com/drive/u/0/folders/1OMC5sxQfdYs-sjxhDuHM9RZkMqfdJrsV', 'คู่มือการใช้งานระบบตรวจสอบ เฝ้าระวังความปลอดภัย และติดตามวัตถุที่สนใจ (Smart Security Platform)', 'Complated', '2023-09-04 06:17:33', 'Apirak bangpuk'),
(11, 12, 'Z_Brochure', 'PDF', 'เอกสารสารคู่มือ (Brochure IBOC)', '2022-06-01_IBOC_Brochure.pdf', 'https://drive.google.com/drive/u/0/folders/1OMC5sxQfdYs-sjxhDuHM9RZkMqfdJrsV', 'เอกสารสารคู่มือ (Brochure IBOC)', 'Complated', '2023-09-04 06:25:16', 'Apirak bangpuk'),
(12, 12, 'Z_Agenda', 'PDF', 'วาระการประชุมครั้งที่ 1 (Agenda)', '651027 วาระการประชุม.pdf', 'https://drive.google.com/drive/u/0/folders/1OMC5sxQfdYs-sjxhDuHM9RZkMqfdJrsV', 'วาระการประชุมครั้งที่ 1 (Agenda) ประจำวันที่  27-10-65', 'Complated', '2023-09-04 06:27:41', 'Apirak bangpuk'),
(13, 12, 'Z_Agenda', 'PDF', 'หนังสือเชิญประชุมครั้งที่ 1 ', '651027 1514-หนังสือเชิญประชุม 27 ต.ค.2565.pdf', 'https://drive.google.com/drive/u/0/folders/1OMC5sxQfdYs-sjxhDuHM9RZkMqfdJrsV', 'หนังสือเชิญประชุมครั้งที่ 1  ประจำวันที่  27-10-65', 'Complated', '2023-09-04 06:29:27', 'Apirak bangpuk'),
(14, 12, 'Z_Document', 'PDF', 'เอกสารขอเชิญเข้าร่วมงำนสัมมนำด้ำนกำรแพทย์และ AI สำธำรณสุขของประเทศไทย ', '(บริษัท พอยท์ไอที คอนซัลทิ่ง จำกัด) จดหมายเ.pdf', 'https://drive.google.com/drive/u/0/folders/1OMC5sxQfdYs-sjxhDuHM9RZkMqfdJrsV', 'เอกสารขอเชิญเข้าร่วมงำนสัมมนำด้ำนกำรแพทย์และ AI สำธำรณสุขของประเทศไทย ในงำนสัมมนำ Digital Healthcare Transformation Conference 2022', 'Complated', '2023-09-04 06:31:41', 'Apirak bangpuk'),
(15, 30, 'Apirak-30-บภข', 'PDF', '01 - กบข. Project Man-days', '01 - กบข. Project Man-days.pdf', '', 'กบข.', 'Complated', '2023-10-20 10:03:48', 'Apirak bangpuk'),
(16, 30, 'Apirak-30-บภข', 'PDF', '02 - Documento for attachment TOR', '02 - Documento for attachment TOR.pdf', '', '', 'Complated', '2023-10-20 10:08:47', 'Apirak bangpuk'),
(17, 30, 'Apirak-30-บภข', 'PDF', '03 - Project Plan _1 Preplanning - Sheet1', '03 - Project Plan _1 Preplanning - Sheet1.pdf', '', '', 'Complated', '2023-10-20 10:09:17', 'Apirak bangpuk'),
(18, 30, 'Apirak-30-บภข', 'PDF', '04 - Project Price', '04 - Project Price.pdf', '', '', 'Complated', '2023-10-20 10:09:50', 'Apirak bangpuk');

-- --------------------------------------------------------

--
-- Table structure for table `pip_folder`
--

CREATE TABLE `pip_folder` (
  `type_id` int(11) NOT NULL,
  `pip_id` int(11) NOT NULL COMMENT 'Docker',
  `t_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ชื่อโฟรเดอร์',
  `type_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'วันที่สร้าง',
  `type_staff` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ผู้สร้าง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pip_folder`
--

INSERT INTO `pip_folder` (`type_id`, `pip_id`, `t_name`, `type_date`, `type_staff`) VALUES
(1, 9, 'Amp', '2023-09-03 09:03:44', 'Apirak Bangpuk'),
(2, 7, 'OK', '2023-09-03 09:20:15', 'Apirak bangpuk'),
(3, 7, 'PPPP', '2023-09-03 09:21:04', 'Apirak bangpuk'),
(4, 9, 'PPPPK', '2023-09-03 09:22:52', 'Apirak bangpuk'),
(5, 9, 'Apirak', '2023-09-03 09:25:58', 'Apirak bangpuk'),
(6, 9, 'XXXX', '2023-09-03 09:27:23', 'Apirak bangpuk'),
(7, 9, 'OOL', '2023-09-03 09:37:01', 'Apirak bangpuk'),
(8, 11, 'Presentation', '2023-09-04 05:44:17', 'Apirak bangpuk'),
(9, 12, 'Z_Presentation', '2023-09-04 06:15:34', 'Apirak bangpuk'),
(10, 12, 'Z_User Manual', '2023-09-04 06:16:17', 'Apirak bangpuk'),
(11, 12, 'Z_Brochure', '2023-09-04 06:24:09', 'Apirak bangpuk'),
(12, 12, 'Z_Agenda', '2023-09-04 06:26:15', 'Apirak bangpuk'),
(13, 12, 'Z_Document', '2023-09-04 06:31:15', 'Apirak bangpuk'),
(14, 30, 'Apirak-30-บภข', '2023-10-20 10:03:20', 'Apirak bangpuk');

-- --------------------------------------------------------

--
-- Table structure for table `pip_period`
--

CREATE TABLE `pip_period` (
  `p_id` int(11) NOT NULL COMMENT 'เลขไอดีของ period',
  `pip_id` int(11) NOT NULL COMMENT 'เลขไอดีของ Project',
  `pip_ps` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'งวดชำระเงิน (เพิ่มได้มากกว่า 1 )',
  `pip_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'เดือน',
  `pip_pst` int(11) NOT NULL COMMENT 'งวดชำระเงิน (%) Amount/Manaul',
  `pip_psw` int(11) NOT NULL COMMENT 'คำนวณราคาขายจาก %',
  `pip_pssum` int(11) NOT NULL COMMENT 'รวมกันต้องได้ 100 % และเท่ากับราคาขาย '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pip_period`
--

INSERT INTO `pip_period` (`p_id`, `pip_id`, `pip_ps`, `pip_month`, `pip_pst`, `pip_psw`, `pip_pssum`) VALUES
(1, 1, 'ชำระเงินงวดแรก', 'มกราคม', 20, 100000, 10000),
(2, 1, 'ชำระเงินงวด 2', 'มิถุนายน', 20, 100000, 10000),
(3, 2, 'ชำระเงินงวด 1', 'เมษายน', 50, 750000, 750000),
(6, 0, 'ชำระงวดที่ 1', 'January', 50, 50, 0),
(7, 0, 'Select', 'Select', 0, 0, 0),
(8, 0, 'Select', 'Select', 0, 0, 0),
(13, 0, 'ชำระงวดที่ 1', 'January', 50, 0, 0),
(14, 0, 'ชำระงวดที่ 1', 'January', 50, 0, 0),
(15, 0, 'ชำระงวดที่ 1', 'January', 50, 0, 0),
(16, 0, 'ชำระงวดที่ 1', 'January', 50, 0, 0),
(17, 0, 'ชำระงวดที่ 1', 'January', 50, 0, 0),
(21, 0, 'ชำระงวดที่ 1', 'March', 50, 0, 0),
(22, 0, 'ชำระงวดที่ 5', 'January', 70000, 0, 0),
(23, 0, 'ชำระงวดที่ 5', 'January', 70000, 0, 0),
(24, 0, 'ชำระงวดที่ 1', 'January', 50, 50, 0),
(25, 0, 'ชำระงวดที่ 1', 'January', 50, 50, 0),
(26, 0, 'ชำระงวดที่ 1', 'February', 70000, 0, 0),
(27, 0, 'ชำระงวดที่ 1', 'February', 70000, 0, 0),
(36, 6, 'ชำระงวดที่ 1', 'January', 100, 500000, 0),
(37, 6, 'ชำระงวดที่ 1', 'January', 100, 500000, 0),
(38, 7, 'ชำระงวดที่ 1', 'January', 50, 728740, 0),
(39, 7, 'ชำระงวดที่ 2', 'November', 50, 728740, 0),
(40, 9, 'ชำระงวดที่ 1', 'January', 50, 91350, 0),
(41, 9, 'ชำระงวดที่ 2', 'August', 50, 91350, 0),
(42, 20, 'ชำระงวดที่ 1', 'January', 8, 94160, 0);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_id` int(11) NOT NULL,
  `pip_id` int(11) NOT NULL COMMENT 'เชื่อมกับโปรเจคเนม',
  `project_m` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ผู้รับผิดชอบโครงการ',
  `project_u` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ทีม',
  `project_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'สถานะ',
  `project_crt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'วันสร้าง',
  `project_staff` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ผู้สร้าง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `pip_id`, `project_m`, `project_u`, `project_status`, `project_crt`, `project_staff`) VALUES
(1, 1, '2', '1,2,3', 'On Hold', '2023-08-18 04:35:08', 'Apirak Bangpuk');

-- --------------------------------------------------------

--
-- Table structure for table `remind`
--

CREATE TABLE `remind` (
  `remind_id` int(11) NOT NULL COMMENT 'รหัส',
  `project_id` int(11) NOT NULL COMMENT 'โปรเจค',
  `task_id` int(11) NOT NULL COMMENT 'โปรเจคย่อย',
  `sub_id` int(11) NOT NULL COMMENT 'ชื่อเอกสาร',
  `remind_crt` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `remind_staff` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ผู้สร้าง',
  `remind_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'หัวข้อ',
  `remind_detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'รายละเอีดย',
  `remind_file` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ไฟล์แนบ',
  `remind_date` datetime NOT NULL COMMENT 'วันที่กำหนด',
  `remind_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'สถานะ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resolve`
--

CREATE TABLE `resolve` (
  `resolve_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL COMMENT 'เชื่อมกับ category',
  `project_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'โครงการ',
  `case` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'สาเหตุ',
  `resovle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'วิธีการแก้ไข'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resolve`
--

INSERT INTO `resolve` (`resolve_id`, `cat_id`, `project_name`, `case`, `resovle`) VALUES
(1, 1, 'โรงพยาบาลมิตรไมตรี (Lab)', 'Parameter Log ที่ส่งมาจากระบบ HIS ไม่ตรงกับ Service Interface ตัวรับ จึงทำให้เกิด Error (HL7)', 'ลบ Log Files HL7 ออก ทำการ Backup ข้อมูลไว้ Run Service Interface Programs สามารถใช้งานได้ปกติ');

-- --------------------------------------------------------

--
-- Table structure for table `sub_task`
--

CREATE TABLE `sub_task` (
  `sub_id` int(11) NOT NULL COMMENT 'รหัส',
  `project_id` int(11) NOT NULL COMMENT 'โปรเจค',
  `sub_crt` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `sub_staff` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ชื่อผู้สร้าง',
  `sub_tpye` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ประเภทเอกสาร',
  `sub_name` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'หัวข้อชื่อ',
  `sub_file` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'เอกสาร',
  `sub_link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'แนบลิงค์',
  `sub_remark` int(200) NOT NULL COMMENT 'รายละเอียด',
  `sub_status` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'สถานะ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_project`
--

CREATE TABLE `task_project` (
  `task_id` int(11) NOT NULL COMMENT 'รหัส',
  `project_id` int(11) NOT NULL COMMENT 'โปรเจค',
  `task_crt` datetime NOT NULL COMMENT 'วันที่สรัาง',
  `task_staff` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ผู้สร้าง',
  `task_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'หัวข้อ',
  `task_detail` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'รายละเอียด',
  `task_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'สถานะ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_project`
--

INSERT INTO `task_project` (`task_id`, `project_id`, `task_crt`, `task_staff`, `task_name`, `task_detail`, `task_status`) VALUES
(1, 0, '2023-06-10 13:54:04', 'Apirak bangpuk', 'Emergency', 'AI Tracker', 'On Process');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL COMMENT 'รหัส',
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ชื่อเข้าใช้งานระบบ',
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'รหัสผ่าน',
  `fullname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ชื่อ-สกุล',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'อิเมล',
  `tel` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'เบอร์',
  `user_crt` datetime NOT NULL COMMENT 'วันส้ราง',
  `user_staff` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ผู้สร้าง',
  `role` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'บทบาท',
  `team` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ทีม',
  `position` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ตำแหน่ง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`, `email`, `tel`, `user_crt`, `user_staff`, `role`, `team`, `position`) VALUES
(1, 'admin', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Apirak bangpuk', 'apirak@gmail.com', '(089) 353-5555', '2023-06-04 11:53:19', 'phattraorn amornophakun', 'Administrator', 'Non Service', 'IT Service'),
(2, 'Theerachart ', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Theerachart ', 'apirak@pointit.co.th', '(099) 999-9', '2023-06-04 11:53:19', 'phattraorn amornophakun', 'Administrator', 'Service Solution', 'Service Manager'),
(3, 'phattraorn', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'phattraorn amornophakun', 'phattraorn.a@gmail.com', '(061) 952-2', '2023-06-04 11:53:19', 'apirak bangpuk', 'Administrator', 'Innovation', 'Product Sale'),
(4, 'Panit', '5db2e175f6f4671127cb4beef3f0e84e4cb91e92', 'คุณผาณิต เผ่าพันธ์', 'panit@pointit.co.th', '(086) 995-8396', '2023-09-28 11:53:19', 'Apirak bangpuk', 'Administrator', 'Innovation', 'DM'),
(5, 'staff', '7c222fb2927d828af22f592134e8932480637c0d', 'staff', 'staff@gmail.com', '(083) 959-5811', '2023-11-01 11:53:19', 'Apirak bangpuk', 'Engineer', 'Service Solution', 'IT support');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `doc`
--
ALTER TABLE `doc`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `folder_doc`
--
ALTER TABLE `folder_doc`
  ADD PRIMARY KEY (`folder_id`);

--
-- Indexes for table `pipeline`
--
ALTER TABLE `pipeline`
  ADD PRIMARY KEY (`pip_id`);

--
-- Indexes for table `pip_file`
--
ALTER TABLE `pip_file`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `pip_folder`
--
ALTER TABLE `pip_folder`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `pip_period`
--
ALTER TABLE `pip_period`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `remind`
--
ALTER TABLE `remind`
  ADD PRIMARY KEY (`remind_id`);

--
-- Indexes for table `resolve`
--
ALTER TABLE `resolve`
  ADD PRIMARY KEY (`resolve_id`);

--
-- Indexes for table `sub_task`
--
ALTER TABLE `sub_task`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `task_project`
--
ALTER TABLE `task_project`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `doc`
--
ALTER TABLE `doc`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `folder_doc`
--
ALTER TABLE `folder_doc`
  MODIFY `folder_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pipeline`
--
ALTER TABLE `pipeline`
  MODIFY `pip_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'เลขไอดีของ Project', AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `pip_file`
--
ALTER TABLE `pip_file`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Key', AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pip_folder`
--
ALTER TABLE `pip_folder`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pip_period`
--
ALTER TABLE `pip_period`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'เลขไอดีของ period', AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `remind`
--
ALTER TABLE `remind`
  MODIFY `remind_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส';

--
-- AUTO_INCREMENT for table `resolve`
--
ALTER TABLE `resolve`
  MODIFY `resolve_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_task`
--
ALTER TABLE `sub_task`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส';

--
-- AUTO_INCREMENT for table `task_project`
--
ALTER TABLE `task_project`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;