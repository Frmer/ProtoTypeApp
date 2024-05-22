-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2024 at 06:06 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prototypeapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `BarangID` varchar(13) NOT NULL,
  `BarangName` varchar(100) DEFAULT NULL,
  `BarangPrice` int(11) DEFAULT NULL,
  `BarangStock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`BarangID`, `BarangName`, `BarangPrice`, `BarangStock`) VALUES
('BR090520241', 'Rama', 2, 70),
('BR090520242', 'Joe', 3, 976),
('BR100520243', 'Johnathan', 20, 913),
('BR100520244', 'Pemilik', 23, 896),
('BR180520245', 'Selang rem', 70000, 9907);

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE `cashier` (
  `CashierID` varchar(13) NOT NULL,
  `CashierName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`CashierID`, `CashierName`) VALUES
('CH120520241', 'Rama'),
('CH180520242', 'Finn');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` varchar(13) NOT NULL,
  `CustomerName` varchar(50) DEFAULT NULL,
  `CustomerPhone` varchar(15) DEFAULT NULL,
  `CustomerLP` varchar(8) DEFAULT NULL,
  `CustomerVP` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `CustomerName`, `CustomerPhone`, `CustomerLP`, `CustomerVP`) VALUES
('CS120520241', 'Raka', '08123456789', 'B1234ABC', 'S'),
('CS120520242', 'Mahesa', '085866111111', 'B2007LOL', 'Sprint'),
('CS180520243', 'Ramsky', '085866888888', 'B2004HAH', 'Primavera'),
('CS180520244', 'Ramaaaaa', '081380805267', 'B8381', 'LX'),
('CS190520245', 'Halow', '-', '-', 'A'),
('CS190520246', 'a', 'a', 'a', 'a'),
('CS210520247', 'RafaelOrlandoEmanuelChristan', '081287722655', 'B5018KEX', 'Aerox'),
('CS210520248', 'Rafael Orlando', '081287722655', 'B5018KEX', 'Aerox'),
('CS220520249', 'Mahesa Rafael', '0812', 'B8055YES', 'Sprint');

-- --------------------------------------------------------

--
-- Table structure for table `mekanik`
--

CREATE TABLE `mekanik` (
  `MekanikID` varchar(13) NOT NULL,
  `MekanikName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mekanik`
--

INSERT INTO `mekanik` (`MekanikID`, `MekanikName`) VALUES
('MK120520241', 'Rama'),
('MK180520242', 'Jake');

-- --------------------------------------------------------

--
-- Table structure for table `transactiondetail`
--

CREATE TABLE `transactiondetail` (
  `CustomerID` varchar(13) DEFAULT NULL,
  `TransactionID` varchar(13) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `BarangID` varchar(13) DEFAULT NULL,
  `BarangName` varchar(50) DEFAULT NULL,
  `BarangHarga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactiondetail`
--

INSERT INTO `transactiondetail` (`CustomerID`, `TransactionID`, `Quantity`, `BarangID`, `BarangName`, `BarangHarga`) VALUES
('CS190520246', 'TH210520241', 20, 'BR180520245', 'Selang rem', 70000),
('CS190520246', 'TH210520241', 1, 'BR100520244', 'Pemilik', 23),
('CS180520243', 'TH210520241', 2, 'BR180520245', 'Selang rem', 70000),
('CS180520243', 'TH210520241', 9, 'BR100520243', 'Johnathan', 20),
('CS210520248', 'TH210520241', 2, 'BR180520245', 'Selang rem', 70000),
('CS190520246', 'TH210520242', 1, 'BR180520245', 'Selang rem', 70000),
('CS220520249', 'TH220520243', 1, 'BR180520245', 'Selang rem', 70000),
('CS220520249', 'TH220520243', 2, 'BR100520244', 'Pemilik', 23);

-- --------------------------------------------------------

--
-- Table structure for table `transactionheader`
--

CREATE TABLE `transactionheader` (
  `TransactionID` varchar(13) NOT NULL,
  `TransactionDate` date DEFAULT NULL,
  `CashierID` varchar(13) DEFAULT NULL,
  `MekanikID` varchar(13) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `Keluhan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactionheader`
--

INSERT INTO `transactionheader` (`TransactionID`, `TransactionDate`, `CashierID`, `MekanikID`, `Status`, `Keluhan`) VALUES
('TH210520241', '2024-05-21', 'CH120520241', 'MK180520242', 'Menunggu pembayaran', 'Ga tau'),
('TH210520242', '2024-05-21', 'CH120520241', 'MK180520242', 'Menunggu pembayaran', 'a'),
('TH220520243', '2024-05-22', 'CH120520241', 'MK180520242', 'Selesai', 'Lampu rem ga nyala');

-- --------------------------------------------------------

--
-- Table structure for table `uc_transaction`
--

CREATE TABLE `uc_transaction` (
  `TransactionID` varchar(13) DEFAULT NULL,
  `TransactionDate` date DEFAULT NULL,
  `StatusPemesanan` varchar(255) DEFAULT NULL,
  `Keluhan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uc_transaction`
--

INSERT INTO `uc_transaction` (`TransactionID`, `TransactionDate`, `StatusPemesanan`, `Keluhan`) VALUES
('TH210520243', '2024-05-21', 'Menunggu pembayaran', 'b');

-- --------------------------------------------------------

--
-- Table structure for table `uc_transactiondetail`
--

CREATE TABLE `uc_transactiondetail` (
  `CustomerID` varchar(13) DEFAULT NULL,
  `TransactionID` varchar(13) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `BarangID` varchar(13) DEFAULT NULL,
  `BarangName` varchar(50) DEFAULT NULL,
  `BarangHarga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uc_transactiondetail`
--

INSERT INTO `uc_transactiondetail` (`CustomerID`, `TransactionID`, `Quantity`, `BarangID`, `BarangName`, `BarangHarga`) VALUES
('CS190520246', 'TH210520243', 1, 'BR100520244', 'Pemilik', 23);

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `CustomerID` varchar(13) DEFAULT NULL,
  `CustomerUsername` varchar(50) DEFAULT NULL,
  `CustomerPassword` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`CustomerID`, `CustomerUsername`, `CustomerPassword`) VALUES
('CS120520241', 'Raka', 'rakaferliando'),
('CS120520242', 'Mahesa', 'mahesarafael'),
('CS180520243', 'Ramsky', 'apaaja55'),
('CS180520244', 'rama', 'rama2'),
('CS190520245', 'Halow', 'Halow'),
('CS190520246', 'a', 'a'),
('CS210520247', 'RafaelOrlandoEmanuelChristan', '114455'),
('CS210520248', 'Rafael Orlando', 'rafaelaja'),
('CS220520249', 'Mahesa Rafael', '1234');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_firsttransaction`
-- (See below for the actual view)
--
CREATE TABLE `view_firsttransaction` (
`CustomerName` varchar(50)
,`TransactionID` varchar(13)
,`TransactionDate` date
,`MekanikName` varchar(50)
,`CustomerVP` varchar(50)
,`BarangID` varchar(13)
,`BarangName` varchar(50)
,`Quantity` int(11)
,`BarangHarga` int(11)
,`CashierName` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure for view `view_firsttransaction`
--
DROP TABLE IF EXISTS `view_firsttransaction`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_firsttransaction`  AS SELECT `cs`.`CustomerName` AS `CustomerName`, `th`.`TransactionID` AS `TransactionID`, `th`.`TransactionDate` AS `TransactionDate`, `mk`.`MekanikName` AS `MekanikName`, `cs`.`CustomerVP` AS `CustomerVP`, `td`.`BarangID` AS `BarangID`, `td`.`BarangName` AS `BarangName`, `td`.`Quantity` AS `Quantity`, `td`.`BarangHarga` AS `BarangHarga`, `ch`.`CashierName` AS `CashierName` FROM (((((`transactionheader` `th` join `transactiondetail` `td` on(`th`.`TransactionID` = `td`.`TransactionID`)) join `barang` `br` on(`br`.`BarangID` = `td`.`BarangID`)) join `cashier` `ch` on(`ch`.`CashierID` = `th`.`CashierID`)) join `mekanik` `mk` on(`mk`.`MekanikID` = `th`.`MekanikID`)) join `customer` `cs` on(`cs`.`CustomerID` = `td`.`CustomerID`)) WHERE `th`.`TransactionID` = 'TH120520241' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`BarangID`);

--
-- Indexes for table `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`CashierID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `mekanik`
--
ALTER TABLE `mekanik`
  ADD PRIMARY KEY (`MekanikID`);

--
-- Indexes for table `transactiondetail`
--
ALTER TABLE `transactiondetail`
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `TransactionID` (`TransactionID`),
  ADD KEY `BarangID` (`BarangID`);

--
-- Indexes for table `transactionheader`
--
ALTER TABLE `transactionheader`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `CashierID` (`CashierID`),
  ADD KEY `MekanikID` (`MekanikID`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactiondetail`
--
ALTER TABLE `transactiondetail`
  ADD CONSTRAINT `transactiondetail_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  ADD CONSTRAINT `transactiondetail_ibfk_2` FOREIGN KEY (`TransactionID`) REFERENCES `transactionheader` (`TransactionID`),
  ADD CONSTRAINT `transactiondetail_ibfk_3` FOREIGN KEY (`BarangID`) REFERENCES `barang` (`BarangID`);

--
-- Constraints for table `transactionheader`
--
ALTER TABLE `transactionheader`
  ADD CONSTRAINT `transactionheader_ibfk_1` FOREIGN KEY (`CashierID`) REFERENCES `cashier` (`CashierID`),
  ADD CONSTRAINT `transactionheader_ibfk_3` FOREIGN KEY (`MekanikID`) REFERENCES `mekanik` (`MekanikID`);

--
-- Constraints for table `userdata`
--
ALTER TABLE `userdata`
  ADD CONSTRAINT `userdata_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
