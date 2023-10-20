-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2023 at 04:11 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ers`
--

-- --------------------------------------------------------

--
-- Table structure for table `empfeedback`
--

CREATE TABLE `empfeedback` (
  `feedback_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `feedback` varchar(200) NOT NULL,
  `reply` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `empfeedback`
--

INSERT INTO `empfeedback` (`feedback_id`, `employee_id`, `feedback`, `reply`, `date`) VALUES
(1, 5, 'User Friendly Design', 'Thanks Akhil', '2023-07-04'),
(2, 6, 'Sometimes Server dont respond', 'Sorry for the inconvenience.We are working to fix that issue', '2023-07-04');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `login_id` int(11) DEFAULT NULL,
  `emp_name` varchar(50) DEFAULT NULL,
  `emp_email` varchar(50) DEFAULT NULL,
  `emp_details` varchar(200) DEFAULT NULL,
  `emp_phone` varchar(50) DEFAULT NULL,
  `emp_address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `login_id`, `emp_name`, `emp_email`, `emp_details`, `emp_phone`, `emp_address`) VALUES
(4, 10, 'Baby Daniel', 'baby@gmail.com', 'Finding New Oppertunities', '9656323072', 'assa'),
(5, 12, 'Akhil K R', 'akhil@gmail.com', 'seeking job opportunities in data science and machine learning', '9898748578', 'puthezhath house,paravoor,ernakulam'),
(6, 15, 'Rakesh V K', 'rakesh@gmail.com', 'Im looking for job in Full stack developer, Software Testing field ', '8745975623', 'plasseril house,cheranallor,ernakulam'),
(7, 16, 'Saida', 'saida@gmail.com', 'Seeking job opportunities in Programming field', '7558469874', 'varapuzha, ernakulam');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `feedback` varchar(500) DEFAULT NULL,
  `reply` varchar(500) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `user_id`, `feedback`, `reply`, `date`) VALUES
(3, 3, 'Good Service..', 'Thank You', '2023-03-25'),
(4, 5, 'Good Service', 'Pending', '2023-03-26');

-- --------------------------------------------------------

--
-- Table structure for table `job_offer`
--

CREATE TABLE `job_offer` (
  `job_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `skill_id` int(11) DEFAULT NULL,
  `job_title` varchar(50) DEFAULT NULL,
  `job_des` varchar(500) DEFAULT NULL,
  `job_type` varchar(50) DEFAULT NULL,
  `job_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `job_offer`
--

INSERT INTO `job_offer` (`job_id`, `user_id`, `skill_id`, `job_title`, `job_des`, `job_type`, `job_status`) VALUES
(1, 5, 6, 'Project Manager', 'Project Developemnt', 'Permanent', 'Offer Accepted'),
(2, 6, 7, 'Python Developer', 'Developing Web apps using Django', 'Permanent', 'Offer Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `usertype` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `username`, `password`, `usertype`) VALUES
(1, 'admin', 'admin', 'admin'),
(10, 'baby', 'baby1', 'Employee'),
(11, 'bless', 'bless', 'User'),
(12, 'akhil', 'akhil', 'Employee'),
(13, 'akshay', 'akshay', 'User'),
(14, 'akhila', 'akhila', 'User'),
(15, 'rakesh', 'rakesh', 'Employee'),
(16, 'saida', 'saida', 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `job_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `no_days` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `total_amount` varchar(50) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `payment_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `job_id`, `user_id`, `no_days`, `amount`, `total_amount`, `payment_status`, `payment_date`) VALUES
(3, 1, 5, '30', '500', '15000', 'Paid', '2023-03-27');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rating_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `rate` varchar(300) DEFAULT NULL,
  `review` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `reply` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rating_id`, `user_id`, `employee_id`, `rate`, `review`, `date`, `reply`) VALUES
(1, 5, 4, '5', 'Good Work..Thank You For Your Services', '2023-03-27', 'Thank You');

-- --------------------------------------------------------

--
-- Table structure for table `reference`
--

CREATE TABLE `reference` (
  `ref_id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `previous_company` varchar(50) DEFAULT NULL,
  `current_exp` varchar(50) DEFAULT NULL,
  `relevant_position` varchar(50) DEFAULT NULL,
  `job_location` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reference`
--

INSERT INTO `reference` (`ref_id`, `employee_id`, `previous_company`, `current_exp`, `relevant_position`, `job_location`) VALUES
(2, 4, 'Techwingsys', '3', 'Team Leader', 'Kochi'),
(3, 6, 'Quest Global', '1', 'Python Developer', 'Ernakulam');

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `skill_id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `skill_name` varchar(50) DEFAULT NULL,
  `skill_des` varchar(500) DEFAULT NULL,
  `skill_experience` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`skill_id`, `employee_id`, `skill_name`, `skill_des`, `skill_experience`) VALUES
(1, 2, 'Programming', 'Python,Java,C++', '2-3Years'),
(3, 2, 'Front End Design', 'HTML,CSS,JAVASCRIPT,BOOTSTRAP', '2-3Years'),
(4, 3, 'Programming', 'Python,Java', '2-3Years'),
(6, 4, 'Programming', 'Java', '2-3Years'),
(7, 6, 'Python Programming', 'Excellent coding skills in Python ', '0-1Years');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `login_id` int(11) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `login_id`, `first_name`, `last_name`, `gender`, `address`, `phone`, `email`, `place`) VALUES
(5, 11, 'Blesson', 'Baby', 'Male', 'Modiyil\r\n\r\n                    \r\n\r\n               ', '9556323072', 'bless@gmail.com', 'Kollakadavu'),
(6, 13, 'Akshay', 'K S', 'Male', 'kudazhath house,kaloor,ernakulam\r\n                ', '8848865738', 'akshay@gmail.com', 'ernakulam'),
(7, 14, 'Akhila', 'S', 'Female', 'puthuveed house, kannur\r\n                    ', '9898748578', 'akhila@gmail.com', 'kannur');

-- --------------------------------------------------------

--
-- Table structure for table `work_duration`
--

CREATE TABLE `work_duration` (
  `work_id` int(11) NOT NULL,
  `job_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `work_des` varchar(200) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `work_location` varchar(50) DEFAULT NULL,
  `work_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `work_duration`
--

INSERT INTO `work_duration` (`work_id`, `job_id`, `user_id`, `work_des`, `start_date`, `end_date`, `work_location`, `work_status`) VALUES
(4, 1, 5, 'as', '2023-03-27', '2023-03-27', 'Kochi', 'Work Accepted');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `empfeedback`
--
ALTER TABLE `empfeedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `job_offer`
--
ALTER TABLE `job_offer`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `reference`
--
ALTER TABLE `reference`
  ADD PRIMARY KEY (`ref_id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`skill_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `work_duration`
--
ALTER TABLE `work_duration`
  ADD PRIMARY KEY (`work_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `empfeedback`
--
ALTER TABLE `empfeedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job_offer`
--
ALTER TABLE `job_offer`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reference`
--
ALTER TABLE `reference`
  MODIFY `ref_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `work_duration`
--
ALTER TABLE `work_duration`
  MODIFY `work_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
