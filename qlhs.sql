-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 20, 2024 at 05:24 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlhs`
--

-- --------------------------------------------------------

--
-- Table structure for table `diemthi`
--

CREATE TABLE `diemthi` (
  `tenmonhoc` varchar(200) NOT NULL,
  `diem15pki1` double NOT NULL,
  `diemgiuaki1` double NOT NULL,
  `diemcuoiki1` double NOT NULL,
  `diemtbki1` double NOT NULL,
  `diem15pki2` double NOT NULL,
  `diemgiuaki2` double NOT NULL,
  `diemcuoiki2` double NOT NULL,
  `diemtbki2` double NOT NULL,
  `mahs` varchar(200) NOT NULL,
  `namhoc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diemthi`
--

INSERT INTO `diemthi` (`tenmonhoc`, `diem15pki1`, `diemgiuaki1`, `diemcuoiki1`, `diemtbki1`, `diem15pki2`, `diemgiuaki2`, `diemcuoiki2`, `diemtbki2`, `mahs`, `namhoc`) VALUES
('Giáo dục thể chất', 8, 10, 9, 0, 10, 9, 8, 0, 'HS1', '2019-2020'),
('Lịch sử', 8, 8, 8, 0, 8, 8, 8, 0, 'HS1', '2019-2020'),
('Ngoại ngữ', 7, 7, 6, 0, 8, 6, 6, 0, 'HS1', '2019-2020'),
('Ngữ Văn', 7, 7, 6, 0, 8, 6, 6, 0, 'HS1', '2019-2020'),
('Sinh học', 6, 6, 7, 0, 7, 6, 6, 0, 'HS1', '2019-2020'),
('Tin học', 10, 10, 9, 0, 10, 9, 8, 0, 'HS1', '2019-2020'),
('Toán', 10, 8, 8, 0, 9, 8, 8, 0, 'HS1', '2019-2020'),
('Địa lí', 8, 8, 7, 0, 9, 8, 7, 0, 'HS1', '2019-2020');

-- --------------------------------------------------------

--
-- Table structure for table `giaovien`
--

CREATE TABLE `giaovien` (
  `magv` varchar(200) NOT NULL,
  `hoten` varchar(200) NOT NULL,
  `ngaysinh` varchar(200) NOT NULL,
  `monday` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `sdt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `giaovien`
--

INSERT INTO `giaovien` (`magv`, `hoten`, `ngaysinh`, `monday`, `email`, `sdt`) VALUES
('GV1', 'Nguyễn Thị Vân', '16/04/1990', 'Văn', 'vanvan@gmail.com', '0387591545'),
('GV2', 'Nguyễn Thị Mây', '19/08/1986', 'Văn', 'nguyenmay@gmail.com', '0982173142'),
('GV3', 'Trần Văn Công', '22/2/1984', 'Toán', 'congtran@gmail.com', '0987814234');

-- --------------------------------------------------------

--
-- Table structure for table `hocsinh`
--

CREATE TABLE `hocsinh` (
  `mahs` varchar(200) NOT NULL,
  `hovaten` varchar(200) NOT NULL,
  `ngaysinh` varchar(200) NOT NULL,
  `malop` varchar(200) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `sdt` varchar(50) NOT NULL,
  `gvcn` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hocsinh`
--

INSERT INTO `hocsinh` (`mahs`, `hovaten`, `ngaysinh`, `malop`, `diachi`, `sdt`, `gvcn`) VALUES
('HS1', 'Nguyễn Tiến Lợi', '27/01/2003', '1', '27/01/2003', '0375986680', 'GV1'),
('HS2', 'Hoàng Mạnh Cường', '16/08/2003', '2', '16/08/2003', '0921452155', 'GV2'),
('HS3', 'Bùi Khắc Trung', '12/02/2003', '3', '12/02/2003', '0987416813', 'GV3'),
('HS4', 'Vũ Khánh Nam', '16/08/2003', '1', '16/08/2003', '0375986680', 'GV1');

-- --------------------------------------------------------

--
-- Table structure for table `lop`
--

CREATE TABLE `lop` (
  `malop` varchar(200) NOT NULL,
  `tenlop` varchar(200) NOT NULL,
  `magv` varchar(200) NOT NULL,
  `siso` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lop`
--

INSERT INTO `lop` (`malop`, `tenlop`, `magv`, `siso`) VALUES
('1', '10A1', 'GV1', 41),
('2', '10A2', 'GV2', 42),
('3', '10A3', 'GV3', 44);

-- --------------------------------------------------------

--
-- Table structure for table `monhoc`
--

CREATE TABLE `monhoc` (
  `mamh` varchar(200) NOT NULL,
  `tenmonhoc` varchar(200) NOT NULL,
  `sotiet` int(50) NOT NULL,
  `hinhthucthi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `monhoc`
--

INSERT INTO `monhoc` (`mamh`, `tenmonhoc`, `sotiet`, `hinhthucthi`) VALUES
('MH1', 'Ngữ Văn', 140, 'Tự luận'),
('MH10', 'Công Nghệ', 70, 'Thực hành'),
('MH11', 'Giáo Dục Công Dân', 70, 'Trắc nghiệm + Tự luận'),
('MH12', 'Giáo Dục Thể Chất', 70, 'Thực hành'),
('MH2', 'Toán', 140, 'Trắc nghiệm + Tự luận'),
('MH3', 'Ngoại Ngữ', 140, 'Trắc nghiệm + Tự luận'),
('MH4', 'Lịch Sử', 70, 'Trắc nghiệm + Tự luận'),
('MH5', 'Địa Lí', 70, 'Trắc nghiệm + Tự luận'),
('MH6', 'Vật Lí', 70, 'Trắc nghiệm + Tự luận'),
('MH7', 'Hóa Học', 70, 'Trắc nghiệm + Tự luận'),
('MH8', 'Sinh Học', 70, 'Trắc nghiệm + Tự luận'),
('MH9', 'Tin Học', 70, 'Trắc nghiệm');

-- --------------------------------------------------------

--
-- Table structure for table `quantri`
--

CREATE TABLE `quantri` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` int(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role_as` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `created_at`, `role_as`) VALUES
(1, 'Lợi Nguyễn Tiến', 'tienloi271@gmail.com', 375986680, '1111', '2023-12-21 17:23:23', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diemthi`
--
ALTER TABLE `diemthi`
  ADD PRIMARY KEY (`tenmonhoc`),
  ADD KEY `mahs` (`mahs`);

--
-- Indexes for table `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`magv`);

--
-- Indexes for table `hocsinh`
--
ALTER TABLE `hocsinh`
  ADD PRIMARY KEY (`mahs`),
  ADD KEY `malop` (`malop`);

--
-- Indexes for table `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`malop`),
  ADD KEY `magv` (`magv`);

--
-- Indexes for table `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`mamh`);

--
-- Indexes for table `quantri`
--
ALTER TABLE `quantri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quantri`
--
ALTER TABLE `quantri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diemthi`
--
ALTER TABLE `diemthi`
  ADD CONSTRAINT `diemthi_ibfk_1` FOREIGN KEY (`mahs`) REFERENCES `hocsinh` (`mahs`);

--
-- Constraints for table `hocsinh`
--
ALTER TABLE `hocsinh`
  ADD CONSTRAINT `hocsinh_ibfk_1` FOREIGN KEY (`malop`) REFERENCES `lop` (`malop`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `lop_ibfk_1` FOREIGN KEY (`magv`) REFERENCES `giaovien` (`magv`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
