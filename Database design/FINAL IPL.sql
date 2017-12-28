-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2017 at 08:51 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ipl league`
--

-- --------------------------------------------------------

--
-- Table structure for table `coach`
--

CREATE TABLE `coach` (
  `c_id` varchar(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL,
  `experience` int(11) NOT NULL,
  `team_id` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coach`
--

INSERT INTO `coach` (`c_id`, `name`, `role`, `experience`, `team_id`) VALUES
('DDH1', 'Rahul Dravid', 'Head Coach', 7, 'DD'),
('KKRA1', 'Simon Katich', 'Assistant Coach', 13, 'KKR'),
('KKRB1', 'Eric Simons', 'Bowling Coach', 6, 'KKR'),
('KKRH1', 'Jacques Kallis', 'Head coach', 18, 'KKR'),
('MIH1', 'Ricky Ponting', 'Head Coach', 3, 'MI'),
('RCBB1', 'Trent Woodhill', 'Batting coach', 8, 'RCB'),
('RCBH1', 'Daniel Vettori', 'Head coach', 14, 'RCB'),
('RPSH1', 'Stephen Fleming', 'Head Coach', 14, 'RPS');

-- --------------------------------------------------------

--
-- Table structure for table `fixture`
--

CREATE TABLE `fixture` (
  `m_no` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `ump1_id` varchar(10) NOT NULL,
  `ump2_id` varchar(10) NOT NULL,
  `result` varchar(4) NOT NULL,
  `hometeam_id` varchar(4) NOT NULL,
  `guestteam_id` varchar(4) NOT NULL,
  `MOM_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fixture`
--

INSERT INTO `fixture` (`m_no`, `date`, `time`, `ump1_id`, `ump2_id`, `result`, `hometeam_id`, `guestteam_id`, `MOM_id`) VALUES
(1, '2016-04-05', '20:00:00', 'u1', 'u2', 'W', 'KKR', 'RPS', 7),
(2, '2016-04-07', '16:00:00', 'u3', 'u4', 'L', 'KKR', 'RCB', 18),
(3, '2016-04-09', '20:00:00', 'u1', 'u3', 'W', 'RCB', 'KKR', 11);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `o_id` varchar(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  `team_id` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`o_id`, `name`, `team_id`) VALUES
('DD1', 'GMR group', 'DD'),
('KKR1', 'Shahrukh Khan', 'KKR'),
('KKR2', 'Juhi Chawla', 'KKR'),
('MI1', 'Mukesh Ambani', 'MI'),
('RCB1', 'Vijay Mallya', 'RCB'),
('RPS1', 'CESC Limited', 'RPS');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `jersey_no` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `runs` int(11) NOT NULL,
  `nationality` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `average` int(11) NOT NULL,
  `strike_rate` int(11) NOT NULL,
  `catches` int(11) NOT NULL,
  `wickets` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `category_id` varchar(30) NOT NULL,
  `batting_id` varchar(30) NOT NULL,
  `bowling_id` varchar(30) DEFAULT NULL,
  `team_id` varchar(4) NOT NULL,
  `fours` int(11) NOT NULL,
  `sixes` int(11) NOT NULL,
  `skilllevel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`jersey_no`, `name`, `runs`, `nationality`, `age`, `average`, `strike_rate`, `catches`, `wickets`, `salary`, `category_id`, `batting_id`, `bowling_id`, `team_id`, `fours`, `sixes`, `skilllevel`) VALUES
(1, 'Manish Pandey ', 1634, 'India', 27, 31, 156, 45, 0, 17000000, 'Batsman', 'Right Handed Batsman', '', 'KKR', 77, 47, 84),
(3, 'Ajinkya Rahane', 990, 'India', 28, 35, 126, 60, 0, 8000000, 'Batsman', 'Right Handed Batsman', '', 'RPS', 89, 67, 88),
(5, 'Gautam Gambhir', 2775, 'India', 32, 37, 128, 62, 0, 140000000, 'Batsman', 'Left Handed Batsman', '', 'KKR', 161, 68, 83),
(7, 'MS Dhoni', 3684, 'India', 34, 36, 144, 84, 0, 140000000, 'Batsman', 'Right Handed Batsman', 'Right Medium Fast', 'RPS', 180, 64, 87),
(11, 'Ashok Dinda', 185, 'India', 32, 8, 94, 20, 84, 5000000, 'Bowler', 'Right Handed Batsman', 'Right Medium Fast', 'KKR', 4, 2, 75),
(11, 'KL Rahul', 844, 'India', 26, 28, 121, 16, 0, 60000000, 'Batsman', 'Right Handed Batsman', '', 'RCB', 86, 22, 74),
(13, 'Faf du plessis', 1233, 'South Africa', 32, 29, 145, 26, 0, 47500000, 'Batsman', 'Right Handed Batsman', 'Right Arm Leg Spin', 'RPS', 55, 49, 79),
(17, 'AB De Villiers', 3442, 'South Afri', 32, 36, 160, 56, 0, 125000000, 'Batsman', 'Right Handed Batsman', '', 'RCB', 255, 64, 87),
(18, 'Kuldeep Yadav', 42, 'India', 22, 7, 53, 8, 48, 4000000, 'Bowler', 'Left Handed Batsman', 'Left Arm Unorthodox', 'KKR', 1, 0, 64),
(18, 'Virat Kohli', 3782, 'India', 28, 44, 103, 38, 0, 140000000, 'Batsman', 'Right Handed Batsman', 'Right Medium Fast', 'RCB', 164, 78, 96),
(22, 'Sreenath All Rounder', 88, 'India', 33, 8, 64, 18, 95, 20000000, 'Bowler', 'Left Handed Batsman', 'Left Medium Fast', 'RCB', 8, 2, 65),
(24, 'Yusuf Pathan', 1875, 'India', 34, 38, 168, 29, 38, 3250000, 'All Rounder', 'Right Handed Batsman', 'Right Arm Off Spin', 'KKR', 89, 64, 80),
(29, 'Rajat Bhatia', 670, 'India', 37, 23, 110, 13, 110, 6000000, 'All Rounder', 'Right Handed Batsman', 'Right Medium Fast', 'RPS', 30, 12, 73),
(34, 'Shane Watson', 2372, 'Australia', 35, 37, 130, 35, 200, 850000000, 'All Rounder', 'Right Handed Batsman', 'Right Medium Fast', 'RCB', 89, 80, 83),
(37, 'Robin Uthappa', 2904, 'India', 31, 24, 145, 45, 0, 50000000, 'Batsman', 'Right Handed Batsman', '', 'KKR', 137, 35, 63),
(48, 'Mayank AgAll Rounder', 1628, 'India', 26, 29, 140, 27, 0, 5000000, 'Batsman', 'Right Handed Batsman', '', 'RPS', 68, 45, 73),
(49, 'StuAll Roundert Binn', 862, 'India', 33, 22, 130, 27, 30, 2500000, 'All Rounder', 'Right Handed Batsman', 'Right Medium Fast', 'RCB', 40, 10, 55),
(49, 'Steve Smith', 1500, 'Australia', 27, 33, 140, 45, 1, 40000000, 'Batsman', 'Right Handed Batsman', 'Right Arm Leg Spin', 'RPS', 98, 33, 91),
(50, 'Chris Lynn', 340, 'Australia', 26, 14, 112, 10, 0, 13000000, 'Batsman', 'Right Handed Batsman', '', 'KKR', 27, 17, 74),
(65, 'Manoj TiwAll Rounder', 1454, 'India', 31, 19, 128, 27, 0, 5000000, 'Batsman', 'Right Handed Batsman', 'Right Arm Leg Spin', 'RPS', 94, 24, 81),
(67, 'Darren Bravo', 0, 'West Indies', 28, 0, 0, 0, 0, 5000000, 'Batsman', 'Left Handed Batsman', '', 'KKR', 0, 0, 68),
(87, 'SAll RounderfAll Rou', 300, 'India', 19, 38, 174, 3, 0, 1000000, 'Batsman', 'Right Handed Batsman', '', 'RCB', 25, 7, 73),
(89, 'Ben Stokes', 0, 'England', 25, 0, 0, 0, 0, 145000000, 'All Rounder', 'Left Handed Batsman', 'Right Arm Fast', 'RPS', 0, 0, 81),
(99, 'R Ashwin', 644, 'India', 27, 18, 34, 6, 312, 60000000, 'All Rounder', 'Right Handed Batsman', 'Right Arm Off Spin', 'RPS', 39, 5, 83),
(101, 'Usman Khawaja', 626, 'Australia', 30, 24, 125, 18, 0, 10000000, 'Batsman', 'Left Handed Batsman', '', 'RPS', 47, 20, 77),
(201, 'Rohit Sharma', 889, 'India', 29, 34, 131, 18, 0, 80000000, 'Batsman', 'Right Handed Batsman', '', 'MI', 57, 23, 85),
(202, 'Jasprit Bumrah', 26, 'India', 27, 26, 95, 12, 37, 5000000, 'Bowler', 'Right Handed Batsman', 'Right Medium Fast', 'MI', 2, 0, 73),
(203, 'Jos Buttler', 459, 'England', 27, 33, 142, 9, 0, 40000000, 'Batsman', 'Right Handed Batsman', '', 'MI', 45, 14, 80),
(204, 'Harbhajan Singh', 224, 'India', 34, 21, 93, 29, 48, 30000000, 'Bowler', 'Right Handed Batsman', 'Right Arm Off Spin', 'MI', 8, 3, 76),
(205, 'Parthiv patel', 627, 'India', 33, 32, 128, 57, 0, 35000000, 'Batsman', 'Right Handed Batsman', '', 'MI', 46, 21, 77),
(206, 'Kieron Pollard', 725, 'West Indies', 29, 34, 135, 31, 24, 50000000, 'All Rounder', 'Right Handed Batsman', 'Right Medium Fast', 'MI', 41, 28, 79),
(207, 'Lasith Malinga', 43, 'Sri Lanka', 33, 18, 83, 26, 53, 40000000, 'Bowler', 'Right Handed Batsman', 'Right Arm Fast', 'MI', 3, 0, 83),
(208, 'Hardik Pandya', 322, 'India', 24, 32, 135, 19, 24, 20000000, 'All Rounder', 'Right Handed Batsman', 'Right Medium Fast', 'MI', 23, 8, 80),
(209, 'Ambati Rayudu', 622, 'India', 29, 37, 131, 46, 0, 40000000, 'Batsman', 'Right Handed Batsman', '', 'MI', 47, 24, 81),
(210, 'Lendl Simmons', 433, 'West Indies', 32, 36, 130, 16, 0, 30000000, 'Batsmen', 'Right Handed Batsman', '', 'MI', 34, 18, 76),
(211, 'Mitchell Johnson', 57, 'Australia', 35, 12, 87, 24, 47, 25000000, 'Bowler', 'Right Handed Batsman', 'Left Arm Fast', 'MI', 2, 0, 78),
(212, 'Unmukt Chand', 325, 'India', 26, 29, 129, 13, 0, 10000000, 'Batsman', 'Right Handed Batsman', '', 'MI', 37, 14, 75),
(301, 'Virendar Sehwag', 785, 'India', 36, 32, 143, 16, 0, 70000000, 'Batsman', 'Right Handed Batsman', '', 'DD', 53, 31, 84),
(302, 'Zaheer Khan', 75, 'India', 34, 16, 77, 21, 41, 6000000, 'Bowler', 'Right Handed Batsman', 'Left Arm Fast', 'DD', 3, 0, 81),
(303, 'JP Duminy', 561, 'South Africa', 33, 31, 138, 17, 6, 40000000, 'All Rounder', 'Right Handed Batsman', 'Right Arm Off Spin', 'DD', 35, 24, 81),
(304, 'Amith Mishra', 67, 'India', 34, 15, 74, 13, 36, 20000000, 'Bowler', 'Right Handed Batsman', 'Right Arm Leg Spin', 'DD', 3, 5, 75),
(305, 'Karun Nair', 327, 'India', 23, 32, 138, 17, 0, 15000000, 'Batsman', 'Right Handed Batsman', '', 'DD', 26, 11, 74),
(306, 'Carlos Brathwite', 225, 'West Indies', 28, 24, 137, 21, 24, 10000000, 'All Rounder', 'Right Handed Batsman', 'Right Medium Fast', 'DD', 31, 18, 73),
(307, 'Quinton de Kock', 371, 'South Africa', 25, 34, 137, 34, 0, 30000000, 'Batsman', 'Right Handed Batsman', '', 'DD', 43, 19, 78),
(308, 'Sanju Samson', 328, 'India', 24, 31, 129, 39, 0, 10000000, 'Batsman', 'Right Handed Batsman', '', 'DD', 33, 24, 78),
(309, 'Mohamed Shami', 62, 'India', 29, 9, 85, 15, 37, 20000000, 'Bowler', 'Right Handed Batsman', 'Right Arm Fast', 'DD', 2, 0, 76),
(310, 'Mayank Agarwal', 297, 'India', 22, 29, 142, 17, 0, 5000000, 'Batsman', 'Right Handed Batsman', '', 'DD', 29, 23, 72),
(311, 'Pat Cummins', 47, 'Australia', 26, 22, 67, 14, 38, 45000000, 'Bowler', 'Right Handed Batsman', 'Right Arm Fast', 'DD', 4, 1, 80),
(312, 'Manoj Tiwary', 376, 'India', 28, 31, 125, 23, 0, 20000000, 'Batsman', 'Right Handed Batsman', '', 'DD', 29, 15, 73),
(333, 'Chris Gayle', 3777, 'West Indies', 38, 31, 177, 18, 82, 100000000, 'All Rounder', 'Left Handed Batsman', 'Right Arm Off Spin', 'RCB', 113, 312, 78),
(345, 'Daniel Christian', 360, 'Australia', 33, 18, 140, 10, 13, 10000000, 'All Rounder', 'Right Handed Batsman', 'Right Medium Fast', 'RPS', 10, 15, 78),
(409, 'Andre Russel', 313, 'West Indies', 28, 30, 140, 11, 27, 20000000, 'All Rounder', 'Right Handed Batsman', 'Right Medium Fast', 'KKR', 31, 21, 79),
(410, 'Shakib Al Hasan', 463, 'Bangladesh', 31, 34, 135, 14, 23, 20000000, 'All Rounder', 'Left Handed Batsman', 'Left Arm Off Spin', 'KKR', 29, 18, 76),
(411, 'Morne Morkel', 116, 'South Africa', 33, 33, 136, 9, 33, 30000000, 'Bowler', 'Left Handed Batsman', 'Right Arm Fast', 'KKR', 3, 4, 75),
(450, 'KedhAll Rounder Jadh', 650, 'India', 32, 23, 160, 28, 1, 500000, 'Batsman', 'Right Handed Batsman', 'Right Arm Off Spin', 'RCB', 54, 12, 76),
(888, 'Tabraiz Shamsi', 23, 'South Africa', 27, 1, 10, 10, 50, 3000000, 'Bowler', 'Right Handed Batsman', 'Left Arm Unorthodox', 'RCB', 1, 0, 65),
(999, 'Yuzvendra Chahal', 125, 'India', 27, 6, 60, 70, 64, 2000000, 'Bowler', 'Right Handed Batsman', 'Right Arm Leg Spin', 'RCB', 3, 1, 68);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `res_id` varchar(4) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`res_id`, `type`) VALUES
('L', 'Home team lost'),
('NR', 'No Result'),
('T', 'Tie'),
('W', 'Home team won');

-- --------------------------------------------------------

--
-- Table structure for table `season`
--

CREATE TABLE `season` (
  `s_no` int(11) NOT NULL,
  `s_year` int(11) NOT NULL,
  `matches` int(11) NOT NULL,
  `sponsor` varchar(20) NOT NULL,
  `runs` int(11) NOT NULL,
  `wickets` int(11) NOT NULL,
  `catches` int(11) NOT NULL,
  `fours` int(11) NOT NULL,
  `sixes` int(11) NOT NULL,
  `tweets` int(11) NOT NULL,
  `winteam_id` varchar(4) NOT NULL,
  `MVP_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `season`
--

INSERT INTO `season` (`s_no`, `s_year`, `matches`, `sponsor`, `runs`, `wickets`, `catches`, `fours`, `sixes`, `tweets`, `winteam_id`, `MVP_id`) VALUES
(7, 2012, 60, 'PEPSI', 10455, 485, 360, 2541, 660, 1827864, 'KKR', 5);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `t_id` varchar(4) NOT NULL,
  `name` varchar(35) NOT NULL,
  `city` varchar(20) NOT NULL,
  `sponsor` varchar(20) NOT NULL,
  `spending` int(11) NOT NULL,
  `homeground` varchar(40) NOT NULL,
  `coach_id` varchar(5) NOT NULL,
  `owner` varchar(4) NOT NULL,
  `captain_id` int(11) NOT NULL,
  `wk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`t_id`, `name`, `city`, `sponsor`, `spending`, `homeground`, `coach_id`, `owner`, `captain_id`, `wk_id`) VALUES
('DD', 'Delhi Daredevils', 'Delhi', 'Daikin', 590000000, 'Feroz shah kotla', 'DDH1', 'DD1', 302, 307),
('KKR', 'Kolkata Knight Riders', 'Kolkata', 'GIONEE', 530000000, 'Eden Gardens', 'KKRH1', 'KKR1', 5, 37),
('MI', 'Mumbai Indians', 'Mumbai', 'Videocon D2H', 680000000, 'Wankhede Std', 'MIH1', 'MI1', 201, 205),
('RCB', 'Royal Challengers Bangalore', 'Bangalore', 'HERO', 580000000, 'M Chinnaswamy Std', 'RCBH1', 'RCB1', 18, 11),
('RPS', 'Rising Pune Supergiants', 'Pune', 'KENT RO', 490000000, 'MCA Stadium', 'RPSH1', 'RPS1', 888, 888);

-- --------------------------------------------------------

--
-- Table structure for table `umpire`
--

CREATE TABLE `umpire` (
  `u_id` varchar(10) NOT NULL,
  `u_name` varchar(20) NOT NULL,
  `nationality` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `umpire`
--

INSERT INTO `umpire` (`u_id`, `u_name`, `nationality`) VALUES
('u1', 'Simon Taufel', 'Australia'),
('u10', 'Chamida', 'Sri Lanka'),
('u12', 'Bruce Wayne', 'India'),
('u15', 'Barry Allen', 'USA'),
('u16', 'Hal Jordan', 'Canada'),
('u17', 'Hal belford', 'Canada'),
('u2', 'Asad Rauf', 'Pakistan'),
('u3', 'Kumar Dharmasena', 'Sri Lanka'),
('u4', 'Bruce Oxenford', 'Australia'),
('u5', 'Billy Bowden', 'New Zealand'),
('u6', 'Satish', 'India'),
('u7', 'Aleem Dar', 'Pakistan'),
('u8', 'Nigel Llong', 'South Africa'),
('u9', 'Parash', 'India');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coach`
--
ALTER TABLE `coach`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `FK_t1` (`team_id`);

--
-- Indexes for table `fixture`
--
ALTER TABLE `fixture`
  ADD PRIMARY KEY (`m_no`),
  ADD KEY `FK_MOM` (`MOM_id`),
  ADD KEY `FK_gteam` (`guestteam_id`),
  ADD KEY `FK_hteam` (`hometeam_id`),
  ADD KEY `FK_res` (`result`),
  ADD KEY `FK_ump1` (`ump1_id`),
  ADD KEY `FK_ump2` (`ump2_id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`o_id`),
  ADD KEY `FK_t2` (`team_id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`jersey_no`,`team_id`),
  ADD KEY `FK_bat` (`batting_id`),
  ADD KEY `FK_bowl` (`bowling_id`),
  ADD KEY `FK_cat` (`category_id`),
  ADD KEY `FK_team` (`team_id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`res_id`);

--
-- Indexes for table `season`
--
ALTER TABLE `season`
  ADD PRIMARY KEY (`s_no`),
  ADD KEY `FK_performer` (`MVP_id`),
  ADD KEY `FK_winteam` (`winteam_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `FK_capt` (`captain_id`),
  ADD KEY `FK_coach` (`coach_id`),
  ADD KEY `FK_owner` (`owner`),
  ADD KEY `FK_wkt` (`wk_id`);

--
-- Indexes for table `umpire`
--
ALTER TABLE `umpire`
  ADD PRIMARY KEY (`u_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coach`
--
ALTER TABLE `coach`
  ADD CONSTRAINT `FK_t1` FOREIGN KEY (`team_id`) REFERENCES `team` (`t_id`) ON UPDATE CASCADE;

--
-- Constraints for table `fixture`
--
ALTER TABLE `fixture`
  ADD CONSTRAINT `FK_MOM` FOREIGN KEY (`MOM_id`) REFERENCES `player` (`jersey_no`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_gteam` FOREIGN KEY (`guestteam_id`) REFERENCES `team` (`t_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_hteam` FOREIGN KEY (`hometeam_id`) REFERENCES `team` (`t_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_res` FOREIGN KEY (`result`) REFERENCES `result` (`res_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ump1` FOREIGN KEY (`ump1_id`) REFERENCES `umpire` (`u_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ump2` FOREIGN KEY (`ump2_id`) REFERENCES `umpire` (`u_id`) ON UPDATE CASCADE;

--
-- Constraints for table `owner`
--
ALTER TABLE `owner`
  ADD CONSTRAINT `FK_t2` FOREIGN KEY (`team_id`) REFERENCES `team` (`t_id`) ON UPDATE CASCADE;

--
-- Constraints for table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `FK_team` FOREIGN KEY (`team_id`) REFERENCES `team` (`t_id`) ON UPDATE CASCADE;

--
-- Constraints for table `season`
--
ALTER TABLE `season`
  ADD CONSTRAINT `FK_performer` FOREIGN KEY (`MVP_id`) REFERENCES `player` (`jersey_no`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_winteam` FOREIGN KEY (`winteam_id`) REFERENCES `team` (`t_id`) ON UPDATE CASCADE;

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `FK_capt` FOREIGN KEY (`captain_id`) REFERENCES `player` (`jersey_no`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_coach` FOREIGN KEY (`coach_id`) REFERENCES `coach` (`c_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_owner` FOREIGN KEY (`owner`) REFERENCES `owner` (`o_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_wkt` FOREIGN KEY (`wk_id`) REFERENCES `player` (`jersey_no`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
