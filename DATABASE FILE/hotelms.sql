-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 06:27 AM
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
-- Database: `hotelms`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `room_id` int(10) NOT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `check_in` varchar(100) DEFAULT NULL,
  `check_out` varchar(100) NOT NULL,
  `total_price` int(10) NOT NULL,
  `remaining_price` int(10) NOT NULL,
  `payment_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `customer_id`, `room_id`, `booking_date`, `check_in`, `check_out`, `total_price`, `remaining_price`, `payment_status`) VALUES
(1, 1, 5, '2017-11-13 05:45:17', '13-11-2017', '15-11-2017', 3000, 0, 1),
(2, 2, 2, '2017-11-13 05:46:04', '13-11-2017', '16-11-2017', 6000, 0, 1),
(3, 3, 2, '2017-11-11 06:49:19', '11-11-2017', '14-11-2017', 6000, 0, 1),
(4, 4, 7, '2017-11-09 06:50:24', '11-11-2017', '15-11-2017', 10000, 0, 1),
(5, 5, 13, '2017-11-17 06:59:10', '17-11-2017', '20-11-2017', 12000, 0, 1),
(6, 6, 9, '2021-04-08 09:45:56', '08-04-2021', '10-04-2021', 3000, 0, 1),
(7, 7, 14, '2021-04-08 17:56:41', '08-04-2021', '10-04-2021', 16500, 0, 1),
(8, 8, 22, '2021-04-09 08:32:57', '09-04-2021', '13-04-2021', 34500, 0, 1),
(12, 12, 10, '2023-05-17 03:50:17', '18-05-2023', '19-05-2023', 0, 0, 1),
(13, 13, 27, '2023-05-17 10:36:14', '17-05-2023', '21-05-2023', 5000, 0, 1),
(14, 14, 19, '2023-06-04 04:39:27', '05-06-2023', '06-06-2023', 0, 0, 0),
(15, 15, 2, '2023-06-04 11:52:52', '05-06-2023', '06-06-2023', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_card_type_id` int(10) NOT NULL,
  `id_card_no` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `contact_no`, `email`, `id_card_type_id`, `id_card_no`, `address`) VALUES
(1, 'raam', 7540001240, 'raamb9@gmail.com', 1, '422510099122', 'ktm'),
(2, 'sita', 2870214970, 'sita@gmail.com', 2, '422510099122', 'imadol'),
(3, 'Shyam', 1247778460, 'shyam@gmail.com', 1, '422510099122', 'tikapur'),
(4, 'hari', 1478546500, 'hari@gmail.com', 3, '0', 'dhangadhi'),
(5, 'Aakash', 2671249780, 'aakash@gmail.com', 1, '422510099122', 'gwarko\r\n'),
(6, 'kamal', 1245554780, 'kamal@gmail.com', 4, 'AASS 12454784541', 'ktm\r\n'),
(7, 'Salman', 2450006974, 'salman@gmail.com', 1, '457896000002', 'india'),
(8, 'sharukh', 2457778450, 'sharukh@gmail.com', 1, '147000245810', 'mumbai'),
(9, 'Kamal Kadayat', 9865375243, 'kmlkadayat@gmail.com', 4, 'RJ29 13542363453', 'Kathmandu'),
(10, 'Kamal Kadayat', 9865375243, 'kmlkadayat@gmail.com', 4, 'RJ29 13542363453', 'Kathmandu'),
(11, 'Saroj Sapkota', 7827347633, 'abc@gmail.com', 1, '', 'putalisadak'),
(12, 'Saroj Sapkota', 7827347633, 'abc@gmail.com', 1, '123456789012', 'putalisadak'),
(13, 'Ram Shreshtha', 9811657968, 'kmlkadayat@gmail.com', 1, '1234567890123', 'Tikapur'),
(14, 'rakesh Ojha', 9811657968, 'akash3414@gmail.com', 1, '1223345443323', 'chabahill'),
(15, 'Kamal  Kadayat', 9865375243, 'lordthor052@gmail.com', 4, 'Rj12736437363647', 'imadol');

-- --------------------------------------------------------

--
-- Table structure for table `id_card_type`
--

CREATE TABLE `id_card_type` (
  `id_card_type_id` int(10) NOT NULL,
  `id_card_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `id_card_type`
--

INSERT INTO `id_card_type` (`id_card_type_id`, `id_card_type`) VALUES
(1, 'Citizenship'),
(2, 'Voter Id Card'),
(3, 'National ID Card'),
(4, 'Driving License');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(10) NOT NULL,
  `room_type_id` int(10) NOT NULL,
  `room_no` varchar(10) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `check_in_status` tinyint(1) NOT NULL,
  `check_out_status` tinyint(1) NOT NULL,
  `deleteStatus` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_type_id`, `room_no`, `status`, `check_in_status`, `check_out_status`, `deleteStatus`) VALUES
(1, 2, 'A-101', NULL, 0, 0, 1),
(2, 2, 'A-102', 1, 1, 1, 0),
(3, 3, 'A-103', NULL, 0, 0, 0),
(4, 4, 'A-104', NULL, 0, 0, 0),
(5, 1, 'B-101', NULL, 0, 1, 0),
(6, 2, 'B-102', NULL, 0, 0, 1),
(7, 3, 'B-103', NULL, 0, 1, 0),
(8, 4, 'B-104', NULL, 0, 0, 1),
(9, 1, 'C-101', NULL, 0, 1, 0),
(10, 2, 'C-102', NULL, 0, 1, 0),
(11, 3, 'C-103', NULL, 0, 0, 1),
(12, 4, 'C-104', NULL, 0, 0, 0),
(13, 4, 'D-101', NULL, 0, 1, 1),
(14, 5, 'K-699', NULL, 0, 1, 0),
(15, 5, 'K-799', NULL, 0, 0, 0),
(16, 5, 'K-899', NULL, 0, 0, 0),
(17, 6, 'M-333', NULL, 0, 0, 0),
(18, 6, 'M-444', NULL, 0, 0, 0),
(19, 1, 'M-555', 1, 0, 0, 0),
(20, 9, 'P-696', NULL, 0, 0, 0),
(21, 10, 'M-966', NULL, 0, 0, 0),
(22, 1, 'M-869', NULL, 0, 1, 0),
(23, 8, 'Z-666', NULL, 0, 0, 1),
(24, 7, 'X-969', NULL, 0, 0, 0),
(25, 8, 'Z-111', NULL, 0, 0, 1),
(26, 6, 'M-135', NULL, 0, 0, 0),
(27, 1, 'Z-101', NULL, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `room_type_id` int(10) NOT NULL,
  `room_type` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `max_person` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_type_id`, `room_type`, `price`, `max_person`) VALUES
(1, 'Single', 1000, 1),
(2, 'Double', 1500, 2),
(3, 'Triple', 2000, 3),
(4, 'Family', 3000, 2),
(5, 'King Sized', 5500, 4),
(6, 'Master Suite', 6500, 6),
(7, 'Mini-Suite', 3600, 3),
(8, 'Connecting Rooms', 8000, 6),
(9, 'Presidential Suite', 21000, 4),
(10, 'Murphy Room', 6900, 3);

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `shift_id` int(10) NOT NULL,
  `shift` varchar(100) NOT NULL,
  `shift_timing` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`shift_id`, `shift`, `shift_timing`) VALUES
(1, 'Morning', '5:00 AM - 10:00 AM'),
(2, 'Day', '10:00 AM - 4:00PM'),
(3, 'Evening', '4:00 PM - 10:00 PM'),
(4, 'Night', '10:00PM - 5:00AM');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `staff_type_id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `id_card_type` int(11) NOT NULL,
  `id_card_no` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `salary` bigint(20) NOT NULL,
  `joining_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`emp_id`, `emp_name`, `staff_type_id`, `shift_id`, `id_card_type`, `id_card_no`, `address`, `contact_no`, `salary`, `joining_date`, `updated_at`) VALUES
(1, 'Ram Shreshtha', 1, 1, 1, '422510099122', 'Kalanki', 3479454777, 21000, '0000-00-00 00:00:00', '2023-05-17 03:13:58'),
(2, 'Prashanna Amatya', 3, 3, 1, '422510099122', 'Patan', 1479994500, 12500, '0000-00-00 00:00:00', '2023-05-16 03:50:35'),
(3, 'Ujjwal Dhakal', 2, 3, 1, '422510099122', 'Chabahill', 976543111, 25000, '0000-00-00 00:00:00', '2023-05-16 03:51:17'),
(4, 'Kabir shah', 5, 3, 4, '0', 'Buspark', 7451112450, 31000, '0000-00-00 00:00:00', '2023-05-17 10:39:43'),
(5, 'Laxmi Magar', 4, 1, 1, '12345341212', 'Budanilkantha', 4578884500, 28000, '0000-00-00 00:00:00', '2023-05-17 03:21:22'),
(6, 'Archana Sapkota', 3, 3, 3, '0', 'Kapan', 8520000000, 40000, '0000-00-00 00:00:00', '2023-05-17 03:21:48'),
(7, 'Bobby Magar', 2, 2, 4, '422510099122', 'Balkumari', 4547778450, 40000, '0000-00-00 00:00:00', '2023-05-17 03:22:21'),
(8, 'Shyam Dhakal', 1, 1, 4, '0', 'Baneswor', 1457845554, 15000, '0000-00-00 00:00:00', '2023-05-17 03:22:45'),
(9, 'Hari Ram', 3, 2, 4, '0', 'Koteswor', 7145554500, 20000, '0000-00-00 00:00:00', '2023-05-17 03:23:10'),
(11, 'Saroj Sapkota', 3, 2, 1, '0', 'Boudha', 7869696969, 20000, '0000-00-00 00:00:00', '2023-05-17 03:40:31'),
(20, 'Ram xyz', 4, 1, 1, '123465789238', 'putalisadak', 9811657968, 10000, '2023-06-06 03:40:34', '2023-06-06 03:40:34'),
(21, 'Ram xyz', 4, 1, 1, '123465789238', 'putalisadak', 9811657968, 10000, '2023-06-06 03:53:52', '2023-06-06 03:53:52');

-- --------------------------------------------------------

--
-- Table structure for table `staff_type`
--

CREATE TABLE `staff_type` (
  `staff_type_id` int(10) NOT NULL,
  `staff_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `staff_type`
--

INSERT INTO `staff_type` (`staff_type_id`, `staff_type`) VALUES
(1, 'Manager'),
(2, 'Housekeeping Manager'),
(3, 'Front Desk Receptionist'),
(4, 'Cheif'),
(5, 'Waiter'),
(6, 'Room Attendant'),
(7, 'Concierge'),
(8, 'Hotel Maintenance Engineer'),
(9, 'Hotel Sales Manager');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`, `created_at`) VALUES
(2, 'admin', 'admin', 'admin@gmail.com', '1234', '2023-05-03 12:49:22'),
(3, 'kamal', 'Kamal Kadayat', 'kmlkadayat@gmail.com', '1234', '2023-05-03 06:49:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `customer_id_type` (`id_card_type_id`);

--
-- Indexes for table `id_card_type`
--
ALTER TABLE `id_card_type`
  ADD PRIMARY KEY (`id_card_type_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `room_type_id` (`room_type_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`room_type_id`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`shift_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `id_card_type` (`id_card_type`),
  ADD KEY `shift_id` (`shift_id`),
  ADD KEY `staff_type_id` (`staff_type_id`);

--
-- Indexes for table `staff_type`
--
ALTER TABLE `staff_type`
  ADD PRIMARY KEY (`staff_type_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `id_card_type`
--
ALTER TABLE `id_card_type`
  MODIFY `id_card_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `room_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `shift_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `staff_type`
--
ALTER TABLE `staff_type`
  MODIFY `staff_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`id_card_type_id`) REFERENCES `id_card_type` (`id_card_type_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`id_card_type`) REFERENCES `id_card_type` (`id_card_type_id`),
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`shift_id`) REFERENCES `shift` (`shift_id`),
  ADD CONSTRAINT `staff_ibfk_3` FOREIGN KEY (`staff_type_id`) REFERENCES `staff_type` (`staff_type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
