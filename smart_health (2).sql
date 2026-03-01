-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2026 at 07:59 AM
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
-- Database: `smart_health`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`) VALUES
(1, 'Sarswati@gmail.com', 'Sarswati123');

-- --------------------------------------------------------

--
-- Table structure for table `diseases`
--

CREATE TABLE `diseases` (
  `disease_id` int(11) NOT NULL,
  `disease_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `specialization` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diseases`
--

INSERT INTO `diseases` (`disease_id`, `disease_name`, `description`, `specialization`) VALUES
(1, 'Common Cold', 'Viral infection affecting nose and throat', 'General Physician'),
(2, 'Flu', 'Influenza viral infection', 'General Physician'),
(3, 'COVID-19', 'Respiratory illness caused by coronavirus', 'Pulmonologist'),
(4, 'Dengue', 'Mosquito-borne viral disease', 'General Physician'),
(5, 'Malaria', 'Mosquito-borne parasitic disease', 'General Physician'),
(6, 'Typhoid', 'Bacterial infection caused by Salmonella', 'General Physician'),
(7, 'Pneumonia', 'Infection that inflames air sacs in lungs', 'Pulmonologist'),
(8, 'Asthma', 'Respiratory condition causing breathing difficulty', 'Pulmonologist'),
(9, 'Bronchitis', 'Inflammation of bronchial tubes', 'Pulmonologist'),
(10, 'Migraine', 'Severe headache disorder', 'Neurologist'),
(11, 'Food Poisoning', 'Illness caused by contaminated food', 'General Physician'),
(12, 'Gastritis', 'Inflammation of stomach lining', 'Gastroenterologist'),
(13, 'Acidity', 'Excess acid production in stomach', 'Gastroenterologist'),
(14, 'Appendicitis', 'Inflammation of appendix', 'Surgeon'),
(15, 'Diabetes', 'Chronic condition affecting blood sugar', 'Endocrinologist'),
(16, 'Hypertension', 'High blood pressure', 'Cardiologist'),
(17, 'Heart Disease', 'Disease affecting heart function', 'Cardiologist'),
(18, 'Anemia', 'Low red blood cell count', 'General Physician'),
(19, 'Arthritis', 'Joint inflammation disease', 'Orthopedic'),
(20, 'Back Pain Disorder', 'Chronic back pain condition', 'Orthopedic'),
(21, 'Sinusitis', 'Inflammation of sinuses', 'ENT Specialist'),
(22, 'Allergy', 'Immune system reaction', 'ENT Specialist'),
(23, 'Tonsillitis', 'Inflammation of tonsils', 'ENT Specialist'),
(24, 'Ear Infection', 'Infection in ear', 'ENT Specialist'),
(25, 'UTI', 'Urinary tract infection', 'Urologist'),
(26, 'Kidney Stone', 'Hard deposits in kidney', 'Urologist'),
(27, 'Jaundice', 'Yellowing of skin due to liver issue', 'General Physician'),
(28, 'Depression', 'Mood disorder', 'Psychiatrist'),
(29, 'Anxiety Disorder', 'Mental health disorder', 'Psychiatrist'),
(30, 'Insomnia', 'Sleep disorder', 'Psychiatrist'),
(31, 'Heat Stroke', 'Overheating of body', 'General Physician'),
(32, 'Dehydration', 'Loss of body fluids', 'General Physician');

-- --------------------------------------------------------

--
-- Table structure for table `disease_symptom`
--

CREATE TABLE `disease_symptom` (
  `id` int(11) NOT NULL,
  `disease_id` int(11) NOT NULL,
  `symptom_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `disease_symptom`
--

INSERT INTO `disease_symptom` (`id`, `disease_id`, `symptom_id`) VALUES
(1, 1, 22),
(2, 1, 23),
(3, 1, 10),
(4, 1, 11),
(5, 1, 39),
(6, 1, 40),
(7, 1, 47),
(8, 1, 50),
(9, 2, 10),
(10, 2, 11),
(11, 2, 40),
(12, 2, 47),
(13, 2, 29),
(14, 2, 50),
(15, 3, 22),
(16, 3, 23),
(17, 3, 9),
(18, 3, 20),
(19, 3, 51),
(20, 4, 5),
(21, 4, 3),
(22, 4, 12),
(23, 4, 23),
(24, 4, 2),
(25, 4, 42),
(26, 5, 7),
(27, 5, 6),
(28, 5, 38),
(29, 5, 46),
(30, 5, 44),
(31, 6, 25),
(32, 6, 23),
(33, 6, 42),
(34, 6, 20),
(35, 6, 53),
(36, 7, 30),
(37, 7, 26),
(38, 7, 41),
(39, 7, 18),
(40, 7, 43),
(41, 7, 33),
(42, 8, 31),
(43, 8, 28),
(44, 8, 37),
(45, 8, 48),
(46, 8, 52),
(47, 9, 22),
(48, 9, 11),
(49, 9, 46),
(50, 9, 9),
(51, 9, 7),
(52, 10, 55),
(53, 10, 12),
(54, 10, 20),
(55, 10, 3),
(56, 10, 42);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doctor_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `specialization` varchar(100) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `disease_id` int(11) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doctor_id`, `name`, `specialization`, `mobile`, `disease_id`, `contact`) VALUES
(1, 'Dr. Sharma', 'General Physician', '9876500001', 1, '9876500001'),
(2, 'Dr. Rakesh Verma', 'General Physician', '9876500002', 1, '9876500002'),
(3, 'Dr. Neha Kapoor', 'General Physician', '9876500003', 1, '9876500003'),
(4, 'Dr. Mehta', 'Endocrinologist', '9876500004', 2, '9876500004'),
(5, 'Dr. Anjali Singh', 'Diabetologist', '9876500005', 2, '9876500005'),
(6, 'Dr. Raj Malhotra', 'Endocrinologist', '9876500006', 2, '9876500006'),
(7, 'Dr. Arvind Kumar', 'Cardiologist', '9876500007', 3, '9876500007'),
(8, 'Dr. Pooja Sharma', 'Cardiologist', '9876500008', 3, '9876500008'),
(9, 'Dr. Sandeep Roy', 'Cardiologist', '9876500009', 3, '9876500009'),
(10, 'Dr. Vivek Anand', 'Cardiologist', '9876500010', 3, '9876500010'),
(11, 'Dr. Singh', 'Neurologist', '9876500011', 4, '9876500011'),
(12, 'Dr. Kiran Rao', 'Neurologist', '9876500012', 4, '9876500012'),
(13, 'Dr. Manish Tiwari', 'Neurologist', '9876500013', 4, '9876500013'),
(14, 'Dr. Aditi Jain', 'Pulmonologist', '9876500014', 5, '9876500014'),
(15, 'Dr. Rohit Yadav', 'Pulmonologist', '9876500015', 5, '9876500015'),
(16, 'Dr. Sunita Das', 'Pulmonologist', '9876500016', 5, '9876500016'),
(17, 'Dr. Mahesh Gupta', 'Orthopedic', '9876500017', 6, '9876500017'),
(18, 'Dr. Alok Mishra', 'Orthopedic', '9876500018', 6, '9876500018'),
(19, 'Dr. Priya Nair', 'Orthopedic', '9876500019', 6, '9876500019'),
(20, 'Dr. Sneha Iyer', 'Dermatologist', '9876500020', 7, '9876500020'),
(21, 'Dr. Tarun Bansal', 'Dermatologist', '9876500021', 7, '9876500021'),
(22, 'Dr. Reena Thomas', 'Dermatologist', '9876500022', 7, '9876500022'),
(23, 'Dr. Amit Joshi', 'Psychiatrist', '9876500023', 8, '9876500023'),
(24, 'Dr. Kavita Rao', 'Psychiatrist', '9876500024', 8, '9876500024'),
(25, 'Dr. Rahul Sinha', 'Psychiatrist', '9876500025', 8, '9876500025');

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

CREATE TABLE `symptoms` (
  `symptom_id` int(11) NOT NULL,
  `symptom_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `symptoms`
--

INSERT INTO `symptoms` (`symptom_id`, `symptom_name`) VALUES
(1, 'Cold'),
(2, 'Runny Nose'),
(3, 'Sneezing'),
(4, 'Fever'),
(5, 'Cough'),
(6, 'Body Pain'),
(7, 'Dry Cough'),
(8, 'Loss of Smell'),
(9, 'High Fever'),
(10, 'Joint Pain'),
(11, 'Fatigue'),
(12, 'Chills'),
(13, 'Weakness'),
(14, 'Headache'),
(15, 'Chest Pain'),
(16, 'Shortness of Breath'),
(17, 'Chest Tightness'),
(18, 'Nausea'),
(19, 'Sensitivity to Light'),
(20, 'Vomiting'),
(21, 'Diarrhea'),
(22, 'Abdominal Pain'),
(23, 'Heartburn'),
(24, 'Chest Discomfort'),
(25, 'Frequent Urination'),
(26, 'Increased Thirst'),
(27, 'Dizziness'),
(28, 'Pale Skin'),
(29, 'Swelling'),
(30, 'Stiffness'),
(31, 'Back Pain'),
(32, 'Muscle Stiffness'),
(33, 'Facial Pain'),
(34, 'Nasal Congestion'),
(35, 'Itchy Eyes'),
(36, 'Sore Throat'),
(37, 'Difficulty Swallowing'),
(38, 'Ear Pain'),
(39, 'Hearing Difficulty'),
(40, 'Burning Urination'),
(41, 'Lower Abdominal Pain'),
(42, 'Severe Back Pain'),
(43, 'Blood in Urine'),
(44, 'Yellow Skin'),
(45, 'Dark Urine'),
(46, 'Sadness'),
(47, 'Loss of Interest'),
(48, 'Sleep Problems'),
(49, 'Nervousness'),
(50, 'Rapid Heartbeat'),
(51, 'Sweating'),
(52, 'Difficulty Sleeping'),
(53, 'Irritability'),
(54, 'High Body Temperature'),
(55, 'Dry Mouth'),
(56, 'Reduced Urination');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `gender`, `email`, `mobile`, `password`) VALUES
(5, 'SARSWATI KUMARI', 'Male', 'xyz@gmail.com', '09842683675', '$2y$10$U4gGXa68P61S7hjiwcD1ne1slv1BbHAt1PqgZXEJD/Hj2Vt0Y292.'),
(6, 'sarswati kumari', 'Male', 'sarswati@gmail.com', '9988776655', '$2y$10$e3\n3ZdwsahLcVK.V.Z5AClOSoWQFEYPOWNooZVxgWXdGz64iBV9SdG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diseases`
--
ALTER TABLE `diseases`
  ADD PRIMARY KEY (`disease_id`);

--
-- Indexes for table `disease_symptom`
--
ALTER TABLE `disease_symptom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `symptoms`
--
ALTER TABLE `symptoms`
  ADD PRIMARY KEY (`symptom_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diseases`
--
ALTER TABLE `diseases`
  MODIFY `disease_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `disease_symptom`
--
ALTER TABLE `disease_symptom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `symptoms`
--
ALTER TABLE `symptoms`
  MODIFY `symptom_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
