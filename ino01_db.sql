-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2024 at 05:43 AM
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
-- Database: `ino01_db`
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
(18, 30, 'Apirak-30-บภข', 'PDF', '04 - Project Price', '04 - Project Price.pdf', '', '', 'Complated', '2023-10-20 10:09:50', 'Apirak bangpuk'),
(19, 32, 'Apirak-Bowin(Phase2)', 'PDF', 'TOR_Bowin phase 2', 'TOR_Bowin phase 2.pdf', 'https://drive.google.com/drive/u/0/folders/1fen2k6Ff6prqyposIU1dW4de2NFR_FxS', 'TOR Bowin (Phase 2) ', 'Complated', '2023-11-13 02:13:55', 'Apirak bangpuk');

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
(14, 30, 'Apirak-30-บภข', '2023-10-20 10:03:20', 'Apirak bangpuk'),
(15, 32, 'Apirak-Bowin(Phase2)', '2023-11-13 02:12:35', 'Apirak bangpuk');

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
(42, 20, 'ชำระงวดที่ 1', 'January', 8, 94160, 0),
(43, 32, 'ชำระงวดที่ 1', 'May', 20, 130200, 0),
(45, 32, 'ชำระงวดที่ 2', 'November', 20, 130200, 0),
(46, 32, 'ชำระงวดที่ 3', 'March', 20, 130200, 0),
(47, 32, 'ชำระงวดที่ 4', 'September', 20, 130200, 0),
(48, 32, 'ชำระงวดที่ 5', 'October', 20, 130200, 0);

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
(1, 'admin', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Apirak bangpuk', 'apirak@gmail.com', '(089) 353-5555', '2023-06-04 11:53:19', 'phattraorn amornophakun', 'Administrator', 'Non Service', 'IT Service');

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
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

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
  MODIFY `pip_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'เลขไอดีของ Project', AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `pip_file`
--
ALTER TABLE `pip_file`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Key', AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pip_folder`
--
ALTER TABLE `pip_folder`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pip_period`
--
ALTER TABLE `pip_period`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'เลขไอดีของ period', AUTO_INCREMENT=49;

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
