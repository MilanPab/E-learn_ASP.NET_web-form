-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2023 at 12:39 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elms_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `videoUrl` varchar(255) NOT NULL,
  `imageUrl` varchar(255) NOT NULL,
  `isActive` int(11) NOT NULL DEFAULT 0,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `details`, `videoUrl`, `imageUrl`, `isActive`, `createdAt`) VALUES
(2, 'DBMS', 'This is dbms', 'https://www.youtube.com/results?search_query=asp.net', 'images/Courses/c83dd16d-1dd6-424e-b9fc-a6caaa7a03f4.png', 0, '2023-01-12 23:00:01'),
(3, 'Python Full Course', 'It is Python Course', 'https://www.youtube.com/watch?v=T936yTchDck', 'images/Courses/31b7be31-0345-44f6-bc07-be394ed17a33.png', 1, '2023-01-13 10:58:13'),
(4, 'Java', 'This is Java', 'https://www.youtube.com/watch?v=T936yTchDck', 'images/Courses/f66f3f90-7af6-4f1b-a64f-2ce9813a63f5.png', 1, '2023-01-14 23:43:43');

-- --------------------------------------------------------

--
-- Table structure for table `enrolled_course`
--

CREATE TABLE `enrolled_course` (
  `course_id` int(11) NOT NULL,
  `course_title` varchar(255) NOT NULL,
  `course_desc` text NOT NULL,
  `author` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_des` varchar(255) NOT NULL,
  `news_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `news_title`, `news_des`, `news_img`) VALUES
(1, 'Trump making ideal sloution for pollution', 'The Department of Education, Sport and Culture (DESC) has launched a consultation on a new uniform policy for the island\'s secondary schools.\r\n\r\nCurrently each sets their own rules under guidance from the department.\r\n\r\nDESC Minister Julie Edge said the r', ''),
(2, 'Trump making ideal sloution for pollution', 'The Department of Education, Sport and Culture (DESC) has launched a consultation on a new uniform policy for the island secondary schools.Currently each sets their own rules under guidance from the department.DESC Minister Julie Edge said the review was ', ''),
(3, 'Sports hubs plan to save regional pools backed by Tynwal', 'An investigation into whether creating new sports hubs would ensure the future of the Isle of Man\'s regional swimming pools has been backed by Tynwald.The Department of Education, Sport and Culture (DESC) had proposed controlling the struggling pools cent', ''),
(4, 'Sports hubs plan to save regional pools backed by Tynwal', 'An investigation into whether creating new sports hubs would ensure the future of the Isle of Man regional swimming pools has been backed by Tynwald.The Department of Education, Sport and Culture  had proposed controlling the struggling pools centrally.Bu', '');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `st_id` int(5) NOT NULL,
  `st_name` varchar(50) NOT NULL,
  `st_email` varchar(50) NOT NULL,
  `st_password` varchar(50) NOT NULL,
  `st_desc` text NOT NULL,
  `st_contact` varchar(15) NOT NULL,
  `st_linkedin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`st_id`, `st_name`, `st_email`, `st_password`, `st_desc`, `st_contact`, `st_linkedin`) VALUES
(1, 'milan', 'milan@gmail.com', 'milan', 'I am a Student.', '464336666', 'ewwfeasf'),
(2, 'admin', 'admin@gmail.com', 'admin', '', '43636', '3434'),
(3, 'abcd', 'abc@gmail.com', 'abcde', '', '009912872', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrolled_course`
--
ALTER TABLE `enrolled_course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`st_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `enrolled_course`
--
ALTER TABLE `enrolled_course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `st_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
