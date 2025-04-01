-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2025 at 02:52 PM
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
(82, 'SECRETARY', 'Alex', 'Peralta', 'Peralta', 'tmc.jenmar.alano@cvsu.edu.ph', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2025-03-22', '67dec8439c304.png', 'Female', 25, 1),
(84, 'OFFICER', 'Alex', 'Peralta', 'Peralta', 'tmc.jenmar.alano@cvsu.edu.ph', 'admin', 'admin', '2025-03-22', '67dec8439c304.png', 'Female', 25, 1);

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
('Noise Complaint', '09171234567', 'Barangay A', 'Juan Dela Cruz', '2025-03-22', '10:30:00', 1, 676, 'Maria Santos', 30, '123 Main St, Barangay A', 'Carlos Reyes', 'None', 'Loud music disturbing the neighbors', 'Noise'),
('Illegal Parking', '09182345678', 'Barangay B', 'Pedro Garcia', '2025-03-21', '02:00:00', 0, 677, 'Josefa Bautista', 45, '456 Elm St, Barangay B', 'Ricardo Lopez', 'None', 'Car parked in front of a fire hydrant', 'Traffic'),
('Vandalism', '09191234567', 'Barangay C', 'Andres Martinez', '2025-03-20', '04:45:00', 1, 678, 'Rafael Cruz', 24, '789 Oak St, Barangay C', 'Emma Ramos', 'None', 'Graffiti on public property', 'Crime'),
('Littering', '09123456789', 'Barangay D', 'Leandro Flores', '2025-03-19', '08:00:00', 0, 679, 'Nina Garcia', 35, '101 Pine St, Barangay D', 'Victor Dizon', 'None', 'Trash thrown on the street', 'Environment'),
('Domestic Dispute', '09211234567', 'Barangay E', 'Teresa Lopez', '2025-03-18', '08:30:00', 1, 680, 'Alfredo Perez', 55, '102 Maple St, Barangay E', 'Lina Martinez', 'None', 'Loud arguments coming from the house', 'Social'),
('Public Disturbance', '09301234567', 'Barangay F', 'Miguel Santiago', '2025-03-17', '11:15:00', 0, 681, 'Luis Morales', 28, '202 Cedar St, Barangay F', 'Juan de la Cruz', 'None', 'Drunken individuals causing a scene in the public park', 'Noise'),
('Drug Activity', '09222334455', 'Barangay G', 'Carmen Aguilar', '2025-03-16', '01:45:00', 1, 682, 'Gabriela Reyes', 40, '303 Birch St, Barangay G', 'Carlos Reyes', 'None', 'Suspicious individuals seen exchanging items', 'Crime'),
('Street Fighting', '09194567890', 'Barangay H', 'Luis Perez', '2025-03-15', '09:00:00', 0, 683, 'Armando Santos', 32, '404 Birch St, Barangay H', 'Pedro Garcia', 'None', 'Fight between two men on the street', 'Social'),
('Fire Hazard', '09336677788', 'Barangay I', 'Felipe Gomez', '2025-03-14', '07:30:00', 1, 684, 'Celia Cruz', 60, '505 Pine St, Barangay I', 'Maria Reyes', 'None', 'Burnt debris near residential area, potential fire hazard', 'Environment'),
('Overcrowding', '09237658901', 'Barangay J', 'Hernan Torres', '2025-03-13', '06:00:00', 0, 685, 'Diego Lopez', 27, '606 Cedar St, Barangay J', 'Juan de la Cruz', 'None', 'Too many people gathering in a small area', 'Social'),
('Noise Pollution', '09123456780', 'Barangay K', 'Eva Martinez', '2025-03-12', '10:15:00', 1, 686, 'Cristina Reyes', 39, '707 Elm St, Barangay K', 'Ricardo Lopez', 'None', 'Loud generator noise in the area', 'Noise'),
('Illegal Construction', '09162345678', 'Barangay L', 'Manuel Garcia', '2025-03-11', '06:45:00', 1, 687, 'Martha Dizon', 50, '808 Maple St, Barangay L', 'Antonio Cruz', 'None', 'Unapproved construction work in residential area', 'Environment'),
('Animal Abuse', '09212345678', 'Barangay M', 'Esteban Garcia', '2025-03-10', '03:30:00', 1, 688, 'Joana Reyes', 22, '909 Oak St, Barangay M', 'Carlos Dizon', 'None', 'Neglect of pet animals in the area', 'Crime'),
('Excessive Smoking', '09123457901', 'Barangay N', 'Diana Cruz', '2025-03-09', '12:00:00', 0, 689, 'Bernardo Reyes', 30, '1011 Cedar St, Barangay N', 'Nina Lopez', 'None', 'People smoking near children in public places', 'Health'),
('Spitting in Public', '09123456710', 'Barangay O', 'Ana Ramos', '2025-03-08', '05:00:00', 1, 690, 'Oscar Reyes', 28, '1111 Pine St, Barangay O', 'Sofia Garcia', 'None', 'People spitting on sidewalks and public areas', 'Health'),
('Public Urination', '09132345678', 'Barangay P', 'Ricardo Perez', '2025-03-07', '07:30:00', 1, 691, 'Santiago Lopez', 42, '1212 Birch St, Barangay P', 'Pablo Reyes', 'None', 'Individuals urinating in public', 'Health'),
('Electricity Theft', '09141122334', 'Barangay Q', 'María Hernández', '2025-03-06', '02:20:00', 0, 692, 'Diana Perez', 60, '1313 Elm St, Barangay Q', 'Carlos Reyes', 'None', 'Suspected illegal connection to electric line', 'Crime'),
('Water Pollution', '09152033445', 'Barangay R', 'Luisa Martinez', '2025-03-05', '10:40:00', 1, 693, 'Francisco Reyes', 33, '1414 Maple St, Barangay R', 'Vicente Cruz', 'None', 'Waste being dumped in the local water supply', 'Environment'),
('Illegal Logging', '09163456789', 'Barangay S', 'Carlos Gomez', '2025-03-04', '01:00:00', 0, 694, 'Monica Reyes', 47, '1515 Oak St, Barangay S', 'Eduardo Lopez', 'None', 'Unregulated cutting of trees in protected area', 'Environment'),
('Hawking without Permit', '09234567890', 'Barangay T', 'Ricardo Cruz', '2025-03-03', '04:30:00', 1, 695, 'Raul Martinez', 53, '1616 Cedar St, Barangay T', 'Ana Reyes', 'None', 'Street vendors operating without a permit', 'Business'),
('Illegal Waste Dumping', '09193456789', 'Barangay U', 'Teresa Santos', '2025-03-02', '09:30:00', 0, 696, 'Evelyn Lopez', 41, '1717 Pine St, Barangay U', 'Marcos Dizon', 'None', 'Non-recyclable waste dumped in public area', 'Environment'),
('Sexual Harassment', '09182345679', 'Barangay V', 'Daniel Reyes', '2025-03-01', '08:00:00', 1, 697, 'Victoria Cruz', 25, '1818 Maple St, Barangay V', 'José Garcia', 'None', 'Unwanted advances made by a neighbor', 'Social'),
('Abandoned Vehicle', '09241234567', 'Barangay W', 'Sofia Garcia', '2025-02-28', '11:00:00', 1, 698, 'Roberto Lopez', 38, '1919 Oak St, Barangay W', 'Pedro Cruz', 'None', 'Car abandoned on the side of the road', 'Traffic'),
('Electric Line Issues', '09256789012', 'Barangay X', 'Ricardo Lopez', '2025-02-27', '02:00:00', 1, 699, 'Patricia Reyes', 31, '2020 Elm St, Barangay X', 'Javier Dizon', 'sadadasdsd', 'Flickering lights in the neighborhood', 'Environment'),
('Trespassing', '09262345678', 'Barangay Y', 'Fernando Perez', '2025-02-26', '12:30:00', 1, 700, 'Angela Cruz', 29, '2121 Pine St, Barangay Y', 'Raul Reyes', 'None', 'Individuals trespassing in private property', 'Crime'),
('Noise Complaint', '09171234567', 'Barangay A', 'Juan Dela Cruz', '2025-03-22', '10:30:00', 1, 701, 'Maria Santos', 30, '123 Main St, Barangay A', 'Carlos Reyes', 'None', 'Loud music disturbing the neighbors', 'Noise'),
('Illegal Parking', '09182345678', 'Barangay B', 'Pedro Garcia', '2025-03-21', '02:00:00', 0, 702, 'Josefa Bautista', 45, '456 Elm St, Barangay B', 'Ricardo Lopez', 'None', 'Car parked in front of a fire hydrant', 'Traffic'),
('Vandalism', '09191234567', 'Barangay C', 'Andres Martinez', '2025-03-20', '04:45:00', 1, 703, 'Rafael Cruz', 24, '789 Oak St, Barangay C', 'Emma Ramos', 'None', 'Graffiti on public property', 'Crime'),
('Littering', '09123456789', 'Barangay D', 'Leandro Flores', '2025-03-19', '08:00:00', 0, 704, 'Nina Garcia', 35, '101 Pine St, Barangay D', 'Victor Dizon', 'None', 'Trash thrown on the street', 'Environment'),
('Domestic Dispute', '09211234567', 'Barangay E', 'Teresa Lopez', '2025-03-18', '08:30:00', 1, 705, 'Alfredo Perez', 55, '102 Maple St, Barangay E', 'Lina Martinez', 'None', 'Loud arguments coming from the house', 'Social'),
('Public Disturbance', '09301234567', 'Barangay F', 'Miguel Santiago', '2025-03-17', '11:15:00', 0, 706, 'Luis Morales', 28, '202 Cedar St, Barangay F', 'Juan de la Cruz', 'None', 'Drunken individuals causing a scene in the public park', 'Noise'),
('Drug Activity', '09222334455', 'Barangay G', 'Carmen Aguilar', '2025-03-16', '01:45:00', 1, 707, 'Gabriela Reyes', 40, '303 Birch St, Barangay G', 'Carlos Reyes', 'None', 'Suspicious individuals seen exchanging items', 'Crime'),
('Street Fighting', '09194567890', 'Barangay H', 'Luis Perez', '2025-03-15', '09:00:00', 0, 708, 'Armando Santos', 32, '404 Birch St, Barangay H', 'Pedro Garcia', 'None', 'Fight between two men on the street', 'Social'),
('Fire Hazard', '09336677788', 'Barangay I', 'Felipe Gomez', '2025-03-14', '07:30:00', 1, 709, 'Celia Cruz', 60, '505 Pine St, Barangay I', 'Maria Reyes', 'None', 'Burnt debris near residential area, potential fire hazard', 'Environment'),
('Overcrowding', '09237658901', 'Barangay J', 'Hernan Torres', '2025-03-13', '06:00:00', 0, 710, 'Diego Lopez', 27, '606 Cedar St, Barangay J', 'Juan de la Cruz', 'None', 'Too many people gathering in a small area', 'Social'),
('Noise Pollution', '09123456780', 'Barangay K', 'Eva Martinez', '2025-03-12', '10:15:00', 1, 711, 'Cristina Reyes', 39, '707 Elm St, Barangay K', 'Ricardo Lopez', 'None', 'Loud generator noise in the area', 'Noise'),
('Illegal Construction', '09162345678', 'Barangay L', 'Manuel Garcia', '2025-03-11', '06:45:00', 1, 712, 'Martha Dizon', 50, '808 Maple St, Barangay L', 'Antonio Cruz', 'None', 'Unapproved construction work in residential area', 'Environment'),
('Animal Abuse', '09212345678', 'Barangay M', 'Esteban Garcia', '2025-03-10', '03:30:00', 1, 713, 'Joana Reyes', 22, '909 Oak St, Barangay M', 'Carlos Dizon', 'None', 'Neglect of pet animals in the area', 'Crime'),
('Excessive Smoking', '09123457901', 'Barangay N', 'Diana Cruz', '2025-03-09', '12:00:00', 0, 714, 'Bernardo Reyes', 30, '1011 Cedar St, Barangay N', 'Nina Lopez', 'None', 'People smoking near children in public places', 'Health'),
('Spitting in Public', '09123456710', 'Barangay O', 'Ana Ramos', '2025-03-08', '05:00:00', 1, 715, 'Oscar Reyes', 28, '1111 Pine St, Barangay O', 'Sofia Garcia', 'None', 'People spitting on sidewalks and public areas', 'Health'),
('Public Urination', '09132345678', 'Barangay P', 'Ricardo Perez', '2025-03-07', '07:30:00', 1, 716, 'Santiago Lopez', 42, '1212 Birch St, Barangay P', 'Pablo Reyes', 'None', 'Individuals urinating in public', 'Health'),
('Electricity Theft', '09141122334', 'Barangay Q', 'María Hernández', '2025-03-06', '02:20:00', 0, 717, 'Diana Perez', 60, '1313 Elm St, Barangay Q', 'Carlos Reyes', 'None', 'Suspected illegal connection to electric line', 'Crime'),
('Water Pollution', '09152033445', 'Barangay R', 'Luisa Martinez', '2025-03-05', '10:40:00', 1, 718, 'Francisco Reyes', 33, '1414 Maple St, Barangay R', 'Vicente Cruz', 'None', 'Waste being dumped in the local water supply', 'Environment'),
('Illegal Logging', '09163456789', 'Barangay S', 'Carlos Gomez', '2025-03-04', '01:00:00', 0, 719, 'Monica Reyes', 47, '1515 Oak St, Barangay S', 'Eduardo Lopez', 'None', 'Unregulated cutting of trees in protected area', 'Environment'),
('Hawking without Permit', '09234567890', 'Barangay T', 'Ricardo Cruz', '2025-03-03', '04:30:00', 1, 720, 'Raul Martinez', 53, '1616 Cedar St, Barangay T', 'Ana Reyes', 'None', 'Street vendors operating without a permit', 'Business'),
('Illegal Waste Dumping', '09193456789', 'Barangay U', 'Teresa Santos', '2025-03-02', '09:30:00', 0, 721, 'Evelyn Lopez', 41, '1717 Pine St, Barangay U', 'Marcos Dizon', 'None', 'Non-recyclable waste dumped in public area', 'Environment'),
('Sexual Harassment', '09182345679', 'Barangay V', 'Daniel Reyes', '2025-03-01', '08:00:00', 1, 722, 'Victoria Cruz', 25, '1818 Maple St, Barangay V', 'José Garcia', 'None', 'Unwanted advances made by a neighbor', 'Social'),
('Abandoned Vehicle', '09241234567', 'Barangay W', 'Sofia Garcia', '2025-02-28', '11:00:00', 1, 723, 'Roberto Lopez', 38, '1919 Oak St, Barangay W', 'Pedro Cruz', 'None', 'Car abandoned on the side of the road', 'Traffic'),
('Electric Line Issues', '09256789012', 'Barangay X', 'Ricardo Lopez', '2025-02-27', '02:00:00', 1, 724, 'Patricia Reyes', 31, '2020 Elm St, Barangay X', 'Javier Dizon', 'sadadasdsd', 'Flickering lights in the neighborhood', 'Environment'),
('Trespassing', '09262345678', 'Barangay Y', 'Fernando Perez', '2025-02-26', '12:30:00', 1, 725, 'Angela Cruz', 29, '2121 Pine St, Barangay Y', 'Raul Reyes', 'None', 'Individuals trespassing in private property', 'Crime'),
('Noise Complaint', '09171234567', 'Barangay A', 'Juan Dela Cruz', '2025-03-22', '10:30:00', 1, 726, 'Maria Santos', 30, '123 Main St, Barangay A', 'Carlos Reyes', 'None', 'Loud music disturbing the neighbors', 'Noise'),
('Illegal Parking', '09182345678', 'Barangay B', 'Pedro Garcia', '2025-03-21', '02:00:00', 0, 727, 'Josefa Bautista', 45, '456 Elm St, Barangay B', 'Ricardo Lopez', 'None', 'Car parked in front of a fire hydrant', 'Traffic'),
('Vandalism', '09191234567', 'Barangay C', 'Andres Martinez', '2025-03-20', '04:45:00', 1, 728, 'Rafael Cruz', 24, '789 Oak St, Barangay C', 'Emma Ramos', 'None', 'Graffiti on public property', 'Crime'),
('Littering', '09123456789', 'Barangay D', 'Leandro Flores', '2025-03-19', '08:00:00', 0, 729, 'Nina Garcia', 35, '101 Pine St, Barangay D', 'Victor Dizon', 'None', 'Trash thrown on the street', 'Environment'),
('Domestic Dispute', '09211234567', 'Barangay E', 'Teresa Lopez', '2025-03-18', '08:30:00', 1, 730, 'Alfredo Perez', 55, '102 Maple St, Barangay E', 'Lina Martinez', 'None', 'Loud arguments coming from the house', 'Social'),
('Public Disturbance', '09301234567', 'Barangay F', 'Miguel Santiago', '2025-03-17', '11:15:00', 0, 731, 'Luis Morales', 28, '202 Cedar St, Barangay F', 'Juan de la Cruz', 'None', 'Drunken individuals causing a scene in the public park', 'Noise'),
('Drug Activity', '09222334455', 'Barangay G', 'Carmen Aguilar', '2025-03-16', '01:45:00', 1, 732, 'Gabriela Reyes', 40, '303 Birch St, Barangay G', 'Carlos Reyes', 'None', 'Suspicious individuals seen exchanging items', 'Crime'),
('Street Fighting', '09194567890', 'Barangay H', 'Luis Perez', '2025-03-15', '09:00:00', 0, 733, 'Armando Santos', 32, '404 Birch St, Barangay H', 'Pedro Garcia', 'None', 'Fight between two men on the street', 'Social'),
('Fire Hazard', '09336677788', 'Barangay I', 'Felipe Gomez', '2025-03-14', '07:30:00', 1, 734, 'Celia Cruz', 60, '505 Pine St, Barangay I', 'Maria Reyes', 'None', 'Burnt debris near residential area, potential fire hazard', 'Environment'),
('Overcrowding', '09237658901', 'Barangay J', 'Hernan Torres', '2025-03-13', '06:00:00', 0, 735, 'Diego Lopez', 27, '606 Cedar St, Barangay J', 'Juan de la Cruz', 'None', 'Too many people gathering in a small area', 'Social'),
('Noise Pollution', '09123456780', 'Barangay K', 'Eva Martinez', '2025-03-12', '10:15:00', 1, 736, 'Cristina Reyes', 39, '707 Elm St, Barangay K', 'Ricardo Lopez', 'None', 'Loud generator noise in the area', 'Noise'),
('Illegal Construction', '09162345678', 'Barangay L', 'Manuel Garcia', '2025-03-11', '06:45:00', 1, 737, 'Martha Dizon', 50, '808 Maple St, Barangay L', 'Antonio Cruz', 'None', 'Unapproved construction work in residential area', 'Environment'),
('Animal Abuse', '09212345678', 'Barangay M', 'Esteban Garcia', '2025-03-10', '03:30:00', 1, 738, 'Joana Reyes', 22, '909 Oak St, Barangay M', 'Carlos Dizon', 'None', 'Neglect of pet animals in the area', 'Crime'),
('Excessive Smoking', '09123457901', 'Barangay N', 'Diana Cruz', '2025-03-09', '12:00:00', 0, 739, 'Bernardo Reyes', 30, '1011 Cedar St, Barangay N', 'Nina Lopez', 'None', 'People smoking near children in public places', 'Health'),
('Spitting in Public', '09123456710', 'Barangay O', 'Ana Ramos', '2025-03-08', '05:00:00', 1, 740, 'Oscar Reyes', 28, '1111 Pine St, Barangay O', 'Sofia Garcia', 'None', 'People spitting on sidewalks and public areas', 'Health'),
('Public Urination', '09132345678', 'Barangay P', 'Ricardo Perez', '2025-03-07', '07:30:00', 1, 741, 'Santiago Lopez', 42, '1212 Birch St, Barangay P', 'Pablo Reyes', 'None', 'Individuals urinating in public', 'Health'),
('Electricity Theft', '09141122334', 'Barangay Q', 'María Hernández', '2025-03-06', '02:20:00', 0, 742, 'Diana Perez', 60, '1313 Elm St, Barangay Q', 'Carlos Reyes', 'None', 'Suspected illegal connection to electric line', 'Crime'),
('Water Pollution', '09152033445', 'Barangay R', 'Luisa Martinez', '2025-03-05', '10:40:00', 1, 743, 'Francisco Reyes', 33, '1414 Maple St, Barangay R', 'Vicente Cruz', 'None', 'Waste being dumped in the local water supply', 'Environment'),
('Illegal Logging', '09163456789', 'Barangay S', 'Carlos Gomez', '2025-03-04', '01:00:00', 0, 744, 'Monica Reyes', 47, '1515 Oak St, Barangay S', 'Eduardo Lopez', 'None', 'Unregulated cutting of trees in protected area', 'Environment'),
('Hawking without Permit', '09234567890', 'Barangay T', 'Ricardo Cruz', '2025-03-03', '04:30:00', 1, 745, 'Raul Martinez', 53, '1616 Cedar St, Barangay T', 'Ana Reyes', 'None', 'Street vendors operating without a permit', 'Business'),
('Illegal Waste Dumping', '09193456789', 'Barangay U', 'Teresa Santos', '2025-03-02', '09:30:00', 0, 746, 'Evelyn Lopez', 41, '1717 Pine St, Barangay U', 'Marcos Dizon', 'None', 'Non-recyclable waste dumped in public area', 'Environment'),
('Sexual Harassment', '09182345679', 'Barangay V', 'Daniel Reyes', '2025-03-01', '08:00:00', 1, 747, 'Victoria Cruz', 25, '1818 Maple St, Barangay V', 'José Garcia', 'None', 'Unwanted advances made by a neighbor', 'Social'),
('Abandoned Vehicle', '09241234567', 'Barangay W', 'Sofia Garcia', '2025-02-28', '11:00:00', 1, 748, 'Roberto Lopez', 38, '1919 Oak St, Barangay W', 'Pedro Cruz', 'None', 'Car abandoned on the side of the road', 'Traffic'),
('Electric Line Issues', '09256789012', 'Barangay X', 'Ricardo Lopez', '2025-02-27', '02:00:00', 1, 749, 'Patricia Reyes', 31, '2020 Elm St, Barangay X', 'Javier Dizon', 'sadadasdsd', 'Flickering lights in the neighborhood', 'Environment'),
('Trespassing', '09262345678', 'Barangay Y', 'Fernando Perez', '2025-02-26', '12:30:00', 1, 750, 'Angela Cruz', 29, '2121 Pine St, Barangay Y', 'Raul Reyes', 'None', 'Individuals trespassing in private property', 'Crime'),
('Noise Complaint', '09171234567', 'Barangay A', 'Juan Dela Cruz', '2025-03-22', '10:30:00', 1, 751, 'Maria Santos', 30, '123 Main St, Barangay A', 'Carlos Reyes', 'None', 'Loud music disturbing the neighbors', 'Noise'),
('Illegal Parking', '09182345678', 'Barangay B', 'Pedro Garcia', '2025-03-21', '02:00:00', 0, 752, 'Josefa Bautista', 45, '456 Elm St, Barangay B', 'Ricardo Lopez', 'None', 'Car parked in front of a fire hydrant', 'Traffic'),
('Vandalism', '09191234567', 'Barangay C', 'Andres Martinez', '2025-03-20', '04:45:00', 1, 753, 'Rafael Cruz', 24, '789 Oak St, Barangay C', 'Emma Ramos', 'None', 'Graffiti on public property', 'Crime'),
('Littering', '09123456789', 'Barangay D', 'Leandro Flores', '2025-03-19', '08:00:00', 0, 754, 'Nina Garcia', 35, '101 Pine St, Barangay D', 'Victor Dizon', 'None', 'Trash thrown on the street', 'Environment'),
('Domestic Dispute', '09211234567', 'Barangay E', 'Teresa Lopez', '2025-03-18', '08:30:00', 1, 755, 'Alfredo Perez', 55, '102 Maple St, Barangay E', 'Lina Martinez', 'None', 'Loud arguments coming from the house', 'Social'),
('Public Disturbance', '09301234567', 'Barangay F', 'Miguel Santiago', '2025-03-17', '11:15:00', 0, 756, 'Luis Morales', 28, '202 Cedar St, Barangay F', 'Juan de la Cruz', 'None', 'Drunken individuals causing a scene in the public park', 'Noise'),
('Drug Activity', '09222334455', 'Barangay G', 'Carmen Aguilar', '2025-03-16', '01:45:00', 1, 757, 'Gabriela Reyes', 40, '303 Birch St, Barangay G', 'Carlos Reyes', 'None', 'Suspicious individuals seen exchanging items', 'Crime'),
('Street Fighting', '09194567890', 'Barangay H', 'Luis Perez', '2025-03-15', '09:00:00', 0, 758, 'Armando Santos', 32, '404 Birch St, Barangay H', 'Pedro Garcia', 'None', 'Fight between two men on the street', 'Social'),
('Fire Hazard', '09336677788', 'Barangay I', 'Felipe Gomez', '2025-03-14', '07:30:00', 1, 759, 'Celia Cruz', 60, '505 Pine St, Barangay I', 'Maria Reyes', 'None', 'Burnt debris near residential area, potential fire hazard', 'Environment'),
('Overcrowding', '09237658901', 'Barangay J', 'Hernan Torres', '2025-03-13', '06:00:00', 0, 760, 'Diego Lopez', 27, '606 Cedar St, Barangay J', 'Juan de la Cruz', 'None', 'Too many people gathering in a small area', 'Social'),
('Noise Pollution', '09123456780', 'Barangay K', 'Eva Martinez', '2025-03-12', '10:15:00', 1, 761, 'Cristina Reyes', 39, '707 Elm St, Barangay K', 'Ricardo Lopez', 'None', 'Loud generator noise in the area', 'Noise'),
('Illegal Construction', '09162345678', 'Barangay L', 'Manuel Garcia', '2025-03-11', '06:45:00', 1, 762, 'Martha Dizon', 50, '808 Maple St, Barangay L', 'Antonio Cruz', 'None', 'Unapproved construction work in residential area', 'Environment'),
('Animal Abuse', '09212345678', 'Barangay M', 'Esteban Garcia', '2025-03-10', '03:30:00', 1, 763, 'Joana Reyes', 22, '909 Oak St, Barangay M', 'Carlos Dizon', 'None', 'Neglect of pet animals in the area', 'Crime'),
('Excessive Smoking', '09123457901', 'Barangay N', 'Diana Cruz', '2025-03-09', '12:00:00', 0, 764, 'Bernardo Reyes', 30, '1011 Cedar St, Barangay N', 'Nina Lopez', 'None', 'People smoking near children in public places', 'Health'),
('Spitting in Public', '09123456710', 'Barangay O', 'Ana Ramos', '2025-03-08', '05:00:00', 1, 765, 'Oscar Reyes', 28, '1111 Pine St, Barangay O', 'Sofia Garcia', 'None', 'People spitting on sidewalks and public areas', 'Health'),
('Public Urination', '09132345678', 'Barangay P', 'Ricardo Perez', '2025-03-07', '07:30:00', 1, 766, 'Santiago Lopez', 42, '1212 Birch St, Barangay P', 'Pablo Reyes', 'None', 'Individuals urinating in public', 'Health'),
('Electricity Theft', '09141122334', 'Barangay Q', 'María Hernández', '2025-03-06', '02:20:00', 0, 767, 'Diana Perez', 60, '1313 Elm St, Barangay Q', 'Carlos Reyes', 'None', 'Suspected illegal connection to electric line', 'Crime'),
('Water Pollution', '09152033445', 'Barangay R', 'Luisa Martinez', '2025-03-05', '10:40:00', 1, 768, 'Francisco Reyes', 33, '1414 Maple St, Barangay R', 'Vicente Cruz', 'None', 'Waste being dumped in the local water supply', 'Environment'),
('Illegal Logging', '09163456789', 'Barangay S', 'Carlos Gomez', '2025-03-04', '01:00:00', 0, 769, 'Monica Reyes', 47, '1515 Oak St, Barangay S', 'Eduardo Lopez', 'None', 'Unregulated cutting of trees in protected area', 'Environment'),
('Hawking without Permit', '09234567890', 'Barangay T', 'Ricardo Cruz', '2025-03-03', '04:30:00', 1, 770, 'Raul Martinez', 53, '1616 Cedar St, Barangay T', 'Ana Reyes', 'None', 'Street vendors operating without a permit', 'Business'),
('Illegal Waste Dumping', '09193456789', 'Barangay U', 'Teresa Santos', '2025-03-02', '09:30:00', 0, 771, 'Evelyn Lopez', 41, '1717 Pine St, Barangay U', 'Marcos Dizon', 'None', 'Non-recyclable waste dumped in public area', 'Environment'),
('Sexual Harassment', '09182345679', 'Barangay V', 'Daniel Reyes', '2025-03-01', '08:00:00', 1, 772, 'Victoria Cruz', 25, '1818 Maple St, Barangay V', 'José Garcia', 'None', 'Unwanted advances made by a neighbor', 'Social'),
('Abandoned Vehicle', '09241234567', 'Barangay W', 'Sofia Garcia', '2025-02-28', '11:00:00', 1, 773, 'Roberto Lopez', 38, '1919 Oak St, Barangay W', 'Pedro Cruz', 'None', 'Car abandoned on the side of the road', 'Traffic'),
('Electric Line Issues', '09256789012', 'Barangay X', 'Ricardo Lopez', '2025-02-27', '02:00:00', 1, 774, 'Patricia Reyes', 31, '2020 Elm St, Barangay X', 'Javier Dizon', 'sadadasdsd', 'Flickering lights in the neighborhood', 'Environment'),
('Trespassing', '09262345678', 'Barangay Y', 'Fernando Perez', '2025-02-26', '12:30:00', 1, 775, 'Angela Cruz', 29, '2121 Pine St, Barangay Y', 'Raul Reyes', 'None', 'Individuals trespassing in private property', 'Crime'),
('Noise Complaint', '09171234567', 'Barangay A', 'Juan Dela Cruz', '2025-03-22', '10:30:00', 1, 776, 'Maria Santos', 30, '123 Main St, Barangay A', 'Carlos Reyes', 'None', 'Loud music disturbing the neighbors', 'Noise'),
('Illegal Parking', '09182345678', 'Barangay B', 'Pedro Garcia', '2025-03-21', '02:00:00', 0, 777, 'Josefa Bautista', 45, '456 Elm St, Barangay B', 'Ricardo Lopez', 'None', 'Car parked in front of a fire hydrant', 'Traffic'),
('Vandalism', '09191234567', 'Barangay C', 'Andres Martinez', '2025-03-20', '04:45:00', 1, 778, 'Rafael Cruz', 24, '789 Oak St, Barangay C', 'Emma Ramos', 'None', 'Graffiti on public property', 'Crime'),
('Littering', '09123456789', 'Barangay D', 'Leandro Flores', '2025-03-19', '08:00:00', 0, 779, 'Nina Garcia', 35, '101 Pine St, Barangay D', 'Victor Dizon', 'None', 'Trash thrown on the street', 'Environment'),
('Domestic Dispute', '09211234567', 'Barangay E', 'Teresa Lopez', '2025-03-18', '08:30:00', 1, 780, 'Alfredo Perez', 55, '102 Maple St, Barangay E', 'Lina Martinez', 'None', 'Loud arguments coming from the house', 'Social'),
('Public Disturbance', '09301234567', 'Barangay F', 'Miguel Santiago', '2025-03-17', '11:15:00', 0, 781, 'Luis Morales', 28, '202 Cedar St, Barangay F', 'Juan de la Cruz', 'None', 'Drunken individuals causing a scene in the public park', 'Noise'),
('Drug Activity', '09222334455', 'Barangay G', 'Carmen Aguilar', '2025-03-16', '01:45:00', 1, 782, 'Gabriela Reyes', 40, '303 Birch St, Barangay G', 'Carlos Reyes', 'None', 'Suspicious individuals seen exchanging items', 'Crime'),
('Street Fighting', '09194567890', 'Barangay H', 'Luis Perez', '2025-03-15', '09:00:00', 0, 783, 'Armando Santos', 32, '404 Birch St, Barangay H', 'Pedro Garcia', 'None', 'Fight between two men on the street', 'Social'),
('Fire Hazard', '09336677788', 'Barangay I', 'Felipe Gomez', '2025-03-14', '07:30:00', 1, 784, 'Celia Cruz', 60, '505 Pine St, Barangay I', 'Maria Reyes', 'None', 'Burnt debris near residential area, potential fire hazard', 'Environment'),
('Overcrowding', '09237658901', 'Barangay J', 'Hernan Torres', '2025-03-13', '06:00:00', 0, 785, 'Diego Lopez', 27, '606 Cedar St, Barangay J', 'Juan de la Cruz', 'None', 'Too many people gathering in a small area', 'Social'),
('Noise Pollution', '09123456780', 'Barangay K', 'Eva Martinez', '2025-03-12', '10:15:00', 1, 786, 'Cristina Reyes', 39, '707 Elm St, Barangay K', 'Ricardo Lopez', 'None', 'Loud generator noise in the area', 'Noise'),
('Illegal Construction', '09162345678', 'Barangay L', 'Manuel Garcia', '2025-03-11', '06:45:00', 1, 787, 'Martha Dizon', 50, '808 Maple St, Barangay L', 'Antonio Cruz', 'None', 'Unapproved construction work in residential area', 'Environment'),
('Animal Abuse', '09212345678', 'Barangay M', 'Esteban Garcia', '2025-03-10', '03:30:00', 1, 788, 'Joana Reyes', 22, '909 Oak St, Barangay M', 'Carlos Dizon', 'None', 'Neglect of pet animals in the area', 'Crime'),
('Excessive Smoking', '09123457901', 'Barangay N', 'Diana Cruz', '2025-03-09', '12:00:00', 0, 789, 'Bernardo Reyes', 30, '1011 Cedar St, Barangay N', 'Nina Lopez', 'None', 'People smoking near children in public places', 'Health'),
('Spitting in Public', '09123456710', 'Barangay O', 'Ana Ramos', '2025-03-08', '05:00:00', 1, 790, 'Oscar Reyes', 28, '1111 Pine St, Barangay O', 'Sofia Garcia', 'None', 'People spitting on sidewalks and public areas', 'Health'),
('Public Urination', '09132345678', 'Barangay P', 'Ricardo Perez', '2025-03-07', '07:30:00', 1, 791, 'Santiago Lopez', 42, '1212 Birch St, Barangay P', 'Pablo Reyes', 'None', 'Individuals urinating in public', 'Health'),
('Electricity Theft', '09141122334', 'Barangay Q', 'María Hernández', '2025-03-06', '02:20:00', 0, 792, 'Diana Perez', 60, '1313 Elm St, Barangay Q', 'Carlos Reyes', 'None', 'Suspected illegal connection to electric line', 'Crime'),
('Water Pollution', '09152033445', 'Barangay R', 'Luisa Martinez', '2025-03-05', '10:40:00', 1, 793, 'Francisco Reyes', 33, '1414 Maple St, Barangay R', 'Vicente Cruz', 'None', 'Waste being dumped in the local water supply', 'Environment'),
('Illegal Logging', '09163456789', 'Barangay S', 'Carlos Gomez', '2025-03-04', '01:00:00', 0, 794, 'Monica Reyes', 47, '1515 Oak St, Barangay S', 'Eduardo Lopez', 'None', 'Unregulated cutting of trees in protected area', 'Environment'),
('Hawking without Permit', '09234567890', 'Barangay T', 'Ricardo Cruz', '2025-03-03', '04:30:00', 1, 795, 'Raul Martinez', 53, '1616 Cedar St, Barangay T', 'Ana Reyes', 'None', 'Street vendors operating without a permit', 'Business'),
('Illegal Waste Dumping', '09193456789', 'Barangay U', 'Teresa Santos', '2025-03-02', '09:30:00', 0, 796, 'Evelyn Lopez', 41, '1717 Pine St, Barangay U', 'Marcos Dizon', 'None', 'Non-recyclable waste dumped in public area', 'Environment'),
('Sexual Harassment', '09182345679', 'Barangay V', 'Daniel Reyes', '2025-03-01', '08:00:00', 1, 797, 'Victoria Cruz', 25, '1818 Maple St, Barangay V', 'José Garcia', 'None', 'Unwanted advances made by a neighbor', 'Social'),
('Abandoned Vehicle', '09241234567', 'Barangay W', 'Sofia Garcia', '2025-02-28', '11:00:00', 1, 798, 'Roberto Lopez', 38, '1919 Oak St, Barangay W', 'Pedro Cruz', 'None', 'Car abandoned on the side of the road', 'Traffic'),
('Electric Line Issues', '09256789012', 'Barangay X', 'Ricardo Lopez', '2025-02-27', '02:00:00', 1, 799, 'Patricia Reyes', 31, '2020 Elm St, Barangay X', 'Javier Dizon', 'sadadasdsd', 'Flickering lights in the neighborhood', 'Environment'),
('Trespassing', '09262345678', 'Barangay Y', 'Fernando Perez', '2025-02-26', '12:30:00', 1, 800, 'Angela Cruz', 29, '2121 Pine St, Barangay Y', 'Raul Reyes', 'None', 'Individuals trespassing in private property', 'Crime'),
('Noise Complaint', '09171234567', 'Barangay A', 'Juan Dela Cruz', '2025-03-22', '10:30:00', 1, 801, 'Maria Santos', 30, '123 Main St, Barangay A', 'Carlos Reyes', 'None', 'Loud music disturbing the neighbors', 'Noise'),
('Illegal Parking', '09182345678', 'Barangay B', 'Pedro Garcia', '2025-03-21', '02:00:00', 0, 802, 'Josefa Bautista', 45, '456 Elm St, Barangay B', 'Ricardo Lopez', 'None', 'Car parked in front of a fire hydrant', 'Traffic'),
('Vandalism', '09191234567', 'Barangay C', 'Andres Martinez', '2025-03-20', '04:45:00', 1, 803, 'Rafael Cruz', 24, '789 Oak St, Barangay C', 'Emma Ramos', 'None', 'Graffiti on public property', 'Crime'),
('Littering', '09123456789', 'Barangay D', 'Leandro Flores', '2025-03-19', '08:00:00', 0, 804, 'Nina Garcia', 35, '101 Pine St, Barangay D', 'Victor Dizon', 'None', 'Trash thrown on the street', 'Environment'),
('Domestic Dispute', '09211234567', 'Barangay E', 'Teresa Lopez', '2025-03-18', '08:30:00', 1, 805, 'Alfredo Perez', 55, '102 Maple St, Barangay E', 'Lina Martinez', 'None', 'Loud arguments coming from the house', 'Social'),
('Public Disturbance', '09301234567', 'Barangay F', 'Miguel Santiago', '2025-03-17', '11:15:00', 0, 806, 'Luis Morales', 28, '202 Cedar St, Barangay F', 'Juan de la Cruz', 'None', 'Drunken individuals causing a scene in the public park', 'Noise'),
('Drug Activity', '09222334455', 'Barangay G', 'Carmen Aguilar', '2025-03-16', '01:45:00', 1, 807, 'Gabriela Reyes', 40, '303 Birch St, Barangay G', 'Carlos Reyes', 'None', 'Suspicious individuals seen exchanging items', 'Crime'),
('Street Fighting', '09194567890', 'Barangay H', 'Luis Perez', '2025-03-15', '09:00:00', 0, 808, 'Armando Santos', 32, '404 Birch St, Barangay H', 'Pedro Garcia', 'None', 'Fight between two men on the street', 'Social'),
('Fire Hazard', '09336677788', 'Barangay I', 'Felipe Gomez', '2025-03-14', '07:30:00', 1, 809, 'Celia Cruz', 60, '505 Pine St, Barangay I', 'Maria Reyes', 'None', 'Burnt debris near residential area, potential fire hazard', 'Environment'),
('Overcrowding', '09237658901', 'Barangay J', 'Hernan Torres', '2025-03-13', '06:00:00', 0, 810, 'Diego Lopez', 27, '606 Cedar St, Barangay J', 'Juan de la Cruz', 'None', 'Too many people gathering in a small area', 'Social'),
('Noise Pollution', '09123456780', 'Barangay K', 'Eva Martinez', '2025-03-12', '10:15:00', 1, 811, 'Cristina Reyes', 39, '707 Elm St, Barangay K', 'Ricardo Lopez', 'None', 'Loud generator noise in the area', 'Noise'),
('Illegal Construction', '09162345678', 'Barangay L', 'Manuel Garcia', '2025-03-11', '06:45:00', 1, 812, 'Martha Dizon', 50, '808 Maple St, Barangay L', 'Antonio Cruz', 'None', 'Unapproved construction work in residential area', 'Environment'),
('Animal Abuse', '09212345678', 'Barangay M', 'Esteban Garcia', '2025-03-10', '03:30:00', 1, 813, 'Joana Reyes', 22, '909 Oak St, Barangay M', 'Carlos Dizon', 'None', 'Neglect of pet animals in the area', 'Crime'),
('Excessive Smoking', '09123457901', 'Barangay N', 'Diana Cruz', '2025-03-09', '12:00:00', 0, 814, 'Bernardo Reyes', 30, '1011 Cedar St, Barangay N', 'Nina Lopez', 'None', 'People smoking near children in public places', 'Health'),
('Spitting in Public', '09123456710', 'Barangay O', 'Ana Ramos', '2025-03-08', '05:00:00', 1, 815, 'Oscar Reyes', 28, '1111 Pine St, Barangay O', 'Sofia Garcia', 'None', 'People spitting on sidewalks and public areas', 'Health'),
('Public Urination', '09132345678', 'Barangay P', 'Ricardo Perez', '2025-03-07', '07:30:00', 1, 816, 'Santiago Lopez', 42, '1212 Birch St, Barangay P', 'Pablo Reyes', 'None', 'Individuals urinating in public', 'Health'),
('Electricity Theft', '09141122334', 'Barangay Q', 'María Hernández', '2025-03-06', '02:20:00', 0, 817, 'Diana Perez', 60, '1313 Elm St, Barangay Q', 'Carlos Reyes', 'None', 'Suspected illegal connection to electric line', 'Crime'),
('Water Pollution', '09152033445', 'Barangay R', 'Luisa Martinez', '2025-03-05', '10:40:00', 1, 818, 'Francisco Reyes', 33, '1414 Maple St, Barangay R', 'Vicente Cruz', 'None', 'Waste being dumped in the local water supply', 'Environment'),
('Illegal Logging', '09163456789', 'Barangay S', 'Carlos Gomez', '2025-03-04', '01:00:00', 0, 819, 'Monica Reyes', 47, '1515 Oak St, Barangay S', 'Eduardo Lopez', 'None', 'Unregulated cutting of trees in protected area', 'Environment'),
('Hawking without Permit', '09234567890', 'Barangay T', 'Ricardo Cruz', '2025-03-03', '04:30:00', 1, 820, 'Raul Martinez', 53, '1616 Cedar St, Barangay T', 'Ana Reyes', 'None', 'Street vendors operating without a permit', 'Business'),
('Illegal Waste Dumping', '09193456789', 'Barangay U', 'Teresa Santos', '2025-03-02', '09:30:00', 0, 821, 'Evelyn Lopez', 41, '1717 Pine St, Barangay U', 'Marcos Dizon', 'None', 'Non-recyclable waste dumped in public area', 'Environment'),
('Sexual Harassment', '09182345679', 'Barangay V', 'Daniel Reyes', '2025-03-01', '08:00:00', 1, 822, 'Victoria Cruz', 25, '1818 Maple St, Barangay V', 'José Garcia', 'None', 'Unwanted advances made by a neighbor', 'Social'),
('Abandoned Vehicle', '09241234567', 'Barangay W', 'Sofia Garcia', '2025-02-28', '11:00:00', 1, 823, 'Roberto Lopez', 38, '1919 Oak St, Barangay W', 'Pedro Cruz', 'None', 'Car abandoned on the side of the road', 'Traffic'),
('Electric Line Issues', '09256789012', 'Barangay X', 'Ricardo Lopez', '2025-02-27', '02:00:00', 1, 824, 'Patricia Reyes', 31, '2020 Elm St, Barangay X', 'Javier Dizon', 'sadadasdsd', 'Flickering lights in the neighborhood', 'Environment'),
('Trespassing', '09262345678', 'Barangay Y', 'Fernando Perez', '2025-02-26', '12:30:00', 1, 825, 'Angela Cruz JENMAR', 29, ' 2121 Pine St, Barangay Y', 'Raul Reyes', 'None', 'Individuals trespassing in private property', 'Crime');

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
(74, '2025-03-01', '08:30:00', 'John Doe', '123 Main St, Barangay 1', 'Toyota Corolla', 'ABC1234', 'XYZ123', 'Accident', 1),
(75, '2025-03-02', '09:00:00', 'Jane Smith', '456 Oak St, Barangay 2', 'Honda Civic', 'DEF5678', 'LMN456', 'Parking Violation', 2),
(76, '2025-03-03', '10:15:00', 'Mark Johnson', '789 Pine St, Barangay 3', 'Ford Focus', 'GHI9012', 'PQR789', 'Speeding', 1),
(77, '2025-03-04', '02:00:00', 'Alice Brown', '101 Maple Ave, Barangay 4', 'Chevrolet Spark', 'JKL3456', 'STU012', 'Hit and Run', 3),
(78, '2025-03-05', '11:30:00', 'Chris Lee', '202 Birch Rd, Barangay 5', 'BMW X5', 'MNO7890', 'VWX345', 'Reckless Driving', 2),
(79, '2025-03-06', '04:45:00', 'Emily Clark', '303 Cedar Blvd, Barangay 6', 'Mazda 3', 'OPQ1234', 'YZA678', 'Traffic Violation', 2),
(80, '2025-03-07', '12:00:00', 'David Wilson', '404 Pine St, Barangay 7', 'Nissan Altima', 'RST5678', 'BCD901', 'Accident', 1),
(81, '2025-03-08', '08:45:00', 'Sophia Miller', '505 Elm Dr, Barangay 8', 'Kia Soul', 'EFG3456', 'HIJ234', 'Driving Without License', 2),
(82, '2025-03-09', '09:30:00', 'Michael Scott', '606 Oak Dr, Barangay 9', 'Hyundai Elantra', 'HIJ6789', 'LMN123', 'Alcohol Violation', 3),
(83, '2025-03-10', '01:00:00', 'Tina Turner', '707 Maple Ave, Barangay 10', 'Subaru Outback', 'NOP0123', 'OPQ567', 'Road Rage', 2),
(84, '2025-03-11', '03:30:00', 'Daniel Lee', '808 Birch Rd, Barangay 11', 'Volkswagen Golf', 'QRS2345', 'RST678', 'Illegal Parking', 2),
(85, '2025-03-12', '10:00:00', 'Linda Adams', '909 Cedar Blvd, Barangay 12', 'Toyota Camry', 'TUV3456', 'XYZ789', 'Rear-end Collision', 1),
(86, '2025-03-13', '02:30:00', 'Paul Thomas', '1010 Maple Dr, Barangay 13', 'Honda Accord', 'ABC2345', 'LMN456', 'Stop Sign Violation', 2),
(87, '2025-03-14', '04:00:00', 'Nancy Green', '1111 Pine St, Barangay 14', 'Ford Escape', 'DEF6789', 'GHI234', 'Pedestrian Accident', 1),
(88, '2025-03-15', '05:15:00', 'William Harris', '1212 Elm Rd, Barangay 15', 'Chevrolet Malibu', 'JKL0123', 'XYZ345', 'Distracted Driving', 2),
(89, '2025-03-16', '09:45:00', 'Sophia Johnson', '1313 Oak St, Barangay 16', 'Mazda CX-5', 'MNO6789', 'PQR012', 'Driving Under Influence', 3),
(90, '2025-03-17', '11:15:00', 'James Carter', '1414 Birch Dr, Barangay 17', 'BMW 3 Series', 'RST1234', 'UVW567', 'No Registration', 2),
(91, '2025-03-18', '08:30:00', 'Olivia Davis', '1515 Maple Rd, Barangay 18', 'Audi A4', 'XYZ2345', 'ABC789', 'Running Red Light', 2),
(92, '2025-03-19', '01:45:00', 'George Martinez', '1616 Cedar St, Barangay 19', 'Ford Mustang', 'OPQ5678', 'DEF901', 'Hit-and-Run', 3),
(93, '2025-03-20', '12:30:00', 'Charlotte Wright', '1717 Oak Dr, Barangay 20', 'Toyota Tacoma', 'GHI6789', 'LMN234', 'Accident', 1),
(94, '2025-03-21', '02:30:00', 'Benjamin Moore', '1818 Birch Rd, Barangay 21', 'Honda Pilot', 'JKL3456', 'OPQ678', 'Vehicle Fire', 2),
(95, '2025-03-22', '03:00:00', 'Grace Allen', '1919 Pine St, Barangay 22', 'Nissan Rogue', 'RST5678', 'UVW901', 'Parking Violation', 2),
(96, '2025-03-23', '10:30:00', 'Samuel Harris', '2020 Maple Ave, Barangay 23', 'Chevrolet Traverse', 'EFG6789', 'XYZ123', 'Accident', 1),
(97, '2025-03-25', '12:00:00', 'Amelia Baker', '2222 Oak Rd, Barangay 25', 'Subaru Forester', 'JKL5678', 'STU012', 'Drunk Driving', 3),
(98, '2025-03-01', '08:30:00', 'John Doe', '123 Main St, Barangay 1', 'Toyota Corolla', 'ABC1234', 'XYZ123', 'Accident', 1),
(99, '2025-03-02', '09:00:00', 'Jane Smith', '456 Oak St, Barangay 2', 'Honda Civic', 'DEF5678', 'LMN456', 'Parking Violation', 2),
(100, '2025-03-03', '10:15:00', 'Mark Johnson', '789 Pine St, Barangay 3', 'Ford Focus', 'GHI9012', 'PQR789', 'Speeding', 1),
(101, '2025-03-04', '02:00:00', 'Alice Brown', '101 Maple Ave, Barangay 4', 'Chevrolet Spark', 'JKL3456', 'STU012', 'Hit and Run', 3),
(102, '2025-03-05', '11:30:00', 'Chris Lee', '202 Birch Rd, Barangay 5', 'BMW X5', 'MNO7890', 'VWX345', 'Reckless Driving', 2),
(103, '2025-03-06', '04:45:00', 'Emily Clark', '303 Cedar Blvd, Barangay 6', 'Mazda 3', 'OPQ1234', 'YZA678', 'Traffic Violation', 2),
(104, '2025-03-07', '12:00:00', 'David Wilson', '404 Pine St, Barangay 7', 'Nissan Altima', 'RST5678', 'BCD901', 'Accident', 1),
(105, '2025-03-08', '08:45:00', 'Sophia Miller', '505 Elm Dr, Barangay 8', 'Kia Soul', 'EFG3456', 'HIJ234', 'Driving Without License', 2),
(106, '2025-03-09', '09:30:00', 'Michael Scott', '606 Oak Dr, Barangay 9', 'Hyundai Elantra', 'HIJ6789', 'LMN123', 'Alcohol Violation', 3),
(107, '2025-03-10', '01:00:00', 'Tina Turner', '707 Maple Ave, Barangay 10', 'Subaru Outback', 'NOP0123', 'OPQ567', 'Road Rage', 2),
(108, '2025-03-11', '03:30:00', 'Daniel Lee', '808 Birch Rd, Barangay 11', 'Volkswagen Golf', 'QRS2345', 'RST678', 'Illegal Parking', 2),
(109, '2025-03-12', '10:00:00', 'Linda Adams', '909 Cedar Blvd, Barangay 12', 'Toyota Camry', 'TUV3456', 'XYZ789', 'Rear-end Collision', 1),
(110, '2025-03-13', '02:30:00', 'Paul Thomas', '1010 Maple Dr, Barangay 13', 'Honda Accord', 'ABC2345', 'LMN456', 'Stop Sign Violation', 2),
(111, '2025-03-14', '04:00:00', 'Nancy Green', '1111 Pine St, Barangay 14', 'Ford Escape', 'DEF6789', 'GHI234', 'Pedestrian Accident', 1),
(112, '2025-03-15', '05:15:00', 'William Harris', '1212 Elm Rd, Barangay 15', 'Chevrolet Malibu', 'JKL0123', 'XYZ345', 'Distracted Driving', 2),
(113, '2025-03-16', '09:45:00', 'Sophia Johnson', '1313 Oak St, Barangay 16', 'Mazda CX-5', 'MNO6789', 'PQR012', 'Driving Under Influence', 3),
(114, '2025-03-17', '11:15:00', 'James Carter', '1414 Birch Dr, Barangay 17', 'BMW 3 Series', 'RST1234', 'UVW567', 'No Registration', 2),
(115, '2025-03-18', '08:30:00', 'Olivia Davis', '1515 Maple Rd, Barangay 18', 'Audi A4', 'XYZ2345', 'ABC789', 'Running Red Light', 2),
(116, '2025-03-19', '01:45:00', 'George Martinez', '1616 Cedar St, Barangay 19', 'Ford Mustang', 'OPQ5678', 'DEF901', 'Hit-and-Run', 3),
(117, '2025-03-20', '12:30:00', 'Charlotte Wright', '1717 Oak Dr, Barangay 20', 'Toyota Tacoma', 'GHI6789', 'LMN234', 'Accident', 1),
(118, '2025-03-21', '02:30:00', 'Benjamin Moore', '1818 Birch Rd, Barangay 21', 'Honda Pilot', 'JKL3456', 'OPQ678', 'Vehicle Fire', 2),
(119, '2025-03-22', '03:00:00', 'Grace Allen', '1919 Pine St, Barangay 22', 'Nissan Rogue', 'RST5678', 'UVW901', 'Parking Violation', 2),
(120, '2025-03-23', '10:30:00', 'Samuel Harris', '2020 Maple Ave, Barangay 23', 'Chevrolet Traverse', 'EFG6789', 'XYZ123', 'Accident', 1),
(121, '2025-03-25', '12:00:00', 'Amelia Baker', '2222 Oak Rd, Barangay 25', 'Subaru Forester', 'JKL5678', 'STU012', 'Drunk Driving', 1);

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
  `logo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barangay_information`
--

INSERT INTO `barangay_information` (`barangay_name`, `municipality`, `address`, `phone_no`, `email`, `id`, `logo`) VALUES
('PALIPARAN II', 'DASMARINAS', 'Paliparan II, Dasmariñas, Philippines', '09513856318', 'Barangay.paliparanII@gmail.com', 1, '67e4bee14e4a4.png');

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
(118, 'PB. Rolando C. Ambal', 'Chairman', 'Chairman', '2025-03-23', '2025-03-23', 1, '67df822943786.jpg'),
(119, 'Oscar Alvarez', 'Kagawad', 'Commnittee on Solid Waste', '2025-03-23', '2025-03-23', 1, '67df826ab91ee.jpg'),
(120, 'Baby Andaya', 'Kagawad', 'Commnittee on Education', '2025-03-23', '2025-03-23', 1, '67df829e5ad16.jpg'),
(121, 'Alvin Andaya', 'Kagawad', 'Commnittee on Appropriation', '2025-03-23', '2025-03-23', 1, '67df82c2f0ca7.jpg'),
(122, 'Ressa Martinez', 'Kagawad', 'Commnittee on Rules', '2025-03-23', '2025-03-17', 1, '67df82e58e2ee.jpg'),
(123, 'Mj Asilo', 'Kagawad', 'Commnittee on Peace & Order', '2025-03-23', '2025-03-23', 1, '67df83009722e.jpg'),
(124, 'Gilbert Magtaas', 'Kagawad', 'Commnittee on Education', '2025-03-18', '2025-03-05', 1, '67df831c219fa.jpg'),
(125, 'Tessa Sanchez', 'Kagawad', 'Commnittee on Appropriation', '2025-03-23', '2025-03-23', 1, '67df837d491bc.jpg');

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
('BENEDICT', 'CHUA', 'LIM', 23, 'Barangay Clearance', 'BLK. 5 LOT. 22', 'kjhjkjk', '2025-03-16', 'QUEZON', '09232323232', 'adasd', '09232323232', '2025-03', 'adasdsd', 1, 'Male', '2025-03-17', 'JOLIBEE', 'images.png', 35, 106),
('BENEDICT', 'CHUA', 'LIM', 23, 'Barangay ID', 'BLK. 5 LOT. 22', 'kjhjkjk', '2025-03-16', 'QUEZON', '09232323232', 'adasd', '09232323232', '2025-03', 'adasdsd', 4, 'Male', '2025-03-17', 'N/A', 'images.png', 35, 107),
('BENEDICT', 'CHUA', 'LIM', 23, 'Barangay Cedula', 'BLK. 5 LOT. 22', 'kjhjkjk', '2025-03-16', 'QUEZON', '09232323232', 'adasd', '09232323232', '2025-03', 'adasdsd', 4, 'Male', '2025-03-17', 'askldadsl', 'images.png', 35, 108),
('Mason', 'Milleraa', 'Evans', 33, 'Barangay Clearance', '150', 'Barangay 50', '1991-09-21', 'adsd', '09379012356', 'adasd', 'adasd', '2025-03', 'adasdsd', 1, 'Male', '2025-03-22', 'N/A', '67de7fb92949e.png', 85, 109),
('Henry', 'Daniel', 'Baker', 39, 'Business Permit', '145', 'Barangay 45', '1985-02-14', 'QUEZON', '09124567801', 'asdsadasds', '09232323232', '2025-03', 'adasdsd', 1, 'Male', '2025-03-26', 'JOLIBEE', '67e353c369e18.png', 80, 110),
('Ethan', 'Luke', 'Collins', 27, 'Barangay Clearance', '146', 'Barangay 46', '1997-11-06', 'QUEZON', '09235678912', 'asdsadasds', '09232323232', '2025-03', 'adasdsd', 1, 'Male', '2025-03-26', 'N/A', 'user46_profile.jpg', 81, 111),
('Ethan', 'Luke', 'Collins', 27, 'Barangay Certificate', '146', 'Barangay 46', '1997-11-06', 'QUEZON', '09235678912', 'asdsadasds', '09232323232', '2025-03', 'adasdsd', 1, 'Male', '2025-03-27', 'N/A', 'user46_profile.jpg', 81, 112),
('Ethan', 'Luke', 'Collins', 27, 'Barangay Indigency', '146', 'Barangay 46', '1997-11-06', 'QUEZON', '09235678912', 'asdsadasds', '09232323232', '2025-03', 'EDUCATIONAL', 3, 'Male', '2025-03-27', 'N/A', '67e7e3b5f1448.jpg', 81, 113);

-- --------------------------------------------------------

--
-- Table structure for table `barangay_resident`
--

CREATE TABLE `barangay_resident` (
  `id` int(11) NOT NULL,
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
(1, 'ROVEE ANN', 'MARTINEZ', 'ALVAREZ', '165', 'DASMARIÑAS CITY, CAVITE', '2006-02-14', 18, 'SINGLE', 'FEMALE', 'YES', 'alvarezrovee@gmail.com', '9694911585', 'STUDENT', 'FILIPINO', 'SITIO POOK'),
(2, 'JOHN ERIC', 'CASTRO', 'CAJUDAY', '381', 'DASMARIÑAS CITY, CAVITE', '2003-03-22', 23, 'SINGLE', 'MALE', 'YES', 'jcajuday44@gmail.com', '9694911585', 'N/A', 'FILIPINO', 'SITIO POOK'),
(3, 'KRISTINE JOY', 'ARANDIA', 'VIÑA', '456', 'BULACAN', '1995-09-28', 25, 'SINGLE', 'FEMALE', 'YES', 'joy.vina@gmail.com', '9694911585', 'STUDENT', 'FILIPINO', 'SITIO ILAYA'),
(4, 'ARRAH MARIE', 'FAJARDO', 'DIMAANDAL', 'BLK 30 LOT 21', 'CALOOCAN CITY', '1995-06-30', 25, 'SINGLE', 'FEMALE', 'YES', 'arahhdimaandal04@gmail.com', '9694911585', 'BUSINESS OWNER', 'FILIPINO', 'CAMELLA ISLAND PARK'),
(5, 'JHAZZENMHAY', 'DADOR', 'ALVAREZ', '239', 'DASMARIÑAS CITY, CAVITE', '1996-11-07', 24, 'SINGLE', 'FEMALE', 'YES', 'j.mhayalvarez@gmail.com', '9694911585', 'BARISTA', 'FILIPINO', 'SITIO POOK'),
(6, 'MARY ANN', 'GARDOZA', 'VILLAMOR', 'BLK 209 LOT 47', 'MANILA', '1970-08-25', 54, 'MARRIED', 'FEMALE', 'YES', 'mhane.villamor@gmail.com', '9694911585', 'HOUSEWIFE', 'FILIPINO', 'CAMELLA ISLAND PARK'),
(7, 'RONIE', 'CASTAÑEDA', 'TIEMPO', 'BLK 24 LOT 5', 'CEBU', '1985-09-17', 39, 'MARRIED', 'MALE', 'YES', 'markboss05@gmail.com', '9694911585', 'DRIVER', 'FILIPINO', 'CAMELLA ISLAND PARK'),
(8, 'MARK ANTHONY', 'HERNANDEZ', 'GIRON', 'BLK 4 LOT 5', 'DAVAO CITY', '1990-03-10', 34, 'MARRIED', 'MALE', 'YES', 'mark.anthony@gmail.com', '9694911585', 'EMPLOYEE', 'FILIPINO', 'CAMELLA ISLAND PARK'),
(9, 'MARY CATHERINE', 'JUSTO', 'GIRON', 'BLK 4 LOT 5', 'BAGUIO CITY', '1996-05-09', 28, 'MARRIED', 'FEMALE', 'YES', 'cathy.justo@gmail.com', '9694911585', 'EMPLOYEE', 'FILIPINO', 'CAMELLA ISLAND PARK'),
(10, 'JOHN MARK', 'DELGADO', 'VELOSO', '269', 'ANGELES CITY', '1978-03-18', 46, 'SINGLE', 'MALE', 'YES', 'jmveloso20@gmail.com', '9694911585', 'VENDOR', 'FILIPINO', 'SITIO POOK'),
(11, 'CARLA ALEXANDRA', 'JIMENA', 'PERALTA', '189', 'QUEZON CITY', '2002-04-20', 22, 'SINGLE', 'FEMALE', 'YES', 'carlaalexandraperalta@gmail.com', '9694911585', 'STUDENT', 'FILIPINO', 'SITIO POOK'),
(12, 'ALICIA', 'JIMENA', 'PERALTA', '189', 'QUEZON CITY', '1961-02-09', 63, 'MARRIED', 'FEMALE', 'YES', 'aliciajimena02@gmail.com', '9694911585', 'N/A', 'FILIPINO', 'SITIO POOK'),
(13, 'GABRIEL', 'JIMENA', 'PERALTA', 'BLK 44 LOT 17', 'MANILA', '1999-11-30', 25, 'SINGLE', 'MALE', 'YES', 'gabriel.peralta@gmail.com', '9694911585', 'N/A', 'FILIPINO', 'SITIO ILAYA'),
(14, 'RICARDO', 'GOMEZ', 'SALAZAR', 'BLK 48 LOT. 6', 'BACOLOD CITY', '0169-07-29', 55, 'MARRIED', 'MALE', 'YES', 'salazarricardo@gmail.com', '9694911585', 'EMPLOYEE', 'FILIPINO', 'RIDGEVIEW'),
(15, 'SOFIA ALLIAH', 'MATILLA', 'MENDOZA', '186', 'DASMARIÑAS CITY, CAVITE', '2004-02-12', 20, 'SINGLE', 'FEMALE', 'YES', 'sofiamendoza@gmail.com', '9694911585', 'STUDENT', 'FILIPINO', 'SITIO POOK'),
(16, 'ROSARIO', 'QUIRINO', 'MARTINEZ', '579', 'NAGA CITY, CAMARINES SUR', '1968-05-14', 68, 'MARRIED', 'FEMALE', 'YES', 'r0sarioalvar3z@gmail.com', '9694911585', 'HOUSEWIFE', 'FILIPINO', 'SITIO ILAYA'),
(17, 'PEDRO', 'LEONES', 'SALVADOR', '124', 'BATANGAS CITY', '1967-10-27', 57, 'MARRIED', 'MALE', 'YES', 'salvadorramos25@gmail.com', '9694911585', 'DRIVER', 'FILIPINO', 'SITIO POOK'),
(18, 'ELENA KAYE', 'MARTINEZ', 'BUCAL', '465', 'DASMARIÑAS CITY, CAVITE', '1991-09-08', 33, 'SINGLE', 'FEMALE', 'YES', 'bucal.elena@gmail.com', '9694911585', 'N/A', 'FILIPINO', 'SITIO ILAYA'),
(19, 'ALJOHN', 'VIRAY', 'PARAON', '213', 'NAVOTAS CITY', '1987-06-21', 37, 'SINGLE', 'MALE', 'YES', 'aljohnviray@gmail.com', '9694911585', 'SECURITY GUARD', 'FILIPINO', 'SITIO POOK'),
(20, 'CARL ANDREI', 'CINCO', 'RIVERA', '589', 'SANTA ROSA CITY', '1984-04-30', 40, 'Single', 'Male', 'Active', 'dreipogi3000@gmail.com', '09694911585', 'POLICE', 'FILIPINO', 'SITIO ILAYA'),
(21, 'JESSIELYN', 'MALMIS', 'SANDOY', 'BLK 5 LOT 10', 'ILOILO CITY', '1988-12-26', 26, 'SINGLE', 'FEMALE', 'YES', 'jessmalmissandoy14@gmail.com', '9694911585', 'RECEPTIONIST', 'FILIPINO', 'SITIO ILAYA'),
(22, 'DHERVIN KYLE', 'GEMOTO', 'TORDECILLA', 'BLK 9 LOT 21', 'URDANETA CITY', '1976-09-22', 46, 'MARRIED', 'MALE', 'YES', 'dhervinkyle1976@gmail.com', '9694911585', 'EMPLOYEE', 'FILIPINO', 'SITIO ILAYA'),
(23, 'ALLEN', 'CASTRO', 'PULAO', '289', 'BACOOR CITY', '1975-02-26', 49, 'SINGLE', 'MALE', 'YES', 'allenjayveepula0@gmail.com', '9694911585', 'EMPLOYEE', 'FILIPINO', 'SITIO POOK'),
(24, 'LIAM', 'AGUADO', 'RAMOS', 'BLK 48 LOT. 6', 'SORSOGON CITY', '2007-09-11', 17, 'SINGLE', 'MALE', 'YES', 'liamramos@gmail.com', '9694911585', 'STUDENT', 'FILIPINO', 'RIDGEVIEW'),
(25, 'ELAINE VICTORIA', 'RECTO', 'CONCEPCION', 'BLK. 16 LOT. 30', 'DASMARIÑAS CITY, CAVITE', '2004-04-06', 20, 'SINGLE', 'FEMALE', 'YES', 'vivivictoria04@gmail.com', '9694911585', 'STUDENT', 'FILIPINO', 'RIDGEVIEW'),
(26, 'MARIS', 'LOYOLA', 'SOLOMON', 'BLK. 42 LOT. 17', 'CABANATUAN CITY', '1953-09-14', 71, 'WIDOWED', 'FEMALE', 'YES', 'solomonmaris@gmail.com', '9694911585', 'HOUSEWIFE', 'FILIPINO', 'RIDGEVIEW'),
(27, 'CHRISTINA', 'SANTOS', 'LOPEZ', 'BLK. 29 LOT. 63', 'ORMOC CITY', '1959-01-07', 65, 'MARRIED', 'FEMALE', 'YES', 'jesslopez17@gmail.com', '9694911585', 'HOUSEWIFE', 'FILIPINO', 'RIDGEVIEW'),
(28, 'LUIS', 'HERNANDEZ', 'SANTOS', 'BLK. 2 LOT 13', 'MALABON CITY', '1992-04-19', 32, 'SINGLE', 'MALE', 'YES', 'cl.martinez@gmail.com', '9694911585', 'MANAGER', 'FILIPINO', 'RIDGEVIEW'),
(29, 'JUAN', 'DELA CRUZ', 'SANTOS', 'BLK. 12 LOT. 5', 'CEBU', '1992-10-05', 31, 'SINGLE', 'MALE', 'YES', 'juan.santos@gmail.com', '9694911585', 'ENGINEER', 'FILIPINO', 'MABUHAY HOMES 2000'),
(30, 'MARIA', 'REYES', 'GONZALES', 'BLK. 7 LOT. 20', 'DAVAO', '1985-08-22', 38, 'MARRIED', 'FEMALE', 'YES', 'maria.gonzales@gmail.com', '9694911585', 'MANAGER', 'FILIPINO', 'CAMELLA ISLAND PARK'),
(31, 'JOSE', 'DIZON', 'MERCADO', 'BLK. 15 LOT. 3', 'MANILA', '1995-12-30', 28, 'SINGLE', 'MALE', 'YES', 'jose.mercado@gmail.com', '9694911585', 'IT SPECIALIST', 'FILIPINO', 'MABUHAY HOMES 2000'),
(32, 'ANNA', 'PASCUAL', 'CRUZ', 'BLK. 8 LOT 18', 'CAVITE', '1998-02-15', 26, 'SINGLE', 'FEMALE', 'YES', 'anna.cruz@gmail.com', '9694911585', 'NURSE', 'FILIPINO', 'CAMELLA ISLAND PARK'),
(33, 'MIGUEL', 'SANTOS', 'RIVERA', 'BLK 2. LOT. 7', 'BATANGAS', '1980-05-07', 40, 'MARRIED', 'MALE', 'YES', 'miguel.rivera@gmail.com', '9694911585', 'BUSINESS MAN', 'FILIPINO', 'MABUHAY HOMES 2000'),
(34, 'CARLA', 'DOMINGUEZ', 'LOPEZ', 'BLK. 10 LOT. 12', 'PAMPANGA', '1993-09-14', 30, 'WIDOWED', 'FEMALE', 'YES', 'carla.lopez@gmail.com', '9694911585', 'ACCOUNTANT', 'FILIPINO', 'CAMELLA ISLAND PARK'),
(35, 'ROBERTO', 'VALDEZ', 'AQUINO', 'BLK. 5 LOT. 23', 'ZAMBALES', '1987-12-06', 37, 'SEPARATED', 'MALE', 'YES', 'roberto.aquino@gmail.com', '9694911585', 'POLICE OFFICER', 'FILIPINO', 'MABUHAY HOMES 2000'),
(36, 'KATRINA', 'DEL ROSARIO', 'FAJARDO', 'BLK. 3 LOT. 17', 'QUEZON', '1990-09-11', 33, 'SINGLE', 'FEMALE', 'YES', 'katrina.fajardo@gmail.com', '9694911585', 'ARCHITECT', 'FILIPINO', 'CAMELLA ISLAND PARK'),
(37, 'DANIEL', 'MENDOZA', 'HERRERA', 'BLK. 6 LOT. 9', 'ILOCOS', '1996-03-21', 28, 'MARRIED', 'MALE', 'YES', 'danile.herrera@gmail.com', '9694911585', 'CHEF', 'FILIPINO', 'MABUHAY HOMES 2000'),
(38, 'SOPHIA', 'LIM', 'TORRES', 'BLK. 4 LOT. 14', 'BAGUIO', '1999-10-25', 25, 'SINGLE', 'FEMALE', 'YES', 'sophia.torres@gmail.com', '9694911585', 'ARTIST', 'FILIPINO', 'CAMELLA ISLAND PARK'),
(39, 'VINCENT', 'RAMIREZ', 'SANTOS', 'BLK. 9 LOT. 21', 'LAGUNA', '1991-04-18', 33, 'SINGLE', 'MALE', 'YES', 'vincent.santos@gmail.com', '9694911585', 'GRAPHIC DESIGNER', 'FILIPINO', 'MABUHAY HOMES 2000'),
(40, 'ANGELA', 'FERNANDEZ', 'CRUZ', 'BLK. 11 LOT. 9', 'QUEZON CITY', '1989-07-30', 35, 'MARRIED', 'FEMALE', 'YES', 'angela.cruz@gmail.com', '9694911585', 'DOCTOR', 'FILIPINO', 'CAMELLA ISLAND PARK'),
(41, 'MARCO', 'SORIANO', 'DELA PAZ', 'BLK. 14 LOT. 6', 'DAVAO', '1995-10-01', 29, 'SINGLE', 'MALE', 'YES', 'marco.delapaz@gmail.com', '9694911585', 'CIVIL ENGINEER', 'FILIPINO', 'MABUHAY HOMES 2000'),
(42, 'CAMILLE', 'BAUTISTA', 'REYES', 'BLK. 18 LOT. 2', 'ILOILO', '1994-06-22', 30, 'SINGLE', 'FEMALE', 'YES', 'camille.reyes@gmail.com', '9694911585', 'TEACHER', 'FILIPINO', 'CAMELLA ISLAND PARK'),
(43, 'RICHARD', 'CRUZ', 'VELASCO', 'BLK. 13 LOT. 10', 'CEBU', '1982-02-14', 42, 'MARRIED', 'MALE', 'YES', 'richard.velasco@gmail.com', '9694911585', 'LAWYER', 'FILIPINO', 'MABUHAY HOMES 2000'),
(44, 'JOANNA', 'VILLANUEVA', 'OCAMPO', 'BLK. 17 LOT. 11', 'PAMPANGA', '1996-05-05', 28, 'SINGLE', 'FEMALE', 'YES', 'joanna.ocampo@gmail.com', '9694911585', 'JOURNALIST', 'FILIPINO', 'CAMELLA ISLAND PARK'),
(45, 'PATRICK', 'LOPEZ', 'MARQUEZ', 'BLK. 20 LOT. 4', 'MANILA', '1993-08-17', 31, 'SINGLE', 'MALE', 'YES', 'patrick.marquez@gmail.com', '9694911585', 'BANKER', 'FILIPINO', 'MABUHAY HOMES 2000'),
(46, 'MELISSA', 'NAVARRO', 'SANTOS', 'BLK. 15 LOT. 8', 'CAVITE', '1990-08-11', 34, 'MARRIED', 'FEMALE', 'YES', 'melissa.santos@gmail.com', '9694911585', 'NURSE', 'FILIPINO', 'CAMELLA ISLAND PARK'),
(47, 'ANTHONY', 'DELGADO', 'GUTIERREZ', 'BLK. 7 LOT. 15', 'ZAMBOANGA', '1988-12-09', 36, 'WIDOWED', 'MALE', 'YES', 'anthony.gutierrez@gmail.com', '9694911585', 'ENTREPRENEUR', 'FILIPINO', 'MABUHAY HOMES 2000'),
(48, 'CHRISTINE', 'CASTRO', 'DE VERA', 'BLK. 10 LOT. 16', 'BAGUIO', '1997-12-20', 27, 'SINGLE', 'FEMALE', 'YES', 'christine.devera@gmail.com', '9694911585', 'SOCIAL WORKER', 'FILIPINO', 'CAMELLA ISLAND PARK'),
(49, 'KENNETH', 'AGULAR', 'RAMOS', 'BLK. 8 LOT. 3', 'BATANGAS', '1985-03-03', 39, 'MARRIED', 'MALE', 'YES', 'kenneth.ramos@gmail.com', '9694911585', 'SOFTWARE ENGINEER', 'FILIPINO', 'MABUHAY HOMES 2000'),
(50, 'LOUISE', 'MENDOZA', 'VILLANUEVA', 'BLK. 5 LOT. 22', 'QUEZON', '1992-02-10', 32, 'SINGLE', 'FEMALE', 'YES', 'louise.villanueva@gmail.com', '9694911585', 'PHARMACIST', 'FILIPINO', 'CAMELLA ISLAND PARK'),
(51, 'RAYMOND', 'TAN', 'GO', 'BLK. 6 LOT. 14', 'ILOILO', '1990-05-29', 34, 'MARRIED', 'MALE', 'YES', 'raymond.go@gmail.con', '9694911585', 'BUSINESS OWNER', 'FILIPINO', 'MABUHAY HOMES 2000'),
(52, 'FELICIA', 'UY', 'SY', 'BLK. 9 LOT. 19', 'CEBU', '1986-11-07', 38, 'SEPARATED', 'FEMALE', 'YES', 'felicia.sy@gmail.com', '9694911585', 'HR MANAGER', 'FILIPINO', 'CAMELLA ISLAND PARK'),
(53, 'BENEDICT', 'CHUA', 'LIM', 'BLK. 12 LOT. 1', 'DAVAO', '1999-01-28', 25, 'SINGLE', 'MALE', 'YES', 'bryan.lim@gmail.com', '9694911585', 'MECHANICAL ENGINEER', 'FILIPINO', 'MABUHAY HOMES 2000'),
(54, 'ROSARIO', 'MALABANAN', 'SANTIAGO', 'BLK. 19 LOT. 52', 'BULACAN', '1983-04-30', 42, 'MARRIED', 'FEMALE', 'YES', 'rosasantiago30@gmail.com', '9694911585', 'HOUSEWIFE', 'FILIPINO', 'CAMELLA ISLAND PARK');

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
('2025-03-22', '2026-03-22', 23, 'Mason', 'Milleraa', 'Evans', 'Barangay Clearance', 109, 1105),
('2025-03-22', '2026-03-22', 23, 'Mason', 'Milleraa', 'Evans', 'Barangay Clearance', 109, 1106),
('2025-03-22', '2026-03-22', 23, 'Mason', 'Milleraa', 'Evans', 'Barangay Clearance', 109, 1107),
('2025-03-22', '2026-03-22', 23, 'Mason', 'Milleraa', 'Evans', 'Barangay Clearance', 109, 1108),
('2025-03-22', '2026-03-22', 23, 'Mason', 'Milleraa', 'Evans', 'Barangay Clearance', 109, 1109),
('2025-03-22', '2026-03-22', 22, 'BENEDICT', 'CHUA', 'LIM', 'Barangay Cedula', 108, 1110),
('2025-03-26', '2026-03-26', 23, 'BENEDICT', 'CHUA', 'LIM', 'Barangay ID', 107, 1111),
('2025-03-26', '2026-03-26', 23, 'Ethan', 'Luke', 'Collins', 'Barangay Clearance', 111, 1112),
('2025-03-27', '2026-03-27', 120, 'Ethan', 'Luke', 'Collins', 'Barangay Certificate', 113, 1113),
('2025-03-28', '2026-03-28', 33, 'Henry', 'Daniel', 'Baker', 'Business Permit', 110, 1114),
('2025-03-29', '2026-03-29', 12, 'Henry', 'Daniel', 'Baker', 'Business Permit', 110, 1115),
('2025-03-29', '2026-03-29', 23, 'Ethan', 'Luke', 'Collins', 'Barangay Indigency', 113, 1116),
('2025-03-29', '2026-03-29', 23, 'Ethan', 'Luke', 'Collins', 'Barangay Indigency', 113, 1117),
('2025-03-29', '2026-03-29', 12, 'Ethan', 'Luke', 'Collins', 'Barangay Clearance', 112, 1118),
('2025-03-29', '2026-03-29', 12, 'Ethan', 'Luke', 'Collins', 'Barangay Certificate', 112, 1119),
('2025-03-29', '2026-03-29', 23, 'Ethan', 'Luke', 'Collins', 'Barangay Certificate', 112, 1120);

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
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

INSERT INTO `user_account` (`firstname`, `middlename`, `lastname`, `username`, `password`, `gender`, `age`, `birthday`, `date_registered`, `house_no`, `sitio_pook`, `contact_no`, `profile`, `user_id`) VALUES
('BENEDICT', 'CHUA', 'LIM', 'user', 'User0411', 'Male', 23, '2025-03-16', '2025-03-16', 'BLK. 5 LOT. 22', 'kjhjkjk', '09232323232', 'images.png', 35),
('John', 'Michael', 'Doe', 'johndoe', 'password123', 'Male', 25, '1999-03-10', '2025-03-01', '101', 'Barangay 1', '09171234567', 'user1_profile.jpg', 36),
('Jane', 'Marie', 'Smith', 'janesmith', 'password456', 'Female', 28, '1997-06-15', '2025-03-02', '102', 'Barangay 2', '09182345678', 'user2_profile.jpg', 37),
('Mark', 'David', 'Johnson', 'markjohnson', 'password789', 'Male', 30, '1994-05-20', '2025-03-03', '103', 'Barangay 3', '09213456789', 'user3_profile.jpg', 38),
('Emily', 'Ann', 'Brown', 'emilybrown', 'password321', 'Female', 22, '2002-08-05', '2025-03-04', '104', 'Barangay 4', '09224567890', 'user4_profile.jpg', 39),
('Chris', 'Lee', 'Williams', 'chriswilliams', 'password654', 'Male', 35, '1989-11-30', '2025-03-05', '105', 'Barangay 5', '09335678901', 'user5_profile.jpg', 40),
('Sophia', 'Claire', 'Miller', 'sophiamiller', 'password987', 'Female', 27, '1997-12-10', '2025-03-06', '106', 'Barangay 6', '09146789012', 'user6_profile.jpg', 41),
('David', 'John', 'Wilson', 'davidwilson', 'password112', 'Male', 40, '1984-01-22', '2025-03-07', '107', 'Barangay 7', '09346789023', 'user7_profile.jpg', 42),
('Olivia', 'Grace', 'Taylor', 'oliviataylor', 'password223', 'Female', 24, '2000-04-14', '2025-03-08', '108', 'Barangay 8', '09157890134', 'user8_profile.jpg', 43),
('Michael', 'Eli', 'Harris', 'michaelharris', 'password334', 'Male', 33, '1991-07-25', '2025-03-09', '109', 'Barangay 9', '09268901245', 'user9_profile.jpg', 44),
('Charlotte', 'Marie', 'Anderson', 'charlotteanderson', 'password445', 'Female', 29, '1995-02-18', '2025-03-10', '110', 'Barangay 10', '09379012356', 'user10_profile.jpg', 45),
('Lucas', 'Ryan', 'Martin', 'lucasmartin', 'password556', 'Male', 26, '1998-10-30', '2025-03-11', '111', 'Barangay 11', '09180123467', 'user11_profile.jpg', 46),
('Amelia', 'Grace', 'Thompson', 'ameliathompson', 'password667', 'Female', 21, '2003-12-01', '2025-03-12', '112', 'Barangay 12', '09191234578', 'user12_profile.jpg', 47),
('Benjamin', 'Joshua', 'Moore', 'benjaminmoore', 'password778', 'Male', 32, '1992-09-12', '2025-03-13', '113', 'Barangay 13', '09202345689', 'user13_profile.jpg', 48),
('Harper', 'Leah', 'Jackson', 'harperjackson', 'password889', 'Female', 31, '1993-03-22', '2025-03-14', '114', 'Barangay 14', '09313456790', 'user14_profile.jpg', 49),
('Ethan', 'Samuel', 'White', 'ethansamuel', 'password990', 'Male', 34, '1990-05-16', '2025-03-15', '115', 'Barangay 15', '09124567801', 'user15_profile.jpg', 50),
('Isabella', 'Vera', 'Young', 'isabellayoung', 'password1234', 'Female', 25, '1999-11-10', '2025-03-16', '116', 'Barangay 16', '09235678912', 'user16_profile.jpg', 51),
('Alexander', 'Victor', 'King', 'alexanderking', 'password2345', 'Male', 36, '1988-06-25', '2025-03-17', '117', 'Barangay 17', '09346789023', 'user17_profile.jpg', 52),
('Chloe', 'Olivia', 'Scott', 'chloescott', 'password3456', 'Female', 23, '2001-02-10', '2025-03-18', '118', 'Barangay 18', '09157890134', 'user18_profile.jpg', 53),
('Jack', 'Daniel', 'Green', 'jackgreen', 'password4567', 'Male', 29, '1995-01-15', '2025-03-19', '119', 'Barangay 19', '09268901245', 'user19_profile.jpg', 54),
('Ella', 'Sophia', 'Adams', 'ellasophia', 'password5678', 'Female', 27, '1997-07-22', '2025-03-20', '120', 'Barangay 20', '09379012356', 'user20_profile.jpg', 55),
('Henry', 'Robert', 'Baker', 'henrybaker', 'password6789', 'Male', 39, '1985-12-04', '2025-03-21', '121', 'Barangay 21', '09180123467', 'user21_profile.jpg', 56),
('Avery', 'Joseph', 'Garcia', 'averygarcia', 'password7890', 'Female', 33, '1991-03-30', '2025-03-22', '122', 'Barangay 22', '09191234578', 'user22_profile.jpg', 57),
('James', 'Edward', 'Martinez', 'jamesmartinez', 'password8901', 'Male', 41, '1983-09-18', '2025-03-23', '123', 'Barangay 23', '09202345689', 'user23_profile.jpg', 58),
('Zoe', 'Elizabeth', 'Morris', 'zoemorris', 'password9012', 'Female', 24, '2000-08-08', '2025-03-24', '124', 'Barangay 24', '09313456790', 'user24_profile.jpg', 59),
('Oliver', 'Matthew', 'Lee', 'oliverlee', 'password0123', 'Male', 31, '1993-07-21', '2025-03-25', '125', 'Barangay 25', '09124567801', 'user25_profile.jpg', 60),
('Lily', 'Anna', 'Parker', 'lilyparker', 'password1235', 'Female', 28, '1996-04-11', '2025-03-26', '126', 'Barangay 26', '09235678912', 'user26_profile.jpg', 61),
('William', 'Jacob', 'Evans', 'williamevans', 'password2346', 'Male', 27, '1997-05-30', '2025-03-27', '127', 'Barangay 27', '09346789023', 'user27_profile.jpg', 62),
('Madeline', 'Faye', 'Nelson', 'madeline', 'password3457', 'Female', 30, '1994-06-20', '2025-03-28', '128', 'Barangay 28', '09157890134', 'user28_profile.jpg', 63),
('Henry', 'Cole', 'Carter', 'henrycarter', 'password4568', 'Male', 29, '1995-04-12', '2025-03-29', '129', 'Barangay 29', '09268901245', 'user29_profile.jpg', 64),
('Ella', 'Jane', 'Bennett', 'ellabennett', 'password5679', 'Female', 26, '1998-07-08', '2025-03-30', '130', 'Barangay 30', '09379012356', 'user30_profile.jpg', 65),
('Theo', 'Mark', 'Perez', 'theoperez', 'password6780', 'Male', 31, '1993-11-05', '2025-03-31', '131', 'Barangay 31', '09180123467', 'user31_profile.jpg', 66),
('Ruby', 'Grace', 'Davis', 'rubydavis', 'password7891', 'Female', 34, '1990-02-20', '2025-04-01', '132', 'Barangay 32', '09191234578', 'user32_profile.jpg', 67),
('Mason', 'Joshua', 'Roberts', 'masonroberts', 'password8902', 'Male', 38, '1986-01-17', '2025-04-02', '133', 'Barangay 33', '09202345689', 'user33_profile.jpg', 68),
('Amos', 'Luke', 'Gonzalez', 'amosgonzalez', 'password9013', 'Male', 29, '1995-09-14', '2025-04-03', '134', 'Barangay 34', '09313456790', 'user34_profile.jpg', 69),
('Clara', 'Megan', 'Wright', 'clarawright', 'password0124', 'Female', 27, '1997-04-17', '2025-04-04', '135', 'Barangay 35', '09124567801', 'user35_profile.jpg', 70),
('Isaac', 'Theo', 'Hernandez', 'isaachernandez', 'password1236', 'Male', 31, '1993-10-22', '2025-04-05', '136', 'Barangay 36', '09235678912', 'user36_profile.jpg', 71),
('Olivia', 'Chloe', 'Martinez', 'oliviamartinez', 'password2347', 'Female', 26, '1998-08-25', '2025-04-06', '137', 'Barangay 37', '09346789023', 'user37_profile.jpg', 72),
('Jackson', 'Nolan', 'Garcia', 'jacksongarcia', 'password3458', 'Male', 32, '1992-03-30', '2025-04-07', '138', 'Barangay 38', '09157890134', 'user38_profile.jpg', 73),
('Ava', 'Eliza', 'Baker', 'avabaker', 'password4569', 'Female', 24, '2000-12-12', '2025-04-08', '139', 'Barangay 39', '09268901245', 'user39_profile.jpg', 74),
('Zane', 'Mason', 'Jones', 'zanemason', 'password5670', 'Male', 33, '1991-04-20', '2025-04-09', '140', 'Barangay 40', '09379012356', 'user40_profile.jpg', 75),
('Lily', 'Maddison', 'Roberts', 'lilyroberts', 'password6781', 'Female', 29, '1995-07-30', '2025-04-10', '141', 'Barangay 41', '09180123467', 'user41_profile.jpg', 76),
('Jack', 'Wade', 'Miller', 'jackwade', 'password7892', 'Male', 32, '1992-01-19', '2025-04-11', '142', 'Barangay 42', '09191234578', 'user42_profile.jpg', 77),
('Zoey', 'Clara', 'Scott', 'zoeyscott', 'password8903', 'Female', 28, '1996-09-05', '2025-04-12', '143', 'Barangay 43', '09202345689', 'user43_profile.jpg', 78),
('Leo', 'Owen', 'Bennett', 'leobennett', 'password9014', 'Male', 36, '1988-05-12', '2025-04-13', '144', 'Barangay 44', '09313456790', 'user44_profile.jpg', 79),
('Henry', 'Daniel', 'Baker', 'henrybaker', 'password0125', 'Male', 39, '1985-02-14', '2025-04-14', '145', 'Barangay 45', '09124567801', '67e353c369e18.png', 80),
('Ethan', 'Luke', 'Collins', 'ethancollins', 'password1237', 'Male', 27, '1997-11-06', '2025-04-15', '146', 'Barangay 46', '09235678912', 'user46_profile.jpg', 81),
('Sophia', 'Nicole', 'Evans', 'sophiaevans', 'password2348', 'Female', 25, '1999-10-18', '2025-04-16', '147', 'Barangay 47', '09346789023', 'user47_profile.jpg', 82),
('Lucas', 'Nathan', 'Nelson', 'lucasnelson', 'password3459', 'Male', 31, '1993-02-12', '2025-04-17', '148', 'Barangay 48', '09157890134', 'user48_profile.jpg', 83),
('Lily', 'Rose', 'Harris', 'lilyharris', 'password4560', 'Female', 29, '1995-06-03', '2025-04-18', '149', 'Barangay 49', '09268901245', 'user49_profile.jpg', 84),
('Mason', 'Milleraa', 'Evans', 'masonmillerevans', 'Password5671', 'Male', 33, '1991-09-21', '2025-04-19', '150', 'Barangay 50', '09379012356', '67de7fb92949e.png', 85),
('BENEDICT', 'CHUA', 'LIM', 'user', 'User0411', '1970-01-01', 23, '2025-03-16', '2025-03-16', 'BLK. 5 LOT. 22', 'kjhjkjk', '09232323232', 'images.png', 86),
('John', 'Michael', 'Doe', 'johndoe', 'password123', '1970-01-01', 25, '1999-03-10', '2025-03-01', '101', 'Barangay 1', '09171234567', 'user1_profile.jpg', 87),
('Jane', 'Marie', 'Smith', 'janesmith', 'password456', '1970-01-01', 28, '1997-06-15', '2025-03-02', '102', 'Barangay 2', '09182345678', 'user2_profile.jpg', 88),
('Mark', 'David', 'Johnson', 'markjohnson', 'password789', '1970-01-01', 30, '1994-05-20', '2025-03-03', '103', 'Barangay 3', '09213456789', 'user3_profile.jpg', 89),
('Emily', 'Ann', 'Brown', 'emilybrown', 'password321', '1970-01-01', 22, '2002-08-05', '2025-03-04', '104', 'Barangay 4', '09224567890', 'user4_profile.jpg', 90),
('Chris', 'Lee', 'Williams', 'chriswilliams', 'password654', '1970-01-01', 35, '1989-11-30', '2025-03-05', '105', 'Barangay 5', '09335678901', 'user5_profile.jpg', 91),
('Sophia', 'Claire', 'Miller', 'sophiamiller', 'password987', '1970-01-01', 27, '1997-12-10', '2025-03-06', '106', 'Barangay 6', '09146789012', 'user6_profile.jpg', 92),
('David', 'John', 'Wilson', 'davidwilson', 'password112', '1970-01-01', 40, '1984-01-22', '2025-03-07', '107', 'Barangay 7', '09346789023', 'user7_profile.jpg', 93),
('Olivia', 'Grace', 'Taylor', 'oliviataylor', 'password223', '1970-01-01', 24, '2000-04-14', '2025-03-08', '108', 'Barangay 8', '09157890134', 'user8_profile.jpg', 94),
('Michael', 'Eli', 'Harris', 'michaelharris', 'password334', '1970-01-01', 33, '1991-07-25', '2025-03-09', '109', 'Barangay 9', '09268901245', 'user9_profile.jpg', 95),
('Charlotte', 'Marie', 'Anderson', 'charlotteanderson', 'password445', '1970-01-01', 29, '1995-02-18', '2025-03-10', '110', 'Barangay 10', '09379012356', 'user10_profile.jpg', 96),
('Lucas', 'Ryan', 'Martin', 'lucasmartin', 'password556', '1970-01-01', 26, '1998-10-30', '2025-03-11', '111', 'Barangay 11', '09180123467', 'user11_profile.jpg', 97),
('Amelia', 'Grace', 'Thompson', 'ameliathompson', 'password667', '1970-01-01', 21, '2003-12-01', '2025-03-12', '112', 'Barangay 12', '09191234578', 'user12_profile.jpg', 98),
('Benjamin', 'Joshua', 'Moore', 'benjaminmoore', 'password778', '1970-01-01', 32, '1992-09-12', '2025-03-13', '113', 'Barangay 13', '09202345689', 'user13_profile.jpg', 99),
('Harper', 'Leah', 'Jackson', 'harperjackson', 'password889', '1970-01-01', 31, '1993-03-22', '2025-03-14', '114', 'Barangay 14', '09313456790', 'user14_profile.jpg', 100),
('Ethan', 'Samuel', 'White', 'ethansamuel', 'password990', '1970-01-01', 34, '1990-05-16', '2025-03-15', '115', 'Barangay 15', '09124567801', 'user15_profile.jpg', 101),
('Isabella', 'Vera', 'Young', 'isabellayoung', 'password1234', '1970-01-01', 25, '1999-11-10', '2025-03-16', '116', 'Barangay 16', '09235678912', 'user16_profile.jpg', 102),
('Alexander', 'Victor', 'King', 'alexanderking', 'password2345', '1970-01-01', 36, '1988-06-25', '2025-03-17', '117', 'Barangay 17', '09346789023', 'user17_profile.jpg', 103),
('Chloe', 'Olivia', 'Scott', 'chloescott', 'password3456', '1970-01-01', 23, '2001-02-10', '2025-03-18', '118', 'Barangay 18', '09157890134', 'user18_profile.jpg', 104),
('Jack', 'Daniel', 'Green', 'jackgreen', 'password4567', '1970-01-01', 29, '1995-01-15', '2025-03-19', '119', 'Barangay 19', '09268901245', 'user19_profile.jpg', 105),
('Ella', 'Sophia', 'Adams', 'ellasophia', 'password5678', '1970-01-01', 27, '1997-07-22', '2025-03-20', '120', 'Barangay 20', '09379012356', 'user20_profile.jpg', 106),
('Henry', 'Robert', 'Baker', 'henrybaker', 'password6789', '1970-01-01', 39, '1985-12-04', '2025-03-21', '121', 'Barangay 21', '09180123467', 'user21_profile.jpg', 107),
('Avery', 'Joseph', 'Garcia', 'averygarcia', 'password7890', '1970-01-01', 33, '1991-03-30', '2025-03-22', '122', 'Barangay 22', '09191234578', 'user22_profile.jpg', 108),
('James', 'Edward', 'Martinez', 'jamesmartinez', 'password8901', '1970-01-01', 41, '1983-09-18', '2025-03-23', '123', 'Barangay 23', '09202345689', 'user23_profile.jpg', 109),
('Zoe', 'Elizabeth', 'Morris', 'zoemorris', 'password9012', '1970-01-01', 24, '2000-08-08', '2025-03-24', '124', 'Barangay 24', '09313456790', 'user24_profile.jpg', 110),
('Oliver', 'Matthew', 'Lee', 'oliverlee', 'password0123', '1970-01-01', 31, '1993-07-21', '2025-03-25', '125', 'Barangay 25', '09124567801', 'user25_profile.jpg', 111),
('Lily', 'Anna', 'Parker', 'lilyparker', 'password1235', '1970-01-01', 28, '1996-04-11', '2025-03-26', '126', 'Barangay 26', '09235678912', 'user26_profile.jpg', 112),
('William', 'Jacob', 'Evans', 'williamevans', 'password2346', '1970-01-01', 27, '1997-05-30', '2025-03-27', '127', 'Barangay 27', '09346789023', 'user27_profile.jpg', 113),
('Madeline', 'Faye', 'Nelson', 'madeline', 'password3457', '1970-01-01', 30, '1994-06-20', '2025-03-28', '128', 'Barangay 28', '09157890134', 'user28_profile.jpg', 114),
('Henry', 'Cole', 'Carter', 'henrycarter', 'password4568', '1970-01-01', 29, '1995-04-12', '2025-03-29', '129', 'Barangay 29', '09268901245', 'user29_profile.jpg', 115),
('Ella', 'Jane', 'Bennett', 'ellabennett', 'password5679', '1970-01-01', 26, '1998-07-08', '2025-03-30', '130', 'Barangay 30', '09379012356', 'user30_profile.jpg', 116),
('Theo', 'Mark', 'Perez', 'theoperez', 'password6780', '1970-01-01', 31, '1993-11-05', '2025-03-31', '131', 'Barangay 31', '09180123467', 'user31_profile.jpg', 117),
('Ruby', 'Grace', 'Davis', 'rubydavis', 'password7891', '1970-01-01', 34, '1990-02-20', '2025-04-01', '132', 'Barangay 32', '09191234578', 'user32_profile.jpg', 118),
('Mason', 'Joshua', 'Roberts', 'masonroberts', 'password8902', '1970-01-01', 38, '1986-01-17', '2025-04-02', '133', 'Barangay 33', '09202345689', 'user33_profile.jpg', 119),
('Amos', 'Luke', 'Gonzalez', 'amosgonzalez', 'password9013', '1970-01-01', 29, '1995-09-14', '2025-04-03', '134', 'Barangay 34', '09313456790', 'user34_profile.jpg', 120),
('Clara', 'Megan', 'Wright', 'clarawright', 'password0124', '1970-01-01', 27, '1997-04-17', '2025-04-04', '135', 'Barangay 35', '09124567801', 'user35_profile.jpg', 121),
('Isaac', 'Theo', 'Hernandez', 'isaachernandez', 'password1236', '1970-01-01', 31, '1993-10-22', '2025-04-05', '136', 'Barangay 36', '09235678912', 'user36_profile.jpg', 122),
('Olivia', 'Chloe', 'Martinez', 'oliviamartinez', 'password2347', '1970-01-01', 26, '1998-08-25', '2025-04-06', '137', 'Barangay 37', '09346789023', 'user37_profile.jpg', 123),
('Jackson', 'Nolan', 'Garcia', 'jacksongarcia', 'password3458', '1970-01-01', 32, '1992-03-30', '2025-04-07', '138', 'Barangay 38', '09157890134', 'user38_profile.jpg', 124),
('Ava', 'Eliza', 'Baker', 'avabaker', 'password4569', '1970-01-01', 24, '2000-12-12', '2025-04-08', '139', 'Barangay 39', '09268901245', 'user39_profile.jpg', 125),
('Zane', 'Mason', 'Jones', 'zanemason', 'password5670', '1970-01-01', 33, '1991-04-20', '2025-04-09', '140', 'Barangay 40', '09379012356', 'user40_profile.jpg', 126),
('Lily', 'Maddison', 'Roberts', 'lilyroberts', 'password6781', '1970-01-01', 29, '1995-07-30', '2025-04-10', '141', 'Barangay 41', '09180123467', 'user41_profile.jpg', 127),
('Jack', 'Wade', 'Miller', 'jackwade', 'password7892', '1970-01-01', 32, '1992-01-19', '2025-04-11', '142', 'Barangay 42', '09191234578', 'user42_profile.jpg', 128),
('Zoey', 'Clara', 'Scott', 'zoeyscott', 'password8903', '1970-01-01', 28, '1996-09-05', '2025-04-12', '143', 'Barangay 43', '09202345689', 'user43_profile.jpg', 129),
('Leo', 'Owen', 'Bennett', 'leobennett', 'password9014', '1970-01-01', 36, '1988-05-12', '2025-04-13', '144', 'Barangay 44', '09313456790', 'user44_profile.jpg', 130),
('Henry', 'Daniel', 'Baker', 'henrybaker', 'password0125', '1970-01-01', 39, '1985-02-14', '2025-04-14', '145', 'Barangay 45', '09124567801', 'user45_profile.jpg', 131),
('Ethan', 'Luke', 'Collins', 'ethancollins', 'password1237', '1970-01-01', 27, '1997-11-06', '2025-04-15', '146', 'Barangay 46', '09235678912', 'user46_profile.jpg', 132),
('Sophia', 'Nicole', 'Evans', 'sophiaevans', 'password2348', '1970-01-01', 25, '1999-10-18', '2025-04-16', '147', 'Barangay 47', '09346789023', 'user47_profile.jpg', 133),
('Lucas', 'Nathan', 'Nelson', 'lucasnelson', 'password3459', '1970-01-01', 31, '1993-02-12', '2025-04-17', '148', 'Barangay 48', '09157890134', 'user48_profile.jpg', 134),
('Lily', 'Rose', 'Harris', 'lilyharris', 'password4560', '1970-01-01', 29, '1995-06-03', '2025-04-18', '149', 'Barangay 49', '09268901245', 'user49_profile.jpg', 135),
('Mason', 'Milleraa', 'Evans', 'masonmillerevans', 'Password5671', '1970-01-01', 33, '1991-09-21', '2025-04-19', '150', 'Barangay 50', '09379012356', '67de7fb92949e.png', 136),
('BENEDICT', 'CHUA', 'LIM', 'Jenmar', '75626a8eb37e2207ea186fd7b3e8f6d2', 'Male', 22, '0000-00-00', '2025-03-28', '', '', '', 'images.png', 137),
('BENEDICT', 'CHUA', 'LIM', 'RAYMOND', 'fe673cf26ae096e4a483c16ede8ade04', 'Male', 22, '2025-03-29', '2025-03-28', 'BLK. 5 LOT. 22', 'asdasdasd', '09694911585', 'images.png', 138);

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
  MODIFY `user_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `barangay_blotter`
--
ALTER TABLE `barangay_blotter`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=826;

--
-- AUTO_INCREMENT for table `barangay_incident`
--
ALTER TABLE `barangay_incident`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `barangay_information`
--
ALTER TABLE `barangay_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `barangay_official`
--
ALTER TABLE `barangay_official`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `barangay_request`
--
ALTER TABLE `barangay_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `barangay_resident`
--
ALTER TABLE `barangay_resident`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `barangay_revenue`
--
ALTER TABLE `barangay_revenue`
  MODIFY `OR_no` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1121;

--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
