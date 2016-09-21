-- phpMyAdmin SQL Dump
-- version 4.4.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2015 at 08:58 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chatroom`
--

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
  `username` varchar(100) NOT NULL,
  `friend` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`username`, `friend`) VALUES
('michael', 'michael1'),
('michael1', 'michael'),
('michael', 'michael2'),
('michael2', 'michael');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL,
  `talker` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `checked` int(11) NOT NULL,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=613 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `talker`, `receiver`, `message`, `checked`, `datetime`) VALUES
(289, 'michael2', 'michael', 'you just logged out right?', 1, '2015-05-29 17:53:50'),
(290, 'michael', 'michael2', 'you just logged out right?', 1, '2015-05-29 17:53:50'),
(291, 'michael2', 'michael', 'you might thinking why I know it right?', 1, '2015-05-29 17:54:11'),
(292, 'michael', 'michael2', 'you might thinking why I know it right?', 1, '2015-05-29 17:54:11'),
(293, 'michael', 'michael2', 'true', 1, '2015-05-29 17:56:37'),
(294, 'michael2', 'michael', 'true', 1, '2015-05-29 17:56:37'),
(295, 'michael2', 'michael', 'true and false\n', 1, '2015-05-29 17:56:58'),
(296, 'michael', 'michael2', 'true and false\n', 1, '2015-05-29 17:56:58'),
(297, 'michael2', 'michael', 'a\n', 1, '2015-05-29 17:57:00'),
(298, 'michael', 'michael2', 'a\n', 1, '2015-05-29 17:57:00'),
(299, 'michael2', 'michael', 'b', 1, '2015-05-29 17:57:03'),
(300, 'michael', 'michael2', 'b', 1, '2015-05-29 17:57:03'),
(301, 'michael', 'michael2', 'abc', 1, '2015-05-29 17:57:37'),
(302, 'michael2', 'michael', 'abc', 1, '2015-05-29 17:57:37'),
(303, 'michael2', 'michael', 'a', 1, '2015-05-29 17:59:10'),
(304, 'michael', 'michael2', 'a', 1, '2015-05-29 17:59:10'),
(305, 'michael2', 'michael', 'bc', 1, '2015-05-29 17:59:12'),
(306, 'michael', 'michael2', 'bc', 1, '2015-05-29 17:59:12'),
(307, 'michael2', 'michael', 'c', 1, '2015-05-29 17:59:13'),
(308, 'michael', 'michael2', 'c', 1, '2015-05-29 17:59:13'),
(309, 'michael2', 'michael', 'aa', 1, '2015-05-29 18:00:04'),
(310, 'michael', 'michael2', 'aa', 1, '2015-05-29 18:00:04'),
(311, 'michael2', 'michael', 'bb', 1, '2015-05-29 18:00:05'),
(312, 'michael', 'michael2', 'bb', 1, '2015-05-29 18:00:05'),
(313, 'michael2', 'michael', 'cc', 1, '2015-05-29 18:00:06'),
(314, 'michael', 'michael2', 'cc', 1, '2015-05-29 18:00:06'),
(315, 'michael2', 'michael', '1', 1, '2015-05-29 18:01:12'),
(316, 'michael', 'michael2', '1', 1, '2015-05-29 18:01:12'),
(317, 'michael2', 'michael', '2', 1, '2015-05-29 18:01:13'),
(318, 'michael', 'michael2', '2', 1, '2015-05-29 18:01:13'),
(319, 'michael2', 'michael', '5', 1, '2015-05-29 18:02:07'),
(320, 'michael', 'michael2', '5', 1, '2015-05-29 18:02:07'),
(321, 'michael2', 'michael', '6', 1, '2015-05-29 18:02:38'),
(322, 'michael', 'michael2', '6', 1, '2015-05-29 18:02:38'),
(323, 'michael2', 'michael', '7', 1, '2015-05-29 18:03:21'),
(324, 'michael', 'michael2', '7', 1, '2015-05-29 18:03:21'),
(325, 'michael2', 'michael', '8', 1, '2015-05-29 18:03:21'),
(326, 'michael', 'michael2', '8', 1, '2015-05-29 18:03:22'),
(327, 'michael2', 'michael', '9', 1, '2015-05-29 18:03:23'),
(328, 'michael', 'michael2', '9', 1, '2015-05-29 18:03:23'),
(329, 'michael2', 'michael', '1', 1, '2015-05-29 18:05:57'),
(330, 'michael', 'michael2', '1', 1, '2015-05-29 18:05:57'),
(331, 'michael2', 'michael', '3', 1, '2015-05-29 18:05:59'),
(332, 'michael', 'michael2', '3', 1, '2015-05-29 18:05:59'),
(333, 'michael2', 'michael', '4', 1, '2015-05-29 18:06:00'),
(334, 'michael', 'michael2', '4', 1, '2015-05-29 18:06:00'),
(335, 'michael2', 'michael', 'q', 1, '2015-05-29 18:10:33'),
(336, 'michael', 'michael2', 'q', 1, '2015-05-29 18:10:33'),
(337, 'michael2', 'michael', 'w', 1, '2015-05-29 18:10:34'),
(338, 'michael', 'michael2', 'w', 1, '2015-05-29 18:10:34'),
(339, 'michael2', 'michael', 'e', 1, '2015-05-29 18:10:35'),
(340, 'michael', 'michael2', 'e', 1, '2015-05-29 18:10:35'),
(341, 'michael2', 'michael', 't', 1, '2015-05-29 18:11:31'),
(342, 'michael', 'michael2', 't', 1, '2015-05-29 18:11:31'),
(343, 'michael2', 'michael', 'h', 1, '2015-05-29 18:11:32'),
(344, 'michael', 'michael2', 'h', 1, '2015-05-29 18:11:32'),
(345, 'michael2', 'michael', 'i', 1, '2015-05-29 18:11:33'),
(346, 'michael', 'michael2', 'i', 1, '2015-05-29 18:11:33'),
(347, 'michael2', 'michael', 's', 1, '2015-05-29 18:11:35'),
(348, 'michael', 'michael2', 's', 1, '2015-05-29 18:11:35'),
(349, 'michael2', 'michael', 't', 1, '2015-05-29 18:13:34'),
(350, 'michael', 'michael2', 't', 1, '2015-05-29 18:13:34'),
(351, 'michael2', 'michael', 'h', 1, '2015-05-29 18:13:35'),
(352, 'michael', 'michael2', 'h', 1, '2015-05-29 18:13:35'),
(353, 'michael2', 'michael', 'i', 1, '2015-05-29 18:13:36'),
(354, 'michael', 'michael2', 'i', 1, '2015-05-29 18:13:36'),
(355, 'michael2', 'michael', 's', 1, '2015-05-29 18:13:38'),
(356, 'michael', 'michael2', 's', 1, '2015-05-29 18:13:38'),
(357, 'michael2', 'michael', 'a', 1, '2015-05-29 18:14:31'),
(358, 'michael', 'michael2', 'a', 1, '2015-05-29 18:14:31'),
(359, 'michael2', 'michael', 'b', 1, '2015-05-29 18:14:32'),
(360, 'michael', 'michael2', 'b', 1, '2015-05-29 18:14:32'),
(361, 'michael2', 'michael', 'c', 1, '2015-05-29 18:14:33'),
(362, 'michael', 'michael2', 'c', 1, '2015-05-29 18:14:34'),
(363, 'michael2', 'michael', 'd', 1, '2015-05-29 18:14:36'),
(364, 'michael', 'michael2', 'd', 1, '2015-05-29 18:14:36'),
(365, 'michael2', 'michael', 'a', 1, '2015-05-29 18:15:53'),
(366, 'michael', 'michael2', 'a', 1, '2015-05-29 18:15:53'),
(367, 'michael2', 'michael', 'b', 1, '2015-05-29 18:15:55'),
(368, 'michael', 'michael2', 'b', 1, '2015-05-29 18:15:55'),
(369, 'michael2', 'michael', 'c', 1, '2015-05-29 18:15:57'),
(370, 'michael', 'michael2', 'c', 1, '2015-05-29 18:15:57'),
(371, 'michael2', 'michael', 'a', 1, '2015-05-29 18:16:03'),
(372, 'michael', 'michael2', 'a', 1, '2015-05-29 18:16:03'),
(373, 'michael2', 'michael', 'b', 1, '2015-05-29 18:16:04'),
(374, 'michael', 'michael2', 'b', 1, '2015-05-29 18:16:04'),
(375, 'michael2', 'michael', 'c', 1, '2015-05-29 18:16:05'),
(376, 'michael', 'michael2', 'c', 1, '2015-05-29 18:16:05'),
(377, 'michael2', 'michael', 'd', 1, '2015-05-29 18:16:06'),
(378, 'michael', 'michael2', 'd', 1, '2015-05-29 18:16:06'),
(379, 'michael', 'michael2', 'I just fixed some issues again!!', 1, '2015-05-29 18:17:01'),
(380, 'michael2', 'michael', 'I just fixed some issues again!!', 1, '2015-05-29 18:17:01'),
(381, 'michael', 'michael2', 'feel so fulfilled', 1, '2015-05-29 18:17:15'),
(382, 'michael2', 'michael', 'feel so fulfilled', 1, '2015-05-29 18:17:15'),
(383, 'michael', 'michael2', 'adbcd', 1, '2015-05-29 18:18:49'),
(384, 'michael2', 'michael', 'adbcd', 1, '2015-05-29 18:18:49'),
(385, 'michael', 'michael2', 'adbcda', 1, '2015-05-29 18:18:51'),
(386, 'michael2', 'michael', 'adbcda', 1, '2015-05-29 18:18:51'),
(387, 'michael', 'michael2', 'adbcda', 1, '2015-05-29 18:18:52'),
(388, 'michael2', 'michael', 'adbcda', 1, '2015-05-29 18:18:52'),
(389, 'michael', 'michael2', 'adbcda', 1, '2015-05-29 18:18:52'),
(390, 'michael2', 'michael', 'adbcda', 1, '2015-05-29 18:18:52'),
(391, 'michael', 'michael2', 'adbcda', 1, '2015-05-29 18:18:52'),
(392, 'michael2', 'michael', 'adbcda', 1, '2015-05-29 18:18:52'),
(393, 'michael', 'michael1', 'hi michael1, I haven''t talked to you so far, right?', 1, '2015-05-29 18:20:04'),
(394, 'michael1', 'michael', 'hi michael1, I haven''t talked to you so far, right?', 1, '2015-05-29 18:20:04'),
(395, 'michael', 'michael1', 'I had been testing something', 1, '2015-05-29 18:20:18'),
(396, 'michael1', 'michael', 'I had been testing something', 1, '2015-05-29 18:20:18'),
(397, 'michael1', 'michael', 'yap, this is our first offcial talking', 1, '2015-05-29 18:21:15'),
(398, 'michael', 'michael1', 'yap, this is our first offcial talking', 1, '2015-05-29 18:21:15'),
(399, 'michael2', 'michael', 'hi', 1, '2015-05-29 19:23:28'),
(400, 'michael', 'michael2', 'hi', 1, '2015-05-29 19:23:28'),
(401, 'michael', 'michael1', 'hi', 1, '2015-05-29 19:23:44'),
(402, 'michael1', 'michael', 'hi', 0, '2015-05-29 19:23:45'),
(403, 'michael2', 'michael', 'hi there', 1, '2015-05-29 19:34:06'),
(404, 'michael', 'michael2', 'hi there', 1, '2015-05-29 19:34:06'),
(405, 'michael', 'michael2', 'I''m gonna log out\n', 1, '2015-05-29 19:34:20'),
(406, 'michael2', 'michael', 'I''m gonna log out\n', 1, '2015-05-29 19:34:20'),
(407, 'michael2', 'michael', 'aa', 1, '2015-05-29 19:36:40'),
(408, 'michael', 'michael2', 'aa', 1, '2015-05-29 19:36:40'),
(409, 'michael', 'michael2', 'oh!great I fixed something again.\n', 1, '2015-05-29 20:00:33'),
(410, 'michael2', 'michael', 'oh!great I fixed something again.\n', 1, '2015-05-29 20:00:33'),
(411, 'michael', 'michael2', 'thanks god', 1, '2015-05-29 20:00:41'),
(412, 'michael2', 'michael', 'thanks god', 1, '2015-05-29 20:00:41'),
(413, 'michael', 'michael2', 'problems have been happening', 1, '2015-05-29 20:01:36'),
(414, 'michael2', 'michael', 'problems have been happening', 1, '2015-05-29 20:01:36'),
(415, 'michael', 'michael2', 'I really don''t like this kind of thing', 1, '2015-05-29 20:01:54'),
(416, 'michael2', 'michael', 'I really don''t like this kind of thing', 1, '2015-05-29 20:01:54'),
(417, 'michael2', 'michael', 'hi michael one', 1, '2015-05-29 20:02:52'),
(418, 'michael', 'michael2', 'hi michael one', 1, '2015-05-29 20:02:52'),
(419, 'michael', 'michael2', 'I think now we can chat for a while right?', 1, '2015-05-29 20:03:12'),
(420, 'michael2', 'michael', 'I think now we can chat for a while right?', 1, '2015-05-29 20:03:12'),
(421, 'michael2', 'michael', 'yap, I think so too', 1, '2015-05-29 20:03:24'),
(422, 'michael', 'michael2', 'yap, I think so too', 1, '2015-05-29 20:03:24'),
(423, 'michael', 'michael2', 'Can you still hear me??', 1, '2015-05-29 20:29:46'),
(424, 'michael2', 'michael', 'Can you still hear me??', 1, '2015-05-29 20:29:46'),
(425, 'michael2', 'michael', 'yes', 1, '2015-05-29 20:29:57'),
(426, 'michael', 'michael2', 'yes', 1, '2015-05-29 20:29:57'),
(427, 'michael', 'michael2', 'damn!! that''s awesome and great!!!', 1, '2015-05-29 20:30:13'),
(428, 'michael2', 'michael', 'damn!! that''s awesome and great!!!', 1, '2015-05-29 20:30:13'),
(429, 'michael', 'michael2', 'l', 1, '2015-05-30 02:14:20'),
(430, 'michael2', 'michael', 'l', 1, '2015-05-30 02:14:20'),
(431, 'michael', 'michael2', 'l\nl;', 1, '2015-05-30 02:14:22'),
(432, 'michael2', 'michael', 'l\nl;', 1, '2015-05-30 02:14:22'),
(433, 'michael', 'michael2', 'l;l', 1, '2015-05-30 02:14:23'),
(434, 'michael2', 'michael', 'l;l', 1, '2015-05-30 02:14:23'),
(435, 'michael', 'michael2', 'l', 1, '2015-05-30 02:14:24'),
(436, 'michael2', 'michael', 'l', 1, '2015-05-30 02:14:24'),
(437, 'michael', 'michael2', 'l', 1, '2015-05-30 02:14:25'),
(438, 'michael2', 'michael', 'l', 1, '2015-05-30 02:14:25'),
(439, 'michael', 'michael2', 'l', 1, '2015-05-30 02:14:25'),
(440, 'michael2', 'michael', 'l', 1, '2015-05-30 02:14:25'),
(441, 'michael', 'michael2', 'l', 1, '2015-05-30 02:14:26'),
(442, 'michael2', 'michael', 'l', 1, '2015-05-30 02:14:26'),
(443, 'michael', 'michael2', '123', 1, '2015-05-30 02:16:50'),
(444, 'michael2', 'michael', '123', 1, '2015-05-30 02:16:50'),
(445, 'michael', 'michael2', 'd', 1, '2015-05-30 02:16:52'),
(446, 'michael2', 'michael', 'd', 1, '2015-05-30 02:16:52'),
(447, 'michael', 'michael2', 'd', 1, '2015-05-30 02:16:54'),
(448, 'michael2', 'michael', 'd', 1, '2015-05-30 02:16:54'),
(449, 'michael', 'michael2', 'sdfds', 1, '2015-05-30 02:16:54'),
(450, 'michael2', 'michael', 'sdfds', 1, '2015-05-30 02:16:54'),
(451, 'michael', 'michael2', 'sdf', 1, '2015-05-30 02:16:55'),
(452, 'michael2', 'michael', 'sdf', 1, '2015-05-30 02:16:55'),
(453, 'michael', 'michael2', 'sdf', 1, '2015-05-30 02:16:56'),
(454, 'michael2', 'michael', 'sdf', 1, '2015-05-30 02:16:56'),
(455, 'michael', 'michael2', 'sdf', 1, '2015-05-30 02:16:57'),
(456, 'michael2', 'michael', 'sdf', 1, '2015-05-30 02:16:57'),
(457, 'michael', 'michael2', 'a', 1, '2015-05-30 02:30:33'),
(458, 'michael2', 'michael', 'a', 1, '2015-05-30 02:30:33'),
(459, 'michael', 'michael2', 'a', 1, '2015-05-30 02:30:34'),
(460, 'michael2', 'michael', 'a', 1, '2015-05-30 02:30:34'),
(461, 'michael', 'michael2', 'a', 1, '2015-05-30 02:30:35'),
(462, 'michael2', 'michael', 'a', 1, '2015-05-30 02:30:35'),
(463, 'michael', 'michael2', 'a', 1, '2015-05-30 02:30:35'),
(464, 'michael2', 'michael', 'a', 1, '2015-05-30 02:30:35'),
(465, 'michael', 'michael2', 'a', 1, '2015-05-30 02:30:36'),
(466, 'michael2', 'michael', 'a', 1, '2015-05-30 02:30:36'),
(467, 'michael', 'michael2', 'a', 1, '2015-05-30 02:30:37'),
(468, 'michael2', 'michael', 'a', 1, '2015-05-30 02:30:37'),
(469, 'michael', 'michael2', 'a', 1, '2015-05-30 02:30:38'),
(470, 'michael2', 'michael', 'a', 1, '2015-05-30 02:30:38'),
(471, 'michael', 'michael2', 'a', 1, '2015-05-30 02:31:05'),
(472, 'michael2', 'michael', 'a', 1, '2015-05-30 02:31:05'),
(473, 'michael', 'michael2', 'a', 1, '2015-05-30 02:31:11'),
(474, 'michael2', 'michael', 'a', 1, '2015-05-30 02:31:11'),
(475, 'michael', 'michael2', 'a', 1, '2015-05-30 02:31:12'),
(476, 'michael2', 'michael', 'a', 1, '2015-05-30 02:31:12'),
(477, 'michael', 'michael2', 'a', 1, '2015-05-30 02:31:12'),
(478, 'michael2', 'michael', 'a', 1, '2015-05-30 02:31:12'),
(479, 'michael', 'michael2', 'a', 1, '2015-05-30 02:31:13'),
(480, 'michael2', 'michael', 'a', 1, '2015-05-30 02:31:13'),
(481, 'michael', 'michael2', 'a', 1, '2015-05-30 02:31:14'),
(482, 'michael2', 'michael', 'a', 1, '2015-05-30 02:31:14'),
(483, 'michael', 'michael2', 'a', 1, '2015-05-30 02:31:14'),
(484, 'michael2', 'michael', 'a', 1, '2015-05-30 02:31:14'),
(485, 'michael', 'michael2', 'a', 1, '2015-05-30 02:31:16'),
(486, 'michael2', 'michael', 'a', 1, '2015-05-30 02:31:16'),
(487, 'michael', 'michael2', 'a', 1, '2015-05-30 02:31:16'),
(488, 'michael2', 'michael', 'a', 1, '2015-05-30 02:31:16'),
(489, 'michael', 'michael2', 'a', 1, '2015-05-30 02:32:24'),
(490, 'michael2', 'michael', 'a', 1, '2015-05-30 02:32:24'),
(491, 'michael', 'michael2', 'a', 1, '2015-05-30 02:32:25'),
(492, 'michael2', 'michael', 'a', 1, '2015-05-30 02:32:25'),
(493, 'michael', 'michael2', 'a', 1, '2015-05-30 02:32:26'),
(494, 'michael2', 'michael', 'a', 1, '2015-05-30 02:32:26'),
(495, 'michael', 'michael2', 'a', 1, '2015-05-30 02:32:27'),
(496, 'michael2', 'michael', 'a', 1, '2015-05-30 02:32:27'),
(497, 'michael', 'michael2', 'a', 1, '2015-05-30 02:32:27'),
(498, 'michael2', 'michael', 'a', 1, '2015-05-30 02:32:27'),
(499, 'michael', 'michael2', 'a', 1, '2015-05-30 02:32:28'),
(500, 'michael2', 'michael', 'a', 1, '2015-05-30 02:32:28'),
(501, 'michael', 'michael2', 'a', 1, '2015-05-30 02:32:30'),
(502, 'michael2', 'michael', 'a', 1, '2015-05-30 02:32:30'),
(503, 'michael', 'michael2', 'a', 1, '2015-05-30 02:32:31'),
(504, 'michael2', 'michael', 'a', 1, '2015-05-30 02:32:31'),
(505, 'michael', 'michael2', 'a', 1, '2015-05-30 02:33:00'),
(506, 'michael2', 'michael', 'a', 1, '2015-05-30 02:33:00'),
(507, 'michael', 'michael2', 'a', 1, '2015-05-30 02:33:01'),
(508, 'michael2', 'michael', 'a', 1, '2015-05-30 02:33:01'),
(509, 'michael', 'michael2', 'a', 1, '2015-05-30 02:33:02'),
(510, 'michael2', 'michael', 'a', 1, '2015-05-30 02:33:02'),
(511, 'michael', 'michael2', 'a', 1, '2015-05-30 02:33:02'),
(512, 'michael2', 'michael', 'a', 1, '2015-05-30 02:33:02'),
(513, 'michael', 'michael2', 'a', 1, '2015-05-30 02:33:03'),
(514, 'michael2', 'michael', 'a', 1, '2015-05-30 02:33:03'),
(515, 'michael', 'michael2', 'a', 1, '2015-05-30 02:33:04'),
(516, 'michael2', 'michael', 'a', 1, '2015-05-30 02:33:04'),
(517, 'michael', 'michael2', 'a', 1, '2015-05-30 02:33:05'),
(518, 'michael2', 'michael', 'a', 1, '2015-05-30 02:33:05'),
(519, 'michael', 'michael2', 'a', 1, '2015-05-30 02:37:35'),
(520, 'michael2', 'michael', 'a', 1, '2015-05-30 02:37:35'),
(521, 'michael', 'michael2', 's', 1, '2015-05-30 02:37:36'),
(522, 'michael2', 'michael', 's', 1, '2015-05-30 02:37:36'),
(523, 'michael', 'michael2', 'd', 1, '2015-05-30 02:37:40'),
(524, 'michael2', 'michael', 'd', 1, '2015-05-30 02:37:40'),
(525, 'michael', 'michael2', 'a', 1, '2015-05-30 02:38:00'),
(526, 'michael2', 'michael', 'a', 1, '2015-05-30 02:38:00'),
(527, 'michael', 'michael2', 'a', 1, '2015-05-30 02:38:01'),
(528, 'michael2', 'michael', 'a', 1, '2015-05-30 02:38:01'),
(529, 'michael', 'michael2', 'b', 1, '2015-05-30 02:38:03'),
(530, 'michael2', 'michael', 'b', 1, '2015-05-30 02:38:03'),
(531, 'michael', 'michael2', '1', 1, '2015-05-30 02:38:03'),
(532, 'michael2', 'michael', '1', 1, '2015-05-30 02:38:03'),
(533, 'michael', 'michael2', '1', 1, '2015-05-30 02:38:04'),
(534, 'michael2', 'michael', '1', 1, '2015-05-30 02:38:04'),
(535, 'michael', 'michael2', '1', 1, '2015-05-30 02:38:05'),
(536, 'michael2', 'michael', '1', 1, '2015-05-30 02:38:05'),
(537, 'michael', 'michael2', '1', 1, '2015-05-30 02:38:06'),
(538, 'michael2', 'michael', '1', 1, '2015-05-30 02:38:06'),
(539, 'michael', 'michael2', '5', 1, '2015-05-30 02:38:09'),
(540, 'michael2', 'michael', '5', 1, '2015-05-30 02:38:09'),
(541, 'michael', 'michael2', 't', 1, '2015-05-30 02:38:11'),
(542, 'michael2', 'michael', 't', 1, '2015-05-30 02:38:11'),
(543, 'michael', 'michael2', 's', 1, '2015-05-30 02:38:12'),
(544, 'michael2', 'michael', 's', 1, '2015-05-30 02:38:12'),
(545, 'michael', 'michael2', 'd', 1, '2015-05-30 02:38:14'),
(546, 'michael2', 'michael', 'd', 1, '2015-05-30 02:38:14'),
(547, 'michael', 'michael2', 'sdf', 1, '2015-05-30 02:38:17'),
(548, 'michael2', 'michael', 'sdf', 1, '2015-05-30 02:38:17'),
(549, 'michael', 'michael2', 'dd', 1, '2015-05-30 02:38:19'),
(550, 'michael2', 'michael', 'dd', 1, '2015-05-30 02:38:19'),
(551, 'michael', 'michael2', 'ggg', 1, '2015-05-30 02:38:21'),
(552, 'michael2', 'michael', 'ggg', 1, '2015-05-30 02:38:21'),
(553, 'michael', 'michael2', 'aaa', 1, '2015-05-30 02:38:24'),
(554, 'michael2', 'michael', 'aaa', 1, '2015-05-30 02:38:24'),
(555, 'michael', 'michael2', 'a', 1, '2015-05-30 02:38:27'),
(556, 'michael2', 'michael', 'a', 1, '2015-05-30 02:38:27'),
(557, 'michael', 'michael2', 'a', 1, '2015-05-30 02:38:30'),
(558, 'michael2', 'michael', 'a', 1, '2015-05-30 02:38:30'),
(559, 'michael', 'michael2', 'a', 1, '2015-05-30 02:40:19'),
(560, 'michael2', 'michael', 'a', 1, '2015-05-30 02:40:19'),
(561, 'michael', 'michael2', 'a', 1, '2015-05-30 02:40:20'),
(562, 'michael2', 'michael', 'a', 1, '2015-05-30 02:40:20'),
(563, 'michael', 'michael2', 'a', 1, '2015-05-30 02:40:20'),
(564, 'michael2', 'michael', 'a', 1, '2015-05-30 02:40:20'),
(565, 'michael', 'michael2', 's', 1, '2015-05-30 02:40:21'),
(566, 'michael2', 'michael', 's', 1, '2015-05-30 02:40:21'),
(567, 'michael', 'michael2', 'd', 1, '2015-05-30 02:40:22'),
(568, 'michael2', 'michael', 'd', 1, '2015-05-30 02:40:22'),
(569, 'michael', 'michael2', 'f', 1, '2015-05-30 02:40:23'),
(570, 'michael2', 'michael', 'f', 1, '2015-05-30 02:40:23'),
(571, 'michael', 'michael2', 'g', 1, '2015-05-30 02:40:24'),
(572, 'michael2', 'michael', 'g', 1, '2015-05-30 02:40:24'),
(573, 'michael', 'michael2', 'a', 1, '2015-05-30 02:42:36'),
(574, 'michael2', 'michael', 'a', 1, '2015-05-30 02:42:36'),
(575, 'michael', 'michael2', 'd', 1, '2015-05-30 02:42:37'),
(576, 'michael2', 'michael', 'd', 1, '2015-05-30 02:42:37'),
(577, 'michael', 'michael2', 's', 1, '2015-05-30 02:42:38'),
(578, 'michael2', 'michael', 's', 1, '2015-05-30 02:42:38'),
(579, 'michael', 'michael2', 's', 1, '2015-05-30 02:42:39'),
(580, 'michael2', 'michael', 's', 1, '2015-05-30 02:42:39'),
(581, 'michael', 'michael2', 's', 1, '2015-05-30 02:42:39'),
(582, 'michael2', 'michael', 's', 1, '2015-05-30 02:42:39'),
(583, 'michael', 'michael2', 's', 1, '2015-05-30 02:42:40'),
(584, 'michael2', 'michael', 's', 1, '2015-05-30 02:42:40'),
(585, 'michael', 'michael2', 's', 1, '2015-05-30 02:42:41'),
(586, 'michael2', 'michael', 's', 1, '2015-05-30 02:42:41'),
(587, 'michael', 'michael2', 's', 1, '2015-05-30 02:42:42'),
(588, 'michael2', 'michael', 's', 1, '2015-05-30 02:42:42'),
(589, 'michael', 'michael2', 'a', 1, '2015-05-30 02:45:31'),
(590, 'michael2', 'michael', 'a', 1, '2015-05-30 02:45:31'),
(591, 'michael', 'michael2', 'a', 1, '2015-05-30 02:48:17'),
(592, 'michael2', 'michael', 'a', 1, '2015-05-30 02:48:17'),
(593, 'michael', 'michael2', 'a', 1, '2015-05-30 02:48:21'),
(594, 'michael2', 'michael', 'a', 1, '2015-05-30 02:48:21'),
(595, 'michael', 'michael2', 's', 1, '2015-05-30 02:48:25'),
(596, 'michael2', 'michael', 's', 1, '2015-05-30 02:48:25'),
(597, 'michael', 'michael2', 's', 1, '2015-05-30 02:48:29'),
(598, 'michael2', 'michael', 's', 1, '2015-05-30 02:48:29'),
(599, 'michael', 'michael2', 'f', 1, '2015-05-30 02:48:32'),
(600, 'michael2', 'michael', 'f', 1, '2015-05-30 02:48:32'),
(601, 'michael', 'michael2', 'g', 1, '2015-05-30 02:48:35'),
(602, 'michael2', 'michael', 'g', 1, '2015-05-30 02:48:35'),
(603, 'michael', 'michael2', 'd', 1, '2015-05-30 02:48:38'),
(604, 'michael2', 'michael', 'd', 1, '2015-05-30 02:48:38'),
(605, 'michael', 'michael2', 'dsf', 1, '2015-05-30 02:51:24'),
(606, 'michael2', 'michael', 'dsf', 1, '2015-05-30 02:51:24'),
(607, 'michael', 'michael2', 'a', 1, '2015-05-30 02:51:25'),
(608, 'michael2', 'michael', 'a', 1, '2015-05-30 02:51:25'),
(609, 'michael2', 'michael', 'a', 1, '2015-05-30 02:51:45'),
(610, 'michael', 'michael2', 'a', 1, '2015-05-30 02:51:45'),
(611, 'michael2', 'michael', 'dfs', 1, '2015-05-30 02:51:47'),
(612, 'michael', 'michael2', 'dfs', 1, '2015-05-30 02:51:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(100) NOT NULL,
  `password` int(100) NOT NULL,
  `online` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `online`) VALUES
('michael', 123, 0),
('michael1', 123, 0),
('michael2', 123, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=613;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
