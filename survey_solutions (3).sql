-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2022 at 07:40 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `survey_solutions`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_master`
--

CREATE TABLE `bank_master` (
  `id` int(11) NOT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank_master`
--

INSERT INTO `bank_master` (`id`, `bank`, `status`, `created_at`, `updated_at`) VALUES
(1, 'icici bank', 0, '2022-08-16 06:30:58', '2022-08-16 06:30:58'),
(5, 'SBI 4', 1, '2022-08-19 06:02:00', '2022-08-19 06:02:00'),
(8, 'Yes bank', 1, '2022-08-19 06:08:36', '2022-08-19 06:08:36'),
(9, 'Canara Bank', 1, '2022-08-22 23:03:28', '2022-08-22 23:03:28'),
(10, 'City BanK', 1, '2022-08-23 06:53:13', '2022-08-23 06:53:13'),
(11, 'Union Bank', 1, '2022-08-23 06:54:35', '2022-08-23 06:54:35'),
(17, 'Grameen bank 1', 1, '2022-09-06 06:07:22', '2022-09-06 06:07:22'),
(19, 'icici123', 1, '2022-09-06 08:00:13', '2022-09-06 08:00:13'),
(20, 'State bank of india 12', 1, '2022-09-06 08:00:24', '2022-09-06 08:00:24'),
(21, 'rwerewrwrew', 1, '2022-09-06 08:31:13', '2022-09-06 08:31:13');

-- --------------------------------------------------------

--
-- Table structure for table `branch_master`
--

CREATE TABLE `branch_master` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `insurer_id` varchar(255) DEFAULT NULL,
  `state_id` varchar(255) DEFAULT NULL,
  `city_id` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch_master`
--

INSERT INTO `branch_master` (`branch_id`, `branch_name`, `insurer_id`, `state_id`, `city_id`, `status`, `created_at`) VALUES
(6, 'Vijay nagar Branch', '4', '15', '365', 1, '2022-08-19 11:31:16'),
(7, 'MG road', '1', '11', '270', 1, '2022-08-19 11:34:26'),
(8, 'Vikram Squar', '1', '11', '310', 1, '2022-08-19 12:00:29'),
(9, 'New City Area', '1', '5', '125', 1, '2022-08-19 12:50:19'),
(10, 'Princess Tower', '1', '11', '278', 1, '2022-08-22 05:37:15'),
(11, 'Mangal City 1', '2', '11', '284', 1, '2022-08-23 10:11:12'),
(12, 'Robot square', '3', '1', '5', 1, '2022-08-25 09:47:40'),
(13, 'Omega square', '3', '1', '7', 1, '2022-08-25 09:49:39'),
(14, 'Sivaji Vatika', '3', '1', '9', 1, '2022-08-25 09:50:31'),
(15, 'Juhu', '1', '12', '329', 1, '2022-08-25 09:51:26'),
(16, 'Bandra', '1', '12', '332', 1, '2022-08-25 09:52:19'),
(17, 'Kalyan', '1', '12', '321', 1, '2022-08-25 09:53:12'),
(18, 'MG Square', '5', '4', '65', 1, '2022-08-25 09:55:35'),
(19, 'Narayan City', '5', '4', '68', 1, '2022-08-25 09:56:01'),
(20, 'Geetapuri', '5', '4', '81', 1, '2022-08-25 09:56:25'),
(21, 'Om city', '4', '25', '115', 1, '2022-08-25 10:19:54'),
(22, 'Green colony', '4', '14', '357', 1, '2022-08-25 10:20:44'),
(23, 'HighTech Square', '4', '18', '414', 1, '2022-08-25 10:21:38'),
(24, 'indore khajrana', '6', '11', '283', 1, '2022-08-27 12:37:59'),
(29, 'aaS', '6', '17', '380', 1, '2022-09-06 08:20:51'),
(30, 'palasiya Branch', '2', '18', '411', 1, '2022-09-06 13:17:51');

-- --------------------------------------------------------

--
-- Table structure for table `cdx_cities`
--

CREATE TABLE `cdx_cities` (
  `id` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdx_cities`
--

INSERT INTO `cdx_cities` (`id`, `city`, `state_id`) VALUES
(1, 'North and Middle Andaman', 32),
(2, 'South Andaman', 34),
(3, 'Nicobar', 33),
(4, 'Adilabad', 1),
(5, 'Anantapur', 1),
(6, 'Chittoor', 2),
(7, 'East Godavari', 1),
(8, 'Guntur', 1),
(9, 'Hyderabad', 1),
(10, 'Kadapa', 1),
(11, 'Karimnagar', 1),
(12, 'Khammam', 1),
(13, 'Krishna', 1),
(14, 'Kurnool', 1),
(15, 'Mahbubnagar', 1),
(16, 'Medak', 1),
(17, 'Nalgonda', 1),
(18, 'Nellore', 1),
(19, 'Nizamabad', 1),
(20, 'Prakasam', 1),
(21, 'Rangareddi', 1),
(22, 'Srikakulam', 1),
(23, 'Vishakhapatnam', 1),
(24, 'Vizianagaram', 1),
(25, 'Warangal', 1),
(26, 'West Godavari', 1),
(27, 'Anjaw', 3),
(28, 'Changlang', 3),
(29, 'East Kameng', 3),
(30, 'Lohit', 3),
(31, 'Lower Subansiri', 3),
(32, 'Papum Pare', 3),
(33, 'Tirap', 3),
(34, 'Dibang Valley', 3),
(35, 'Upper Subansiri', 3),
(36, 'West Kameng', 3),
(37, 'Barpeta', 2),
(38, 'Bongaigaon', 2),
(39, 'Cachar', 2),
(40, 'Darrang', 2),
(41, 'Dhemaji', 2),
(42, 'Dhubri', 2),
(43, 'Dibrugarh', 2),
(44, 'Goalpara', 2),
(45, 'Golaghat', 2),
(46, 'Hailakandi', 2),
(47, 'Jorhat', 2),
(48, 'Karbi Anglong', 2),
(49, 'Karimganj', 2),
(50, 'Kokrajhar', 2),
(51, 'Lakhimpur', 2),
(52, 'Marigaon', 2),
(53, 'Nagaon', 2),
(54, 'Nalbari', 2),
(55, 'North Cachar Hills', 2),
(56, 'Sibsagar', 2),
(57, 'Sonitpur', 2),
(58, 'Tinsukia', 2),
(59, 'Araria', 4),
(60, 'Aurangabad', 4),
(61, 'Banka', 4),
(62, 'Begusarai', 4),
(63, 'Bhagalpur', 4),
(64, 'Bhojpur', 4),
(65, 'Buxar', 4),
(66, 'Darbhanga', 4),
(67, 'Purba Champaran', 4),
(68, 'Gaya', 4),
(69, 'Gopalganj', 4),
(70, 'Jamui', 4),
(71, 'Jehanabad', 4),
(72, 'Khagaria', 4),
(73, 'Kishanganj', 4),
(74, 'Kaimur', 4),
(75, 'Katihar', 4),
(76, 'Lakhisarai', 4),
(77, 'Madhubani', 4),
(78, 'Munger', 4),
(79, 'Madhepura', 4),
(80, 'Muzaffarpur', 4),
(81, 'Nalanda', 4),
(82, 'Nawada', 4),
(83, 'Patna', 4),
(84, 'Purnia', 4),
(85, 'Rohtas', 4),
(86, 'Saharsa', 4),
(87, 'Samastipur', 4),
(88, 'Sheohar', 4),
(89, 'Sheikhpura', 4),
(90, 'Saran', 4),
(91, 'Sitamarhi', 4),
(92, 'Supaul', 4),
(93, 'Siwan', 4),
(94, 'Vaishali', 4),
(95, 'Pashchim Champaran', 4),
(96, 'Bastar', 36),
(97, 'Bilaspur', 36),
(98, 'Dantewada', 36),
(99, 'Dhamtari', 36),
(100, 'Durg', 36),
(101, 'Jashpur', 36),
(102, 'Janjgir-Champa', 36),
(103, 'Korba', 36),
(104, 'Koriya', 36),
(105, 'Kanker', 36),
(106, 'Kawardha', 36),
(107, 'Mahasamund', 36),
(108, 'Raigarh', 36),
(109, 'Rajnandgaon', 36),
(110, 'Raipur', 36),
(111, 'Surguja', 36),
(112, 'Diu', 29),
(113, 'Daman', 29),
(114, 'Central Delhi', 25),
(115, 'East Delhi', 25),
(116, 'New Delhi', 25),
(117, 'North Delhi', 25),
(118, 'North East Delhi', 25),
(119, 'North West Delhi', 25),
(120, 'South Delhi', 25),
(121, 'South West Delhi', 25),
(122, 'West Delhi', 25),
(123, 'North Goa', 26),
(124, 'South Goa', 26),
(125, 'Ahmedabad', 5),
(126, 'Amreli District', 5),
(127, 'Anand', 5),
(128, 'Banaskantha', 5),
(129, 'Bharuch', 5),
(130, 'Bhavnagar', 5),
(131, 'Dahod', 5),
(132, 'The Dangs', 5),
(133, 'Gandhinagar', 5),
(134, 'Jamnagar', 5),
(135, 'Junagadh', 5),
(136, 'Kutch', 5),
(137, 'Kheda', 5),
(138, 'Mehsana', 5),
(139, 'Narmada', 5),
(140, 'Navsari', 5),
(141, 'Patan', 5),
(142, 'Panchmahal', 5),
(143, 'Porbandar', 5),
(144, 'Rajkot', 5),
(145, 'Sabarkantha', 5),
(146, 'Surendranagar', 5),
(147, 'Surat', 5),
(148, 'Vadodara', 5),
(149, 'Valsad', 5),
(150, 'Ambala', 6),
(151, 'Bhiwani', 6),
(152, 'Faridabad', 6),
(153, 'Fatehabad', 6),
(154, 'Gurgaon', 6),
(155, 'Hissar', 6),
(156, 'Jhajjar', 6),
(157, 'Jind', 6),
(158, 'Karnal', 6),
(159, 'Kaithal', 6),
(160, 'Kurukshetra', 6),
(161, 'Mahendragarh', 6),
(162, 'Mewat', 6),
(163, 'Panchkula', 6),
(164, 'Panipat', 6),
(165, 'Rewari', 6),
(166, 'Rohtak', 6),
(167, 'Sirsa', 6),
(168, 'Sonepat', 6),
(169, 'Yamuna Nagar', 6),
(170, 'Palwal', 6),
(171, 'Bilaspur', 7),
(172, 'Chamba', 7),
(173, 'Hamirpur', 7),
(174, 'Kangra', 7),
(175, 'Kinnaur', 7),
(176, 'Kulu', 7),
(177, 'Lahaul and Spiti', 7),
(178, 'Mandi', 7),
(179, 'Shimla', 7),
(180, 'Sirmaur', 7),
(181, 'Solan', 7),
(182, 'Una', 7),
(183, 'Anantnag', 8),
(184, 'Badgam', 8),
(185, 'Bandipore', 8),
(186, 'Baramula', 8),
(187, 'Doda', 8),
(188, 'Jammu', 8),
(189, 'Kargil', 8),
(190, 'Kathua', 8),
(191, 'Kupwara', 8),
(192, 'Leh', 8),
(193, 'Poonch', 8),
(194, 'Pulwama', 8),
(195, 'Rajauri', 8),
(196, 'Srinagar', 8),
(197, 'Samba', 8),
(198, 'Udhampur', 8),
(199, 'Bokaro', 34),
(200, 'Chatra', 34),
(201, 'Deoghar', 34),
(202, 'Dhanbad', 34),
(203, 'Dumka', 34),
(204, 'Purba Singhbhum', 34),
(205, 'Garhwa', 34),
(206, 'Giridih', 34),
(207, 'Godda', 34),
(208, 'Gumla', 34),
(209, 'Hazaribagh', 34),
(210, 'Koderma', 34),
(211, 'Lohardaga', 34),
(212, 'Pakur', 34),
(213, 'Palamu', 34),
(214, 'Ranchi', 34),
(215, 'Sahibganj', 34),
(216, 'Seraikela and Kharsawan', 34),
(217, 'Pashchim Singhbhum', 34),
(218, 'Ramgarh', 34),
(219, 'Bidar', 9),
(220, 'Belgaum', 9),
(221, 'Bijapur', 9),
(222, 'Bagalkot', 9),
(223, 'Bellary', 9),
(224, 'Bangalore Rural District', 9),
(225, 'Bangalore Urban District', 9),
(226, 'Chamarajnagar', 9),
(227, 'Chikmagalur', 9),
(228, 'Chitradurga', 9),
(229, 'Davanagere', 9),
(230, 'Dharwad', 9),
(231, 'Dakshina Kannada', 9),
(232, 'Gadag', 9),
(233, 'Gulbarga', 9),
(234, 'Hassan', 9),
(235, 'Haveri District', 9),
(236, 'Kodagu', 9),
(237, 'Kolar', 9),
(238, 'Koppal', 9),
(239, 'Mandya', 9),
(240, 'Mysore', 9),
(241, 'Raichur', 9),
(242, 'Shimoga', 9),
(243, 'Tumkur', 9),
(244, 'Udupi', 9),
(245, 'Uttara Kannada', 9),
(246, 'Ramanagara', 9),
(247, 'Chikballapur', 9),
(248, 'Yadagiri', 9),
(249, 'Alappuzha', 10),
(250, 'Ernakulam', 10),
(251, 'Idukki', 10),
(252, 'Kollam', 10),
(253, 'Kannur', 10),
(254, 'Kasaragod', 10),
(255, 'Kottayam', 10),
(256, 'Kozhikode', 10),
(257, 'Malappuram', 10),
(258, 'Palakkad', 10),
(259, 'Pathanamthitta', 10),
(260, 'Thrissur', 10),
(261, 'Thiruvananthapuram', 10),
(262, 'Wayanad', 10),
(263, 'Alirajpur', 11),
(264, 'Anuppur', 11),
(265, 'Ashok Nagar', 11),
(266, 'Balaghat', 11),
(267, 'Barwani', 11),
(268, 'Betul', 11),
(269, 'Bhind', 11),
(270, 'Bhopal', 11),
(271, 'Burhanpur', 11),
(272, 'Chhatarpur', 11),
(273, 'Chhindwara', 11),
(274, 'Damoh', 11),
(275, 'Datia', 11),
(276, 'Dewas', 11),
(277, 'Dhar', 11),
(278, 'Dindori', 11),
(279, 'Guna', 11),
(280, 'Gwalior', 11),
(281, 'Harda', 11),
(282, 'Hoshangabad', 11),
(283, 'Indore', 11),
(284, 'Jabalpur', 11),
(285, 'Jhabua', 11),
(286, 'Katni', 11),
(287, 'Khandwa', 11),
(288, 'Khargone', 11),
(289, 'Mandla', 11),
(290, 'Mandsaur', 11),
(291, 'Morena', 11),
(292, 'Narsinghpur', 11),
(293, 'Neemuch', 11),
(294, 'Panna', 11),
(295, 'Rewa', 11),
(296, 'Rajgarh', 11),
(297, 'Ratlam', 11),
(298, 'Raisen', 11),
(299, 'Sagar', 11),
(300, 'Satna', 11),
(301, 'Sehore', 11),
(302, 'Seoni', 11),
(303, 'Shahdol', 11),
(304, 'Shajapur', 11),
(305, 'Sheopur', 11),
(306, 'Shivpuri', 11),
(307, 'Sidhi', 11),
(308, 'Singrauli', 11),
(309, 'Tikamgarh', 11),
(310, 'Ujjain', 11),
(311, 'Umaria', 11),
(312, 'Vidisha', 11),
(313, 'Ahmednagar', 12),
(314, 'Akola', 12),
(315, 'Amrawati', 12),
(316, 'Aurangabad', 12),
(317, 'Bhandara', 12),
(318, 'Beed', 12),
(319, 'Buldhana', 12),
(320, 'Chandrapur', 12),
(321, 'Dhule', 12),
(322, 'Gadchiroli', 12),
(323, 'Gondiya', 12),
(324, 'Hingoli', 12),
(325, 'Jalgaon', 12),
(326, 'Jalna', 12),
(327, 'Kolhapur', 12),
(328, 'Latur', 12),
(329, 'Mumbai City', 12),
(330, 'Mumbai suburban', 12),
(331, 'Nandurbar', 12),
(332, 'Nanded', 12),
(333, 'Nagpur', 12),
(334, 'Nashik', 12),
(335, 'Osmanabad', 12),
(336, 'Parbhani', 12),
(337, 'Pune', 12),
(338, 'Raigad', 12),
(339, 'Ratnagiri', 12),
(340, 'Sindhudurg', 12),
(341, 'Sangli', 12),
(342, 'Solapur', 12),
(343, 'Satara', 12),
(344, 'Thane', 12),
(345, 'Wardha', 12),
(346, 'Washim', 12),
(347, 'Yavatmal', 12),
(348, 'Bishnupur', 13),
(349, 'Churachandpur', 13),
(350, 'Chandel', 13),
(351, 'Imphal East', 13),
(352, 'Senapati', 13),
(353, 'Tamenglong', 13),
(354, 'Thoubal', 13),
(355, 'Ukhrul', 13),
(356, 'Imphal West', 13),
(357, 'East Garo Hills', 14),
(358, 'East Khasi Hills', 14),
(359, 'Jaintia Hills', 14),
(360, 'Ri-Bhoi', 14),
(361, 'South Garo Hills', 14),
(362, 'West Garo Hills', 14),
(363, 'West Khasi Hills', 14),
(364, 'Aizawl', 15),
(365, 'Champhai', 15),
(366, 'Kolasib', 15),
(367, 'Lawngtlai', 15),
(368, 'Lunglei', 15),
(369, 'Mamit', 15),
(370, 'Saiha', 15),
(371, 'Serchhip', 15),
(372, 'Dimapur', 16),
(373, 'Kohima', 16),
(374, 'Mokokchung', 16),
(375, 'Mon', 16),
(376, 'Phek', 16),
(377, 'Tuensang', 16),
(378, 'Wokha', 16),
(379, 'Zunheboto', 16),
(380, 'Angul', 17),
(381, 'Boudh', 17),
(382, 'Bhadrak', 17),
(383, 'Bolangir', 17),
(384, 'Bargarh', 17),
(385, 'Baleswar', 17),
(386, 'Cuttack', 17),
(387, 'Debagarh', 17),
(388, 'Dhenkanal', 17),
(389, 'Ganjam', 17),
(390, 'Gajapati', 17),
(391, 'Jharsuguda', 17),
(392, 'Jajapur', 17),
(393, 'Jagatsinghpur', 17),
(394, 'Khordha', 17),
(395, 'Kendujhar', 17),
(396, 'Kalahandi', 17),
(397, 'Kandhamal', 17),
(398, 'Koraput', 17),
(399, 'Kendrapara', 17),
(400, 'Malkangiri', 17),
(401, 'Mayurbhanj', 17),
(402, 'Nabarangpur', 17),
(403, 'Nuapada', 17),
(404, 'Nayagarh', 17),
(405, 'Puri', 17),
(406, 'Rayagada', 17),
(407, 'Sambalpur', 17),
(408, 'Subarnapur', 17),
(409, 'Sundargarh', 17),
(410, 'Karaikal', 27),
(411, 'Mahe', 27),
(412, 'Puducherry', 27),
(413, 'Yanam', 27),
(414, 'Amritsar', 18),
(415, 'Bathinda', 18),
(416, 'Firozpur', 18),
(417, 'Faridkot', 18),
(418, 'Fatehgarh Sahib', 18),
(419, 'Gurdaspur', 18),
(420, 'Hoshiarpur', 18),
(421, 'Jalandhar', 18),
(422, 'Kapurthala', 18),
(423, 'Ludhiana', 18),
(424, 'Mansa', 18),
(425, 'Moga', 18),
(426, 'Mukatsar', 18),
(427, 'Nawan Shehar', 18),
(428, 'Patiala', 18),
(429, 'Rupnagar', 18),
(430, 'Sangrur', 18),
(431, 'Ajmer', 19),
(432, 'Alwar', 19),
(433, 'Bikaner', 19),
(434, 'Barmer', 19),
(435, 'Banswara', 19),
(436, 'Bharatpur', 19),
(437, 'Baran', 19),
(438, 'Bundi', 19),
(439, 'Bhilwara', 19),
(440, 'Churu', 19),
(441, 'Chittorgarh', 19),
(442, 'Dausa', 19),
(443, 'Dholpur', 19),
(444, 'Dungapur', 19),
(445, 'Ganganagar', 19),
(446, 'Hanumangarh', 19),
(447, 'Juhnjhunun', 19),
(448, 'Jalore', 19),
(449, 'Jodhpur', 19),
(450, 'Jaipur', 19),
(451, 'Jaisalmer', 19),
(452, 'Jhalawar', 19),
(453, 'Karauli', 19),
(454, 'Kota', 19),
(455, 'Nagaur', 19),
(456, 'Pali', 19),
(457, 'Pratapgarh', 19),
(458, 'Rajsamand', 19),
(459, 'Sikar', 19),
(460, 'Sawai Madhopur', 19),
(461, 'Sirohi', 19),
(462, 'Tonk', 19),
(463, 'Udaipur', 19),
(464, 'East Sikkim', 20),
(465, 'North Sikkim', 20),
(466, 'South Sikkim', 20),
(467, 'West Sikkim', 20),
(468, 'Ariyalur', 21),
(469, 'Chennai', 21),
(470, 'Coimbatore', 21),
(471, 'Cuddalore', 21),
(472, 'Dharmapuri', 21),
(473, 'Dindigul', 21),
(474, 'Erode', 21),
(475, 'Kanchipuram', 21),
(476, 'Kanyakumari', 21),
(477, 'Karur', 21),
(478, 'Madurai', 21),
(479, 'Nagapattinam', 21),
(480, 'The Nilgiris', 21),
(481, 'Namakkal', 21),
(482, 'Perambalur', 21),
(483, 'Pudukkottai', 21),
(484, 'Ramanathapuram', 21),
(485, 'Salem', 21),
(486, 'Sivagangai', 21),
(487, 'Tiruppur', 21),
(488, 'Tiruchirappalli', 21),
(489, 'Theni', 21),
(490, 'Tirunelveli', 21),
(491, 'Thanjavur', 21),
(492, 'Thoothukudi', 21),
(493, 'Thiruvallur', 21),
(494, 'Thiruvarur', 21),
(495, 'Tiruvannamalai', 21),
(496, 'Vellore', 21),
(497, 'Villupuram', 21),
(498, 'Dhalai', 22),
(499, 'North Tripura', 22),
(500, 'South Tripura', 22),
(501, 'West Tripura', 22),
(502, 'Almora', 33),
(503, 'Bageshwar', 33),
(504, 'Chamoli', 33),
(505, 'Champawat', 33),
(506, 'Dehradun', 33),
(507, 'Haridwar', 33),
(508, 'Nainital', 33),
(509, 'Pauri Garhwal', 33),
(510, 'Pithoragharh', 33),
(511, 'Rudraprayag', 33),
(512, 'Tehri Garhwal', 33),
(513, 'Udham Singh Nagar', 33),
(514, 'Uttarkashi', 33),
(515, 'Agra', 23),
(516, 'Allahabad', 23),
(517, 'Aligarh', 23),
(518, 'Ambedkar Nagar', 23),
(519, 'Auraiya', 23),
(520, 'Azamgarh', 23),
(521, 'Barabanki', 23),
(522, 'Badaun', 23),
(523, 'Bagpat', 23),
(524, 'Bahraich', 23),
(525, 'Bijnor', 23),
(526, 'Ballia', 23),
(527, 'Banda', 23),
(528, 'Balrampur', 23),
(529, 'Bareilly', 23),
(530, 'Basti', 23),
(531, 'Bulandshahr', 23),
(532, 'Chandauli', 23),
(533, 'Chitrakoot', 23),
(534, 'Deoria', 23),
(535, 'Etah', 23),
(536, 'Kanshiram Nagar', 23),
(537, 'Etawah', 23),
(538, 'Firozabad', 23),
(539, 'Farrukhabad', 23),
(540, 'Fatehpur', 23),
(541, 'Faizabad', 23),
(542, 'Gautam Buddha Nagar', 23),
(543, 'Gonda', 23),
(544, 'Ghazipur', 23),
(545, 'Gorkakhpur', 23),
(546, 'Ghaziabad', 23),
(547, 'Hamirpur', 23),
(548, 'Hardoi', 23),
(549, 'Mahamaya Nagar', 23),
(550, 'Jhansi', 23),
(551, 'Jalaun', 23),
(552, 'Jyotiba Phule Nagar', 23),
(553, 'Jaunpur District', 23),
(554, 'Kanpur Dehat', 23),
(555, 'Kannauj', 23),
(556, 'Kanpur Nagar', 23),
(557, 'Kaushambi', 23),
(558, 'Kushinagar', 23),
(559, 'Lalitpur', 23),
(560, 'Lakhimpur Kheri', 23),
(561, 'Lucknow', 23),
(562, 'Mau', 23),
(563, 'Meerut', 23),
(564, 'Maharajganj', 23),
(565, 'Mahoba', 23),
(566, 'Mirzapur', 23),
(567, 'Moradabad', 23),
(568, 'Mainpuri', 23),
(569, 'Mathura', 23),
(570, 'Muzaffarnagar', 23),
(571, 'Pilibhit', 23),
(572, 'Pratapgarh', 23),
(573, 'Rampur', 23),
(574, 'Rae Bareli', 23),
(575, 'Saharanpur', 23),
(576, 'Sitapur', 23),
(577, 'Shahjahanpur', 23),
(578, 'Sant Kabir Nagar', 23),
(579, 'Siddharthnagar', 23),
(580, 'Sonbhadra', 23),
(581, 'Sant Ravidas Nagar', 23),
(582, 'Sultanpur', 23),
(583, 'Shravasti', 23),
(584, 'Unnao', 23),
(585, 'Varanasi', 23),
(586, 'Birbhum', 24),
(587, 'Bankura', 24),
(588, 'Bardhaman', 24),
(589, 'Darjeeling', 24),
(590, 'Dakshin Dinajpur', 24),
(591, 'Hooghly', 24),
(592, 'Howrah', 24),
(593, 'Jalpaiguri', 24),
(594, 'Cooch Behar', 24),
(595, 'Kolkata', 24),
(596, 'Malda', 24),
(597, 'Midnapore', 24),
(598, 'Murshidabad', 24),
(599, 'Nadia', 24),
(600, 'North 24 Parganas', 24),
(601, 'South 24 Parganas', 24),
(602, 'Purulia', 24),
(603, 'Uttar Dinajpur', 24);

-- --------------------------------------------------------

--
-- Table structure for table `cdx_final_parts`
--

CREATE TABLE `cdx_final_parts` (
  `final_parts_id` int(11) NOT NULL,
  `partd_details` text DEFAULT NULL,
  `report_id` int(11) DEFAULT NULL COMMENT 'Report ID',
  `wo_tax` varchar(255) DEFAULT NULL,
  `estimated_amount` varchar(150) DEFAULT NULL,
  `assessed_amount` varchar(155) DEFAULT NULL,
  `diffrence_amount` varchar(155) DEFAULT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cdx_final_parts`
--

INSERT INTO `cdx_final_parts` (`final_parts_id`, `partd_details`, `report_id`, `wo_tax`, `estimated_amount`, `assessed_amount`, `diffrence_amount`, `create_date`, `status`) VALUES
(1, '{\"dept\":[\"2\"],\"item_name\":[\"Bonat\"],\"hsn_code\":[\"TYU987\"],\"remark\":[\"Bent\"],\"estimate\":[\"500\"],\"assessed\":[\"400\"],\"qe_aq\":[\"01 - 01\"],\"bill_sr\":[\"BH987\"],\"gst\":[\"2\"],\"total\":[\"408\"],\"type\":[\"Disallowed\"]}', NULL, 'estimate', '500.00', '408.00', '92.00', '2022-09-21 15:29:22', '0'),
(2, '{\"dept\":[\"2\"],\"item_name\":[\"steel body\"],\"hsn_code\":[\"TYU987\"],\"remark\":[\"Bent\"],\"estimate\":[\"500\"],\"assessed\":[\"400\"],\"qe_aq\":[\"01 - 01\"],\"bill_sr\":[\"BH987\"],\"gst\":[\"2\"],\"total\":[\"408\"],\"type\":[\"Disallowed\"]}', NULL, 'estimate', '500.00', '408.00', '92.00', '2022-09-21 15:30:05', '0'),
(3, '{\"dept\":[\"2\",\"2\"],\"item_name\":[\"Back\",\"Bonat123\"],\"hsn_code\":[\"TYU987\",\"TYU987\"],\"remark\":[\"Needed\",\"Needed\"],\"estimate\":[\"500\",\"500\"],\"assessed\":[\"400\",\"400\"],\"qe_aq\":[\"01 - 01\",\"01 - 01\"],\"bill_sr\":[\"BH987\",\"BH987\"],\"gst\":[\"2\",\"2\"],\"total\":[\"408\",\"408\"],\"type\":[\"Composit\",\"Glass\"]}', NULL, 'estimate', '1010.00', '816.00', '194.00', '2022-09-21 15:30:47', '0'),
(4, '{\"dept\":[\"2\"],\"item_name\":[\"Bonat\"],\"hsn_code\":[\"TYU987\"],\"remark\":[\"Bent\"],\"estimate\":[\"500\"],\"assessed\":[\"400\"],\"qe_aq\":[\"01 - 01\"],\"bill_sr\":[\"BH987\"],\"gst\":[\"2\"],\"total\":[\"408\"],\"type\":[\"Disallowed\"]}', 85, 'estimate', '500.00', '408.00', '92.00', '2022-09-21 17:37:12', '0'),
(5, '{\"dept\":[null],\"item_name\":[null],\"hsn_code\":[null],\"remark\":[null],\"estimate\":[null],\"assessed\":[null],\"qe_aq\":[\"01 - 01\"],\"bill_sr\":[null],\"gst\":[null],\"total\":[null],\"type\":[null]}', NULL, 'estimate', NULL, NULL, '0.00', '2022-09-26 12:50:19', '0');

-- --------------------------------------------------------

--
-- Table structure for table `cdx_generated_url`
--

CREATE TABLE `cdx_generated_url` (
  `generated_url_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `generator_token` text DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cdx_generated_url`
--

INSERT INTO `cdx_generated_url` (`generated_url_id`, `name`, `email`, `generator_token`, `status`, `create_date`) VALUES
(10, 'Som', 'som@mailinator.com', 'b2c37f40e2f0d08bfefeea8ad720e5a3GP10', '1', '2022-09-02 12:35:17'),
(11, 'vicky', 'vikas.salasar@gmail.com', '0656fa7ec3b53747940a250135fe60baGP11', '1', '2022-09-08 14:35:29'),
(12, 'test', 'das@csa.com', '8d2824958e6c94313bab4ba36018a94aGP12', '1', '2022-09-08 16:17:15'),
(13, 'Rashmi kulkarni', 'rashmikulkarni@gmail.com', '069b3c96f2949a045f165d7edee4404dGP13', '1', '2022-09-15 12:46:20');

-- --------------------------------------------------------

--
-- Table structure for table `cdx_insurer_info`
--

CREATE TABLE `cdx_insurer_info` (
  `insurer_info_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `company_name` varchar(120) NOT NULL,
  `company_address` text NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cdx_parts`
--

CREATE TABLE `cdx_parts` (
  `part_id` int(11) NOT NULL,
  `part_name` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cdx_parts`
--

INSERT INTO `cdx_parts` (`part_id`, `part_name`, `status`) VALUES
(5, 'engine & transmission', 1),
(6, 'classis assembly', 1),
(7, 'electricals', 1),
(8, 'load body', 1),
(9, 'fual system 1', 1),
(10, 'exhaust system', 1),
(11, 'brake system', 1),
(12, 'steering system', 1),
(13, 'front suspension', 1),
(14, 'rear suspension', 1),
(15, 'wheel discs & types', 1),
(16, 'moter car', 1),
(21, 'moter car new model', 1),
(22, 'body part', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cdx_password_resets`
--

CREATE TABLE `cdx_password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cdx_password_resets`
--

INSERT INTO `cdx_password_resets` (`id`, `email`, `token`, `created_at`) VALUES
(58, 'vikas.dwivedi@salasarcybersolutions.com', 'D1CmDTNFYUcSiDUICY7tWDAPJ5Ijo1oFlcqvIS77cjEKXOeka7Ns2drSwD2wcaqC', '2022-09-30 03:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `cdx_report_album_images`
--

CREATE TABLE `cdx_report_album_images` (
  `album_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `album_filename` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cdx_report_album_images`
--

INSERT INTO `cdx_report_album_images` (`album_id`, `report_id`, `album_filename`, `updated_at`, `created_at`) VALUES
(18, 64, 'albumImage-1662702066942-64.png', '2022-09-09 00:11:03', '2022-09-09 00:11:03'),
(20, 64, 'albumImage-1662702066829-64.png', '2022-09-09 00:11:04', '2022-09-09 00:11:04'),
(21, 65, 'albumImage-1662703737457-65.png', '2022-09-09 00:38:53', '2022-09-09 00:38:53'),
(22, 65, 'albumImage-1662703737348-65.png', '2022-09-09 00:38:53', '2022-09-09 00:38:53'),
(23, 65, 'albumImage-1662703737608-65.png', '2022-09-09 00:38:54', '2022-09-09 00:38:54'),
(26, 64, 'albumImage-1664537482941-64.png', '2022-09-30 06:01:24', '2022-09-30 06:01:24'),
(27, 64, 'albumImage-1664537483130-64.png', '2022-09-30 06:01:25', '2022-09-30 06:01:25'),
(28, 64, 'albumImage-1664537483274-64.png', '2022-09-30 06:01:25', '2022-09-30 06:01:25');

-- --------------------------------------------------------

--
-- Table structure for table `cdx_report_damage_details`
--

CREATE TABLE `cdx_report_damage_details` (
  `damage_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `parts` text NOT NULL,
  `subParts` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cdx_report_driver_licence_details`
--

CREATE TABLE `cdx_report_driver_licence_details` (
  `driver_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `driving_licence` varchar(255) DEFAULT NULL,
  `driver_name` varchar(255) NOT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `valid_from` date DEFAULT NULL,
  `issuing_authority` varchar(255) DEFAULT NULL,
  `licence_type` varchar(255) DEFAULT NULL,
  `badge` varchar(255) DEFAULT NULL,
  `remark` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cdx_report_driver_licence_details`
--

INSERT INTO `cdx_report_driver_licence_details` (`driver_id`, `report_id`, `driving_licence`, `driver_name`, `date_of_birth`, `issue_date`, `valid_from`, `issuing_authority`, `licence_type`, `badge`, `remark`) VALUES
(9, 33, '1234test', 'kamal patidar', '2022-03-15', '2022-05-11', '2022-10-21', 'yes', 'LMV-NT', 'no', 'only for test'),
(10, 34, 'test123', 'kamal patidar', '2022-08-06', '2022-06-11', '2022-10-27', 'no any', 'LMV-TT', 'no', 'no any remark'),
(11, 34, 'test123', 'kamal patidar', '2022-08-06', '2022-06-11', '2022-10-27', 'no any', 'LMV-TT', 'no', 'no any remark'),
(12, 40, 'sd', 'sd', '2022-09-22', '2022-09-22', '2022-09-01', 'd', 'LMV-NT', 'asd', 'sad'),
(13, 33, '1234test', 'kamal patidar', '2022-03-15', '2022-05-11', '2022-10-21', 'yes', 'LMV-NT', 'no', 'only for test'),
(14, 33, '1234test', 'kamal patidar', '2022-03-15', '2022-05-11', '2022-10-21', 'yes', 'LMV-NT', 'no', 'only for test'),
(15, 33, '1234test', 'kamal patidar', '2022-03-15', '2022-05-11', '2022-10-21', 'yes', 'LMV-NT', 'no', 'only for test'),
(16, 33, '1234test', 'kamal patidar', '2022-03-16', '2022-05-11', '2022-10-21', 'yes', 'LMV-NT', 'no', 'only for test'),
(17, 33, '1234test', 'kamal patidar', '2022-03-15', '2022-05-11', '2022-10-21', 'yes', 'LMV-NT', 'no', 'only for test'),
(18, 33, '1234test', 'kamal patidar', '2022-03-15', '2022-05-11', '2022-10-21', 'yes', 'LMV-NT', 'no', 'only for test'),
(19, 33, '1234test', 'kamal patidar', '2022-03-15', '2022-05-11', '2022-10-21', 'yes', 'LMV-NT', 'no', 'only for test'),
(20, 33, '1234test', 'kamal patidar', '2022-03-15', '2022-05-11', '2022-10-21', 'yes', 'LMV-NT', 'no', 'only for test'),
(21, 33, '1234test', 'kamal patidar', '2022-03-15', '2022-05-11', '2022-10-21', 'yes', 'LMV-NT', 'no', 'only for test'),
(22, 33, '1234test', 'kamal patidar', '2022-03-15', '2022-05-11', '2022-10-21', 'yes', 'LMV-NT', 'no', 'only for test'),
(23, 33, '1234test', 'kamal patidar', '2022-03-15', '2022-05-11', '2022-10-21', 'yes', 'LMV-NT', 'no', 'only for test'),
(24, 36, 'gfgfdgfd', 'gfdgfdg', '2022-09-16', '2022-09-30', '2022-10-29', 'gggggggg', 'LMV-TT', 'ggggggggggg', 'gfdgfdgdfg'),
(25, 61, 'wqwq', 'Husain', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 61, 'wqwq', 'Husain', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 62, '123', 'Denial jonh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 64, 'CGPA00132', 'Kamal Patidar', '1991-07-10', '2022-07-21', '2023-01-13', NULL, 'LMV-TT', NULL, NULL),
(29, 65, 'Dlghdsfghdk', 'TEst001', '1991-12-11', '2020-12-12', '2025-12-11', 'indore', 'LMV-NT', 'dhrfh', 'verified'),
(30, 76, 'Driving lic', 'vikas dwivedi', '2022-09-17', '2022-09-16', '2022-09-22', NULL, NULL, NULL, NULL),
(31, 82, 'SJDJSLYY8686', 'vikas dwivedi', NULL, NULL, NULL, NULL, 'LMV-TT', NULL, NULL),
(32, 83, 'sd', 'vikas dwivedi', NULL, NULL, NULL, NULL, 'LMV-TT', NULL, NULL),
(33, 84, 'sd', 'vikas dwivedi', NULL, NULL, NULL, NULL, 'LMV-TT', NULL, NULL),
(34, 85, 'sd', 'vikas dwivedi', NULL, NULL, NULL, NULL, 'LMV-TT', NULL, NULL),
(35, 86, '123LI', 'vikas dwivedi', NULL, NULL, NULL, NULL, 'LMV-TT', NULL, NULL),
(36, 87, 'sd', 'vikas dwivedi', '2022-09-03', NULL, NULL, NULL, 'LMV-TT', NULL, NULL),
(37, 88, 'Driving lic', 'vikas dwivedi', '2022-09-16', NULL, NULL, NULL, 'LMV-TT', NULL, NULL),
(38, 89, '123', 'vikas dwivedi', '2022-09-16', NULL, NULL, NULL, 'LMV-TT', NULL, NULL),
(39, 90, 'sd', 'Denial jonh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 91, 'Driving', 'sadsa', '2022-09-02', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 92, 'sd', 'vikas dwivedi', NULL, NULL, NULL, NULL, 'LMV-TT', NULL, NULL),
(42, 93, 'sd', 'vikas dwivedi', NULL, NULL, NULL, NULL, 'LMV-TT', NULL, NULL),
(43, 98, 'LIC', 'Robot', '2022-03-15', '2021-08-21', '2021-08-21', 'issung', 'HVT', 'bages', 'gdfgdfg'),
(44, 88, 'Driving lic', 'vikas dwivedi', '2022-09-16', NULL, NULL, NULL, 'LMV-TT', NULL, NULL),
(45, 77, 'Driving licasA', 'asAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 158, 'fsdf', 'sdfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cdx_report_images`
--

CREATE TABLE `cdx_report_images` (
  `id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL DEFAULT 0,
  `filename` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cdx_report_images`
--

INSERT INTO `cdx_report_images` (`id`, `report_id`, `filename`, `updated_at`, `created_at`) VALUES
(112, 34, '1662639890949fixing an air.png', '2022-09-08 06:54:45', '2022-09-08 06:54:45'),
(114, 64, '1662701845596car-1.jpg', '2022-09-09 00:07:20', '2022-09-09 00:07:20'),
(135, 67, '1662706872950car-5.jpg', '2022-09-09 01:31:07', '2022-09-09 01:31:07'),
(136, 67, '1662706872950car-6.jpg', '2022-09-09 01:31:08', '2022-09-09 01:31:08'),
(137, 67, '1662706872950car-3.jpg', '2022-09-09 01:31:08', '2022-09-09 01:31:08'),
(138, 67, '1662706872951car-7.jpg', '2022-09-09 01:31:08', '2022-09-09 01:31:08'),
(139, 67, '1662707270494car-1.jpg', '2022-09-09 01:37:45', '2022-09-09 01:37:45'),
(140, 67, '1662707342188car-1.jpg', '2022-09-09 01:38:56', '2022-09-09 01:38:56'),
(141, 67, '1662707342188car-2.jpg', '2022-09-09 01:38:57', '2022-09-09 01:38:57'),
(144, 67, '1662709963396car-1.jpg', '2022-09-09 02:22:37', '2022-09-09 02:22:37'),
(158, 70, '1662717040541car-1.jpg', '2022-09-09 04:20:35', '2022-09-09 04:20:35'),
(159, 70, '1662717040541car-3.jpg', '2022-09-09 04:20:35', '2022-09-09 04:20:35'),
(164, 72, '166271873386516627187279071249640757624746618.jpg', '2022-09-09 04:48:48', '2022-09-09 04:48:48'),
(166, 72, '1662720841491IMG20220907173144.jpg', '2022-09-09 05:24:00', '2022-09-09 05:24:00'),
(167, 73, '1662721146186Screenshot_2022-08-31-09-09-10-02_21e8cabcf42c673ec340bb67ba55b55b.jpg', '2022-09-09 05:29:03', '2022-09-09 05:29:03'),
(172, 74, '166272292073916627229152118031148203560258778.jpg', '2022-09-09 05:58:36', '2022-09-09 05:58:36'),
(174, 64, '1664366954874car-1.jpg', '2022-09-28 06:39:11', '2022-09-28 06:39:11'),
(175, 64, '1664366954889car-2.jpg', '2022-09-28 06:39:11', '2022-09-28 06:39:11'),
(176, 64, '1664366954890car-4.jpg', '2022-09-28 06:39:12', '2022-09-28 06:39:12'),
(177, 64, '1664366954890car-3.jpg', '2022-09-28 06:39:12', '2022-09-28 06:39:12'),
(178, 64, '1664366954890car-5.jpg', '2022-09-28 06:39:12', '2022-09-28 06:39:12'),
(179, 64, '1664366954890car-6.jpg', '2022-09-28 06:39:12', '2022-09-28 06:39:12'),
(181, 64, '1664366954891car-8.jpg', '2022-09-28 06:39:13', '2022-09-28 06:39:13'),
(184, 64, '1664537339300DSCN0822 - Copy.JPG', '2022-09-30 05:59:00', '2022-09-30 05:59:00'),
(185, 64, '1664537339316DSCN0823 - Copy.JPG', '2022-09-30 05:59:01', '2022-09-30 05:59:01'),
(187, 64, '1664537339319DSCN0824 - Copy.JPG', '2022-09-30 05:59:01', '2022-09-30 05:59:01'),
(188, 64, '1664537339320DSCN0839.JPG', '2022-09-30 05:59:01', '2022-09-30 05:59:01'),
(189, 64, '1664537339321DSCN2111.jpg', '2022-09-30 05:59:02', '2022-09-30 05:59:02'),
(190, 64, '1664537339322DSCN2363.jpg', '2022-09-30 05:59:02', '2022-09-30 05:59:02'),
(191, 64, '1664537339323DSCN2365.jpg', '2022-09-30 05:59:02', '2022-09-30 05:59:02'),
(192, 64, '1665124836799images.jpg', '2022-10-07 01:10:31', '2022-10-07 01:10:31'),
(193, 64, '1665124836804photo-1525609004556-c46c7d6cf023.jpg', '2022-10-07 01:10:31', '2022-10-07 01:10:31');

-- --------------------------------------------------------

--
-- Table structure for table `cdx_report_policy_details`
--

CREATE TABLE `cdx_report_policy_details` (
  `policy_id` int(11) NOT NULL,
  `report_id` int(11) DEFAULT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `idv` int(11) DEFAULT NULL,
  `policy_type` varchar(255) DEFAULT NULL,
  `insurance_from_date` date DEFAULT NULL,
  `insurance_to_date` date DEFAULT NULL,
  `insurer_id` int(11) DEFAULT NULL,
  `insurer_branch_id` int(11) DEFAULT NULL,
  `appointing_office` varchar(255) DEFAULT NULL,
  `insured` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `hpa` varchar(255) DEFAULT NULL,
  `claim` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cdx_report_policy_details`
--

INSERT INTO `cdx_report_policy_details` (`policy_id`, `report_id`, `policy`, `idv`, `policy_type`, `insurance_from_date`, `insurance_to_date`, `insurer_id`, `insurer_branch_id`, `appointing_office`, `insured`, `address`, `hpa`, `claim`) VALUES
(50, 64, '123-4567-8910', 450000, NULL, '2022-07-14', '2023-02-17', NULL, NULL, 'Green colony', 'Green colony', '123 indore', 'only test', 'no any claim record'),
(51, 65, 'test1', 5000, 'Add on policy', '2022-09-09', '2023-09-08', 3, 14, 'Dewas', 'Dewas', 'test Address', 'ICICI', 'Claim001'),
(52, 66, '25369842456', 5365, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 71, 'abc112', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 72, 'Test03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 73, 'Test04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 74, 'test5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 75, '123-4567-8910', 1231, 'Regular', '2022-09-15', '2022-09-15', 6, 24, 'wdw', 'wdw', 'USA', 'hap', 'claim'),
(60, 76, '121012', 123123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 77, '001', 123123, NULL, '2022-09-22', '2022-09-23', NULL, NULL, 'new office', 'new office', 'USA', 'HAP', '123456MAMOP'),
(62, 78, '001', 123123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 79, '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 80, '123-4567-8910', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 81, '005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 82, '001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 83, '8888888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 84, '13231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 85, '001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 86, '0909', 123123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 87, '000000', 123123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 88, '1111111111111111', 123123, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 89, '5555', 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 90, '22222', 22222, 'Regular', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 91, '456654', 456654, 'Add on policy', '2022-09-09', '2022-09-15', 5, 19, 'Rediassion office', 'Rediassion office', NULL, NULL, NULL),
(76, 92, '001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 93, '001-11-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 97, '321-321-321', 123456, 'Regular', '2022-09-29', '2022-09-29', 6, 24, 'Rediassion office', 'Rediassion office', 'Vijay Nagar indore', 'HAP', '123456MAMOP'),
(79, 98, '321-321', 123456, 'Regular', '2021-08-21', '2021-08-21', 6, 24, 'vijay nagar idnroe', 'vijay nagar idnroe', 'Devas', 'HSP', '1234LJHGF'),
(80, 99, '33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 100, '321-321', 123456, NULL, '2021-08-21', '2021-08-21', 4, NULL, 'vijay nagar idnroe', 'vijay nagar idnroe', 'Devas', 'HSP', '1234LJHGF'),
(82, 101, '321-321', 123456, NULL, '2021-08-21', '2021-08-21', NULL, NULL, 'vijay nagar idnroe', 'vijay nagar idnroe', 'Devas', 'HSP', '1234LJHGF'),
(83, 102, '321-321', 123456, NULL, '2021-08-21', '2021-08-21', NULL, NULL, 'vijay nagar idnroe', 'vijay nagar idnroe', 'Devas', 'HSP', '1234LJHGF'),
(84, 103, '321-321', 123456, NULL, '2021-08-21', '2021-08-21', NULL, NULL, 'vijay nagar idnroe', 'vijay nagar idnroe', 'Devas', 'HSP', '1234LJHGF'),
(85, 104, '321-321', 123456, NULL, '2021-08-21', '2021-08-21', NULL, NULL, 'vijay nagar idnroe', 'vijay nagar idnroe', 'Devas', 'HSP', '1234LJHGF'),
(86, 105, '321-321', 123456, NULL, '2021-08-21', '2021-08-21', NULL, NULL, 'vijay nagar idnroe', 'vijay nagar idnroe', 'Devas', 'HSP', '1234LJHGF'),
(87, 106, '321-321', 123456, NULL, '2021-08-21', '2021-08-21', NULL, NULL, 'vijay nagar idnroe', 'vijay nagar idnroe', 'Devas', 'HSP', '1234LJHGF'),
(88, 107, '987789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 108, '123', 132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 109, '887787', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 110, '123-4567-8910', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 111, '123-4567-8910', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 112, '4343', 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 113, '5656', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 114, '7898', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 115, '78787', 123123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 116, '985623', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 117, '001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 118, '123-4567-8910', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 119, '001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 120, '001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 121, '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 122, '123-4567-8910', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 123, '123-4567-8910', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 124, '123-4567-8910', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 125, '001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 126, '7878', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 127, '9638522', 123123, 'Regular', '2022-09-06', '2022-09-09', 3, 13, 'wdw', 'wdw', 'USA', 'hap', '123456MAMOP'),
(109, 128, 'salasar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 129, '11LKJ98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 130, '465', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 131, '465', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 132, '465', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 133, '465', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 134, '465', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 135, '465', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 136, '465', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 137, '98798TR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 138, '001', 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 158, '12345', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 159, '34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 160, '123465', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cdx_report_remark_details`
--

CREATE TABLE `cdx_report_remark_details` (
  `remark_id` int(11) NOT NULL,
  `report_id` int(11) DEFAULT NULL,
  `damages` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `endclosers` text DEFAULT NULL,
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cdx_report_remark_details`
--

INSERT INTO `cdx_report_remark_details` (`remark_id`, `report_id`, `damages`, `notes`, `endclosers`, `remarks`) VALUES
(28, 64, 'yes many damages on vehicle', NULL, 'no any idea', NULL),
(29, 65, NULL, NULL, 'ghfhg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cdx_report_survey_details`
--

CREATE TABLE `cdx_report_survey_details` (
  `survey_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `date_of_accident` date DEFAULT NULL,
  `time_of_accident` varchar(10) DEFAULT NULL,
  `place_of_accident` varchar(150) DEFAULT NULL,
  `vehicle_shifted_to` varchar(150) DEFAULT NULL,
  `parson_available_on_spot` varchar(150) DEFAULT NULL,
  `parmit_to_date` date DEFAULT NULL,
  `allotment_date` date DEFAULT NULL,
  `inspection_date` date DEFAULT NULL,
  `cousenature` text DEFAULT NULL,
  `police_action` varchar(255) DEFAULT NULL,
  `name_of_police_satation` varchar(255) DEFAULT NULL,
  `satation_dairy_no` varchar(255) DEFAULT NULL,
  `nature_of_goods` varchar(150) DEFAULT NULL,
  `Goods_caried` varchar(150) DEFAULT NULL,
  `origin_destination` varchar(150) DEFAULT NULL,
  `lr_invoice_no` varchar(150) DEFAULT NULL,
  `transporter_no` varchar(150) DEFAULT NULL,
  `no_of_passangers` varchar(20) DEFAULT NULL,
  `tp_vehicle_details` text DEFAULT NULL,
  `tp_death_injuri_details` text DEFAULT NULL,
  `death_tp_vehicle_details` text DEFAULT NULL,
  `third_party_property_damages` text DEFAULT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cdx_report_survey_details`
--

INSERT INTO `cdx_report_survey_details` (`survey_id`, `report_id`, `date_of_accident`, `time_of_accident`, `place_of_accident`, `vehicle_shifted_to`, `parson_available_on_spot`, `parmit_to_date`, `allotment_date`, `inspection_date`, `cousenature`, `police_action`, `name_of_police_satation`, `satation_dairy_no`, `nature_of_goods`, `Goods_caried`, `origin_destination`, `lr_invoice_no`, `transporter_no`, `no_of_passangers`, `tp_vehicle_details`, `tp_death_injuri_details`, `death_tp_vehicle_details`, `third_party_property_damages`, `create_date`) VALUES
(7, 64, '2022-07-21', '12:05', 'indore', 'indore', 'ankit patidar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-09 11:05:11'),
(8, 65, '2022-09-07', '12:12 Am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-09 11:35:27'),
(9, 76, '2022-09-15', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-15 10:49:00'),
(10, 85, '2022-09-09', '04 : 00 AM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-21 17:33:21'),
(11, 45, '2022-09-15', '04 : 00 AM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-21 17:38:30'),
(12, 98, '2021-08-18', '05 : 00 PM', 'indore', NULL, NULL, NULL, '2021-08-21', NULL, NULL, 'no action', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-22 12:10:12'),
(13, 77, '2022-09-15', '04 : 00 AM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30 15:55:16');

-- --------------------------------------------------------

--
-- Table structure for table `cdx_report_vehicle_details`
--

CREATE TABLE `cdx_report_vehicle_details` (
  `vehicle_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `master_vehicle_id` int(11) NOT NULL,
  `vehicle_type` int(1) DEFAULT NULL COMMENT '1-vehicle\r\n2-commercial vehicle',
  `registration_no` varchar(255) DEFAULT NULL,
  `registerd_owner` varchar(255) DEFAULT NULL,
  `owner_sr_trs` varchar(255) DEFAULT NULL,
  `date_of` varchar(255) DEFAULT NULL,
  `date_of_date` date DEFAULT NULL,
  `chassis` varchar(255) DEFAULT NULL,
  `chassis_phy_checked` int(1) DEFAULT NULL,
  `engine` varchar(255) DEFAULT NULL,
  `engine_phy_checked` int(1) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `make_variant_mod` varchar(255) DEFAULT NULL,
  `fuel_used` varchar(255) DEFAULT NULL,
  `type_fo_body` varchar(255) DEFAULT NULL,
  `cubic_capacity` varchar(255) DEFAULT NULL,
  `accident_condition` varchar(255) DEFAULT NULL,
  `reg_laden_wt` varchar(255) DEFAULT NULL,
  `unladen_wt` varchar(255) DEFAULT NULL,
  `seating_capacity` varchar(255) DEFAULT NULL,
  `class_of_vehicle` varchar(255) DEFAULT NULL,
  `tax_particulars` varchar(255) DEFAULT NULL,
  `odometer_reading` varchar(255) DEFAULT NULL,
  `puc_details` varchar(255) DEFAULT NULL,
  `puc_upto_date` date DEFAULT NULL,
  `remark_rlw` text DEFAULT NULL,
  `remark_ulw` text DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `com_fitness_certificate` varchar(255) DEFAULT NULL,
  `com_fitness_to_date` date DEFAULT NULL,
  `com_fitness_from_date` date DEFAULT NULL,
  `com_parmit_to_date` date DEFAULT NULL,
  `com_parmit_from_date` date DEFAULT NULL,
  `com_type_of_parmit` varchar(255) DEFAULT NULL,
  `com_authorization_validity` varchar(255) DEFAULT NULL,
  `com_area_of_opration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cdx_report_vehicle_details`
--

INSERT INTO `cdx_report_vehicle_details` (`vehicle_id`, `report_id`, `master_vehicle_id`, `vehicle_type`, `registration_no`, `registerd_owner`, `owner_sr_trs`, `date_of`, `date_of_date`, `chassis`, `chassis_phy_checked`, `engine`, `engine_phy_checked`, `color`, `make_variant_mod`, `fuel_used`, `type_fo_body`, `cubic_capacity`, `accident_condition`, `reg_laden_wt`, `unladen_wt`, `seating_capacity`, `class_of_vehicle`, `tax_particulars`, `odometer_reading`, `puc_details`, `puc_upto_date`, `remark_rlw`, `remark_ulw`, `remark`, `com_fitness_certificate`, `com_fitness_to_date`, `com_fitness_from_date`, `com_parmit_to_date`, `com_parmit_from_date`, `com_type_of_parmit`, `com_authorization_validity`, `com_area_of_opration`) VALUES
(51, 64, 1, 1, 'MP09QG3866', 'kamal patidar', 'no nay idea', 'registration', '2022-03-16', '0012547', 1, '45875kl', 1, 'HA/S/0001', 'New Model', 'Petrol', 'Maruti', '70cc to 1700cc', 'No', 'vehicle weight', '3000‑9000', '4+2', 'Vehicle size class', 'Rs.64 per quarter', '45000', 'yes', '2022-12-30', 'no nay remark', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 65, 3, 1, 'test001', 'TEst1', '1', 'purches', '2020-10-10', 'Chassis test', 1, 'Engine Test', 1, 'HA/S/0001', 'New Model', 'Diesel', 'fsdgg', '80cc to 1600cc', 'No', '1250', '3200‑5000', '4+2', 'Vehicle size class', 'TAx', '2550', NULL, NULL, 'gdfg', NULL, 'adgaj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 66, 2, 1, 'test001', 'test', NULL, NULL, NULL, NULL, 1, NULL, 1, 'HA/S/0001', 'Nw Model', 'Petrol', 'Maruti', '50cc to 1500cc', 'No', 'vehicle weight', '3200‑6000', '4+3', 'Vehicle size class', 'Rs.64 per quarter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 76, 2, 1, '7867k', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 'HA/S/0001', 'Nw Model', 'Petrol', 'Maruti', '50cc to 1500cc', 'No', 'vehicle weight', '3200‑6000', '4+3', 'Vehicle size class', 'Rs.64 per quarter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 78, 1, 1, '123AMAOU123', 'Vikas Dwivedi', '2022-09-09', '2022-09-17', '2022-09-23', NULL, NULL, 'ENGINE', NULL, NULL, 'Make variant', NULL, 'steel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 78, 1, 1, '123AMAOU123', 'Vikas Dwivedi', '2022-09-09', '2022-09-17', '2022-09-23', NULL, NULL, 'ENGINE', NULL, 'RED', 'Make variant', 'CNG', 'steel', '80cc to 1600cc', 'pre accident', NULL, '46565', 'seeting capacy', 'no', 'tax', 'odemeter', 'PUC', '2022-09-23', 'There is very cracked', 'remark', 'gdfgfdgdfg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 78, 1, 1, '123AMAOU123', 'Vikas Dwivedi', '2022-09-09', '2022-09-17', '2022-09-23', NULL, NULL, 'ENGINE', NULL, 'RED', 'Make variant', 'CNG', 'steel', '80cc to 1600cc', 'pre accident', NULL, '46565', 'seeting capacy', 'no', 'tax', 'odemeter', 'PUC', '2022-09-23', 'There is very cracked', 'remark', 'gdfgfdgdfg', NULL, NULL, '2022-09-03', NULL, NULL, NULL, NULL, NULL),
(58, 80, 1, 1, 'ewr', 'Vikas Dwivedi', '2022-09-16', '2022-09-03', '2022-09-01', NULL, NULL, 'New Engine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 80, 1, 1, 'ewr', 'Vikas Dwivedi', '2022-09-16', '2022-09-03', '2022-09-01', NULL, NULL, 'New Engine', NULL, 'RED', 'M0007', 'CNG', 'Steel Body', '80cc to 1600cc', 'pre accident', NULL, '3220‑6000', 'seeting capacy', 'no', 'tax', 'odomette', 'puc details', '2022-09-16', 'there  is no issued', 'Damges in car', 'mjjjhghfghhb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 80, 1, 1, 'ewr', 'Vikas Dwivedi', '2022-09-16', '2022-09-03', '2022-09-01', NULL, NULL, 'New Engine', NULL, 'RED', 'M0007', 'CNG', 'Steel Body', '80cc to 1600cc', 'pre accident', NULL, '3220‑6000', 'seeting capacy', 'no', 'tax', 'odomette', 'puc details', '2022-09-16', 'there  is no issued', 'Damges in car', 'mjjjhghfghhb', NULL, '2022-09-21', '2022-09-15', NULL, NULL, NULL, NULL, NULL),
(61, 80, 1, 1, 'ewr', 'Vikas Dwivedi', '2022-09-16', '2022-09-03', '2022-09-01', NULL, NULL, 'New Engine', NULL, 'RED', 'M0007', 'CNG', 'Steel Body', '80cc to 1600cc', 'pre accident', NULL, '3220‑6000', 'seeting capacy', 'no', 'tax', 'odomette', 'puc details', '2022-09-16', 'there  is no issued', 'Damges in car', 'mjjjhghfghhb', NULL, '2022-09-21', '2022-09-15', '2022-09-24', '2022-09-17', 'NH hiway', 'auth', 'rote india'),
(62, 81, 1, 1, '123AMA', 'Vikas Dwivedi', NULL, NULL, NULL, 'classic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 81, 1, 1, '123AMA', 'Vikas Dwivedi', NULL, NULL, NULL, 'classic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 82, 1, 1, '123AMA', 'ewr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 83, 1, 1, '123AMA00000', 'uuuuu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 84, 1, 1, '123AMA', 'Vikas Dwivedi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 85, 1, 1, '123AMA', 'Vikas Dwivedi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 86, 1, 1, '123AMA', 'Vikas Dwive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 87, 1, 1, '123AMA', 'Vikas Dwivedi', '2022-09-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 88, 1, 1, '123AMA', 'Vikas Dwivedi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 89, 1, 1, '123AMA', 'Vikas Dwivedi', '2022-09-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 90, 2, 1, 'sd', 'Vikas Dwivedi', NULL, NULL, NULL, NULL, 1, NULL, 1, 'HA/S/0001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 91, 2, 1, 'sd', 'Vikas Dwivedi', NULL, NULL, NULL, NULL, 1, NULL, 1, 'HA/S/0001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 92, 1, 1, '123AMA', 'Vikas Dwivedi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 93, 1, 1, '123AMA', 'Vikas Dwivedi', '2022-09-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 98, 1, 1, '132456LKJ', 'Team Kook', '2021-08-21', '2021-08-21', '2021-08-21', 'classi', NULL, 'Engineer', NULL, 'red ddep', 'make', 'cng', 'Steel', 'cubic', 'pre accident', NULL, 'ul', '6', 'top class', 'tax particuler', 'odometer`', 'PUC', '2021-08-20', 'reamrk', 'remark2', 'reamrk doe more some them', NULL, '2021-08-21', '2021-08-21', '2021-08-21', '2021-08-10', 'type of permit', 'auth', 'route'),
(77, 103, 1, 1, '132456LKJ', 'Team Kook', '2021-08-21', NULL, NULL, 'classi', NULL, 'Engineer', NULL, 'red ddep', 'make', 'cng', 'Steel', 'cubic', 'pre accident', NULL, 'ul', '6', NULL, 'tax particuler', 'odometer`', 'PUC', '2021-08-20', 'reamrk', 'remark2', 'reamrk doe more some them', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 103, 1, 1, '132456LKJ', 'Team Kook', '2021-08-21', NULL, NULL, 'classi', NULL, 'Engineer', NULL, 'red ddep', 'make', 'cng', 'Steel', 'cubic', 'pre accident', NULL, 'ul', '6', NULL, 'tax particuler', 'odometer`', 'PUC', '2021-08-20', 'reamrk', 'remark2', 'reamrk doe more some them', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 104, 1, 1, '132456LKJ', 'Team Kook', '2021-08-21', NULL, NULL, 'classi', NULL, 'Engineer', NULL, 'red ddep', 'make', 'cng', 'Steel', 'cubic', 'pre accident', NULL, 'ul', '6', NULL, 'tax particuler', 'odometer`', 'PUC', '2021-08-20', 'reamrk', 'remark2', 'reamrk doe more some them', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 105, 1, 1, '132456LKJ', 'Team Kook', '2021-08-21', NULL, NULL, 'classi', NULL, 'Engineer', NULL, 'red ddep', 'make', 'cng', 'Steel', 'cubic', 'pre accident', NULL, 'ul', '6', NULL, 'tax particuler', 'odometer`', 'PUC', '2021-08-20', 'reamrk', 'remark2', 'reamrk doe more some them', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 105, 1, 1, '132456LKJ', 'Team Kook', '2021-08-21', NULL, NULL, 'classi', NULL, 'Engineer', NULL, 'red ddep', 'make', 'cng', 'Steel', 'cubic', 'pre accident', NULL, 'ul', '6', NULL, 'tax particuler', 'odometer`', 'PUC', '2021-08-20', 'reamrk', 'remark2', 'reamrk doe more some them', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 105, 1, 1, '132456LKJ', 'Team Kook', '2021-08-21', NULL, NULL, 'classi', NULL, 'Engineer', NULL, 'red ddep', 'make', 'cng', 'Steel', 'cubic', 'pre accident', NULL, 'ul', '6', NULL, 'tax particuler', 'odometer`', 'PUC', '2021-08-20', 'reamrk', 'remark2', 'reamrk doe more some them', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 88, 1, 1, '123AMA', 'Vikas Dwivedi', NULL, NULL, NULL, NULL, 1, NULL, 1, 'HA/S/0001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 106, 1, 1, '132456LKJ', 'Team Kook', '2021-08-21', NULL, NULL, 'classi', NULL, 'Engineer', NULL, 'red ddep', 'make', 'cng', 'Steel', 'cubic', 'pre accident', NULL, 'ul', '6', NULL, 'tax particuler', 'odometer`', 'PUC', '2021-08-20', 'reamrk', 'remark2', 'reamrk doe more some them', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 77, 2, 1, '7867k', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 'HA/S/0001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 158, 1, 1, 'mp', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 'HA/S/0001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cdx_serveyar_upload_image_url`
--

CREATE TABLE `cdx_serveyar_upload_image_url` (
  `id` int(11) NOT NULL,
  `surveyor_id` int(11) DEFAULT NULL,
  `report_id` int(11) DEFAULT NULL,
  `generator_token` varchar(255) DEFAULT NULL,
  `policy_no` varchar(255) DEFAULT NULL,
  `vehicle_no` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `valid_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cdx_serveyar_upload_image_url`
--

INSERT INTO `cdx_serveyar_upload_image_url` (`id`, `surveyor_id`, `report_id`, `generator_token`, `policy_no`, `vehicle_no`, `status`, `created_date`, `valid_date`) VALUES
(18, 3, 71, '00fa1139666f9c64975cae42c36d4fdbGP', 'abc112', 'MP093866', 1, '2022-09-09 09:56:08', NULL),
(19, 3, 72, 'c2e7f1f9e1780d36a9e2ab5de5199ec3GP', 'Test03', 'Test03', 1, '2022-09-09 10:17:36', NULL),
(20, 3, 73, 'b89352ad423063d8f4543489481a50f0GP', 'Test04', 'TEst04', 1, '2022-09-09 10:57:55', NULL),
(21, 4, 74, 'a30e844ae7a70cdfecf3eeb9f232d793GP', 'test5', 'test5', 1, '2022-09-09 11:24:43', NULL),
(22, 4, 128, '1dfaea7fdaf214dff4c241f3d5b2e555GP', 'salasar', '123456', 1, '2022-09-23 05:51:34', NULL),
(23, 4, 129, '813656a0b0e3f85d22e71338863999c7GP', '11LKJ98', '213456A', 1, '2022-09-23 09:50:29', '2022-09-24 09:50:29'),
(25, 4, 137, 'e0ebb462318f12a3d78b3c6d8f31dd60GP', '98798TR', '5464', 1, '2022-09-23 10:09:05', '2022-09-24 15:39:05'),
(26, 4, 159, 'e3d6ba0ee4ca68d6ac67f829b3e6dfc6GP', '34', '45435', 1, '2022-10-06 13:06:36', '2022-10-07 18:36:36'),
(27, 4, 160, 'ed3be9b47b37512515dfaf1cd40e2955GP', '123465', '46546', 1, '2022-10-07 06:35:45', '2022-10-08 12:05:45');

-- --------------------------------------------------------

--
-- Table structure for table `cdx_serveyor_bankaccounts`
--

CREATE TABLE `cdx_serveyor_bankaccounts` (
  `id` int(11) NOT NULL,
  `surveyor_id` int(11) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `account_holder_name` varchar(255) NOT NULL,
  `ac_no` bigint(20) NOT NULL,
  `ifsc` varchar(25) NOT NULL,
  `micr` varchar(25) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_no` bigint(25) NOT NULL,
  `bank_email` varchar(255) NOT NULL,
  `contact_person` varchar(255) NOT NULL,
  `contact_person_mobile` bigint(15) NOT NULL,
  `contact_person_designation` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cdx_serveyor_bankaccounts`
--

INSERT INTO `cdx_serveyor_bankaccounts` (`id`, `surveyor_id`, `bank_name`, `account_holder_name`, `ac_no`, `ifsc`, `micr`, `address`, `phone_no`, `bank_email`, `contact_person`, `contact_person_mobile`, `contact_person_designation`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 'icici bank', 'kamal patidar', 657001564254, 'icic6570', '6570', '', 0, '', '', 0, '', 1, '2022-08-19 12:36:05', '2022-08-19 12:36:05'),
(2, 4, 'bank of india', 'kamal patidar', 65700154852, 'BOI0015', '0015', '', 0, '', '', 0, '', 1, '2022-08-19 13:28:16', '2022-08-19 13:28:16'),
(3, 4, 'Canara Bank', 'vikash', 12346789456452, 'PNB154', '15454', 'USA', 0, 'test@dd', 'vv', 0, 'v', 1, '2022-08-19 13:33:07', '2022-08-19 13:33:07'),
(4, 4, 'State bank of india', 'Test Peter', 7894651324, 'HHG232', '43754397hk', 'USA', 7894651324, 'testpeter@gmail.com', 'hello', 7894657895, 'Yes', 1, '2022-08-24 06:51:23', '2022-08-24 06:51:23'),
(5, 4, 'icici bank', 'Robot', 7894678945, '798DJDJ', 'MICR', 'USA', 7894657985, 'test@mail.com', 'Mark', 7984654678, 'software developer', 1, '2022-08-24 06:57:14', '2022-08-24 06:57:14'),
(6, 4, 'icici bank', 'skdhfksdh', 573497549375, 'FHSKDHFKSDH', 'KFSKFH', 'KSDHFKSH', 68368356856, 'khfkshfk@khkhkh', 'hksdhsdkfhsk', 8638686433, 'SDFHSDHFSKD', 1, '2022-08-24 07:20:46', '2022-08-24 07:20:46'),
(7, 4, 'City BanK', 'Vicky123', 68337978678686, 'TUTU6768', 'MICR', 'USA', 38468346283, 'vicky@gmail.com', 'Hello Contect', 37937979797, 'software developer', 1, '2022-08-24 07:23:29', '2022-08-24 07:23:29'),
(8, 4, 'City BanK', 'vicky jonh', 789456465, 'BGSF044', 'KHD0ff', 'USA', 435435435435, 'salasar@gmail.com', 'Danny', 79574957878, 'software developer', 0, '2022-09-15 07:50:54', '2022-09-15 07:50:54');

-- --------------------------------------------------------

--
-- Table structure for table `cdx_states`
--

CREATE TABLE `cdx_states` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cdx_states`
--

INSERT INTO `cdx_states` (`id`, `name`, `country_id`) VALUES
(1, 'ANDHRA PRADESH', 105),
(2, 'ASSAM', 105),
(3, 'ARUNACHAL PRADESH', 105),
(4, 'BIHAR', 105),
(5, 'GUJRAT', 105),
(6, 'HARYANA', 105),
(7, 'HIMACHAL PRADESH', 105),
(8, 'JAMMU & KASHMIR', 105),
(9, 'KARNATAKA', 105),
(10, 'KERALA', 105),
(11, 'MADHYA PRADESH', 105),
(12, 'MAHARASHTRA', 105),
(13, 'MANIPUR', 105),
(14, 'MEGHALAYA', 105),
(15, 'MIZORAM', 105),
(16, 'NAGALAND', 105),
(17, 'ORISSA', 105),
(18, 'PUNJAB', 105),
(19, 'RAJASTHAN', 105),
(20, 'SIKKIM', 105),
(21, 'TAMIL NADU', 105),
(22, 'TRIPURA', 105),
(23, 'UTTAR PRADESH', 105),
(24, 'WEST BENGAL', 105),
(25, 'DELHI', 105),
(26, 'GOA', 105),
(27, 'PONDICHERY', 105),
(28, 'LAKSHDWEEP', 105),
(29, 'DAMAN & DIU', 105),
(30, 'DADRA & NAGAR', 105),
(31, 'CHANDIGARH', 105),
(32, 'ANDAMAN & NICOBAR', 105),
(33, 'UTTARANCHAL', 105),
(34, 'JHARKHAND', 105),
(35, 'CHATTISGARH', 105);

-- --------------------------------------------------------

--
-- Table structure for table `cdx_subpart`
--

CREATE TABLE `cdx_subpart` (
  `subpart_id` int(11) NOT NULL,
  `part_id` int(11) NOT NULL,
  `subpart_name` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cdx_subpart`
--

INSERT INTO `cdx_subpart` (`subpart_id`, `part_id`, `subpart_name`, `status`) VALUES
(16, 5, 'Propellor shaft 10', 1),
(18, 6, 'Lhs clearance', 1),
(19, 6, 'parking lamp', 1),
(20, 8, 'Battery bracket', 1),
(21, 8, 'indicator', 1),
(22, 8, 'clearance', 1),
(27, 7, 'ggg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cdx_subscription`
--

CREATE TABLE `cdx_subscription` (
  `subscription_id` int(11) NOT NULL,
  `subscription_type` enum('Fixed','Monthly','Quarterly','Half Yearly','Yearly') DEFAULT NULL,
  `users_allowed` varchar(2) DEFAULT NULL,
  `subscription_titles` varchar(120) DEFAULT NULL,
  `subscription_price` float(10,2) DEFAULT NULL,
  `subscription_description` text DEFAULT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` enum('0','1') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cdx_subscription`
--

INSERT INTO `cdx_subscription` (`subscription_id`, `subscription_type`, `users_allowed`, `subscription_titles`, `subscription_price`, `subscription_description`, `create_date`, `status`) VALUES
(1, 'Monthly', '0', 'Starter', 0.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2022-07-05 11:01:27', '1'),
(2, 'Monthly', '5', 'Pro', 42.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2022-07-05 12:06:37', '1'),
(3, 'Monthly', '10', 'Enterprise', 84.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2022-07-05 12:07:06', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cdx_subscription_plans`
--

CREATE TABLE `cdx_subscription_plans` (
  `subscription_plan_id` int(11) NOT NULL,
  `subscription_titles` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0=inactive, 1=Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cdx_subscription_plans`
--

INSERT INTO `cdx_subscription_plans` (`subscription_plan_id`, `subscription_titles`, `status`) VALUES
(1, 'Starter', '1'),
(2, 'Pro', '1'),
(3, 'Enterprise', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cdx_subscription_plans_info`
--

CREATE TABLE `cdx_subscription_plans_info` (
  `subscription_plans_info_id` int(11) NOT NULL,
  `subscription_plan_id` varchar(11) NOT NULL,
  `subscription_price` varchar(10) DEFAULT NULL,
  `number_of_surey` varchar(10) DEFAULT NULL,
  `number_of_days` varchar(10) DEFAULT NULL,
  `number_of_users` int(11) NOT NULL,
  `plan_description` text NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cdx_subscription_plans_info`
--

INSERT INTO `cdx_subscription_plans_info` (`subscription_plans_info_id`, `subscription_plan_id`, `subscription_price`, `number_of_surey`, `number_of_days`, `number_of_users`, `plan_description`, `create_date`, `status`) VALUES
(1, '1', '20', '1', NULL, 1, 'Unlimited validity, UNLIMITED Storage, 100% Cash back During trial Period, No additional fee or Initial charges, Full Data access even without renewal,', '2022-09-02 14:32:11', '1'),
(2, '2', '35000', '300', '90', 5, 'Unlimited validity, UNLIMITED Storage, 100% Cash back During trial Period, No additional fee or Initial charges, Full Data access even without renewal,', '2022-09-02 14:32:11', '1'),
(3, '3', '12000', '1200', '365', 10, 'Unlimited validity, UNLIMITED Storage, 100% Cash back During trial Period, No additional fee or Initial charges, Full Data access even without renewal,', '2022-09-02 14:32:49', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cdx_surveyor_reports`
--

CREATE TABLE `cdx_surveyor_reports` (
  `report_id` int(11) NOT NULL,
  `surveyor_id` int(11) DEFAULT NULL,
  `insurer_id` int(11) DEFAULT NULL,
  `insurer_branch_id` int(11) DEFAULT NULL,
  `surveyor_bank_id` int(11) NOT NULL DEFAULT 0,
  `report_type` int(11) DEFAULT NULL COMMENT '1-spot\r\n2-interim\r\n3-final',
  `report_status` int(11) NOT NULL DEFAULT 0 COMMENT '0-incomplete\r\n1-complete\r\n2-pending',
  `reference_number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cdx_surveyor_reports`
--

INSERT INTO `cdx_surveyor_reports` (`report_id`, `surveyor_id`, `insurer_id`, `insurer_branch_id`, `surveyor_bank_id`, `report_type`, `report_status`, `reference_number`, `created_at`, `updated_at`) VALUES
(64, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-09 05:29:11', '2022-09-09 05:29:11'),
(65, 4, 3, 14, 0, 1, 0, 'HA/S/0001', '2022-09-09 05:56:37', '2022-09-09 05:56:37'),
(66, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-09 06:41:48', '2022-09-09 06:41:48'),
(71, 4, NULL, NULL, 0, 1, 0, NULL, '2022-09-09 09:56:08', '2022-09-09 09:56:08'),
(72, 4, NULL, NULL, 0, 1, 0, NULL, '2022-09-09 10:17:36', '2022-09-09 10:17:36'),
(73, 4, NULL, NULL, 0, 1, 0, NULL, '2022-09-09 10:57:55', '2022-09-09 10:57:55'),
(74, 4, NULL, NULL, 0, 1, 0, NULL, '2022-09-09 11:24:43', '2022-09-09 11:24:43'),
(75, 4, 6, 24, 0, 1, 0, 'HA/S/0001', '2022-09-13 06:37:10', '2022-09-13 06:37:10'),
(76, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-15 04:38:55', '2022-09-15 04:38:55'),
(77, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-21 10:31:55', '2022-09-21 10:31:55'),
(78, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-21 10:36:41', '2022-09-21 10:36:41'),
(79, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-21 11:16:56', '2022-09-21 11:16:56'),
(80, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-21 11:18:06', '2022-09-21 11:18:06'),
(81, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-21 11:24:49', '2022-09-21 11:24:49'),
(82, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-21 11:30:49', '2022-09-21 11:30:49'),
(83, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-21 11:33:26', '2022-09-21 11:33:26'),
(84, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-21 11:45:19', '2022-09-21 11:45:19'),
(85, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-21 12:02:59', '2022-09-21 12:02:59'),
(86, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-21 12:29:42', '2022-09-21 12:29:42'),
(87, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-21 12:49:52', '2022-09-21 12:49:52'),
(88, 4, 4, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-21 12:55:50', '2022-09-21 12:55:50'),
(89, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-21 13:11:00', '2022-09-21 13:11:00'),
(90, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-21 13:19:15', '2022-09-21 13:19:15'),
(91, 4, 5, 19, 0, 1, 0, 'HA/S/0001', '2022-09-21 13:37:47', '2022-09-21 13:37:47'),
(92, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-21 13:44:12', '2022-09-21 13:44:12'),
(93, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 05:00:58', '2022-09-22 05:00:58'),
(94, 4, 6, 24, 0, 1, 0, 'HA/S/0001', '2022-09-22 05:22:28', '2022-09-22 05:22:28'),
(95, 4, 6, 24, 0, 1, 0, 'HA/S/0001', '2022-09-22 05:22:32', '2022-09-22 05:22:32'),
(96, 4, 6, 24, 0, 1, 0, 'HA/S/0001', '2022-09-22 05:22:43', '2022-09-22 05:22:43'),
(97, 4, 6, 24, 0, 1, 0, 'HA/S/0001', '2022-09-22 05:22:54', '2022-09-22 05:22:54'),
(98, 4, 6, 24, 0, 1, 0, 'HA/S/0001', '2022-09-22 06:35:01', '2022-09-22 06:35:01'),
(99, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 06:41:02', '2022-09-22 06:41:02'),
(100, 4, 4, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 07:11:50', '2022-09-22 07:11:50'),
(101, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 07:32:26', '2022-09-22 07:32:26'),
(102, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 07:38:04', '2022-09-22 07:38:04'),
(103, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 09:27:06', '2022-09-22 09:27:06'),
(104, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 09:32:54', '2022-09-22 09:32:54'),
(105, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 09:34:00', '2022-09-22 09:34:00'),
(106, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 09:46:52', '2022-09-22 09:46:52'),
(107, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 09:59:37', '2022-09-22 09:59:37'),
(108, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 10:00:35', '2022-09-22 10:00:35'),
(109, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 11:13:50', '2022-09-22 11:13:50'),
(110, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 11:16:45', '2022-09-22 11:16:45'),
(111, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 11:18:36', '2022-09-22 11:18:36'),
(112, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 11:23:24', '2022-09-22 11:23:24'),
(113, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 11:26:11', '2022-09-22 11:26:11'),
(114, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 11:26:40', '2022-09-22 11:26:40'),
(115, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 11:35:17', '2022-09-22 11:35:17'),
(116, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 11:37:51', '2022-09-22 11:37:51'),
(117, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 11:39:20', '2022-09-22 11:39:20'),
(118, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 11:40:07', '2022-09-22 11:40:07'),
(119, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 11:42:22', '2022-09-22 11:42:22'),
(120, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 11:43:39', '2022-09-22 11:43:39'),
(121, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 11:44:29', '2022-09-22 11:44:29'),
(122, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 11:46:37', '2022-09-22 11:46:37'),
(123, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 11:48:15', '2022-09-22 11:48:15'),
(124, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 11:49:09', '2022-09-22 11:49:09'),
(125, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 11:52:52', '2022-09-22 11:52:52'),
(126, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-22 11:57:33', '2022-09-22 11:57:33'),
(127, 4, 3, 13, 0, 1, 0, 'HA/S/0001', '2022-09-22 12:00:27', '2022-09-22 12:00:27'),
(128, 4, NULL, NULL, 0, 1, 0, NULL, '2022-09-23 05:51:34', '2022-09-23 05:51:34'),
(129, 4, NULL, NULL, 0, 1, 0, NULL, '2022-09-23 09:50:29', '2022-09-23 09:50:29'),
(130, 4, NULL, NULL, 0, 1, 0, NULL, '2022-09-23 09:52:55', '2022-09-23 09:52:55'),
(131, 4, NULL, NULL, 0, 1, 0, NULL, '2022-09-23 09:53:43', '2022-09-23 09:53:43'),
(132, 4, NULL, NULL, 0, 1, 0, NULL, '2022-09-23 09:54:33', '2022-09-23 09:54:33'),
(133, 4, NULL, NULL, 0, 1, 0, NULL, '2022-09-23 09:57:10', '2022-09-23 09:57:10'),
(134, 4, NULL, NULL, 0, 1, 0, NULL, '2022-09-23 10:00:26', '2022-09-23 10:00:26'),
(135, 4, NULL, NULL, 0, 1, 0, NULL, '2022-09-23 10:00:31', '2022-09-23 10:00:31'),
(136, 4, NULL, NULL, 0, 1, 0, NULL, '2022-09-23 10:04:31', '2022-09-23 10:04:31'),
(137, 4, NULL, NULL, 0, 1, 0, NULL, '2022-09-23 10:09:05', '2022-09-23 10:09:05'),
(138, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-28 04:45:32', '2022-09-28 04:45:32'),
(139, 4, NULL, 21, 0, 1, 0, 'HA/S/0001', '2022-09-28 11:27:20', '2022-09-28 11:27:20'),
(140, 4, NULL, 21, 0, 1, 0, 'HA/S/0001', '2022-09-28 11:27:24', '2022-09-28 11:27:24'),
(141, 4, NULL, 21, 0, 1, 0, 'HA/S/0001', '2022-09-28 11:27:24', '2022-09-28 11:27:24'),
(142, 4, NULL, 21, 0, 1, 0, 'HA/S/0001', '2022-09-28 11:27:25', '2022-09-28 11:27:25'),
(143, 4, NULL, 21, 0, 1, 0, 'HA/S/0001', '2022-09-28 11:27:25', '2022-09-28 11:27:25'),
(144, 4, NULL, 21, 0, 1, 0, 'HA/S/0001', '2022-09-28 11:27:25', '2022-09-28 11:27:25'),
(145, 4, NULL, 21, 0, 1, 0, 'HA/S/0001', '2022-09-28 11:27:25', '2022-09-28 11:27:25'),
(146, 4, NULL, 21, 0, 1, 0, 'HA/S/0001', '2022-09-28 11:27:30', '2022-09-28 11:27:30'),
(147, 4, NULL, 21, 0, 1, 0, 'HA/S/0001', '2022-09-28 11:27:30', '2022-09-28 11:27:30'),
(148, 4, NULL, 21, 0, 1, 0, 'HA/S/0001', '2022-09-28 11:27:30', '2022-09-28 11:27:30'),
(149, 4, NULL, 21, 0, 1, 0, 'HA/S/0001', '2022-09-28 11:27:33', '2022-09-28 11:27:33'),
(150, 4, NULL, 21, 0, 1, 0, 'HA/S/0001', '2022-09-28 11:27:34', '2022-09-28 11:27:34'),
(151, 4, NULL, 21, 0, 1, 0, 'HA/S/0001', '2022-09-28 11:27:34', '2022-09-28 11:27:34'),
(152, 4, NULL, 21, 0, 1, 0, 'HA/S/0001', '2022-09-28 11:27:34', '2022-09-28 11:27:34'),
(153, 4, NULL, 21, 0, 1, 0, 'HA/S/0001', '2022-09-28 11:27:34', '2022-09-28 11:27:34'),
(154, 4, NULL, 21, 0, 1, 0, 'HA/S/0001', '2022-09-28 11:27:36', '2022-09-28 11:27:36'),
(155, 4, NULL, 21, 0, 1, 0, 'HA/S/0001', '2022-09-28 11:27:36', '2022-09-28 11:27:36'),
(156, 4, NULL, 21, 0, 1, 0, 'HA/S/0001', '2022-09-28 11:27:36', '2022-09-28 11:27:36'),
(157, 4, NULL, 21, 0, 1, 0, 'HA/S/0001', '2022-09-28 11:27:36', '2022-09-28 11:27:36'),
(158, 4, NULL, NULL, 0, 1, 0, 'HA/S/0001', '2022-09-30 12:04:50', '2022-09-30 12:04:50'),
(159, 4, NULL, NULL, 0, 1, 0, NULL, '2022-10-06 13:06:36', '2022-10-06 13:06:36'),
(160, 4, NULL, NULL, 0, 1, 0, NULL, '2022-10-07 06:35:45', '2022-10-07 06:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `cdx_survey_company_info`
--

CREATE TABLE `cdx_survey_company_info` (
  `survey_info_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `company_name` varchar(120) NOT NULL,
  `company_address` text NOT NULL,
  `company_phone_no` varchar(15) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cdx_user`
--

CREATE TABLE `cdx_user` (
  `user_id` int(11) NOT NULL,
  `user_type_id` tinyint(2) DEFAULT NULL,
  `user_unique_id` varchar(50) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city_id` varchar(4) DEFAULT NULL,
  `profile_img` varchar(50) DEFAULT NULL,
  `status` enum('0','1','2','3') DEFAULT NULL COMMENT '0-Pending,\r\n1-Active,\r\n2-Deactivate / Suspended\r\n',
  `subscription_status` enum('0','1','2','3') DEFAULT NULL COMMENT '0-Pending,\r\n1-Active,\r\n2-Suspended\r\n3-Expired',
  `subscription_id` tinyint(2) DEFAULT NULL,
  `subscription_validity` date DEFAULT NULL,
  `_token` text DEFAULT NULL,
  `password_reset_status` enum('0','1') DEFAULT NULL COMMENT '0-No,\r\n1-Changed Password',
  `create_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cdx_user`
--

INSERT INTO `cdx_user` (`user_id`, `user_type_id`, `user_unique_id`, `first_name`, `last_name`, `user_name`, `email`, `password`, `phone_no`, `address`, `city_id`, `profile_img`, `status`, `subscription_status`, `subscription_id`, `subscription_validity`, `_token`, `password_reset_status`, `create_date`) VALUES
(1, 1, 'CDX001', 'kamal', 'patidar', 'kamal', 'vikas.dwivedi@salasarcybersolutions.com', '$2y$10$cm1Lu8ivB3TA3qyrPhxktO9DOeM6qcNozJKphpnuzXCWYCos0Hkje', '8517908552', 'vijay nager', '283', 'pimage_1660023989.jpg', '1', '1', 1, '0000-00-00', '', '1', '2022-06-20 16:48:58'),
(2, 3, 'CDX002', 'raj', 'verms', 'Raj002', 'manpreet.kaur@salasar-group.com', '6528', '1234567', 'vijay nager1', '283', '', '0', '0', 1, NULL, NULL, '0', '2022-07-11 12:11:05'),
(3, 3, 'CDX003', 'jay', 'verma', 'JAY003', 'vijayq9@gmail.com', '1267', '12345689', '120, Omax city 11', '283', '', '0', '0', 2, NULL, NULL, '0', '2022-07-19 18:18:39'),
(4, 3, 'CDX004', 'husain', 'khan', 'husain', 'husain@mailinator.com', '$2y$10$PIaIMhLhyMZh6c88d.XdoO.7wcQqNdUtlFLBPqshfI04ZuDoa0eYi', '1234567895', 'indore', '283', 'dummy.png', '1', '1', 3, NULL, NULL, '0', '2022-08-05 12:48:29'),
(5, 3, 'CDX005', 'vikash', 'dwivedi', 'VIKASH005', 'vikashdwivedi410@gmail.com', '8785', '1234567895', '123 indore', '283', '', '0', '0', 4, NULL, NULL, '0', '2022-08-09 17:16:32'),
(6, 3, 'CDX006', 'rashid', 'khan', 'RASHID006', 'rashid@gmail.com', '123456', '1234567898', 'palasia indore', '283', '', '1', '1', 0, NULL, NULL, '0', '2022-08-22 17:57:21');

-- --------------------------------------------------------

--
-- Table structure for table `cdx_user_subscription_info`
--

CREATE TABLE `cdx_user_subscription_info` (
  `user_subscription_info_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `subscribe_date` datetime NOT NULL DEFAULT current_timestamp(),
  `number_of_surey` varchar(11) DEFAULT NULL,
  `number_of_days` varchar(11) DEFAULT NULL,
  `number_of_surey_used` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cdx_user_type`
--

CREATE TABLE `cdx_user_type` (
  `user_type_id` int(11) NOT NULL,
  `user_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cdx_user_type`
--

INSERT INTO `cdx_user_type` (`user_type_id`, `user_type`) VALUES
(1, 'Super Admin'),
(2, 'Admin'),
(3, 'Surveyor Admin'),
(4, 'Surveyor Executive'),
(5, 'Insurer');

-- --------------------------------------------------------

--
-- Table structure for table `cdx_vehicle`
--

CREATE TABLE `cdx_vehicle` (
  `id` int(11) NOT NULL,
  `vehicle_name` varchar(222) NOT NULL,
  `body_type` varchar(222) NOT NULL,
  `reg_laden_wt` varchar(222) NOT NULL,
  `cubic_capacity` varchar(255) NOT NULL,
  `tax_particulers` varchar(255) NOT NULL,
  `vehicle_class` varchar(255) NOT NULL,
  `unladen_wt` varchar(255) NOT NULL,
  `imposed_excess` varchar(255) NOT NULL,
  `Fuel_used` varchar(255) NOT NULL,
  `make_and_model` varchar(255) NOT NULL,
  `pre_accident_con` varchar(255) NOT NULL,
  `seating_capacity` varchar(255) NOT NULL,
  `compulsory_exccess` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `roll` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cdx_vehicle`
--

INSERT INTO `cdx_vehicle` (`id`, `vehicle_name`, `body_type`, `reg_laden_wt`, `cubic_capacity`, `tax_particulers`, `vehicle_class`, `unladen_wt`, `imposed_excess`, `Fuel_used`, `make_and_model`, `pre_accident_con`, `seating_capacity`, `compulsory_exccess`, `status`, `roll`, `created_at`) VALUES
(1, 'Maruti Swift', 'Maruti', 'vehicle weight', '70cc to 1700cc', 'Rs.64 per quarter', 'Vehicle size class', '3000‑9000', 'excess', 'Petrol', 'New Model', 'No', '4+1', 'COMPULSORY EXCESS', 1, 1, '2022-09-15 06:29:54'),
(2, 'Maruti Suzuki Alto', 'Maruti', 'vehicle weight', '50cc to 1500cc', 'Rs.64 per quarter', 'Vehicle size class', '3200‑6000', 'excess', 'Petrol', 'Nw Model', 'No', '4+3', 'COMPULSORY EXCESS', 1, 1, '2022-08-25 08:03:58'),
(3, 'Maruti S-Cross', 'Maruti', 'vehicle weight', '80cc to 1600cc', 'Rs.61 per quarter', 'Vehicle size class', '3200‑5000', 'excess', 'Diesel', 'New Model', 'No', '4+2', 'COMPULSORY EXCESS', 1, 1, '2022-08-25 08:06:09'),
(4, 'Maruti S20', 'Maruti', 'vehicle weight', '80cc to 1600cc', 'Rs.61 per quarter', 'Vehicle size class', '3200‑5000', 'excess', 'Petrol', 'Nw Model', 'No', '5+2', 'COMPULSORY EXCESS', 1, 1, '2022-08-25 08:12:25'),
(5, 'Maruti Ertiga', 'Maruti', 'vehicle weight', '80cc to 1600cc', 'Rs.64 per quarter', 'Vehicle size class', '3220‑6000', 'excess', 'Petrol', 'New Model', 'No', '4+3', 'COMPULSORY EXCESS', 1, 1, '2022-08-25 08:13:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `garage_master`
--

CREATE TABLE `garage_master` (
  `id` int(11) NOT NULL,
  `workshop` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `mobile` bigint(15) DEFAULT NULL,
  `authorized` int(1) DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `status` int(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `garage_master`
--

INSERT INTO `garage_master` (`id`, `workshop`, `contact_person`, `mobile`, `authorized`, `remark`, `status`, `created_at`, `updated_at`) VALUES
(1, 'occen moters', 'kamal patidar', 2147483647, 1, 'only for test', 1, '2022-08-17 13:30:48', '2022-08-17 08:00:48'),
(2, 'rukmani moters', 'ankit', 9926947118, 1, 'only for test rukmani moters', 1, '2022-08-17 08:40:50', '2022-08-17 03:10:50'),
(3, 'patel moters', 'husain', 12424332354, 1, 'only for test for patel moters', 1, '2022-08-17 08:44:17', '2022-08-17 03:14:17');

-- --------------------------------------------------------

--
-- Table structure for table `insurer_master`
--

CREATE TABLE `insurer_master` (
  `id` int(11) NOT NULL,
  `insurer` varchar(255) DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `initial` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `insurer_master`
--

INSERT INTO `insurer_master` (`id`, `insurer`, `remark`, `initial`, `status`, `created_at`, `updated_at`) VALUES
(1, 'IFFCO Tokio General Insurance1', 'WEQE1', 'inint', 1, '2022-08-18 06:55:10', '2022-09-15 01:28:04'),
(2, 'Royal Sundaram General Insurance', 'Remark', 'inint', 0, '2022-08-18 06:55:26', '2022-09-06 03:03:02'),
(3, 'The Oriental Insurance Company	', 'sa123', 'inint', 1, '2022-08-19 02:35:37', '2022-08-23 04:29:34'),
(4, 'HDFC ERGO General Insurance	', 'fsfsfsdfs', 'inint', 1, '2022-08-19 12:41:40', '2022-08-19 12:41:40'),
(5, 'Universal Sompo General Insurance	', 'new123', 'initial', 0, '2022-08-19 12:42:01', '2022-08-19 07:15:34'),
(6, 'new india insurence', 'only for test only', 'no any', 1, '2022-08-27 12:36:51', '2022-08-27 07:07:19'),
(7, 'SADSAD', 'SADSAD', 'SADSAD', 0, '2022-09-06 07:18:35', '2022-09-06 02:46:33'),
(17, 'TestPeter', 'aad', 'inint', 1, '2022-09-07 06:10:47', '2022-09-07 06:10:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `serveyor_insurer`
--

CREATE TABLE `serveyor_insurer` (
  `id` int(11) NOT NULL,
  `serveyor_user_id` int(11) NOT NULL,
  `insurer_id` int(11) NOT NULL,
  `insurer_branch_id` int(11) NOT NULL,
  `serveyor_bank_account_id` int(11) NOT NULL,
  `party_code` varchar(11) NOT NULL,
  `tat` varchar(255) NOT NULL,
  `tds` int(11) NOT NULL,
  `tcs` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `serveyor_insurer`
--

INSERT INTO `serveyor_insurer` (`id`, `serveyor_user_id`, `insurer_id`, `insurer_branch_id`, `serveyor_bank_account_id`, `party_code`, `tat`, `tds`, `tcs`, `status`) VALUES
(1, 4, 6, 6, 6, 'USGI', '0', 0, 0, 1),
(2, 4, 4, 30, 4, 'BOI', '7895', 2, 9, 1),
(3, 4, 3, 13, 1, 'TOIC', '2112', 8, 12, 1),
(4, 4, 4, 20, 4, '01314654', '1221', 6, 12, 0),
(5, 4, 5, 18, 3, '01314654', '1221', 6, 12, 1),
(6, 4, 4, 24, 4, '01314654', '1221', 6, 12, 1),
(7, 4, 2, 11, 3, '01314654', '1221', 6, 12, 1),
(8, 4, 6, 29, 5, '01314654', '1221', 6, 12, 1),
(9, 4, 4, 23, 3, '012300000', '1221', 6, 12, 1),
(10, 4, 3, 14, 3, '01314654', '1221', 4, 12, 1),
(11, 4, 4, 30, 4, '01314654', '0', 2, 6, 0),
(12, 4, 4, 22, 4, '123456', '1234', 5, 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `user_agent` text NOT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `surveryor_amount`
--

CREATE TABLE `surveryor_amount` (
  `id` int(11) NOT NULL,
  `surveryor_id` int(11) NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `surveryor_amount`
--

INSERT INTO `surveryor_amount` (`id`, `surveryor_id`, `from`, `to`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '2222', '222', '222', 1, '2022-08-26 08:20:52', '2022-08-26 08:20:52'),
(2, 1, '222', '222', '222', 1, '2022-08-26 08:20:52', '2022-08-26 08:20:52'),
(3, 1, '222', '222', '222', 1, '2022-08-26 08:20:52', '2022-08-26 08:20:52'),
(4, 11, '450', '2000', '5000', 1, '2022-08-26 12:38:06', '2022-08-26 12:38:06'),
(5, 11, '5000', '2000', '8000', 1, '2022-08-26 12:38:06', '2022-08-26 12:38:06'),
(6, 12, '1200', '1300', '2000', 1, '2022-08-26 14:42:59', '2022-08-26 14:42:59'),
(7, 12, '1400', '1500', '1600', 1, '2022-08-26 14:42:59', '2022-08-26 14:42:59'),
(8, 12, '1800', '2300', '4000', 1, '2022-08-26 14:42:59', '2022-08-26 14:42:59'),
(9, 5, 'old', 'old', 'old', 1, '2022-08-26 17:40:04', '2022-08-26 17:40:04'),
(10, 5, 'new', 'new', 'new', 1, '2022-08-26 17:45:36', '2022-08-26 17:45:36'),
(11, 1, '00', '000', '222', 1, '2022-09-08 17:55:22', '2022-09-08 17:55:22'),
(12, 1, '0000', '111', '111', 1, '2022-09-08 17:55:22', '2022-09-08 17:55:22'),
(13, 1, '450', '00', '1321', 1, '2022-09-09 10:28:20', '2022-09-09 10:28:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'testpeter', 'vikas.dwivedi@salasarcybersolutions.com', '2022-08-22 11:39:01', '123465', 'Z25dnd2ktMGgW9O4DI3czyoqWWyZ1zWKV0xoUI8k', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_session`
--

CREATE TABLE `user_session` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'user_ID',
  `user_session_id` int(11) NOT NULL COMMENT 'User Session ID',
  `user_count` varchar(255) NOT NULL COMMENT 'User Count',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_session`
--

INSERT INTO `user_session` (`id`, `user_id`, `user_session_id`, `user_count`, `created_at`) VALUES
(1, 6, 6, '1', '2022-08-31 07:52:21'),
(2, 6, 6, '1', '2022-08-31 07:55:16'),
(3, 6, 6, '1', '2022-08-31 07:55:52'),
(4, 6, 6, '1', '2022-08-31 07:56:09'),
(5, 4, 4, '1', '2022-08-31 07:56:34'),
(6, 4, 4, '1', '2022-08-31 08:04:57'),
(7, 4, 4, '1', '2022-08-31 08:05:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_master`
--
ALTER TABLE `bank_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch_master`
--
ALTER TABLE `branch_master`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `cdx_cities`
--
ALTER TABLE `cdx_cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `cdx_final_parts`
--
ALTER TABLE `cdx_final_parts`
  ADD PRIMARY KEY (`final_parts_id`);

--
-- Indexes for table `cdx_generated_url`
--
ALTER TABLE `cdx_generated_url`
  ADD PRIMARY KEY (`generated_url_id`);

--
-- Indexes for table `cdx_insurer_info`
--
ALTER TABLE `cdx_insurer_info`
  ADD PRIMARY KEY (`insurer_info_id`);

--
-- Indexes for table `cdx_parts`
--
ALTER TABLE `cdx_parts`
  ADD PRIMARY KEY (`part_id`);

--
-- Indexes for table `cdx_password_resets`
--
ALTER TABLE `cdx_password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `cdx_report_album_images`
--
ALTER TABLE `cdx_report_album_images`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexes for table `cdx_report_damage_details`
--
ALTER TABLE `cdx_report_damage_details`
  ADD PRIMARY KEY (`damage_id`);

--
-- Indexes for table `cdx_report_driver_licence_details`
--
ALTER TABLE `cdx_report_driver_licence_details`
  ADD PRIMARY KEY (`driver_id`);

--
-- Indexes for table `cdx_report_images`
--
ALTER TABLE `cdx_report_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cdx_report_policy_details`
--
ALTER TABLE `cdx_report_policy_details`
  ADD PRIMARY KEY (`policy_id`);

--
-- Indexes for table `cdx_report_remark_details`
--
ALTER TABLE `cdx_report_remark_details`
  ADD PRIMARY KEY (`remark_id`);

--
-- Indexes for table `cdx_report_survey_details`
--
ALTER TABLE `cdx_report_survey_details`
  ADD PRIMARY KEY (`survey_id`);

--
-- Indexes for table `cdx_report_vehicle_details`
--
ALTER TABLE `cdx_report_vehicle_details`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- Indexes for table `cdx_serveyar_upload_image_url`
--
ALTER TABLE `cdx_serveyar_upload_image_url`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cdx_serveyor_bankaccounts`
--
ALTER TABLE `cdx_serveyor_bankaccounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cdx_states`
--
ALTER TABLE `cdx_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cdx_subpart`
--
ALTER TABLE `cdx_subpart`
  ADD PRIMARY KEY (`subpart_id`);

--
-- Indexes for table `cdx_subscription`
--
ALTER TABLE `cdx_subscription`
  ADD PRIMARY KEY (`subscription_id`);

--
-- Indexes for table `cdx_subscription_plans`
--
ALTER TABLE `cdx_subscription_plans`
  ADD PRIMARY KEY (`subscription_plan_id`);

--
-- Indexes for table `cdx_subscription_plans_info`
--
ALTER TABLE `cdx_subscription_plans_info`
  ADD PRIMARY KEY (`subscription_plans_info_id`);

--
-- Indexes for table `cdx_surveyor_reports`
--
ALTER TABLE `cdx_surveyor_reports`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `cdx_survey_company_info`
--
ALTER TABLE `cdx_survey_company_info`
  ADD PRIMARY KEY (`survey_info_id`);

--
-- Indexes for table `cdx_user`
--
ALTER TABLE `cdx_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `cdx_user_subscription_info`
--
ALTER TABLE `cdx_user_subscription_info`
  ADD PRIMARY KEY (`user_subscription_info_id`);

--
-- Indexes for table `cdx_user_type`
--
ALTER TABLE `cdx_user_type`
  ADD PRIMARY KEY (`user_type_id`);

--
-- Indexes for table `cdx_vehicle`
--
ALTER TABLE `cdx_vehicle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `garage_master`
--
ALTER TABLE `garage_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurer_master`
--
ALTER TABLE `insurer_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `serveyor_insurer`
--
ALTER TABLE `serveyor_insurer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveryor_amount`
--
ALTER TABLE `surveryor_amount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_session`
--
ALTER TABLE `user_session`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_master`
--
ALTER TABLE `bank_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `branch_master`
--
ALTER TABLE `branch_master`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `cdx_cities`
--
ALTER TABLE `cdx_cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;

--
-- AUTO_INCREMENT for table `cdx_final_parts`
--
ALTER TABLE `cdx_final_parts`
  MODIFY `final_parts_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cdx_generated_url`
--
ALTER TABLE `cdx_generated_url`
  MODIFY `generated_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cdx_insurer_info`
--
ALTER TABLE `cdx_insurer_info`
  MODIFY `insurer_info_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cdx_parts`
--
ALTER TABLE `cdx_parts`
  MODIFY `part_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cdx_password_resets`
--
ALTER TABLE `cdx_password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `cdx_report_album_images`
--
ALTER TABLE `cdx_report_album_images`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `cdx_report_damage_details`
--
ALTER TABLE `cdx_report_damage_details`
  MODIFY `damage_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cdx_report_driver_licence_details`
--
ALTER TABLE `cdx_report_driver_licence_details`
  MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `cdx_report_images`
--
ALTER TABLE `cdx_report_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `cdx_report_policy_details`
--
ALTER TABLE `cdx_report_policy_details`
  MODIFY `policy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `cdx_report_remark_details`
--
ALTER TABLE `cdx_report_remark_details`
  MODIFY `remark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `cdx_report_survey_details`
--
ALTER TABLE `cdx_report_survey_details`
  MODIFY `survey_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cdx_report_vehicle_details`
--
ALTER TABLE `cdx_report_vehicle_details`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `cdx_serveyar_upload_image_url`
--
ALTER TABLE `cdx_serveyar_upload_image_url`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `cdx_serveyor_bankaccounts`
--
ALTER TABLE `cdx_serveyor_bankaccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cdx_states`
--
ALTER TABLE `cdx_states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `cdx_subpart`
--
ALTER TABLE `cdx_subpart`
  MODIFY `subpart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `cdx_subscription`
--
ALTER TABLE `cdx_subscription`
  MODIFY `subscription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cdx_subscription_plans`
--
ALTER TABLE `cdx_subscription_plans`
  MODIFY `subscription_plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cdx_subscription_plans_info`
--
ALTER TABLE `cdx_subscription_plans_info`
  MODIFY `subscription_plans_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cdx_surveyor_reports`
--
ALTER TABLE `cdx_surveyor_reports`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `cdx_survey_company_info`
--
ALTER TABLE `cdx_survey_company_info`
  MODIFY `survey_info_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cdx_user`
--
ALTER TABLE `cdx_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cdx_user_subscription_info`
--
ALTER TABLE `cdx_user_subscription_info`
  MODIFY `user_subscription_info_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cdx_user_type`
--
ALTER TABLE `cdx_user_type`
  MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cdx_vehicle`
--
ALTER TABLE `cdx_vehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `garage_master`
--
ALTER TABLE `garage_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `insurer_master`
--
ALTER TABLE `insurer_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serveyor_insurer`
--
ALTER TABLE `serveyor_insurer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surveryor_amount`
--
ALTER TABLE `surveryor_amount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_session`
--
ALTER TABLE `user_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
