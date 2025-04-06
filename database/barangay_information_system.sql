-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2025 at 05:10 AM
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
-- Database: `barangay_information_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_account`
--

CREATE TABLE `admin_account` (
  `user_id` int(200) NOT NULL,
  `user_type` varchar(200) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `date_created` date NOT NULL,
  `admin_profile` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `age` int(200) NOT NULL,
  `status` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_account`
--

INSERT INTO `admin_account` (`user_id`, `user_type`, `firstname`, `middlename`, `lastname`, `email`, `username`, `password`, `date_created`, `admin_profile`, `gender`, `age`, `status`) VALUES
(82, 'SECRETARY', 'Alex', 'Peralta', 'Peralta', 'tmc.jenmar.alano@cvsu.edu.ph', 'admin', 'JMalano0411', '2025-03-22', '67ebcf473752d.png', 'Female', 25, 1),
(84, 'OFFICER', 'Alex', 'Peralta', 'Peralta', 'tmc.jenmar.alano@cvsu.edu.ph', 'admin', 'admin', '2025-03-22', '67ebcf4e814e0.png', 'Female', 25, 1),
(85, 'ADMINISTRATOR', 'Niel', 'Acantilado', 'Alegiojo', 'niel@gmail.com', '', 'niel', '2025-04-01', '67ebcf56041b1.png', 'Male', 23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `barangay_blotter`
--

CREATE TABLE `barangay_blotter` (
  `subject` varchar(200) NOT NULL,
  `cell_no` varchar(200) NOT NULL,
  `place` varchar(200) NOT NULL,
  `tanod` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` int(11) NOT NULL,
  `id` bigint(20) NOT NULL,
  `complainant` varchar(200) NOT NULL,
  `age` int(11) NOT NULL,
  `address_complainant` varchar(200) NOT NULL,
  `complained_name` varchar(200) NOT NULL,
  `add_complained_name` varchar(200) NOT NULL,
  `details_reason` text NOT NULL,
  `type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barangay_blotter`
--

INSERT INTO `barangay_blotter` (`subject`, `cell_no`, `place`, `tanod`, `date`, `time`, `status`, `id`, `complainant`, `age`, `address_complainant`, `complained_name`, `add_complained_name`, `details_reason`, `type`) VALUES
('Noise Pollution', '09123456789', 'Park', 'Juan Dela Cruz', '2025-04-01', '08:00:00', 1, 1, 'Maria Santos', 25, '123 Main St', 'Jose Lopez', 'None', 'Loud music disturbing the neighbors', 'Noise'),
('Vandalism', '09234567890', 'Mall', 'Pedro Reyes', '2025-04-02', '09:30:00', 2, 2, 'John Doe', 32, '456 Oak Ave', 'Carlos Ramirez', 'None', 'Graffiti on the walls', 'Property'),
('Theft', '09345678901', 'Supermarket', 'Luis Gomez', '2025-04-02', '10:00:00', 1, 3, 'Alice Brown', 40, '789 Pine Blvd', 'Michael Jackson', 'None', 'Stolen groceries', 'Crime'),
('Harassment', '09456789012', 'School', 'Antonio Cruz', '2025-04-03', '11:00:00', 2, 4, 'James Smith', 16, '321 Maple Rd', 'Ryan Clark', 'None', 'Verbal harassment by a classmate', 'Personal'),
('Fraud', '09567890123', 'Office', 'Rosario Diaz', '2025-04-03', '12:30:00', 1, 5, 'Rachel Adams', 29, '234 Birch Ln', 'Karen White', 'None', 'Falsified financial reports', 'Business'),
('Assault', '09678901234', 'Restaurant', 'Ana Martinez', '2025-04-04', '13:15:00', 2, 6, 'Robert Green', 38, '567 Elm St', 'John Fisher', 'None', 'Physical altercation between two customers', 'Violence'),
('Drunken Driving', '09789012345', 'Street', 'Carlos Santos', '2025-04-04', '14:45:00', 1, 7, 'Susan Miller', 47, '678 Maple Blvd', 'Patrick Lee', 'None', 'Driving under the influence', 'Traffic'),
('Bullying', '09890123456', 'School', 'Miguel Torres', '2025-04-05', '15:30:00', 2, 8, 'Sophia Johnson', 17, '234 Oak Rd', 'David Adams', 'None', 'Repeated bullying at school', 'Personal'),
('Speeding', '09901234567', 'Highway', 'Rebecca Gonzalez', '2025-04-05', '16:00:00', 1, 9, 'Liam King', 22, '345 Cedar Dr', 'Evan Scott', 'None', 'Excessive speeding in residential area', 'Traffic'),
('Child Abuse', '09123456789', 'Home', 'Maria Torres', '2025-04-06', '17:00:00', 2, 10, 'Lucas Perez', 33, '123 Pine Rd', 'Nina Flores', 'None', 'Reports of physical abuse', 'Family'),
('Environmental Damage', '09234567890', 'Forest', 'Fernando Reyes', '2025-04-06', '18:30:00', 1, 11, 'Jackie Collins', 27, '456 Birch Ln', 'Antonio Lopez', 'None', 'Illegal dumping of waste', 'Environment'),
('Rape', '09345678901', 'Hotel', 'Luis Perez', '2025-04-07', '19:30:00', 2, 12, 'Elizabeth Taylor', 36, '789 Oak Blvd', 'James Murphy', 'None', 'Sexual assault on a hotel guest', 'Crime'),
('Public Intoxication', '09456789012', 'Park', 'Sara Garcia', '2025-04-07', '20:00:00', 1, 13, 'Henry Lewis', 28, '321 Birch Ave', 'Oscar Walker', 'None', 'Drunk in public area', 'Personal'),
('Stalking', '09567890123', 'Home', 'Clara Sanchez', '2025-04-08', '21:00:00', 2, 14, 'Isabella Fisher', 24, '567 Cedar Blvd', 'Bryan Lee', 'None', 'Repeated stalking via social media', 'Personal'),
('Traffic Violation', '09678901234', 'Street', 'Javier Ruiz', '2025-04-08', '22:15:00', 1, 15, 'Samuel Walker', 26, '678 Maple Rd', 'Gregory Hall', 'None', 'Running a red light', 'Traffic'),
('Battery', '09789012345', 'Club', 'Maria Garcia', '2025-04-09', '23:45:00', 2, 16, 'Nina Young', 31, '234 Oak Blvd', 'Patrick Daniels', 'None', 'Physical altercation at a nightclub', 'Violence'),
('Illegal Gambling', '09890123456', 'Casino', 'Felipe Torres', '2025-04-09', '08:15:00', 1, 17, 'Carlos Miller', 41, '987 Pine St', 'Jose Martinez', 'None', 'Participating in illegal gambling', 'Crime'),
('Vandalism', '09901234567', 'School', 'Alicia Cruz', '2025-04-10', '09:00:00', 2, 18, 'Olivia Adams', 18, '123 Elm St', 'Benjamin Scott', 'None', 'Breaking windows in school property', 'Property'),
('Public Smoking', '09123456789', 'Park', 'Antonio Gonzalez', '2025-04-10', '10:30:00', 1, 19, 'Sarah White', 34, '456 Oak Blvd', 'Lucas Walker', 'None', 'Smoking in a public park', 'Health'),
('Abuse of Power', '09234567890', 'Government Office', 'Jorge Rivera', '2025-04-11', '11:00:00', 2, 20, 'Emily Brown', 50, '789 Birch Rd', 'James Jackson', 'None', 'Misuse of authority in office', 'Personal'),
('Unlawful Detention', '09345678901', 'Police Station', 'Pedro Cruz', '2025-04-11', '12:30:00', 1, 21, 'Angela Lewis', 30, '234 Maple Blvd', 'Albert White', 'None', 'Illegally detaining an individual', 'Crime'),
('Drug Use', '09456789012', 'Street', 'Carlos Martinez', '2025-04-12', '13:00:00', 2, 22, 'Grace Williams', 26, '567 Pine Blvd', 'Victor Lee', 'None', 'Illegal substance usage in public', 'Crime'),
('Negligence', '09567890123', 'Hospital', 'Clara Lopez', '2025-04-12', '14:15:00', 1, 23, 'Mia Scott', 29, '678 Birch Ln', 'David Green', 'None', 'Medical malpractice', 'Personal'),
('Trespassing', '09678901234', 'Private Property', 'Alejandro Hernandez', '2025-04-13', '15:30:00', 2, 24, 'William Clark', 39, '789 Oak Blvd', 'Ryan Johnson', 'None', 'Entering private property without permission', 'Property'),
('Defamation', '09789012345', 'Social Media', 'Isabel Perez', '2025-04-13', '16:00:00', 1, 25, 'Megan Adams', 45, '123 Birch Ln', 'Rebecca Miller', 'None', 'Spreading false information online', 'Personal'),
('Bribery', '09890123456', 'Government Office', 'Ethan Walker', '2025-04-14', '17:00:00', 2, 26, 'Sophia Evans', 28, '234 Oak Rd', 'Chris Green', 'None', 'Offering a bribe to a public official', 'Crime'),
('Animal Cruelty', '09901234567', 'Farm', 'Marissa Cruz', '2025-04-14', '18:30:00', 1, 27, 'Olivia Lee', 37, '345 Cedar Dr', 'Eric White', 'None', 'Abusing animals on a farm', 'Animal'),
('Illegal Parking', '09123456789', 'Parking Lot', 'Jose Perez', '2025-04-15', '19:00:00', 2, 28, 'Benjamin Scott', 26, '567 Maple Blvd', 'Liam Hall', 'None', 'Parking in a disabled spot without permission', 'Traffic'),
('Public Disturbance', '09234567890', 'Streets', 'Miguel Ortiz', '2025-04-15', '20:00:00', 1, 29, 'Daniel Thomas', 33, ' 678 Pine St', 'Olivia Clark', 'None', 'Causing noise disturbance in public area', 'Personal');

-- --------------------------------------------------------

--
-- Table structure for table `barangay_incident`
--

CREATE TABLE `barangay_incident` (
  `id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `name_involve` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `vehicle` varchar(200) NOT NULL,
  `license` varchar(200) NOT NULL,
  `plate_no` varchar(200) NOT NULL,
  `cause_incident` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barangay_incident`
--

INSERT INTO `barangay_incident` (`id`, `date`, `time`, `name_involve`, `address`, `vehicle`, `license`, `plate_no`, `cause_incident`, `status`) VALUES
(1, '2025-04-01', '08:00:00', 'John Doe', '123 Main St', 'Toyota Corolla', 'ABC123', 'XYZ1234', 'Rear-end collision', 1),
(2, '2025-04-01', '09:30:00', 'Jane Smith', '456 Oak Ave', 'Honda Civic', 'XYZ789', 'XYZ5678', 'Side-swipe', 2),
(3, '2025-04-02', '10:15:00', 'Jim Brown', '789 Pine Rd', 'Ford F-150', 'LMN456', 'ABC9876', 'Pedestrian hit', 1),
(4, '2025-04-02', '11:00:00', 'Emily White', '321 Maple Blvd', 'Chevrolet Malibu', 'JKL123', 'QWE4567', 'Run off road', 2),
(5, '2025-04-03', '12:30:00', 'David Green', '654 Elm St', 'Tesla Model 3', 'DEF789', 'OPQ5678', 'Speeding', 1),
(6, '2025-04-03', '14:00:00', 'Mary Johnson', '987 Cedar Dr', 'BMW 3 Series', 'GHI012', 'JKL6789', 'Traffic light violation', 2),
(7, '2025-04-04', '15:45:00', 'Lucas Black', '123 Birch Ln', 'Nissan Altima', 'XYZ345', 'MNO3456', 'Tailgating', 1),
(8, '2025-04-04', '16:30:00', 'Olivia King', '321 Willow Way', 'Hyundai Sonata', 'LMN789', 'PQR5678', 'Driver distraction', 2),
(9, '2025-04-05', '17:00:00', 'Mason Scott', '654 Pine Ave', 'Subaru Outback', 'CDE123', 'STU2345', 'Weather-related accident', 1),
(10, '2025-04-05', '18:15:00', 'Liam Adams', '876 Oak St', 'Kia Optima', 'JKL234', 'XYZ2345', 'Impaired driving', 2),
(11, '2025-04-06', '19:00:00', 'Ava Martinez', '234 Maple Ave', 'Ford Mustang', 'LMN456', 'TUV3456', 'Disobeying stop sign', 1),
(12, '2025-04-06', '20:30:00', 'Isabella Thompson', '567 Cedar Rd', 'Chevrolet Camaro', 'DEF789', 'WXY4567', 'Parking lot accident', 2),
(13, '2025-04-07', '21:00:00', 'Elijah Garcia', '678 Birch Blvd', 'Toyota Prius', 'GHI012', 'XYZ6789', 'Animal crossing road', 1),
(14, '2025-04-07', '22:15:00', 'Sophia Martinez', '345 Willow Dr', 'Audi A4', 'JKL123', 'STU7890', 'Mechanical failure', 2),
(15, '2025-04-08', '07:45:00', 'Daniel Harris', '123 Pine St', 'Ram 1500', 'CDE234', 'VWX1234', 'Rearview mirror hit', 1),
(16, '2025-04-08', '08:00:00', 'Lily Clark', '876 Maple St', 'BMW X5', 'JKL345', 'ABC5678', 'Hit-and-run', 2),
(17, '2025-04-09', '09:30:00', 'James Robinson', '654 Oak Rd', 'Mazda CX-5', 'LMN567', 'QWE1234', 'Unlicensed driving', 1),
(18, '2025-04-09', '11:15:00', 'Chloe Lewis', '123 Cedar Blvd', 'Honda Accord', 'DEF890', 'RST4567', 'Flood-related accident', 2),
(19, '2025-04-10', '12:00:00', 'Benjamin Walker', '321 Birch Ave', 'Chevrolet Silverado', 'GHI345', 'MNO2345', 'Pedestrian injury', 1),
(20, '2025-04-10', '13:00:00', 'Amelia Hill', '987 Oak Dr', 'Volkswagen Jetta', 'JKL456', 'PQR1234', 'Uninsured driver', 2),
(21, '2025-04-11', '14:30:00', 'Lucas Perez', '654 Elm Blvd', 'Ford Explorer', 'DEF678', 'XYZ7890', 'Road rage incident', 1),
(22, '2025-04-11', '15:45:00', 'Ella Young', '345 Pine Blvd', 'Mazda 3', 'JKL789', 'ABC2345', 'Distracted driving', 2),
(23, '2025-04-12', '16:00:00', 'Megan Taylor', '876 Cedar Ln', 'Hyundai Elantra', 'LMN890', 'STU3456', 'Aggressive driving', 1),
(24, '2025-04-12', '17:30:00', 'Ryan King', '234 Maple Blvd', 'Jeep Wrangler', 'CDE567', 'PQR2345', 'Intersection accident', 2),
(25, '2025-04-13', '18:45:00', 'Grace Adams', '123 Birch Rd', 'Toyota Tacoma', 'GHI678', 'XYZ8901', 'Hit-and-run collision', 1),
(26, '2025-04-13', '19:30:00', 'Oliver Allen', '567 Oak Rd', 'Honda Fit', 'JKL012', 'RST2345', 'Failure to yield', 2),
(27, '2025-04-14', '20:00:00', 'Harper Nelson', '234 Cedar Ln', 'Chevrolet Traverse', 'DEF234', 'XYZ1234', 'Driving under the influence', 1),
(28, '2025-04-14', '21:15:00', 'Mason Mitchell', '987 Birch Dr', 'BMW 5 Series', 'LMN123', 'QWE6789', 'Collision with parked car', 2),
(29, '2025-04-15', '22:30:00', 'Charlotte Perez', '654 Maple Rd', 'Toyota Highlander', 'GHI234', 'PQR1234', 'Tailgate accident', 1),
(30, '2025-04-15', '23:00:00', 'Ethan Robinson', '345 Pine Rd', 'Ford Escape', 'DEF345', 'WXY5678', 'Speeding violation', 2),
(31, '2025-04-16', '08:00:00', 'Avery Cooper', '123 Willow Dr', 'Kia Soul', 'LMN678', 'STU2345', 'Reckless driving', 1),
(32, '2025-04-16', '09:30:00', 'Abigail Harris', '876 Pine St', 'Honda Pilot', 'JKL890', 'VWX7890', 'No seatbelt', 2),
(33, '2025-04-17', '10:15:00', 'Jack Lewis', '345 Oak Blvd', 'Ram 2500', 'GHI890', 'XYZ0123', 'Collided with bicycle', 1),
(34, '2025-04-17', '11:30:00', 'Madeline Clark', '987 Cedar Rd', 'Chevrolet Suburban', 'DEF456', 'ABC2345', 'Failure to stop at light', 2),
(35, '2025-04-18', '12:45:00', 'Henry White', '123 Birch Blvd', 'Toyota RAV4', 'LMN123', 'PQR4567', 'Accident on icy road', 1),
(36, '2025-04-18', '13:30:00', 'Sofia Davis', '876 Oak Blvd', 'BMW M3', 'CDE890', 'RST1234', 'Improper lane change', 2),
(37, '2025-04-19', '14:00:00', 'Logan Martinez', '234 Maple Rd', 'Hyundai Tucson', 'DEF123', 'XYZ6789', 'Underage driver', 1),
(38, '2025-04-19', '15:15:00', 'Liam Garcia', '654 Birch Ave', 'Audi Q5', 'JKL456', 'WXY7890', 'Texting while driving', 2),
(39, '2025-04-20', '16:30:00', 'Ella Taylor', '321 Oak Dr', 'Mazda 6', 'LMN234', 'QWE1234', 'Crosswalk accident', 1),
(40, '2025-04-20', '17:00:00', 'Jackson Young', '987 Pine Blvd', 'Volkswagen Golf', 'CDE567', 'PQR7890', 'Running red light', 2),
(41, '2025-04-21', '18:45:00', 'Amos Wright', '234 Cedar Rd', 'Chevrolet Cruze', 'DEF678', 'ABC2345', 'Lost control', 1),
(42, '2025-04-21', '19:30:00', 'Emily Lewis', '567 Oak Blvd', 'Honda HR-V', 'JKL012', 'STU4567', 'Tire blowout', 2);

-- --------------------------------------------------------

--
-- Table structure for table `barangay_information`
--

CREATE TABLE `barangay_information` (
  `barangay_name` varchar(200) NOT NULL,
  `municipality` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone_no` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `id` int(11) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `barangay_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barangay_information`
--

INSERT INTO `barangay_information` (`barangay_name`, `municipality`, `address`, `phone_no`, `email`, `id`, `logo`, `barangay_image`) VALUES
('PALIPARAN II', 'DASMARINAS', 'Paliparan II, Dasmariñas, Philippines', '09513856318', 'Barangay.paliparanII@gmail.com', 1, '67eba79f220cf.png', '67eba7c534370.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `barangay_official`
--

CREATE TABLE `barangay_official` (
  `id` int(11) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `chairmanship` varchar(200) NOT NULL,
  `position` varchar(200) NOT NULL,
  `term_start` date NOT NULL,
  `term_end` date NOT NULL,
  `status` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barangay_official`
--

INSERT INTO `barangay_official` (`id`, `fullname`, `chairmanship`, `position`, `term_start`, `term_end`, `status`, `photo`) VALUES
(126, 'PB. Rolando C. Ambal', 'Chairman', 'Chairman', '2025-03-23', '2025-03-23', 1, '67df822943786.jpg'),
(127, 'Oscar Alvarez', 'Kagawad', 'Commnittee on Solid Waste', '2025-03-23', '2025-03-23', 1, '67df826ab91ee.jpg'),
(128, 'Baby Andaya', 'Kagawad', 'Commnittee on Education', '2025-03-23', '2025-03-23', 1, '67df829e5ad16.jpg'),
(129, 'Alvin Andaya', 'Kagawad', 'Commnittee on Appropriation', '2025-03-23', '2025-03-23', 1, '67df82c2f0ca7.jpg'),
(130, 'Ressa Martinez', 'Kagawad', 'Commnittee on Rules', '2025-03-23', '2025-03-17', 1, '67df82e58e2ee.jpg'),
(131, 'Mj Asilo', 'Kagawad', 'Commnittee on Peace & Order', '2025-03-23', '2025-03-23', 1, '67df83009722e.jpg'),
(132, 'Gilbert Magtaas', 'Kagawad', 'Commnittee on Education', '2025-03-18', '2025-03-05', 1, '67df831c219fa.jpg'),
(133, 'Tessa Sanchez', 'Kagawad', 'Commnittee on Appropriation', '2025-03-23', '2025-03-23', 1, '67df837d491bc.jpg'),
(134, 'PB. Rolando C. Ambal', 'Chairman', 'Chairman', '2025-03-23', '2025-03-23', 1, '67df822943786.jpg'),
(135, 'Oscar Alvarez', 'Kagawad', 'Commnittee on Solid Waste', '2025-03-23', '2025-03-23', 1, '67df826ab91ee.jpg'),
(136, 'Baby Andaya', 'Kagawad', 'Commnittee on Education', '2025-03-23', '2025-03-23', 1, '67df829e5ad16.jpg'),
(137, 'Alvin Andaya', 'Kagawad', 'Commnittee on Appropriation', '2025-03-23', '2025-03-23', 1, '67df82c2f0ca7.jpg'),
(138, 'Ressa Martinez', 'Kagawad', 'Commnittee on Rules', '2025-03-23', '2025-03-17', 1, '67df82e58e2ee.jpg'),
(139, 'Mj Asilo', 'Kagawad', 'Commnittee on Peace & Order', '2025-03-23', '2025-03-23', 1, '67df83009722e.jpg'),
(140, 'Gilbert Magtaas', 'Kagawad', 'Commnittee on Education', '2025-03-18', '2025-03-05', 1, '67df831c219fa.jpg'),
(141, 'Tessa Sanchez', 'Kagawad', 'Commnittee on Appropriation', '2025-03-23', '2025-03-23', 1, '67df837d491bc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `barangay_request`
--

CREATE TABLE `barangay_request` (
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `age` int(200) NOT NULL,
  `request_document` varchar(200) NOT NULL,
  `house_number` varchar(200) NOT NULL,
  `sitio_pook` varchar(200) NOT NULL,
  `birthday` date NOT NULL,
  `place_of_birth` varchar(200) NOT NULL,
  `contact_no` varchar(200) NOT NULL,
  `contact_person` varchar(200) NOT NULL,
  `contact_no_contact_person` varchar(200) NOT NULL,
  `live_since_year` varchar(200) NOT NULL,
  `purpose` varchar(200) NOT NULL,
  `status` int(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `date_request` date NOT NULL,
  `business_name` varchar(200) NOT NULL,
  `profile` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barangay_request`
--

INSERT INTO `barangay_request` (`firstname`, `middlename`, `lastname`, `age`, `request_document`, `house_number`, `sitio_pook`, `birthday`, `place_of_birth`, `contact_no`, `contact_person`, `contact_no_contact_person`, `live_since_year`, `purpose`, `status`, `gender`, `date_request`, `business_name`, `profile`, `user_id`, `id`) VALUES
('Addison', 'Faith', 'Phillips', 29, 'Barangay Certificate', '4747', 'Purok 5', '1994-08-11', 'BULACAN', '09123456828', 'asdsadasds', '09232323232', '2025-04', 'adasdsd', 1, 'Male', '2025-04-01', 'N/A', '67ebcf6874a84.png', 50, 2),
('Addison', 'Faith', 'Phillips', 29, 'Barangay Clearance', '4747', 'Purok 5', '1994-08-11', 'BULACAN', '09123456828', 'asdsadasds', '09232323232', '2025-04', 'adasdsd', 1, 'Female', '2025-04-01', 'N/A', '67ebcf9a6ec4c.jpg', 50, 3),
('Addison', 'Faith', 'Phillips', 29, 'Business Permit', '4747', 'Purok 5', '1994-08-11', 'BULACAN', '09123456828', 'asdsadasds', '09232323232', '2025-04', 'adasdsd', 3, 'Female', '2025-04-02', 'JOLIBEE', '67ebcf9a6ec4c.jpg', 50, 4);

-- --------------------------------------------------------

--
-- Table structure for table `barangay_resident`
--

CREATE TABLE `barangay_resident` (
  `id` bigint(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `house_no` varchar(200) NOT NULL,
  `place_of_birth` varchar(200) NOT NULL,
  `birthday` date NOT NULL,
  `age` int(200) NOT NULL,
  `civil_status` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `voter_status` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact_no` varchar(200) NOT NULL,
  `occupation` varchar(200) NOT NULL,
  `citizenship` varchar(200) NOT NULL,
  `sitio_pook` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barangay_resident`
--

INSERT INTO `barangay_resident` (`id`, `firstname`, `middlename`, `lastname`, `house_no`, `place_of_birth`, `birthday`, `age`, `civil_status`, `gender`, `voter_status`, `email`, `contact_no`, `occupation`, `citizenship`, `sitio_pook`) VALUES
(1, 'Juan', 'Dela', 'Cruz', '123', 'Manila', '1985-05-15', 38, 'Married', 'Male', 'Registered', 'juan.cruz@example.com', '09123456789', 'Teacher', 'Filipino', 'Purok 1'),
(2, 'Maria', 'Santos', 'Reyes', '456', 'Quezon City', '1990-08-22', 33, 'Single', 'Female', 'Registered', 'maria.reyes@example.com', '09123456780', 'Nurse', 'Filipino', 'Purok 2'),
(3, 'Pedro', 'Gonzales', 'Bautista', '789', 'Cebu City', '1978-11-05', 45, 'Married', 'Male', 'Registered', 'pedro.bautista@example.com', '09123456781', 'Engineer', 'Filipino', 'Purok 3'),
(4, 'Ana', 'Perez', 'Diaz', '101', 'Davao City', '1995-02-18', 28, 'Single', 'Female', 'Not Registered', 'ana.diaz@example.com', '09123456782', 'Accountant', 'Filipino', 'Purok 4'),
(5, 'Jose', 'Alvarez', 'Garcia', '202', 'Makati', '1982-07-30', 41, 'Married', 'Male', 'Registered', 'jose.garcia@example.com', '09123456783', 'Doctor', 'Filipino', 'Purok 5'),
(6, 'Carmen', 'Lopez', 'Martinez', '303', 'Pasig', '1992-04-14', 31, 'Single', 'Female', 'Registered', 'carmen.martinez@example.com', '09123456784', 'Lawyer', 'Filipino', 'Purok 1'),
(7, 'Antonio', 'Castro', 'Sanchez', '404', 'Taguig', '1975-09-19', 48, 'Widowed', 'Male', 'Registered', 'antonio.sanchez@example.com', '09123456785', 'Architect', 'Filipino', 'Purok 2'),
(8, 'Teresa', 'Fernandez', 'Romero', '505', 'Mandaluyong', '1988-12-25', 35, 'Married', 'Female', 'Registered', 'teresa.romero@example.com', '09123456786', 'Dentist', 'Filipino', 'Purok 3'),
(9, 'Carlos', 'Ramirez', 'Torres', '606', 'Parañaque', '1993-06-08', 30, 'Single', 'Male', 'Not Registered', 'carlos.torres@example.com', '09123456787', 'Programmer', 'Filipino', 'Purok 4'),
(10, 'Elena', 'Gomez', 'Flores', '707', 'Las Piñas', '1980-03-17', 43, 'Divorced', 'Female', 'Registered', 'elena.flores@example.com', '09123456788', 'Teacher', 'Filipino', 'Purok 5'),
(11, 'Ramon', 'Rivera', 'Mendoza', '808', 'Valenzuela', '1972-10-31', 51, 'Married', 'Male', 'Registered', 'ramon.mendoza@example.com', '09123456789', 'Police Officer', 'Filipino', 'Purok 1'),
(12, 'Sofia', 'Vargas', 'Aquino', '909', 'Caloocan', '1997-01-28', 26, 'Single', 'Female', 'Not Registered', 'sofia.aquino@example.com', '09123456790', 'Graphic Designer', 'Filipino', 'Purok 2'),
(13, 'Luis', 'Cruz', 'Ramos', '1010', 'Malabon', '1987-07-15', 36, 'Married', 'Male', 'Registered', 'luis.ramos@example.com', '09123456791', 'Firefighter', 'Filipino', 'Purok 3'),
(14, 'Isabel', 'Reyes', 'Ortiz', '1111', 'Navotas', '1994-09-22', 29, 'Single', 'Female', 'Registered', 'isabel.ortiz@example.com', '09123456792', 'Pharmacist', 'Filipino', 'Purok 4'),
(15, 'Fernando', 'Diaz', 'Del Rosario', '1212', 'Marikina', '1968-05-17', 55, 'Widowed', 'Male', 'Registered', 'fernando.delrosario@example.com', '09123456793', 'Retired', 'Filipino', 'Purok 5'),
(16, 'Mia', 'Santos', 'Villanueva', '1313', 'Pasay', '1999-03-08', 24, 'Single', 'Female', 'Not Registered', 'mia.villanueva@example.com', '09123456794', 'Student', 'Filipino', 'Purok 1'),
(17, 'Ethan', 'Alvarez', 'Taylor', '1414', 'San Juan', '1991-11-11', 32, 'Married', 'Male', 'Registered', 'ethan.taylor@example.com', '09123456795', 'Business Owner', 'Filipino', 'Purok 2'),
(18, 'Charlotte', 'Louise', 'Moore', '1515', 'Muntinlupa', '1989-08-04', 34, 'Single', 'Female', 'Registered', 'charlotte.moore@example.com', '09123456796', 'Marketing Manager', 'Filipino', 'Purok 3'),
(19, 'Ryan', 'Patrick', 'Jackson', '1616', 'Tarlac City', '1997-02-19', 26, 'Single', 'Male', 'Not Registered', 'ryan.jackson@example.com', '09123456797', 'Electrician', 'Filipino', 'Purok 4'),
(20, 'Amelia', 'Kate', 'Martin', '1717', 'Angeles City', '1994-12-25', 29, 'Married', 'Female', 'Registered', 'amelia.martin@example.com', '09123456798', 'Bank Teller', 'Filipino', 'Purok 5'),
(21, 'James', 'Daniel', 'Lee', '1818', 'Olongapo', '1991-06-30', 32, 'Single', 'Male', 'Registered', 'james.lee@example.com', '09123456799', 'Chef', 'Filipino', 'Purok 1'),
(22, 'Harper', 'Faith', 'Perez', '1919', 'Baguio', '1996-04-14', 27, 'Single', 'Female', 'Registered', 'harper.perez@example.com', '09123456800', 'Journalist', 'Filipino', 'Purok 2'),
(23, 'Benjamin', 'Charles', 'Thompson', '2020', 'Batangas City', '1993-10-08', 30, 'Married', 'Male', 'Registered', 'benjamin.thompson@example.com', '09123456801', 'Farmer', 'Filipino', 'Purok 3'),
(24, 'Evelyn', 'Hope', 'White', '2121', 'Lucena', '1995-09-17', 28, 'Single', 'Female', 'Not Registered', 'evelyn.white@example.com', '09123456802', 'Call Center Agent', 'Filipino', 'Purok 4'),
(25, 'Nathan', 'Scott', 'Harris', '2222', 'Legazpi', '1990-07-23', 33, 'Married', 'Male', 'Registered', 'nathan.harris@example.com', '09123456803', 'Fisherman', 'Filipino', 'Purok 5'),
(26, 'Abigail', 'Ruth', 'Sanchez', '2323', 'Naga', '1997-01-11', 26, 'Single', 'Female', 'Registered', 'abigail.sanchez@example.com', '09123456804', 'Teacher', 'Filipino', 'Purok 1'),
(27, 'Logan', 'Henry', 'Clark', '2424', 'Iloilo City', '1994-05-29', 29, 'Single', 'Male', 'Not Registered', 'logan.clark@example.com', '09123456805', 'Driver', 'Filipino', 'Purok 2'),
(28, 'Elizabeth', 'Joy', 'Ramirez', '2525', 'Bacolod', '1992-12-03', 31, 'Married', 'Female', 'Registered', 'elizabeth.ramirez@example.com', '09123456806', 'Housewife', 'Filipino', 'Purok 3'),
(29, 'Jacob', 'Andrew', 'Lewis', '2626', 'Cagayan de Oro', '1996-08-16', 27, 'Single', 'Male', 'Registered', 'jacob.lewis@example.com', '09123456807', 'Security Guard', 'Filipino', 'Purok 4'),
(30, 'Sofia', 'Claire', 'Robinson', '2727', 'Zamboanga City', '1998-06-07', 25, 'Single', 'Female', 'Not Registered', 'sofia.robinson@example.com', '09123456808', 'Student', 'Filipino', 'Purok 5'),
(31, 'William', 'George', 'Walker', '2828', 'Butuan', '1989-04-12', 34, 'Married', 'Male', 'Registered', 'william.walker@example.com', '09123456809', 'Government Employee', 'Filipino', 'Purok 1'),
(32, 'Victoria', 'Lynn', 'Young', '2929', 'Cotabato City', '1995-11-21', 28, 'Single', 'Female', 'Registered', 'victoria.young@example.com', '09123456810', 'Sales Associate', 'Filipino', 'Purok 2'),
(33, 'Samuel', 'Peter', 'Allen', '3030', 'General Santos', '1993-02-28', 30, 'Single', 'Male', 'Registered', 'samuel.allen@example.com', '09123456811', 'Mechanic', 'Filipino', 'Purok 3'),
(34, 'Avery', 'Mae', 'King', '3131', 'Marawi', '1994-10-15', 29, 'Married', 'Female', 'Not Registered', 'avery.king@example.com', '09123456812', 'Baker', 'Filipino', 'Purok 4'),
(35, 'Jackson', 'Luke', 'Wright', '3232', 'Tacloban', '1997-07-04', 26, 'Single', 'Male', 'Registered', 'jackson.wright@example.com', '09123456813', 'Construction Worker', 'Filipino', 'Purok 5'),
(36, 'Scarlett', 'June', 'Scott', '3333', 'Puerto Princesa', '1991-09-19', 32, 'Divorced', 'Female', 'Registered', 'scarlett.scott@example.com', '09123456814', 'Hotel Manager', 'Filipino', 'Purok 1'),
(37, 'Sebastian', 'Mark', 'Torres', '3434', 'Tagbilaran', '1996-12-24', 27, 'Single', 'Male', 'Not Registered', 'sebastian.torres@example.com', '09123456815', 'Tour Guide', 'Filipino', 'Purok 2'),
(38, 'Madison', 'Paige', 'Nguyen', '3535', 'Dumaguete', '1998-08-09', 25, 'Single', 'Female', 'Registered', 'madison.nguyen@example.com', '09123456816', 'Receptionist', 'Filipino', 'Purok 3'),
(39, 'Aiden', 'Ryan', 'Hill', '3636', 'Dipolog', '1992-05-13', 31, 'Married', 'Male', 'Registered', 'aiden.hill@example.com', '09123456817', 'Teacher', 'Filipino', 'Purok 4'),
(40, 'Chloe', 'Dawn', 'Flores', '3737', 'Surigao City', '1994-03-27', 29, 'Single', 'Female', 'Not Registered', 'chloe.flores@example.com', '09123456818', 'Artist', 'Filipino', 'Purok 5'),
(41, 'Gabriel', 'Christian', 'Green', '3838', 'La Union', '1995-01-08', 28, 'Single', 'Male', 'Registered', 'gabriel.green@example.com', '09123456819', 'Musician', 'Filipino', 'Purok 1'),
(42, 'Lily', 'Anne', 'Adams', '3939', 'Ilocos Norte', '1993-10-31', 30, 'Married', 'Female', 'Registered', 'lily.adams@example.com', '09123456820', 'Nurse', 'Filipino', 'Purok 2'),
(43, 'Carter', 'John', 'Nelson', '4040', 'Pangasinan', '1990-07-16', 33, 'Single', 'Male', 'Not Registered', 'carter.nelson@example.com', '09123456821', 'Engineer', 'Filipino', 'Purok 3'),
(44, 'Zoey', 'Marie', 'Baker', '4141', 'Isabela', '1997-04-05', 26, 'Single', 'Female', 'Registered', 'zoey.baker@example.com', '09123456822', 'Student', 'Filipino', 'Purok 4'),
(45, 'Julian', 'David', 'Hall', '4242', 'Nueva Ecija', '1994-11-18', 29, 'Single', 'Male', 'Registered', 'julian.hall@example.com', '09123456823', 'Barber', 'Filipino', 'Purok 5'),
(46, 'Penelope', 'Grace', 'Rivera', '4343', 'Bulacan', '1992-02-22', 31, 'Married', 'Female', 'Registered', 'penelope.rivera@example.com', '09123456824', 'Dentist', 'Filipino', 'Purok 1'),
(47, 'Wyatt', 'Thomas', 'Mitchell', '4444', 'Pampanga', '1996-09-14', 27, 'Single', 'Male', 'Not Registered', 'wyatt.mitchell@example.com', '09123456825', 'Waiter', 'Filipino', 'Purok 2'),
(48, 'Hannah', 'Joyce', 'Carter', '4545', 'Rizal', '1998-05-07', 25, 'Single', 'Female', 'Registered', 'hannah.carter@example.com', '09123456826', 'Student', 'Filipino', 'Purok 3'),
(49, 'Owen', 'Joseph', 'Roberts', '4646', 'Cavite', '1989-12-30', 34, 'Married', 'Male', 'Registered', 'owen.roberts@example.com', '09123456827', 'IT Specialist', 'Filipino', 'Purok 4'),
(50, 'Addison', 'Faith', 'Phillips', '4747', 'Laguna', '1995-08-11', 28, 'Single', 'Female', 'Not Registered', 'addison.phillips@example.com', '09123456828', 'Fashion Designer', 'Filipino', 'Purok 5');

-- --------------------------------------------------------

--
-- Table structure for table `barangay_revenue`
--

CREATE TABLE `barangay_revenue` (
  `date_issue` date NOT NULL,
  `expired_date` date NOT NULL,
  `document_amount` float NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `document_type` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `OR_no` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barangay_revenue`
--

INSERT INTO `barangay_revenue` (`date_issue`, `expired_date`, `document_amount`, `firstname`, `middlename`, `lastname`, `document_type`, `user_id`, `OR_no`) VALUES
('2025-04-01', '2026-04-01', 23, 'Addison', 'Faith', 'Phillips', 'Barangay Certificate', 2, 1),
('2025-04-02', '2026-04-02', 500, 'Addison', 'Faith', 'Phillips', 'Business Permit', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `age` int(11) NOT NULL,
  `birthday` date NOT NULL,
  `date_registered` date NOT NULL,
  `house_no` varchar(200) NOT NULL,
  `sitio_pook` varchar(200) NOT NULL,
  `contact_no` varchar(200) NOT NULL,
  `profile` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`firstname`, `middlename`, `lastname`, `email`, `password`, `gender`, `age`, `birthday`, `date_registered`, `house_no`, `sitio_pook`, `contact_no`, `profile`, `user_id`) VALUES
('Juan', 'Dela', 'Cruz', 'juan.cruz@email.com', 'juandc123', 'Male', 35, '1988-05-15', '2022-01-10', '123', 'Purok 1', '09123456789', 'juan_profile.jpg', 1),
('Maria', 'Santos', 'Reyes', 'maria.reyes@email.com', 'mariareyes456', 'Female', 28, '1995-08-22', '2022-01-12', '456', 'Purok 2', '09123456780', 'maria_profile.jpg', 2),
('Pedro', 'Gonzales', 'Bautista', 'pedro.b@email.com', 'pedrob789', 'Male', 42, '1981-11-05', '2022-01-15', '789', 'Purok 3', '09123456781', 'pedro_profile.jpg', 3),
('Ana', 'Perez', 'Diaz', 'ana.diaz@email.com', 'anadpass', 'Female', 31, '1992-02-18', '2022-01-18', '101', 'Purok 4', '09123456782', 'ana_profile.jpg', 4),
('Jose', 'Alvarez', 'Garcia', 'jose.g@email.com', 'josegpass', 'Male', 45, '1978-07-30', '2022-01-20', '202', 'Purok 5', '09123456783', 'jose_profile.jpg', 5),
('Carmen', 'Lopez', 'Martinez', 'carmen.m@email.com', 'carmenpass', 'Female', 26, '1997-04-14', '2022-01-22', '303', 'Purok 1', '09123456784', 'carmen_profile.jpg', 6),
('Antonio', 'Castro', 'Sanchez', 'antonio.s@email.com', 'antoniopass', 'Male', 39, '1984-09-19', '2022-01-25', '404', 'Purok 2', '09123456785', 'antonio_profile.jpg', 7),
('Teresa', 'Fernandez', 'Romero', 'teresa.r@email.com', 'teresapass', 'Female', 33, '1990-12-25', '2022-01-28', '505', 'Purok 3', '09123456786', 'teresa_profile.jpg', 8),
('Carlos', 'Ramirez', 'Torres', 'carlos.t@email.com', 'carlospass', 'Male', 29, '1994-06-08', '2022-02-01', '606', 'Purok 4', '09123456787', 'carlos_profile.jpg', 9),
('Elena', 'Gomez', 'Flores', 'elena.f@email.com', 'elenapass', 'Female', 36, '1987-03-17', '2022-02-05', '707', 'Purok 5', '09123456788', 'elena_profile.jpg', 10),
('Ramon', 'Rivera', 'Mendoza', 'ramon.m@email.com', 'ramonpass', 'Male', 48, '1975-10-31', '2022-02-08', '808', 'Purok 1', '09123456789', 'ramon_profile.jpg', 11),
('Sofia', 'Vargas', 'Aquino', 'sofia.a@email.com', 'sofiapass', 'Female', 24, '1999-01-28', '2022-02-10', '909', 'Purok 2', '09123456790', 'sofia_profile.jpg', 12),
('Luis', 'Cruz', 'Ramos', 'luis.r@email.com', 'luispass', 'Male', 37, '1986-07-15', '2022-02-12', '1010', 'Purok 3', '09123456791', 'luis_profile.jpg', 13),
('Isabel', 'Reyes', 'Ortiz', 'isabel.o@email.com', 'isabelpass', 'Female', 30, '1993-09-22', '2022-02-15', '1111', 'Purok 4', '09123456792', 'isabel_profile.jpg', 14),
('Fernando', 'Diaz', 'Del Rosario', 'fernando.d@email.com', 'fernandopass', 'Male', 52, '1971-05-17', '2022-02-18', '1212', 'Purok 5', '09123456793', 'fernando_profile.jpg', 15),
('Mia', 'Santos', 'Villanueva', 'mia.v@email.com', 'miapass', 'Female', 23, '2000-03-08', '2022-02-20', '1313', 'Purok 1', '09123456794', 'mia_profile.jpg', 16),
('Ethan', 'Alvarez', 'Taylor', 'ethan.t@email.com', 'ethanpass', 'Male', 31, '1992-11-11', '2022-02-22', '1414', 'Purok 2', '09123456795', 'ethan_profile.jpg', 17),
('Charlotte', 'Louise', 'Moore', 'charlotte.m@email.com', 'charlottepass', 'Female', 35, '1988-08-04', '2022-02-25', '1515', 'Purok 3', '09123456796', 'charlotte_profile.jpg', 18),
('Ryan', 'Patrick', 'Jackson', 'ryan.j@email.com', 'ryanpass', 'Male', 27, '1996-02-19', '2022-02-28', '1616', 'Purok 4', '09123456797', 'ryan_profile.jpg', 19),
('Amelia', 'Kate', 'Martin', 'amelia.m@email.com', 'ameliapass', 'Female', 30, '1993-12-25', '2022-03-02', '1717', 'Purok 5', '09123456798', 'amelia_profile.jpg', 20),
('James', 'Daniel', 'Lee', 'james.l@email.com', 'jamespass', 'Male', 33, '1990-06-30', '2022-03-05', '1818', 'Purok 1', '09123456799', 'james_profile.jpg', 21),
('Harper', 'Faith', 'Perez', 'harper.p@email.com', 'harperpass', 'Female', 28, '1995-04-14', '2022-03-08', '1919', 'Purok 2', '09123456800', 'harper_profile.jpg', 22),
('Benjamin', 'Charles', 'Thompson', 'benjamin.t@email.com', 'benjaminpass', 'Male', 41, '1982-10-08', '2022-03-10', '2020', 'Purok 3', '09123456801', 'benjamin_profile.jpg', 23),
('Evelyn', 'Hope', 'White', 'evelyn.w@email.com', 'evelynpass', 'Female', 29, '1994-09-17', '2022-03-12', '2121', 'Purok 4', '09123456802', 'evelyn_profile.jpg', 24),
('Nathan', 'Scott', 'Harris', 'nathan.h@email.com', 'nathanpass', 'Male', 34, '1989-07-23', '2022-03-15', '2222', 'Purok 5', '09123456803', 'nathan_profile.jpg', 25),
('Abigail', 'Ruth', 'Sanchez', 'abigail.s@email.com', 'abigailpass', 'Female', 27, '1996-01-11', '2022-03-18', '2323', 'Purok 1', '09123456804', 'abigail_profile.jpg', 26),
('Logan', 'Henry', 'Clark', 'logan.c@email.com', 'loganpass', 'Male', 30, '1993-05-29', '2022-03-20', '2424', 'Purok 2', '09123456805', 'logan_profile.jpg', 27),
('Elizabeth', 'Joy', 'Ramirez', 'elizabeth.r@email.com', 'elizabethpass', 'Female', 32, '1991-12-03', '2022-03-22', '2525', 'Purok 3', '09123456806', 'elizabeth_profile.jpg', 28),
('Jacob', 'Andrew', 'Lewis', 'jacob.l@email.com', 'jacobpass', 'Male', 28, '1995-08-16', '2022-03-25', '2626', 'Purok 4', '09123456807', 'jacob_profile.jpg', 29),
('Sofia', 'Claire', 'Robinson', 'sofia.r@email.com', 'sofiapass2', 'Female', 26, '1997-06-07', '2022-03-28', '2727', 'Purok 5', '09123456808', 'sofia2_profile.jpg', 30),
('William', 'George', 'Walker', 'william.w@email.com', 'williampass', 'Male', 45, '1978-04-12', '2022-03-30', '2828', 'Purok 1', '09123456809', 'william_profile.jpg', 31),
('Victoria', 'Lynn', 'Young', 'victoria.y@email.com', 'victoriapass', 'Female', 29, '1994-11-21', '2022-04-02', '2929', 'Purok 2', '09123456810', 'victoria_profile.jpg', 32),
('Samuel', 'Peter', 'Allen', 'samuel.a@email.com', 'samuelpass', 'Male', 31, '1992-02-28', '2022-04-05', '3030', 'Purok 3', '09123456811', 'samuel_profile.jpg', 33),
('Avery', 'Mae', 'King', 'avery.k@email.com', 'averypass', 'Female', 30, '1993-10-15', '2022-04-08', '3131', 'Purok 4', '09123456812', 'avery_profile.jpg', 34),
('Jackson', 'Luke', 'Wright', 'jackson.w@email.com', 'jacksonpass', 'Male', 27, '1996-07-04', '2022-04-10', '3232', 'Purok 5', '09123456813', 'jackson_profile.jpg', 35),
('Scarlett', 'June', 'Scott', 'scarlett.s@email.com', 'scarlettpass', 'Female', 33, '1990-09-19', '2022-04-12', '3333', 'Purok 1', '09123456814', 'scarlett_profile.jpg', 36),
('Sebastian', 'Mark', 'Torres', 'sebastian.t@email.com', 'sebastianpass', 'Male', 28, '1995-12-24', '2022-04-15', '3434', 'Purok 2', '09123456815', 'sebastian_profile.jpg', 37),
('Madison', 'Paige', 'Nguyen', 'madison.n@email.com', 'madisonpass', 'Female', 26, '1997-08-09', '2022-04-18', '3535', 'Purok 3', '09123456816', 'madison_profile.jpg', 38),
('Aiden', 'Ryan', 'Hill', 'aiden.h@email.com', 'aidenpass', 'Male', 32, '1991-05-13', '2022-04-20', '3636', 'Purok 4', '09123456817', 'aiden_profile.jpg', 39),
('Chloe', 'Dawn', 'Flores', 'chloe.f@email.com', 'chloepass', 'Female', 30, '1993-03-27', '2022-04-22', '3737', 'Purok 5', '09123456818', 'chloe_profile.jpg', 40),
('Gabriel', 'Christian', 'Green', 'gabriel.g@email.com', 'gabrielpass', 'Male', 29, '1994-01-08', '2022-04-25', '3838', 'Purok 1', '09123456819', 'gabriel_profile.jpg', 41),
('Lily', 'Anne', 'Adams', 'lily.a@email.com', 'lilypass', 'Female', 31, '1992-10-31', '2022-04-28', '3939', 'Purok 2', '09123456820', 'lily_profile.jpg', 42),
('Carter', 'John', 'Nelson', 'carter.n@email.com', 'carterpass', 'Male', 34, '1989-07-16', '2022-04-30', '4040', 'Purok 3', '09123456821', 'carter_profile.jpg', 43),
('Zoey', 'Marie', 'Baker', 'zoey.b@email.com', 'zoeypass', 'Female', 27, '1996-04-05', '2022-05-02', '4141', 'Purok 4', '09123456822', 'zoey_profile.jpg', 44),
('Julian', 'David', 'Hall', 'julian.h@email.com', 'julianpass', 'Male', 30, '1993-11-18', '2022-05-05', '4242', 'Purok 5', '09123456823', 'julian_profile.jpg', 45),
('Penelope', 'Grace', 'Rivera', 'penelope.r@email.com', 'penelopepass', 'Female', 32, '1991-02-22', '2022-05-08', '4343', 'Purok 1', '09123456824', 'penelope_profile.jpg', 46),
('Wyatt', 'Thomas', 'Mitchell', 'wyatt.m@email.com', 'wyattpass', 'Male', 28, '1995-09-14', '2022-05-10', '4444', 'Purok 2', '09123456825', 'wyatt_profile.jpg', 47),
('Hannah', 'Joyce', 'Carter', 'hannah.c@email.com', 'hannahpass', 'Female', 26, '1997-05-07', '2022-05-12', '4545', 'Purok 3', '09123456826', 'hannah_profile.jpg', 48),
('Owen', 'Joseph', 'Roberts', 'owen.r@email.com', 'owenpass', 'Male', 35, '1988-12-30', '2022-05-15', '4646', 'Purok 4', '09123456827', 'owen_profile.jpg', 49),
('Addison', 'Faith', 'Phillips', 'addison.p@email.com', 'JENMAR0411', 'Female', 29, '1994-08-11', '2022-05-18', '4747', 'Purok 5', '09123456828', '67ebcf9a6ec4c.jpg', 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_account`
--
ALTER TABLE `admin_account`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `barangay_blotter`
--
ALTER TABLE `barangay_blotter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barangay_incident`
--
ALTER TABLE `barangay_incident`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barangay_information`
--
ALTER TABLE `barangay_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barangay_official`
--
ALTER TABLE `barangay_official`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barangay_request`
--
ALTER TABLE `barangay_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barangay_resident`
--
ALTER TABLE `barangay_resident`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barangay_revenue`
--
ALTER TABLE `barangay_revenue`
  ADD PRIMARY KEY (`OR_no`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_account`
--
ALTER TABLE `admin_account`
  MODIFY `user_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `barangay_blotter`
--
ALTER TABLE `barangay_blotter`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `barangay_incident`
--
ALTER TABLE `barangay_incident`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `barangay_information`
--
ALTER TABLE `barangay_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `barangay_official`
--
ALTER TABLE `barangay_official`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `barangay_request`
--
ALTER TABLE `barangay_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `barangay_resident`
--
ALTER TABLE `barangay_resident`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `barangay_revenue`
--
ALTER TABLE `barangay_revenue`
  MODIFY `OR_no` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
