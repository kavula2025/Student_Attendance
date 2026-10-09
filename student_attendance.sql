-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2026 at 11:19 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `confirmed` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `user_id`, `date`, `status`, `confirmed`) VALUES
(1, 8, '2026-10-05', 'present', 1),
(2, 1, '2026-10-05', 'present', 1),
(3, 2, '2026-10-05', 'present', 1),
(4, 3, '2026-10-05', 'present', 1),
(5, 4, '2026-10-05', 'present', 1),
(6, 5, '2026-10-05', 'present', 1),
(7, 6, '2026-10-05', 'absent', 1),
(8, 11, '2026-10-05', 'present', 1),
(9, 12, '2026-10-08', 'present', 1),
(10, 13, '2026-10-08', 'present', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'student'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `role`) VALUES
(1, 'John Doe', 'john@example.com', 'hashed_password_1', 'student'),
(2, 'Asha Hassan', 'asha@example.com', 'hashed_password_2', 'student'),
(3, 'Michael Joseph', 'michael@example.com', 'hashed_password_3', 'student'),
(4, 'Neema Peter', 'neema@example.com', 'hashed_password_4', 'student'),
(5, 'David William', 'david@example.com', 'hashed_password_5', 'student'),
(6, 'Zulekha Omary Mohamed', 'mohamedizulekha858@gmail.com', '$2y$10$U2VaSL4tx0uCApkGcFe/E.OGUy4Zdj1FoWE47yMol5icmtNxXxXHe', 'student'),
(7, 'Code Crusher', 'code@gmail.com', '$2y$10$/a61WD/6GITxyXnY35aj3uBeW3evRMJWeuJqHrj9L/vLc1g9nEWLu', 'admin'),
(8, 'asha omary', 'asha@gmail.com', '$2y$10$urauLORN6yhsELOsnsT.2eOlW50AZX8zDlODlRU48NDe0AYNL7mnO', 'student'),
(11, 'Maryam Kifai', 'kifai2005@gmail.com', '$2y$10$cmw7dkPMEC/CBmV3ww79s.qTwyqqoKFqQXR4g./lcC1DlWu87giqS', 'student'),
(12, 'Hasani Mweta', 'hasmweta@gmail.com', '$2y$10$uR7E1MF.oQ8W.rO1V.ecZe08qztuQKe6Hxw7VVZVdzc43YYNuudMu', 'student'),
(13, 'Tony Mwaba', 'Tony@gmail.com', '$2y$10$5dDxNDC5YCivHKV7EhObxuqs6ci6NhptE.AAuHXHhwyQ9lVS6zeSa', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
