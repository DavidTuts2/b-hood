-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: apr. 05, 2021 la 01:42 PM
-- Versiune server: 10.4.17-MariaDB
-- Versiune PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `tuts_baa`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `banlog`
--

CREATE TABLE `banlog` (
  `ID` int(11) NOT NULL,
  `ip` varchar(25) NOT NULL,
  `player` varchar(25) NOT NULL,
  `admin` varchar(25) NOT NULL,
  `reason` varchar(60) NOT NULL,
  `day` int(11) NOT NULL DEFAULT 0,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `banlog`
--

INSERT INTO `banlog` (`ID`, `ip`, `player`, `admin`, `reason`, `day`, `time`) VALUES
(1, 'Offline', 'awake', 'Caen', 'sugi pula', 0, '2020-12-31 20:44:35'),
(2, 'Offline', 'ksenon', 'Caen', 'ai belit pula pizdo', 1, '2020-12-31 20:44:55'),
(3, 'Offline', 'david', 'Caen', 'hai pa', 0, '2020-12-31 20:45:02');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `bans`
--

CREATE TABLE `bans` (
  `ID` int(11) NOT NULL,
  `PlayerName` varchar(30) NOT NULL,
  `AdminName` varchar(30) NOT NULL,
  `Reason` varchar(128) NOT NULL,
  `IP` varchar(16) NOT NULL,
  `Days` int(11) NOT NULL,
  `IPBan` int(11) NOT NULL,
  `Permanent` int(11) NOT NULL,
  `Time` int(15) NOT NULL,
  `BanTimeDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `bans`
--

INSERT INTO `bans` (`ID`, `PlayerName`, `AdminName`, `Reason`, `IP`, `Days`, `IPBan`, `Permanent`, `Time`, `BanTimeDate`, `Active`) VALUES
(1, 'madalinutz2232', 'KeNNy', 'Cheats', '::1', 30, 0, 0, 0, '2020-05-08 08:38:55', 0),
(2, 'madalinutz2232', 'KeNNy', 'cheats', '::1', 60, 0, 0, 0, '2020-05-08 09:17:26', 1);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `bizz`
--

CREATE TABLE `bizz` (
  `ID` int(11) NOT NULL,
  `Owned` int(11) NOT NULL,
  `Owner` varchar(25) NOT NULL DEFAULT 'The State',
  `Type` int(11) NOT NULL,
  `Message` varchar(50) NOT NULL,
  `EntranceX` float NOT NULL,
  `EntranceY` float NOT NULL,
  `EntranceZ` float NOT NULL,
  `ExitX` float NOT NULL,
  `ExitY` float NOT NULL,
  `ExitZ` float NOT NULL,
  `LevelNeeded` int(11) NOT NULL,
  `BuyPrice` int(11) NOT NULL,
  `EntranceCost` int(11) NOT NULL,
  `Till` int(11) NOT NULL,
  `Locked` int(11) NOT NULL,
  `Interior` int(11) NOT NULL,
  `Virtual` int(11) NOT NULL,
  `Radio` int(11) NOT NULL DEFAULT -1,
  `Static` int(11) NOT NULL,
  `Gas` int(11) NOT NULL,
  `Products` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `bizz`
--

INSERT INTO `bizz` (`ID`, `Owned`, `Owner`, `Type`, `Message`, `EntranceX`, `EntranceY`, `EntranceZ`, `ExitX`, `ExitY`, `ExitZ`, `LevelNeeded`, `BuyPrice`, `EntranceCost`, `Till`, `Locked`, `Interior`, `Virtual`, `Radio`, `Static`, `Gas`, `Products`) VALUES
(1, 1, 'AndreiKNGS', 1, 'Banca Statelor Unite', 2303.84, -16.3147, 26.4844, -554.824, 1782.5, 1392.47, 7, 0, 2000, 17228001, 0, 1, 1, 4, 0, 0, 0),
(2, 1, '.Florin.300.', 2, 'Vrei arme? Intra si cumpara.', 2333.08, 61.4252, 26.7058, 285.578, -86.4593, 1001.52, 7, 0, 2000, 48883321, 0, 4, 2, -1, 0, 0, 0),
(3, 1, 'Antonio.smek12', 3, 'LA ANTONIO', 2020.53, 1918.12, 12.3407, 231.317, 2227.65, -33.0337, 7, 0, 2000, 218603, 0, 10, 3, 3, 0, 0, 0),
(4, 1, 'SilentScream', 3, 'Hai la o bere fraþii mei #', 1374.13, 404.986, 19.9555, 231.438, 2227.99, -33.0337, 7, 0, 2000, 98580, 0, 10, 4, -1, 0, 0, 0),
(5, 1, 'The State', 4, 'Mananca bine.', 2015.54, 1151.6, 10.8203, -794.942, 490.782, 1376.2, 7, 0, 2000, 167000, 0, 1, 5, -1, 0, 0, 0),
(6, 1, 'The State', 5, 'Intra pentru a cumpara ce ai nevoie. =))', 2420.62, 2065.19, 10.8203, -100.403, -24.3921, 1000.72, 7, 0, 1, 15040, 0, 3, 6, 1, 0, 0, 0),
(7, 1, 'The State', 6, 'Vino si cumpara de la tata toreto', 2242.64, 52.7605, 26.6671, -25.8845, -185.869, 1003.55, 7, 0, 2000, 111485, 0, 17, 7, 1, 0, 0, 0),
(8, 1, 'The State', 6, 'Ionicas are marfa', 2637.14, 1129.56, 11.1797, -25.8845, -185.869, 1003.55, 7, 0, 2000, 72000, 0, 17, 8, -1, 0, 0, 0),
(9, 1, 'The State', 6, 'Iphone 11 pro gratis !!!', 2062.69, 2309.12, 10.8203, -25.8845, -185.869, 1003.55, 7, 0, 2000, 1018468, 0, 17, 9, 1, 0, 0, 0),
(10, 1, 'The State', 6, 'Pentru toti mafiotii!', 1352.43, -1758.6, 13.5078, -25.8845, -185.869, 1003.55, 7, 0, 2000, 561973, 0, 17, 10, 1, 0, 0, 0),
(11, 1, 'The State', 7, 'Gagnsta Shop', 2244.42, -1665.57, 15.4766, 207.774, -110.335, 1005.12, 7, 0, 2000, 677626, 0, 15, 11, 11, 0, 0, 0),
(12, 1, 'The State', 8, 'McDonald', 1367.59, 248.12, 19.5669, -228.814, 1401.12, 27.7656, 7, 0, 1, 10632, 0, 18, 12, -1, 0, 0, 0),
(13, 1, 'The State', 9, 'Casa Pariurilor', 2019.62, 1007.83, 10.8203, 2019.07, 1017.8, 996.936, 7, 0, 2000, 1584184, 0, 10, 13, -1, 0, 0, 0),
(14, 1, 'The State', 10, 'Vrei sa pui un anunt? /ad si anuntul', 2861.34, 2430.83, 11.069, 0, 0, 0, 7, 0, 2000, 1, 0, 0, 14, -1, 1, 0, 0),
(15, 1, 'The State', 11, 'Masini de inchiriat!', 2200.88, 1394.81, 11.0625, 0, 0, 0, 7, 0, 1000, 10000, 0, 0, 15, -1, 1, 0, 0),
(16, 1, 'The State', 12, 'Paintball.', 2152.99, 1470.55, 10.82, 0, 0, 0, 7, 0, 2000, 152000, 0, 0, 16, -1, 1, 0, 0),
(18, 1, 'The State', 14, 'Imobiliere', 1702.87, -1469.34, 13.5469, 0, 0, 0, 7, 0, 2000, 4033314, 0, 0, 18, -1, 1, 0, 0),
(19, 1, 'The State', 15, '.       KhS1       .', 1615.28, -1503.35, 14.2207, 0, 0, 0, 7, 0, 2000, 5601614, 0, 0, 19, -1, 1, 0, 0),
(20, 1, 'The State', 16, 'Bn ati venit la Paint', 2182.21, 1115.89, 12.648, 0, 0, 0, 7, 0, 1, 5584614, 0, 0, 20, -1, 1, 0, 0),
(21, 1, 'The State', 17, 'Benzinarie [LV]', 2116.5, 925.322, 10.961, 0, 0, 0, 7, 0, 2000, 5541014, 0, 0, 21, -1, 1, 1, 0),
(22, 1, 'The State', 18, '/enter to enter', 2695.58, -1704.61, 11.8438, 0, 0, 0, 7, 0, 1, 2, 0, 0, 22, -1, 1, 0, 0),
(23, 1, 'The State', 19, 'EyeKaiZen [PNS CENTRAL]', 1967.7, 2158.1, 10.8203, 0, 0, 0, 7, 0, 2000, 1, 0, 0, 23, -1, 1, 0, 0),
(24, 1, 'The State', 19, 'Hai sa va repar ca se strica', 1020.56, -1029.88, 32.0896, 0, 0, 0, 7, 0, 1000, 84979, 0, 0, 24, -1, 1, 0, 0),
(25, 1, 'The State', 19, 'gigel repara ieftin', 723.372, -463.071, 16.3359, 0, 0, 0, 7, 0, 2000, 52857914, 0, 0, 25, -1, 1, 0, 0),
(26, 1, 'The State', 17, 'ti-o fac eu mai rapida !1', 2258.89, 35.6354, 26.5159, 372.174, -133.524, 1001.49, 7, 0, 2000, 52720014, 0, 5, 26, -1, 1, 1, 0),
(28, 1, 'The State', 21, 'hai la mancare ca se putrezeste', 2331.81, 74.903, 26.621, -228.814, 1401.12, 27.7656, 7, 0, 2000, 52726014, 0, 18, 28, 4, 0, 0, 0),
(29, 1, 'The State', 22, 'TUNNING', 1034.45, -1027.43, 32.1016, 0, 0, 0, 7, 0, 2000, 13297400, 0, 0, 29, 3, 1, 0, 0),
(30, 1, 'The State', 1, 'Bogdan47 bancher', 1457.13, -1009.99, 26.8438, -554.828, 1782.14, 1392.47, 6, 0, 2000, 5596614, 0, 1, 30, 2, 0, 0, 0),
(31, 1, 'The State', 1, '=+= Las Venturas Bank =+=', 2196.97, 1677.06, 12.3672, -554.779, 1782, 1392.47, 7, 0, 2000, 11317400, 0, 1, 31, -1, 0, 0, 0),
(32, 1, 'The State', 6, 'Da{FF00FF}ni', 2194.94, 1990.85, 12.2969, -25.8845, -185.869, 1003.55, 10, 0, 2000, 179700, 0, 17, 32, -1, 0, 0, 0),
(33, 1, 'The State', 7, 'Magazinu care te scapa de gabori', 1657.03, 1733.3, 10.8281, 207.774, -110.335, 1005.12, 7, 0, 2000, 145050, 0, 15, 33, -1, 0, 0, 0),
(34, 1, 'The State', 21, '', 1872.25, 2071.9, 11.0625, -228.814, 1401.12, 27.7656, 10, 0, 0, 40400, 0, 18, 34, 3, 0, 0, 0),
(35, 1, 'The State', 6, '', 1315.42, -897.682, 39.5781, -25.8845, -185.869, 1003.55, 0, 0, 0, 51450, 0, 17, 35, -1, 0, 0, 0),
(36, 1, 'The State', 7, 'GUCCI', 2278.04, 51.3087, 26.4844, 207.774, -110.335, 1005.12, 0, 0, 500, 79000, 0, 15, 36, 3, 0, 0, 0),
(37, 1, 'The State', 6, 'TOTUL E IEFTIN!', 1359.64, 205.087, 19.7555, -25.8845, -185.869, 1003.55, 10, 0, 1000, 41850, 0, 17, 37, -1, 0, 0, 0),
(38, 1, 'The State', 7, 'hkjhk', 1331.56, 219.972, 19.5547, 207.774, -110.335, 1005.12, 10, 0, 2000, 666000, 0, 15, 38, -1, 0, 0, 0),
(39, 1, 'The State', 23, 'Haide la mine la biz', 2592.35, 1082.84, 10.82, -647.986, 771.83, 1417.83, 10, 0, 2000, 26000, 0, 10, 39, -1, 0, 0, 0),
(40, 1, 'ZZZest', 17, '', 1004.65, -936.651, 42.328, 0, 0, 0, 10, 0, 0, 647400, 0, 0, 40, -1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `blacklist`
--

CREATE TABLE `blacklist` (
  `ID` int(10) NOT NULL,
  `Userid` int(10) NOT NULL,
  `Name` varchar(256) NOT NULL,
  `Faction` int(10) NOT NULL,
  `Reason` int(10) NOT NULL,
  `Added` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `blacklist`
--

INSERT INTO `blacklist` (`ID`, `Userid`, `Name`, `Faction`, `Reason`, `Added`) VALUES
(1, 139, 'FcDarius', 1, 0, 'Zaki');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `cars`
--

CREATE TABLE `cars` (
  `ID` int(11) NOT NULL,
  `Model` int(11) NOT NULL,
  `Locationx` float NOT NULL,
  `Locationy` float NOT NULL,
  `Locationz` float NOT NULL,
  `Angle` float NOT NULL,
  `ColorOne` int(11) NOT NULL,
  `ColorTwo` int(11) NOT NULL,
  `Owner` varchar(25) NOT NULL DEFAULT 'Dealership',
  `Value` int(11) NOT NULL,
  `License` varchar(15) NOT NULL DEFAULT 'LS-01-RGM',
  `Alarm` int(11) NOT NULL,
  `Lockk` int(11) NOT NULL,
  `paintjob` int(11) NOT NULL DEFAULT 3,
  `KM` float NOT NULL,
  `Userid` int(11) NOT NULL DEFAULT 0,
  `Confiscated` int(2) NOT NULL,
  `Spawned` int(2) NOT NULL,
  `Special` int(2) NOT NULL DEFAULT 0,
  `Points` int(10) NOT NULL DEFAULT 5,
  `Tax` int(10) NOT NULL DEFAULT 50,
  `Fuel` int(10) NOT NULL DEFAULT 100,
  `Neon` int(10) NOT NULL,
  `Text` varchar(256) NOT NULL DEFAULT '-',
  `ColorText` int(11) NOT NULL,
  `Virtual` int(11) NOT NULL,
  `Legendary` int(11) NOT NULL,
  `RainBow` int(11) NOT NULL,
  `Stage` int(11) NOT NULL,
  `MaxSpeed` int(11) NOT NULL,
  `Days` int(11) NOT NULL,
  `Temporar` int(11) NOT NULL,
  `TemporarTime` int(11) NOT NULL,
  `VIP` int(11) NOT NULL,
  `Cordonate` varchar(50) NOT NULL DEFAULT '0.0|0.0|0.0|0.0|0.0|0.0',
  `Health` float NOT NULL DEFAULT 999,
  `Components` varchar(50) NOT NULL DEFAULT '0|0|0|0',
  `TimeGoto` int(11) NOT NULL,
  `Mods` varchar(50) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `cars`
--

INSERT INTO `cars` (`ID`, `Model`, `Locationx`, `Locationy`, `Locationz`, `Angle`, `ColorOne`, `ColorTwo`, `Owner`, `Value`, `License`, `Alarm`, `Lockk`, `paintjob`, `KM`, `Userid`, `Confiscated`, `Spawned`, `Special`, `Points`, `Tax`, `Fuel`, `Neon`, `Text`, `ColorText`, `Virtual`, `Legendary`, `RainBow`, `Stage`, `MaxSpeed`, `Days`, `Temporar`, `TemporarTime`, `VIP`, `Cordonate`, `Health`, `Components`, `TimeGoto`, `Mods`) VALUES
(1, 411, 1447.62, -2225.23, 13.274, 180.077, 1, 1, 'David', 650000000, 'NewCar', 0, 0, 3, 1.644, 3, 0, 315, 0, 5, 50, 100, 6, 'David', 0, 0, 0, 1, 3, 209, 0, 0, 0, 1, '0.0|0.0|0.0|0.0|0.0|0.0', 999, '0|0|0|0', 1607033621, '0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(2, 509, 1560.41, -2250.93, 13.275, 88.959, 1, 1, 'David', 650000, 'NewCar', 0, 0, 3, 0, 1, 0, 316, 0, 5, 50, 100, 0, '-', 0, 0, 0, 0, 0, 74, 0, 0, 0, 0, '0.0|0.0|0.0|0.0|0.0|0.0', 999, '0|0|0|0', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(3, 509, 1546.19, -2361.05, 13.282, 359.59, 1, 1, 'David', 650000, 'NewCar', 0, 0, 3, 0, 1, 0, 317, 0, 5, 50, 100, 0, '-', 0, 0, 0, 0, 0, 74, 0, 0, 0, 0, '0.0|0.0|0.0|0.0|0.0|0.0', 999, '0|0|0|0', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(4, 411, 1505.66, -2361.16, 13.278, 1.72, 1, 1, 'David', 1, 'NewCar', 0, 0, 3, 0.58, 1, 0, 315, 0, 5, 50, 96, 0, '-', 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, '0.0|0.0|0.0|0.0|0.0|0.0', 999, '0|0|0|0', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `clanhq`
--

CREATE TABLE `clanhq` (
  `ID` int(11) NOT NULL,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `PosZ` float NOT NULL,
  `EnterX` float NOT NULL,
  `EnterY` float NOT NULL,
  `EnterZ` float NOT NULL,
  `VirtualWorld` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Clan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `clans`
--

CREATE TABLE `clans` (
  `ID` int(10) NOT NULL,
  `Owner` varchar(64) NOT NULL,
  `OwnerSQL` int(11) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `Motd` varchar(256) NOT NULL DEFAULT 'Nu este setat.',
  `Tag` varchar(32) NOT NULL,
  `RankName1` varchar(64) NOT NULL DEFAULT 'Rank 1',
  `RankName2` varchar(64) NOT NULL DEFAULT 'Rank 2',
  `RankName3` varchar(64) NOT NULL DEFAULT 'Rank 3',
  `RankName4` varchar(64) NOT NULL DEFAULT 'Rank 4',
  `RankName5` varchar(64) NOT NULL DEFAULT 'Rank 5',
  `RankName6` varchar(64) NOT NULL DEFAULT 'Rank 6',
  `Color` varchar(10) NOT NULL DEFAULT 'FFFFFF',
  `Slots` int(10) NOT NULL,
  `RegisterDate` varchar(64) NOT NULL,
  `Days` int(10) NOT NULL DEFAULT 60,
  `TagType` int(11) NOT NULL,
  `HQ` int(11) NOT NULL,
  `PremiumPoints` int(11) NOT NULL,
  `RankColor1` int(11) NOT NULL,
  `RankColor2` int(11) NOT NULL,
  `RankColor3` int(11) NOT NULL,
  `RankColor4` int(11) NOT NULL,
  `RankColor5` int(11) NOT NULL,
  `RankColor6` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `clans`
--

INSERT INTO `clans` (`ID`, `Owner`, `OwnerSQL`, `Name`, `Motd`, `Tag`, `RankName1`, `RankName2`, `RankName3`, `RankName4`, `RankName5`, `RankName6`, `Color`, `Slots`, `RegisterDate`, `Days`, `TagType`, `HQ`, `PremiumPoints`, `RankColor1`, `RankColor2`, `RankColor3`, `RankColor4`, `RankColor5`, `RankColor6`) VALUES
(1, 'Zaki', 33, 'MadCats', 'Rank-up la 7 zile', 'MEOW.', 'Member', 'Advanced', 'Expert', 'Legend', 'Pisik', 'PisikAdv', 'DEDB1F', 40, '03/05/2020 - 15:35:42', 59, 0, 0, 1, 0, 0, 1, 1, 40, 0);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `commands`
--

CREATE TABLE `commands` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Reason` varchar(100) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `commentaries`
--

CREATE TABLE `commentaries` (
  `Nickname` int(11) NOT NULL,
  `ID` int(10) NOT NULL,
  `Comment` text NOT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Category` int(11) NOT NULL,
  `Cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `comm_req`
--

CREATE TABLE `comm_req` (
  `Comm_Type` int(11) NOT NULL,
  `Comm_UserID` int(11) NOT NULL,
  `Comm_Comm` text NOT NULL,
  `Comm_Topic` int(11) NOT NULL,
  `Comm_Time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Model` int(11) NOT NULL,
  `ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `complaints`
--

CREATE TABLE `complaints` (
  `ID` int(11) NOT NULL,
  `Username` text NOT NULL,
  `UsernameR` text NOT NULL,
  `Type` int(11) NOT NULL,
  `Reason` int(11) NOT NULL,
  `Proofs` text NOT NULL,
  `Details` text NOT NULL,
  `Status` int(11) NOT NULL DEFAULT 0,
  `Message` varchar(255) NOT NULL DEFAULT '',
  `Date` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `complaints-comments`
--

CREATE TABLE `complaints-comments` (
  `ID` int(11) NOT NULL,
  `Username` text NOT NULL,
  `Text` text NOT NULL,
  `Date` int(11) NOT NULL,
  `ComplaintID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `donatii`
--

CREATE TABLE `donatii` (
  `id` int(11) NOT NULL,
  `nume` text NOT NULL,
  `pin` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `suma` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `donation`
--

CREATE TABLE `donation` (
  `id` int(11) NOT NULL,
  `Topic` text NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `dsveh`
--

CREATE TABLE `dsveh` (
  `ID` int(10) NOT NULL,
  `Model` int(11) NOT NULL,
  `Price` int(11) NOT NULL DEFAULT 1,
  `Stock` int(11) NOT NULL DEFAULT 30
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `dsveh`
--

INSERT INTO `dsveh` (`ID`, `Model`, `Price`, `Stock`) VALUES
(1, 509, 650000, 1),
(2, 510, 1000000, 1),
(3, 404, 1500000, 1),
(4, 600, 1800000, 1),
(5, 413, 2000000, 1),
(6, 543, 2400000, 1),
(7, 478, 2500000, 1),
(8, 422, 2800000, 1),
(9, 401, 3000000, 1),
(10, 466, 3200000, 1),
(11, 474, 3200000, 1),
(12, 471, 4000000, 1),
(13, 546, 4200000, 1),
(14, 436, 4500000, 1),
(15, 526, 5000000, 1),
(16, 517, 5000000, 1),
(17, 550, 5000000, 1),
(18, 458, 5000000, 1),
(19, 500, 2500000, 1),
(20, 551, 10000000, 1),
(21, 400, 7000000, 1),
(22, 542, 7500000, 1),
(23, 549, 7500000, 1),
(24, 439, 8000000, 1),
(25, 496, 9000000, 1),
(26, 561, 9200000, 1),
(27, 507, 9500000, 1),
(28, 567, 10500000, 1),
(29, 535, 11000000, 1),
(30, 554, 12000000, 1),
(31, 405, 13000000, 1),
(32, 555, 14000000, 1),
(33, 534, 15000000, 1),
(34, 489, 15000000, 1),
(35, 426, 16400000, 1),
(36, 589, 17500000, 1),
(37, 603, 19000000, 1),
(38, 475, 19000000, 1),
(39, 533, 21000000, 1),
(40, 587, 23000000, 1),
(41, 602, 25500000, 1),
(42, 565, 27000000, 1),
(43, 579, 30000000, 1),
(44, 506, 47770000, 1),
(45, 402, 55000000, 1),
(46, 477, 66000000, 1),
(47, 495, 107000000, 1),
(48, 562, 50000000, 1),
(49, 415, 53225000, 1),
(50, 429, 150000000, 1),
(51, 451, 225000000, 1),
(52, 560, 333333333, 1),
(53, 541, 450000000, 1),
(54, 411, 650000000, 1),
(55, 522, 500000000, 1),
(56, 463, 9250000, 1),
(57, 462, 1250000, 1),
(58, 461, 18200000, 1);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `emails`
--

CREATE TABLE `emails` (
  `ID` int(10) NOT NULL,
  `Type` int(10) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `Text` varchar(256) NOT NULL,
  `By` varchar(64) NOT NULL DEFAULT 'AdmBot',
  `Date` varchar(256) NOT NULL,
  `Read` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `emails`
--

INSERT INTO `emails` (`ID`, `Type`, `Name`, `Text`, `By`, `Date`, `Read`) VALUES
(1, 0, 'IAmTheMasterKingg', 'Ai primit $30,000 deoarece gucciman a avansat la nivel 3.', 'AdmBot', '02/05/2020 - 18:48:34', 1),
(2, 0, 'ionchyAdv', 'Ai primit $30,000 deoarece xPaulFTW a avansat la nivel 3.', 'AdmBot', '02/05/2020 - 22:06:53', 1),
(3, 0, 'ionchyAdv', 'Ai primit $62,000 si 1 RP-uri deoarece xPaulFTW a avansat la nivel 4.', 'AdmBot', '02/05/2020 - 22:06:54', 1),
(4, 0, 'xPaulFTW', 'Ai primit $93,000 si 2 RP-uri deoarece Zaki a avansat la nivel 6.', 'AdmBot', '03/05/2020 - 00:13:55', 1),
(5, 0, 'xPaulFTW', 'Ai primit $93,000 si 2 RP-uri deoarece AmpistAdv a avansat la nivel 6.', 'AdmBot', '03/05/2020 - 00:55:49', 1),
(6, 0, 'xPaulFTW', 'Ai primit $77,500 si 1 RP-uri deoarece FacDMptERARPG a avansat la nivel 5.', 'AdmBot', '03/05/2020 - 06:18:31', 1),
(7, 0, 'xPaulFTW', 'Ai primit $62,000 si 1 RP-uri deoarece niku777 a avansat la nivel 4.', 'AdmBot', '03/05/2020 - 09:01:05', 1),
(8, 0, 'ionchyAdv', 'Ai primit $93,000 si 2 RP-uri deoarece FcDarius a avansat la nivel 6.', 'AdmBot', '03/05/2020 - 09:38:43', 1),
(9, 0, 'xPaulFTW', 'Ai primit $77,500 si 1 RP-uri deoarece ILOVEPURPLE a avansat la nivel 5.', 'AdmBot', '03/05/2020 - 10:22:08', 1),
(10, 0, 'xPaulFTW', 'Ai primit $93,000 si 2 RP-uri deoarece FacDMptERARPG a avansat la nivel 6.', 'AdmBot', '03/05/2020 - 10:26:43', 1),
(11, 0, 'xPaulFTW', 'Ai primit $93,000 si 2 RP-uri deoarece Denis_Corrona12 a avansat la nivel 6.', 'AdmBot', '03/05/2020 - 11:22:37', 1),
(12, 0, 'ChenetTORPILA', 'Ai primit $77,500 si 1 RP-uri deoarece R4uL a avansat la nivel 5.', 'AdmBot', '03/05/2020 - 18:01:10', 0),
(13, 0, 'The State', 'Ai pierdut casa (7) deoarece a fost licitata din cauza inactivitatii tale.', 'AdmBot', '03/05/2020 - 20:26:38', 0),
(14, 0, 'SlyRacon', 'Ai fost dat afara din factiunea Los Santos Police Departament (rank 1) dupa 0 zile de xPaulFTW, motiv: 3/3 Faction Warns', 'xPaulFTW', '03/05/2020 - 20:40:32', 1),
(15, 0, 'Kevin_YT', 'Ai primit $77,500 si 1 RP-uri deoarece KenTz[Z] a avansat la nivel 5.', 'AdmBot', '04/05/2020 - 14:29:03', 0),
(16, 0, 'AmpistAdv', 'Ai pierdut afacerea (30) deoarece a fost licitata din cauza inactivitatii tale.', 'AdmBot', '04/05/2020 - 20:17:09', 1);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `factionlog`
--

CREATE TABLE `factionlog` (
  `ID` int(11) NOT NULL,
  `factionid` int(11) NOT NULL,
  `player` varchar(64) NOT NULL,
  `action` varchar(64) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `factionlog`
--

INSERT INTO `factionlog` (`ID`, `factionid`, `player`, `action`, `time`) VALUES
(1, 1, 'xPaulFTW', 'Joined the Faction.', '2020-05-03 14:08:53'),
(2, 1, 'AmpistAdv', 'Joined the Faction.', '2020-05-03 14:16:04'),
(3, 1, 'costelbiju', 'Joined the Faction.', '2020-05-03 14:33:39'),
(4, 1, 'SebastianAdv', 'Joined the Faction.', '2020-05-03 15:15:57'),
(5, 1, 'SlyRacon', 'Joined the Faction.', '2020-05-03 15:35:19'),
(6, 1, 'xPaulFTW', 'Got rank 6.', '2020-05-03 16:03:17'),
(7, 1, 'AmpistAdv', 'Got rank 6.', '2020-05-03 16:03:22'),
(8, 1, 'AmpistAdv', 'Got rank 2.', '2020-05-04 15:56:13'),
(9, 1, 'AmpistAdv', 'Got rank 6.', '2020-05-04 15:56:24');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `factions`
--

CREATE TABLE `factions` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `IntX` float NOT NULL,
  `IntY` float NOT NULL,
  `IntZ` float NOT NULL,
  `Interior` int(11) NOT NULL,
  `VW` int(11) NOT NULL,
  `Mats` int(11) NOT NULL,
  `Drugs` int(11) NOT NULL,
  `Bank` int(11) NOT NULL,
  `Anunt` varchar(128) NOT NULL,
  `PaydayMoney` int(11) NOT NULL,
  `Name1` varchar(64) NOT NULL DEFAULT 'Rank1',
  `Name2` varchar(64) NOT NULL DEFAULT 'Rank2',
  `Name3` varchar(64) NOT NULL DEFAULT 'Rank3',
  `Name4` varchar(64) NOT NULL DEFAULT 'Rank4',
  `Name5` varchar(64) NOT NULL DEFAULT 'Rank5',
  `Name6` varchar(64) NOT NULL DEFAULT 'Rank6',
  `Name7` varchar(64) NOT NULL DEFAULT 'Rank7',
  `App` int(10) NOT NULL,
  `Rank` int(10) NOT NULL,
  `Rank1` int(10) NOT NULL,
  `Rank2` int(10) NOT NULL,
  `Rank3` int(10) NOT NULL,
  `Rank4` int(10) NOT NULL,
  `Rank5` int(10) NOT NULL,
  `Rank6` int(10) NOT NULL,
  `Rank7` int(10) NOT NULL,
  `level` int(10) NOT NULL,
  `Lock` int(11) NOT NULL,
  `MaxMembers` int(3) NOT NULL DEFAULT 0,
  `MinLevel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `factions`
--

INSERT INTO `factions` (`ID`, `Name`, `X`, `Y`, `Z`, `IntX`, `IntY`, `IntZ`, `Interior`, `VW`, `Mats`, `Drugs`, `Bank`, `Anunt`, `PaydayMoney`, `Name1`, `Name2`, `Name3`, `Name4`, `Name5`, `Name6`, `Name7`, `App`, `Rank`, `Rank1`, `Rank2`, `Rank3`, `Rank4`, `Rank5`, `Rank6`, `Rank7`, `level`, `Lock`, `MaxMembers`, `MinLevel`) VALUES
(1, 'Los Santos Police Departament', 1555.49, -1676.31, 16.1953, 246.78, 63.3446, 1003.64, 6, 1, 50000, 500, 5000, 'Raportul fi 15 runeers, 5 permise si 5 arrests.', 3000, '[1] - Rookie', '[2] - Officer', '[3] - Cadet', '[4] - Sergeant', '[5] - Captain', '[6] - Director', '[7] - Chestor', 1, 0, 20, 15, 10, 5, 0, 0, 0, 7, 1, 15, 7),
(2, 'Federal Bureau of Investigations', 626.975, -571.419, 17.9207, 238.567, 139.299, 1003.02, 3, 2, 50000, 500, 5000, 'sedinta duminica viitoare la ora 20:00', 3000, 'FBI [1] Member', 'FBI [2] Agent', 'FBI [3] Special Agent', 'FBI [4] Supervisor', 'FBI [5] Manager', '# FBI Vice-Director', '# FBI Director', 0, 0, 35, 30, 25, 20, 15, 0, 0, 7, 0, 15, 7),
(3, 'National Guard', 154.818, 1903.26, 18.7252, 288.763, 167.704, 1007.17, 3, 3, 50000, 500, 5000, 'SEDINTA VINERI 23:00 !', 3000, 'NG [1] Member', 'NG [2] Agent', 'NG [3] Agent Special', 'NG [4] Supervisor', 'NG [5] Manager', '# NG Vice-Director', '# NG Director', 0, 0, 20, 25, 30, 25, 10, 5, 0, 7, 0, 15, 7),
(4, 'Grove Street Families', 2515.39, -1957.46, 16.7935, 2778.29, -65.8437, 1318.84, 2, 4, 50000, 500, 5000, 'Cine mai da rank-up aiurea are uninvite.', 3000, 'Incepator Grove [1]', 'Avansat Grove [2]', 'General Grove [3]', 'Legend Grove [4]', 'Tester Grove [5]', '** Lord Of Grove', 'Director', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 15, 10),
(5, 'Varrios Los Aztecas', 1456.17, 2774, 10.8203, 2778.29, -65.8437, 1318.84, 2, 5, 50000, 500, 5000, 'Los Aztecas - Cine nu este ONLINE la war-uri, are FW ! WARURILE SUNT OBLIGATORII !', 3000, 'Invatacel', 'Junior', 'Major.', 'Comandant', 'Senior', 'Capitan', 'Capo di Tutti', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 15, 10),
(6, 'The Rifa', 2792.8, -1087.69, 30.7188, 2778.29, -65.8437, 1318.84, 2, 6, 50000, 500, 5000, 'Sa fim numaru 1 in /top! Forta Los Vagos!', 3000, '(1) Soldato -', '(2) Batterie -', '(3) Picciotti -', '(4) Consigliere -', '(5) Uomini D onore -', '(6) El Jefe -', '(7) Don -', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 15, 10),
(7, 'School Instructors', 2139.62, -1176.77, 23.9922, 1494.49, 1304.18, 1093.29, 3, 7, 50000, 500, 5000, 'Sedinta duminca la ora 19:00!', 0, '[1] Instructor', '[2] Instructor Avansat', '[3] Instructor Expert', '[4] Supervisor', '[5] Manager', '# Vice-Director', '# Director', 0, 0, 10, 8, 7, 5, 3, 0, 0, 5, 0, 15, 0),
(8, 'Tow Truck Company', 1629.61, 972.006, 10.8203, 626.835, -12.0344, 1000.92, 1, 8, 50000, 500, 5000, 'Raportul trebuie terminat saptamanal, voi verifica in fiecare duminica la ora 20:00', 3000, '[1] Trainee -', '[2] Mechanic -', '[3] Senior Mechanic -', '[4] Supervisor -', '[5] Manager -', '[6] Under Boss -', '[7] Tow Company Owner -', 0, 0, 30, 25, 20, 15, 10, 0, 0, 5, 0, 15, 5),
(9, 'News Reporters', 2721.13, -2380.05, 17.3403, -2026.96, -104.033, 1035.17, 3, 9, 50000, 500, 5000, '*News Reporters*', 3000, '[1] Reporter', '[2] Ziarist', '[3] Redactor', '[4] Redactor-Sef', '[5] Manager', '# Vice-Director', '# Director', 0, 0, 30, 20, 5, 3, 1, 0, 0, 5, 0, 15, 7),
(10, 'The Ballas', 2636.86, 2351.98, 10.8203, 2778.29, -65.8437, 1318.84, 2, 10, 50000, 500, 5000, 'Sedinta sambata la ora 17:00 cine nu se prezinta primeste UNINVITE ', 3000, '(1) Ragazzino -', '(2) Spacciatore -', '(3) Capodecina -', '6', '(5) Fattam -', 'cartoon123', '(7) Capo Di Tutti', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 15, 7),
(11, 'Hitman Agency', 1072.99, -345.59, 73.9922, -2158.61, 642.401, 1052.38, 1, 11, 50000, 500, 5000, 'Bine ati venit, Succes la raport.', 3000, '[1] Freelancer -', '[2] Marksman -', '[3] Agent -', '[4] Special Agent -', '[5] Special Agent in Charge -', '[6] Vice-Director -', 'Director', 0, 0, 30, 20, 20, 10, 5, 3, 0, 5, 0, 15, 7),
(12, 'Taxi Cab Company', 937.093, 1733.12, 8.8516, 1701.24, -1668.03, 20.2188, 18, 12, 50000, 500, 5000, 'Fare-ul este 1000$', 3000, '[1] Driver', '[2] Driver Advanced', '[3] Driver Expert', '[4] Supervisor', '[5] Manager', '# Vice-Director', '# Director', 0, 0, 30, 25, 20, 15, 10, 0, 0, 5, 0, 15, 0),
(13, 'Paramedic & Fireman', 1607.19, 1815.25, 10.8203, 1494.46, 1304.12, 1093.29, 3, 13, 50000, 500, 5000, '*Paramedic & Fireman*', 3000, '[1] Paramedic', '[2] Paramedic-Chirurg', '[3] Paramedic-Sef', '[4] Supervisor', '[5] Manager', '# Vice-Director', '# Director', 0, 0, 25, 20, 15, 10, 5, 0, 0, 5, 0, 15, 0),
(14, 'Las Venturas Police Department', 2287.19, 2431.38, 10.8203, 246.448, 108.555, 1003.22, 10, 14, 0, 0, 0, 'Welcome tuturor', 3000, 'LV [1] Member', 'LV [2] Officer', 'LV [3] Locotenent', 'LV [4] Supervisor', 'LV [5] Captain', 'LV Co-Leader', 'LV Director', 1, 0, 25, 20, 15, 10, 5, 0, 0, 7, 0, 15, 7),
(15, 'Uber Company', 1111.92, -1796.33, 16.5938, 1701.24, -1668.03, 20.2188, 18, 15, 50000, 500, 5000, 'Duminica sedinta , prezenta este obligatorie la ora 20:30 , cine nu vine are FW', 3000, '[1] Driver', '[2] Driver Advanced', '[3] Driver Expert', '[4] Supervisor', '[5] Manager', '# Vice-Director', '# Director', 0, 0, 30, 25, 20, 15, 10, 2, 0, 5, 1, 15, 5),
(16, 'Yango', -2425.57, 337.396, 37.0015, 1701.24, -1668.03, 20.2188, 18, 16, 50000, 500, 5000, 'Duminica sedinta , prezenta este obligatorie la ora 20:30 , cine nu vine are FW', 3000, '[1] Driver', '[2] Driver Advanced', '[3] Driver Expert', '[4] Supervisor', '[5] Manager', '# Vice-Director', '# Director', 0, 0, 30, 25, 20, 15, 10, 2, 0, 5, 1, 15, 5),
(17, 'San Fierro Police Department', -1962.14, 540.539, 35.1719, 246.78, 63.3446, 1003.64, 6, 17, 50000, 500, 5000, 'Raportul fi 15 runeers, 5 permise si 5 arrests.', 3000, '[1] - Rookie', '[2] - Officer', '[3] - Cadet', '[4] - Sergeant', '[5] - Captain', '[6] - Director', '[7] - Chestor', 1, 0, 20, 15, 10, 5, 0, 0, 0, 7, 1, 15, 7),
(18, 'Verdant Family', 802.806, -1795.14, 13.0234, 2778.29, -65.8437, 1318.84, 2, 4, 50000, 500, 5000, 'Cine mai da rank-up aiurea are uninvite.', 3000, 'Verdant New [1]', 'Advanced Member [2]', 'Attacker [3]', 'Legend of War [4]', 'Tester [5]', 'Chief of Verdant', 'Verdant Boss', 1, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 15, 10);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `faction_apply`
--

CREATE TABLE `faction_apply` (
  `ID` int(11) NOT NULL,
  `FactionID` int(11) NOT NULL,
  `Username` text NOT NULL,
  `Status` int(11) NOT NULL DEFAULT 1,
  `I1` text CHARACTER SET utf8 NOT NULL,
  `I2` text CHARACTER SET utf8 NOT NULL,
  `I3` text CHARACTER SET utf8 NOT NULL,
  `I4` text CHARACTER SET utf8 NOT NULL,
  `I5` text CHARACTER SET utf8 NOT NULL,
  `I6` text CHARACTER SET utf8 NOT NULL,
  `I7` text CHARACTER SET utf8 NOT NULL,
  `I8` text CHARACTER SET utf8 NOT NULL,
  `I9` text CHARACTER SET utf8 NOT NULL,
  `I10` text CHARACTER SET utf8 NOT NULL,
  `I11` text CHARACTER SET utf8 NOT NULL,
  `I12` text CHARACTER SET utf8 NOT NULL,
  `I13` text CHARACTER SET utf8 NOT NULL,
  `I14` text CHARACTER SET utf8 NOT NULL,
  `I15` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `faction_apply`
--

INSERT INTO `faction_apply` (`ID`, `FactionID`, `Username`, `Status`, `I1`, `I2`, `I3`, `I4`, `I5`, `I6`, `I7`, `I8`, `I9`, `I10`, `I11`, `I12`, `I13`, `I14`, `I15`) VALUES
(1, 1, 'AmpistAdv', 2, 'Ma numesc Gheorghe Andrei Petre si am frumoasa varsta de 16 ani.', 'Ma numesc Harbi, am 20 de ani,sunt un baiat cu cei 7 ani de acasa,sunt o fire puternica si nu cedez usor.Stiu sa muncesc in echipa foarte bine ,sunt o persoana sincera ,cinstita si sociabila.Imi plac persoanele cu care pot sa am o discutie calma.Nu-mi place minciuna,prostia si persoanele care se dau mai importante decat restul lumii.Deobicei ma acomodez repede intr-un grup nou.Imi place sa fiu punctual si corect cu toti cei din jur,pun suflet in tot ceea ce fac.Deobicei cand mi se acorda sanse nu o dau in bara.', 'Respectul reprezinta o valoare morala care se manifesta in multiple feluri. Respect inseamna sa ne manifestam politicos si amabil in relatie cu ceilalalti. De asemenea, respectul se observa si in modul Ã®n care vorbim, aratand intelegere, corectitudine, punctualitate, apreciere si grija pentru comportamentele si sentimentele interlocutorilor. Respectul se manifesta nu numai fata de sine sau de ceilalti oameni, dar si fata de comunitate. Respectul pentru comunitate se poate manifesta prin: cunoasterea realizarilor si promovarea traditiilor comunitatii, purtarea cu mandrie a numelui si a portului popular.', 'Este o factiune de tip departament ce se ocupa cu acordarea de jail, menzi si sanctiuni.', 'Desigur.', 'Normal.', 'Ma numesc Andrei, am 16 ani,sunt un baiat cu cei 7 ani de acasa,sunt o fire puternica si nu cedez usor.Stiu sa muncesc in echipa foarte bine ,sunt o persoana sincera ,cinstita si sociabila.Imi plac persoanele cu care pot sa am o discutie calma.Nu-mi place minciuna,prostia si persoanele care se dau mai importante decat restul lumii.Deobicei ma acomodez repede intr-un grup nou.Imi place sa fiu punctual si corect cu toti cei din jur,pun suflet in tot ceea ce fac.Deobicei cand mi se acorda sanse nu o dau in bara.', 'Cea mai mare realizare a fost atunci cand am facut level 7 si cand am luat functia de Helper.', 'Desigur, stiu sa il folosesc.', 'Deoarece are un leader bun, si este o factiune cu o influenta foarte mare.', 'Desigur ca stiu, am mai folosit.', 'In principal premisti Faction Warn.', 'Imi doresc foarte mult sa intru in Los Santos Police Department deoarece este una din factiunile cu o influenta sporita pe server dar si factiunea pe care o respect foarte mult iar majoritatea membrilor din acest departament sunt seriosi si stiu sa lucreze in echipa. Membri sunt foarte intelegatori si caldurosi cu playerii noi si deaceea cred ca ma voi adapta la colectiv.Imi place foarte mult justitia iar de accea cred aici imi este locul.', 'Petrec cam 7 - 8 ore pe zi.', 'Multumesc ca ai pierdut din timpul tau pentru a raspunde la aceasta aplicatie.'),
(2, 1, 'costelbiju', 2, 'Ma numesc Andrei , am varsta de 14 ani.', 'Personajul meu imaginar care ar putea fi intr-un joc s-ar numi Gabi ar avea parul saten inchis.Baiatul are ochii albastri,.Gabi ar fi imbracat cu o bluza alba ar avea adidasi galbeni.\r\n\r\n\r\n\r\n', 'Pentru mine inseamna sa nu injur,sa nu fac misto de alti playeri.etc', 'Los Santos Police Department este un departament  in orasul Los Santos. Aceasta se ocupa cu suspectii care au wanted si cu cei care incalca regulile de circulatie', 'Da.', 'Da.', 'Sunt prietenos, cu capul pe umeri, intelegator, in unele cazuri ma enervez repede, dar totusi sunt un prieten pe care te poti baza oricand,voi fi mereu acolo sa ascult pe cineva la nevoie si sa dau un sfat. Imi place sa le spun lucrurilor pe fata, chiar daca altora nu le convine adevarul. Nu imi plac oamenii fatarnici, oamenii care tanjesc dupa atentie si mai ales, nu ii suport pe cei care au pretentia sa ma schimb sau sa fac compromisuri de dragul lor. Sunt de parere ca intre doua persoane trebuie sa existe minimul de respect, daca nu, maximul de ignor.', 'Cea mai mare realizare de pe server a fost cand mi-am cumparat o masina.', 'Da.', 'Am ales sa intru in acest departament deoarece imi place foarte mult aceasta factiune si fac fata acestei factiuni', 'Da.', 'Faction Warn', 'Am ales sa aplic in aceasta factiune deoarece stiu ca ma descurc foarte bine.', '3-4 ore ', 'Multumesc pentru atentia acordata.'),
(3, 1, 'xPaulFTW', 2, 'Ma numesc Lascu Paul Gabriel si am frumoasa varsta de 12 ani.', 'Personajul meu imaginar este ionchyAdv, acesta imi scripteaza zilnic si nu imi cere bani. El testeaza bug-uri si nu este fitos, e cel mai bun scripter din Romania si este foarte serios.', 'Respectul pentru mine inseamna sa ajuti pe cineva la neovie si sa nu fi arogant. Principiul meu a fost intotdeauna, daca ma respecti te respect.', 'Los Santos Police Departament este un departament si se ocupa cu prinderea suspectilor care detin wanted si cu regulile de circulatie.', 'Da, sunt de acord.', 'Desigur.', 'Sunt un baiat frumos, inteligent, cu simtul umorului, un baiat de treaba, inteligent. Consider ca sunt un adevarat model in societate, dar nu ma laud cu asta. Am o familie care ma iubeste si pe care o iubesc si eu foarte mult.', 'Realizarea mea cea mai mare pe server a fost chiar atunci cand l-am deschis, aceasta find ca am facut numarul de 70 de jucatori online.', 'Da, sunt constient.', 'Deoarece consider ca are un lider capabil.', 'Da, stiu sa folosesc deoarece am mai fost in Los Santos Police Departament.', 'Daca nu ma prezint la sedinte la rank 1 primesc uninvite, iar la rank 2+ primesc FW respectiv Faction Warn.', 'Am ales sa aplic in aceasta factiune deoarece consider ca are potential si are un lider capabil.', 'Aloc jocului zilnic undeva la 4-5 ore.', 'Multumesc pentru timpul acordat.'),
(4, 1, 'Edward', 3, 'Numele meu ie Edi si am 15 ani', 'Un vanator sare cu pusca dupa un iepure', 'Sa te intelegi cu toti', 'LSPD este un departament si e ocupa cu suspecti cu wanted si cu trafic amenzi/permise', 'da', 'da', 'Amuzant , bine pus la punct , cei 7 ani de acasa si Am rabdare', 'Nu am o realizare momentan', 'Da', 'Deoarece este un departament bine pus la punct', 'Da', 'FW', 'Lafel ca motivu de la intrebarea 10', '4-6 ore', 'nu'),
(5, 1, 'SebastianAdv', 2, 'MÄƒ numesc Sebastian È™i am vÃ¢rsta de 14 ani.', 'Sunt un bÄƒiat matur, cu cei 7 ani de acasÄƒ, respectuos È™i Ã®mi place sÄƒ ajut la nevoie.', 'Termenul respect pentru mine Ã®nseamnÄƒ sÄƒ respecÈ›i pe cei din jur, sÄƒ nu-i Ã®njuri, etc.', 'Este un departament si se ocupa cu arestarea / omorarea suspectilor cu wanted si regulile de circulatie.', 'Da.', 'Da.', 'MÄƒ numesc Sebastian, am vÃ¢rsta de 14 ani È™i locuiesc Ã®n Germania. Personalitatea mea este caracterizatÄƒ de douÄƒ trÄƒsÄƒturi dominante: ambiÈ›ia È™i sociabilitatea. AmbiÈ›ia m-a fÄƒcut sÄƒ-mi fixez idei de viitor, sÄƒ am tendinÈ›a de a realiza anumite lucruri constructive. Muzica È™i jocurile pot spune cÄƒ fac parte din viaÈ›a mea, dupÄƒ pÄƒrerea mea aceste doua lucruri importante pentru mine, m-au fÄƒcut o persoanÄƒ mult mai sociabilÄƒ, mai deschisÄƒ.', 'FuncÈ›ia de admin.', 'Da.', 'Deoarece este singura cu lider.', 'Da.', 'Uninvite.', 'MÄƒ atrage cu ce se ocupÄƒ, mÄƒ atrage staff-ul facÈ›iunii cÃ¢t È™i membrii acesteia.', '2-3 ore pe zi.', 'Mersi.'),
(6, 1, 'SlyRacon', 2, 'Ma numesc Danu,am 14 ani,sunt un baiat cu cei 7 ani de acasa,sunt o fire puternica si nu cedez usor.Stiu sa muncesc in echipa foarte bine ,sunt o persoana sincera ,cinstita si sociabila.Imi plac persoanele cu care pot sa am o discutie calma.Nu-mi place minciuna,prostia si persoanele care se dau mai importante decat restul lumii.Deobicei ma acomodez repede intr-un grup nou.Imi place sa fiu punctual si corect cu toti cei din jur,pun suflet in tot ceea ce fac.Deobicei cand mi se acorda sanse nu o dau in bara.', 'Ca personaj literar, Harap-Alb simbolizeazÄƒ un cod moral, el trebuind sÄƒ strÄƒbatÄƒ un drum de iniÈ›iere, sÄƒ acumuleze experienÈ›Äƒ, sÄƒ se formeze pentru viaÈ›Äƒ prin lupta cu forÈ›ele malefice È™i sÄƒ obÈ›inÄƒ o Ã®nÈ›elepciune bazatÄƒ pe ideea de adevÄƒr, dreptate, prietenie, iubire, care sÄƒ-l facÄƒ capabil de a domni corect peste o Ã®ntreagÄƒ Ã®mpÄƒrÄƒÈ›ie. Se poate totuÈ™i observa cÄƒ personajul este atipic, deoarece, spre deosebire de FÄƒt-Frumos din basmele populare, acesta reuneÈ™te atÃ¢t calitÄƒÈ›i, cÃ¢t È™i defecte. Nu se remarcÄƒ doar prin vitejie È™i forÈ›Äƒ supranaturalÄƒ, ci È™i printr-un comportament firesc, fiind respectuos, milos, sensibil, harnic, temÄƒtor uneori, naiv È™i slab alteori, dar dÃ¢nd dovadÄƒ de simÈ› moral È™i de echilibru.', 'Pentru mine respectul reprezintÄƒ atitudinea sau sentimentul de apreciere, stimÄƒ È™i consideraÈ›ie faÈ›Äƒ de o persoanÄƒ, o idee sau o instituÈ›ie. Acesta poate fi exprimat verbal sau prin gesturi.', 'Los Santos Police Department se ocupa cu arestarea / prinderea suspectilor ce detin wanted dar si cu regulile de circulatie precum permise / amenzi.', 'Da. sunt de acord sa respect cadrele cu rank mai mare decat mine.', 'Da, sunt constient ca nu am voie sa intreb liderul/ subliderul sa se uite la aplicatia creeata de mine.', 'MÄƒ numesc Danu, am 14 ani È™i sunt din Republica Moldova. Sunt o fire care stie ce vrea de la viaÈ›Äƒ È™i È™tiu cum sÄƒmi Ã®mpart timpul pentru a face orice. Sunt amabil, respectuos, sunt un bÄƒiat care È™tie sÄƒ stea in banca lui, am simÈ›ul umorului È™i am cei 7 ani de acasÄƒ, ÃŽmi place sÄƒ Ã®mi fac prieteni È™i chiar foarte repede mÄƒ integrez Ã®ntr-un colectiv, Sunt un om calculat, sociabil, sunt bine organizat, mÄƒ gÃ®ndesc de douÄƒ ori Ã®nainte de a face un lucru, nu suport oamenii falÈ™i È™i mincinoÈ™i. Acesta sunt eu È™i nu mÄƒ pot schimba.', 'Cea mai mare realizare a mea de pe server a fost dobandirea levelului 6.', 'Da, sunt constient de acest lucru.', 'Imi doresc foarte mult sa intru in aceasta factiune deoarece este una dintre cele mai importante factiuni ale serverului, este o factiune dorita de multi playeri dar putini au abilitatiile necesare pentru a intra intr-o asemenea factiune.Am decis sa aplic la acest departament deoarece imi place foarte mult cu ce se ocupa acesta. Imi doresc sa fac parte din acest departament deoarece stiu totul despre acesta, si cred ca as fi potrivit pentru a ma inrola intr-o asemenea factiune. Facand parte dintr-o asemenea factiune imi pot dezvalui si abilitatiile mele pe care o sa le descoperiti pe parcurs si o sa dau dovada de un jucator cu bunul simt.', 'Da, stiu sa folosesc CMD-uri / KeyBindere pentru departament.', 'Daca nu ma prezint la sedinte primesc fwarn/univite depinde de cate sedinte am lipsit.', 'Imi doresc foarte mult sa intru in Los Santos Police Department deoarece este una din factiunile cu o influenta sporita pe server dar si factiunea pe care o respect foarte mult iar majoritatea membrilor din acest departament sunt seriosi si stiu sa lucreze in echipa. Membri sunt foarte intelegatori si caldurosi cu playerii noi si deaceea cred ca ma voi adapta la colectiv.Imi place foarte mult justitia iar de accea cred aici imi este locul.', 'In prezent joc 5-6-7 ore pe server,desi am foarte putin ore jucat este adevarat.Inainte nu acordam prea mult timp acestui joc il lasam mai mult pe sleep dar acum am inceput serios sa joc iar activitatea mea a crescut,deci nu ar trebui sa ma judecati pentru orele jucate.', 'Multumesc anticipat pentru acordarea timpului si citirea acestei aplicatie.'),
(7, 1, '2k20_Robert', 3, 'Salut!Ma numesc Robet Florin si am mininata varsta  de 14 ani.', '', 'Termenul de respect inseamana sa nu injuri si sa fi respector.Dupa parerea mea.', '', 'Da,sunt de acord!', 'Da,sunt constient.', 'Numele meu este Marineta Florin Robert, locuiesc in orsul Slatina, judetul Olt si am varsta de 14 ani. Sunt plin de viata, nu uit sa zambesc, iar atunci cand apar probleme, incerc sa-mi ocup timpul, astfel incat sa nu ma gandesc prea mult la lucrurile negative.Imi plac jocuirele PC cum ar fi samp-ul,CS.GO.Sunt un tip mai agresiv nu accept orce jicnotura.Imi plac filmele de comedie si muzica RAP.Respect dar am pretenÈ›ia cÄƒ È™i eu sÄƒ fiu la rÃ¢ndul meu respectat.Nu suport minciuna odata ce mai mintit nu voi mai avea incredere in acea persoana. Merg la scoala, la sala..Stiu sa muncesc in echipa foarte bine ,sunt o persoana sincera ,cinstita si sociabila.Imi plac masini si motorele sport.Am ce 7 ani de acasa.La scoala nu ma omor asa de tare cu invatatul.La scoala nu ma omor asa de tare cu invatatul. Nu judec oamenii dupa felul cum arata.Nu imi place sa imi vorbesti de rau prieteni.Nu suport persoanele care te critica.Am plan sa plec in Germania.Am o familie foarte frumoasa.Stiu sa fiu responsabil.ÃŽn tot deauna ma consider social È™i nu sunt omu cere sa se supere din orice.Gandesc inainte de a actiona.', 'Nu am nicio realizare.', 'Da!', 'Deoarece este o facÈ›iune foarte frumoasa È™i liderul este un bÄƒiat de nota 10. Membri sunt bun ascultator, sunt capabil sa lucrez in echipa.Imi place sa confisc permise,sa merg dupa wanted.. Este facÈ›iune mea preferata. Este o factiune respectata si cu o influenta foarte mare pe server, probabil cea mai bine organizata de catre lider, iar membrii ridica factiunea la asteptarile tuturor prin faptul ca sunt foarte constiicios', 'Da!!', 'FW,acum depinde si ce sedinta este.', 'Deorece vreau sa fac orasele sa fie linistite alturi de colegi mei.', '+5 ore', 'Sper sa fiu acceptat!Va pwp.'),
(8, 1, 'EvilCristiFTW', 3, 'Ma numesc Cristian, si am varsta frumoasa de 13 ani.', 'Imi pare rau, dar nu inteleg intrebare.', 'Termenul de respect pentru mine, inseamna foarte mult sa fii respectat.', 'Los Santos Police Departament este o factiune de tip departament si se ocupa cu prinderea faptasilor si regulile de circulatie.', 'O sa respect toate rank-urile din factiune si toti membrii nu conteaza rank-ul pe care il are.', 'Da, sunt constient.', 'Salut. Ma numesc Cristian, am varsta de 13 ani, sunt din satul Tirnova judetul Caras-Severin. Sunt o persoana cu ce-i 7 ani de acasa o sa respect tot serverul admini, helperii, membrii, jucatorii. Sper sa fiu acceptat in aceasta factiune. Va pup &lt;3', 'Nu am avut foarte multe realizari.', 'Da, sunt constient.', 'Deoarece doar factiune asta are aplicatile deschise.', 'Da, desigur.', 'Daca nu o sa merg la sedinte voi fi pedepsit cu FW (Faction Warn).', 'Deoarece doar factiune asta are aplicatile deschise.', 'Cat o sa fie  nevoie sa ajut colegii.', 'Sper sa fiu acceptat. Va pup chiar daca nu sunt acceptat. &lt;3'),
(9, 1, 'AnDu22', 1, 'Ma numesc Josanu Daniel si am 11 ani.', 'Are 11 ani se numeste David.E desdept ii place sa stea pe telefon sa se joace PUPG MOBLILE.E foarte amuzant si stie de gluma.Vrea sa sa si cumpere calculator sa se joace samp alaturi de mine pe cel mai tare server  rpg.chars.ro.Are simntul umorului si nu minte niciodata.E curajos ii plac cainii si uraste pisicile.Ii place sa se dea pe bicicleta.E frumos si talentat.', 'Pentru mine inseamna termenul de respect atunci cand cinva de repsecta cu adevarat si nu vrea sa ti faca rau niciodata.Persoanele care te respecta vor sa te ajute si sa nu te vorbeasca pe la spate.Daca nu e respect intr o factiune factiunea va fi rea , pentru ca toti o sa se vb pe la spate si nu o sa fie colaborare in echipa.\r\n ', 'Los Santos Police Department este o sectie de politie si se ocupa cu prinderea persoanelor care dau rob sau persoanele care omoara alte persoane si le dau jail sau ii omoara in functie de cate stele au.', 'Da sunt de acord.', 'Da sunt constient.', 'Sunt destept imi place sa ajut lumea si doresc persoanelor sa fie norocoase in viata.Imi place sa stau la calculator sa ma joc samp sau fortnite ele sunt jocurile mele preferate.Imi plac animalele.Sunt respectuos si de incredere.Nu mint si sunt curajos.Doresc persoanelor numai bine.', 'Nu am o mare realizare pentru ca serverul abia s a deschis si nu am realizat nimic.', 'Da stiu regulile foarte bine.', 'Eu mereu am vrut sa fiu in dp , pentru ca e foarte usor de facut raportul si mi se pare destul de usor in dp.', 'Da.', 'Faction warn.', 'Am ales sa aplic in aceasta factiune , pentru ca imi place cu ce se ocupa.', 'Joc 3-4 ore pe zi.', 'Nu.');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `faction_logs`
--

CREATE TABLE `faction_logs` (
  `id` int(11) NOT NULL,
  `player` int(11) NOT NULL,
  `leader` int(11) NOT NULL,
  `Text` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `faction_logs`
--

INSERT INTO `faction_logs` (`id`, `player`, `leader`, `Text`, `time`) VALUES
(1, 33, 1, 'Zaki este liderul factiunii Los Santos Police Departament.', '0000-00-00 00:00:00'),
(3, 65, 33, 'AmpistAdv a intrat in factiunea Los Santos Police Departament.', '0000-00-00 00:00:00'),
(4, 67, 33, 'costelbiju a intrat in factiunea Los Santos Police Departament.', '0000-00-00 00:00:00'),
(5, 3, 33, 'SebastianAdv a intrat in factiunea Los Santos Police Departament.', '0000-00-00 00:00:00'),
(6, 147, 33, 'SlyRacon a intrat in factiunea Los Santos Police Departament.', '0000-00-00 00:00:00'),
(7, 147, 1, 'SlyRacon a fost scos de Lider xPaulFTW din Los Santos Police Departament (rank 1) dupa 0 zile.', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `fobjects`
--

CREATE TABLE `fobjects` (
  `ID` int(10) NOT NULL,
  `Model` int(10) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `RotX` float NOT NULL,
  `RotY` float NOT NULL,
  `RotZ` float NOT NULL,
  `Virtual` int(10) NOT NULL,
  `House` int(10) NOT NULL,
  `Name` varchar(64) NOT NULL DEFAULT 'No name'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `friends`
--

CREATE TABLE `friends` (
  `ID` int(11) NOT NULL,
  `friendID` int(11) NOT NULL,
  `friendName` varchar(644) NOT NULL,
  `AddBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `friends`
--

INSERT INTO `friends` (`ID`, `friendID`, `friendName`, `AddBy`) VALUES
(1, 20, 'Optimum', 33),
(2, 6, 'xYz', 18),
(3, 20, 'Optimum', 61),
(4, 18, 'Lycser', 6),
(5, 40, 'SeNNz..', 51),
(6, 25, 'gucciman', 77),
(7, 2, 'ionchyAdv', 55),
(8, 20, 'Optimum', 58),
(9, 58, 'ExtT3rN', 20),
(10, 1, 'xPaulFTW', 55),
(11, 2, 'ionchyAdv', 1),
(12, 51, 'Edward', 38),
(13, 1, 'xPaulFTW', 21),
(14, 1, 'xPaulFTW', 24),
(15, 1, 'xPaulFTW', 126),
(16, 1, 'xPaulFTW', 46),
(17, 55, 'xDavidFTW', 37),
(18, 37, 'JmeX', 55),
(19, 1, 'xPaulFTW', 140),
(20, 55, 'xDavidFTW', 26),
(21, 26, 'Sporsion', 55),
(22, 15, 'ILOVEPURPLE', 147),
(23, 1, 'xPaulFTW', 114),
(24, 55, 'xDavidFTW', 139),
(25, 139, 'FcDarius', 55),
(26, 15, 'ILOVEPURPLE', 67),
(27, 204, 'Betch@TractezTurful', 207),
(28, 32, 'FacDMptERARPG', 55),
(29, 55, 'xDavidFTW', 32),
(30, 32, 'FacDMptERARPG', 139),
(31, 139, 'FcDarius', 32),
(32, 85, 'AcroniX', 66),
(33, 288, 'StefanDeLaCraiova', 67),
(34, 67, 'costelbiju', 288),
(36, 1, 'xPaulFTW', 238),
(37, 360, 'MadrYx', 289),
(38, 289, 'CRIXUS', 360),
(39, 341, 'Danut', 135),
(40, 1, 'xPaulFTW', 135);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `garages`
--

CREATE TABLE `garages` (
  `ID` int(11) NOT NULL,
  `Owner` varchar(32) NOT NULL DEFAULT 'none',
  `EntranceX` float NOT NULL,
  `EntranceY` float NOT NULL,
  `EntranceZ` float NOT NULL,
  `EnterR` float NOT NULL,
  `ExitX` float NOT NULL,
  `ExitY` float NOT NULL,
  `ExitZ` float NOT NULL,
  `ExitR` float NOT NULL,
  `Virtual` int(11) NOT NULL,
  `House` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='5';

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `graffiti`
--

CREATE TABLE `graffiti` (
  `ID` int(10) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `Rot` float NOT NULL,
  `Owned` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `houses`
--

CREATE TABLE `houses` (
  `ID` int(10) NOT NULL,
  `Entrancex` float NOT NULL,
  `Entrancey` float NOT NULL,
  `Entrancez` float NOT NULL,
  `Exitx` float NOT NULL,
  `Exity` float NOT NULL,
  `Exitz` float NOT NULL,
  `Owner` varchar(25) NOT NULL DEFAULT 'The State',
  `Discription` varchar(50) NOT NULL DEFAULT 'Fara descriere.',
  `Value` int(20) NOT NULL,
  `Hel` int(11) NOT NULL,
  `Arm` int(11) NOT NULL,
  `Interior` int(11) NOT NULL,
  `Lockk` int(11) NOT NULL,
  `Owned` int(11) NOT NULL,
  `Rent` int(11) NOT NULL,
  `Rentabil` int(11) NOT NULL,
  `Takings` int(11) NOT NULL,
  `Level` int(11) NOT NULL,
  `Virtual` int(11) NOT NULL,
  `Radio` int(11) NOT NULL DEFAULT -1,
  `Zise` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `houses`
--

INSERT INTO `houses` (`ID`, `Entrancex`, `Entrancey`, `Entrancez`, `Exitx`, `Exity`, `Exitz`, `Owner`, `Discription`, `Value`, `Hel`, `Arm`, `Interior`, `Lockk`, `Owned`, `Rent`, `Rentabil`, `Takings`, `Level`, `Virtual`, `Radio`, `Zise`) VALUES
(1, 2197.27, -60.821, 28.1535, 223.08, 1287.74, 1082.14, 'The State', 'Casa lui K3k3lino', 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, -1, 1),
(2, 2199.95, -37.2975, 28.1535, 300.862, 309.887, 1003.3, 'The State', 'Matthew Company SRL', 0, 0, 0, 4, 0, 1, 0, 0, 0, 2, 2, 3, 1),
(3, 2269.45, 111.768, 28.4416, 2282.79, -1139.4, 1050.9, 'The State', 'casa barosanilor', 0, 0, 0, 11, 0, 1, 0, 1, 0, 7, 3, -1, 1),
(4, 2443.27, 61.7631, 28.4416, -42.5438, 1406.32, 1084.43, 'The State', 'In fiecare Vineri la 15:30  Salariu', 0, 0, 0, 8, 0, 1, 0, 0, 0, 7, 4, 3, 1),
(5, 2249.2, 111.295, 28.4416, -42.5438, 1406.32, 1084.43, 'The State', 'King Mansion', 0, 0, 0, 8, 0, 1, 0, 1, 0, 7, 5, -1, 1),
(6, 2204.16, 106.061, 28.4416, 2308.81, -1212.24, 1049.02, 'The State', 'DOLOARI $$$', 0, 0, 0, 6, 0, 1, 0, 0, 0, 7, 6, -1, 1),
(7, 2203.85, 62.3238, 28.4416, 2259.82, -1135.76, 1050.63, 'The State', 'King.', 0, 0, 0, 10, 0, 1, 0, 1, 0, 7, 7, -1, 1),
(8, 2413.63, 61.7541, 28.4416, 2308.81, -1212.24, 1049.02, 'The State', 'Dai [/rentroom] si ai o zi faina', 0, 0, 0, 6, 0, 1, 0, 1, 0, 7, 8, 1, 1),
(9, 2398.31, 111.761, 28.4416, 2282.79, -1139.4, 1050.9, 'The State', 'Vã astept cu rent.', 0, 0, 0, 11, 0, 1, 0, 1, 0, 7, 9, 1, 1),
(10, 2364, 187.209, 28.4416, 2233.62, -1114.58, 1050.88, 'The State', 'Casuta Lu ZeD', 0, 0, 0, 5, 0, 1, 0, 1, 0, 7, 10, -1, 1),
(11, 2363.99, 116.116, 28.4416, 223.08, 1287.74, 1082.14, 'The State', 'Casa de bastani ', 0, 0, 0, 1, 0, 1, 0, 0, 0, 7, 11, -1, 1),
(12, 2363.68, 166.201, 28.4416, 2217.82, -1076.14, 1050.48, 'The State', 'Uber Company FTW!', 0, 0, 0, 1, 0, 1, 0, 0, 0, 7, 12, -1, 1),
(13, 2364, 142.064, 28.4416, 267.158, 305.228, 999.148, 'The State', 'PentHouse Mitri', 0, 0, 0, 2, 0, 1, 0, 1, 0, 7, 13, 17, 1),
(14, 2323.85, 116.198, 28.4416, -42.5438, 1406.32, 1084.43, 'The State', 'DOAR INTERLOPI!', 0, 0, 0, 8, 0, 1, 0, 0, 0, 7, 14, -1, 1),
(15, 2323.85, 136.309, 28.4416, 300.862, 309.887, 1003.3, 'The State', 'Casa fratiei de pe b-hood', 0, 0, 0, 4, 0, 1, 0, 1, 0, 7, 15, -1, 1),
(16, 1845.44, 661.185, 11.4609, 328.003, 1478.55, 1084.44, 'The State', 'Cea mai tare casa din \"PARCARE\"', 0, 0, 0, 15, 0, 1, 0, 1, 0, 7, 16, -1, 2),
(17, 398.156, -1271.37, 50.0198, 2237.6, -1080.88, 1049.02, 'The State', 'Fara descriere.', 0, 0, 0, 8, 0, 1, 0, 0, 0, 7, 17, -1, 2),
(18, 1844.53, 690.41, 11.4531, 2282.79, -1139.4, 1050.9, 'The State', 'West Coast G.S.B', 0, 0, 0, 11, 0, 1, 0, 0, 0, 7, 18, 14, 1),
(19, 1843.99, 718.728, 11.4683, 223.08, 1287.74, 1082.14, 'The State', 'Fara descriere.', 0, 0, 0, 1, 0, 1, 0, 1, 0, 7, 19, -1, 1),
(20, 1845.44, 741.206, 11.4609, 2308.81, -1212.24, 1049.02, 'The State', 'Palat jr :))', 0, 0, 0, 6, 0, 1, 0, 1, 0, 7, 20, -1, 1),
(21, 2006.82, 1167.62, 10.8203, 226.303, 1114.19, 1080.99, 'The State', 'Casa Regelui', 0, 0, 0, 5, 0, 1, 0, 0, 0, 7, 21, 17, 3),
(22, 2239.05, 1285.83, 10.8203, -42.5438, 1406.32, 1084.43, 'The State', 'PIRAMIDA LUI DAMYNPC', 0, 0, 0, 8, 0, 1, 0, 0, 0, 7, 22, -1, 1),
(23, 2011.42, 695.16, 11.4609, 223.08, 1287.74, 1082.14, 'The State', '>>ARE JOHN CASA WE<<', 0, 0, 0, 1, 0, 1, 0, 1, 0, 7, 23, -1, 1),
(24, 2014.03, 650.405, 11.4609, 2282.79, -1139.4, 1050.9, 'The State', 'Doar cei cu Valoare <3', 0, 0, 0, 11, 0, 1, 0, 1, 0, 7, 24, 1, 1),
(25, 2043.2, 651.311, 11.4609, 328.003, 1478.55, 1084.44, 'The State', 'Fara descriere.', 0, 0, 0, 15, 0, 1, 0, 0, 0, 7, 25, -1, 1),
(26, 2040.7, 696.092, 11.4531, 2259.82, -1135.76, 1050.63, 'The State', 'Sunt Mafiot XXporno', 0, 0, 0, 10, 0, 1, 0, 1, 0, 7, 26, -1, 1),
(27, 2068.93, 696.627, 11.4683, 223.08, 1287.74, 1082.14, 'The State', 'Fara descriere.', 0, 0, 0, 1, 0, 1, 0, 1, 0, 7, 27, -1, 1),
(28, 2065.83, 649.862, 11.4683, 328.003, 1478.55, 1084.44, 'The State', 'Fara descriere.', 0, 0, 0, 15, 0, 1, 0, 0, 0, 7, 28, -1, 1),
(29, 2091.14, 695.189, 11.4609, 300.862, 309.887, 1003.3, 'The State', 'Fara descriere.', 0, 0, 0, 4, 0, 1, 0, 1, 0, 7, 29, -1, 1),
(30, 2093.97, 650.405, 11.4609, 223.08, 1287.74, 1082.14, 'The State', 'Aici stau Mafioti ADV!', 0, 0, 0, 1, 0, 1, 0, 1, 0, 7, 30, 3, 1),
(31, 2123.33, 651.314, 11.4609, -42.5438, 1406.32, 1084.43, 'The State', 'Seven Stars', 0, 0, 0, 8, 0, 1, 0, 1, 0, 7, 31, -1, 1),
(32, 2120.44, 696.093, 11.4531, 300.862, 309.887, 1003.3, 'The State', 'Fara descriere.', 0, 0, 0, 4, 0, 1, 0, 1, 0, 7, 32, -1, 1),
(33, 2122.54, 731.265, 11.4609, 223.08, 1287.74, 1082.14, 'The State', 'Subscribe @AlFue on YT', 0, 0, 0, 1, 0, 1, 0, 1, 0, 7, 33, 1, 1),
(34, 2123.43, 776.103, 11.4453, 2308.81, -1212.24, 1049.02, 'The State', 'Casa zeilor', 0, 0, 0, 6, 0, 1, 0, 1, 1750, 7, 34, 3, 1),
(35, 2094.08, 775.195, 11.4531, 300.862, 309.887, 1003.3, 'The State', 'Hanul Drumetului ', 0, 0, 0, 4, 0, 1, 0, 1, 0, 7, 35, -1, 1),
(36, 2071.49, 776.637, 11.4605, 223.08, 1287.74, 1082.14, 'The State', 'PIIMP', 0, 0, 0, 1, 0, 1, 0, 0, 0, 7, 36, -1, 1),
(37, 2093.38, 730.358, 11.4531, 2308.81, -1212.24, 1049.02, 'The State', 'Cea Mai tare casa de pe sv', 0, 0, 0, 6, 0, 1, 0, 0, 0, 7, 37, -1, 1),
(38, 2064.97, 729.825, 11.4683, 2308.81, -1212.24, 1049.02, 'The State', 'Satrabonti & Satraboante', 0, 0, 0, 6, 0, 1, 0, 0, 0, 7, 38, 3, 1),
(39, 2042.51, 731.265, 11.4609, 223.08, 1287.74, 1082.14, 'The State', 'Fara descriere.', 0, 0, 0, 1, 0, 1, 0, 0, 0, 7, 39, -1, 1),
(40, 2043.14, 776.102, 11.4531, 2233.62, -1114.58, 1050.88, 'The State', '[eB] - Clan HQ', 0, 0, 0, 5, 0, 1, 0, 1, 0, 7, 40, -1, 1),
(41, 2013.97, 775.196, 11.4609, 300.862, 309.887, 1003.3, 'The State', 'Fara descriere.', 0, 0, 0, 4, 0, 1, 0, 0, 0, 7, 41, -1, 1),
(42, 2013.3, 730.363, 11.4531, 2217.82, -1076.14, 1050.48, 'The State', 'casa lui abi talent daca ar fi sarac', 0, 0, 0, 1, 0, 1, 0, 0, 0, 7, 42, 3, 1),
(43, 1566.83, 23.2562, 24.1641, 328.003, 1478.55, 1084.44, 'The State', 'Hai cu un rent<3', 0, 0, 0, 15, 0, 1, 0, 0, 0, 7, 43, -1, 1),
(44, 1546.34, 32.2287, 24.1406, 328.003, 1478.55, 1084.44, 'The State', 'Fara descriere.', 0, 0, 0, 15, 0, 1, 0, 0, 0, 7, 44, -1, 1),
(45, 1496.94, -687.893, 95.5633, -42.5438, 1406.32, 1084.43, 'The State', 'Money lider', 0, 0, 0, 8, 0, 1, 0, 0, 0, 7, 45, -1, 1),
(46, 1442.47, -628.833, 95.7186, 2308.81, -1212.24, 1049.02, 'The State', 'Fara descriere.', 0, 0, 0, 6, 0, 1, 0, 1, 0, 7, 46, 3, 1),
(47, 745.267, -556.778, 18.013, 2308.81, -1212.24, 1049.02, 'AndreiKNGS', 'HQ (BagUnBlant) (BUB)', 0, 0, 0, 6, 0, 1, 0, 1, 0, 7, 47, 3, 1),
(48, 1259.64, -785.467, 92.0312, -734.81, 1589.67, 1.61453, 'The State', 'The American House', 0, 0, 0, 10, 0, 1, 0, 0, 0, 7, 48, 4, 3),
(49, 1095.05, -647.915, 113.648, 140.268, 1365.92, 1083.86, 'The State', 'Palat adevarat', 0, 0, 0, 5, 0, 1, 0, 1, 0, 7, 49, -1, 2),
(50, 1045.13, -642.943, 120.117, 235.34, 1186.68, 1080.26, 'The State', 'Casa de bastani', 0, 0, 0, 3, 0, 1, 0, 0, 0, 7, 50, 3, 1),
(51, 980.516, -677.244, 121.976, 225.68, 1021.45, 1084.02, 'The State', 'Fara descriere.', 0, 0, 0, 7, 0, 1, 0, 0, 0, 7, 51, 3, 1),
(52, 946.332, -710.676, 122.62, 2282.79, -1139.4, 1050.9, 'The State', 'Haidati cu un rent!', 0, 0, 0, 11, 0, 1, 0, 1, 0, 7, 52, -1, 1),
(53, 897.797, -677.299, 116.89, -42.5438, 1406.32, 1084.43, 'The State', 'Fara descriere.', 0, 0, 0, 8, 0, 1, 0, 0, 0, 7, 53, -1, 1),
(54, 745.445, -591.191, 18.013, 223.08, 1287.74, 1082.14, 'SilentScream', 'King Baby Shadow Regele', 0, 0, 0, 1, 0, 1, 0, 0, 0, 7, 54, -1, 1),
(55, 977.469, -771.716, 112.203, 83.03, 1322.28, 1083.87, 'The State', 'Fara descriere.', 0, 0, 0, 9, 0, 1, 0, 1, 0, 7, 55, -1, 1),
(56, 1112.64, -742.116, 100.133, 24.068, 1340.55, 1084.38, 'The State', 'Va astept cu rent , pup', 0, 0, 0, 10, 0, 1, 0, 0, 0, 7, 56, -1, 2),
(57, 1094.07, -807.118, 107.419, 223.08, 1287.74, 1082.14, 'The State', 'Cea mai smekechera zona posibila.', 0, 0, 0, 1, 0, 1, 0, 1, 0, 7, 57, -1, 1),
(58, 1034.85, -813.165, 101.852, 2282.79, -1139.4, 1050.9, 'The State', 'LEJEREANU BMW e36', 0, 0, 0, 11, 0, 1, 0, 1, 0, 7, 58, -1, 1),
(59, 989.821, -828.644, 95.4686, -261.278, 1456.74, 1084.37, 'The State', 'Fara descriere.', 0, 0, 0, 4, 0, 1, 0, 0, 0, 7, 59, -1, 2),
(60, 937.797, -848.355, 93.6281, 223.08, 1287.74, 1082.14, 'The State', 'The Lux House', 0, 0, 0, 1, 0, 1, 0, 1, 0, 7, 60, -1, 1),
(61, 924.004, -853.607, 93.4565, 2282.79, -1139.4, 1050.9, 'The State', 'bo$$ da bo$$', 0, 0, 0, 11, 0, 1, 0, 0, 0, 7, 61, -1, 1),
(62, 835.997, -894.887, 68.7689, 490.865, 1399.2, 1080.26, 'The State', 'Vila care cauta chiriasi!', 0, 0, 0, 2, 0, 1, 0, 1, 0, 7, 62, -1, 2),
(63, 827.854, -857.971, 70.3308, 2282.79, -1139.4, 1050.9, 'yeLLow.w0w', 'Casa Faraonilor !', 0, 1, 0, 11, 0, 1, 0, 1, 0, 7, 63, 3, 1),
(64, 724.818, -999.445, 52.7344, -42.5438, 1406.32, 1084.43, 'The State', 'Casa lu Dragnea', 0, 0, 0, 8, 0, 1, 0, 1, 0, 7, 64, -1, 1),
(65, 700.293, -1060.27, 49.4217, 2196.03, -1204.38, 1049.02, 'The State', 'Fara descriere.', 0, 0, 0, 6, 0, 1, 0, 0, 0, 7, 65, 1, 2),
(66, 645.966, -1117.45, 44.207, -283.974, 1471.13, 1084.38, 'The State', 'Casa frumoasa cauta chiriasi', 0, 0, 0, 15, 0, 1, 0, 1, 0, 7, 66, -1, 2),
(67, 558.678, -1161.14, 54.4297, 2282.79, -1139.4, 1050.9, 'The State', 'Fara descriere.', 0, 0, 0, 11, 0, 1, 0, 0, 0, 7, 67, -1, 1),
(68, 470.891, -1163.53, 67.2181, 295.053, 1473.02, 1080.26, 'The State', 'Casa Scalleta', 0, 0, 0, 15, 0, 1, 0, 0, 0, 7, 68, 1, 2),
(69, 2367.05, -49.1272, 28.1535, 223.08, 1287.74, 1082.14, 'The State', 'Fara descriere.', 0, 0, 0, 1, 0, 1, 0, 0, 10000, 2, 69, 1, 1),
(70, 2384.3, -54.9628, 28.1536, 2282.79, -1139.4, 1050.9, 'The State', 'Dai [/rentroom] si te respect', 0, 0, 0, 11, 0, 1, 0, 0, 0, 2, 70, -1, 1),
(71, 416.756, -1154.11, 76.6876, 490.865, 1399.2, 1080.26, 'The State', 'stai cuminte manzule', 0, 0, 0, 2, 0, 1, 0, 0, 0, 7, 71, 1, 2),
(72, 2414.84, -52.2842, 28.1535, 223.08, 1287.74, 1082.14, 'The State', 'Fara descriere.', 0, 0, 0, 1, 0, 1, 0, 0, 0, 2, 72, -1, 1),
(73, 2438.44, -54.9621, 28.1535, 328.003, 1478.55, 1084.44, 'The State', 'Renthouse doar 250$ ', 0, 0, 0, 15, 0, 1, 0, 0, 0, 2, 73, -1, 1),
(74, 2448.23, -11.0307, 27.6835, 223.08, 1287.74, 1082.14, 'The State', 'vã pup fraþi mei #', 0, 0, 0, 1, 0, 1, 0, 1, 0, 2, 74, -1, 1),
(75, 2484.55, -28.3999, 28.4416, 223.08, 1287.74, 1082.14, 'The State', 'Fara descriere.', 0, 0, 0, 1, 0, 1, 0, 0, 0, 2, 75, -1, 1),
(76, 300.329, -1154.54, 81.3911, -734.81, 1589.67, 1.6145, 'The State', 'Imperfect Hq', 0, 0, 0, 10, 0, 1, 0, 1, 0, 7, 76, 1, 2),
(77, 2513.23, -28.4033, 28.4416, 223.08, 1287.74, 1082.14, 'The State', 'Fara descriere.', 0, 0, 0, 1, 0, 1, 0, 0, 0, 2, 77, -1, 1),
(78, 2556.45, -7.56865, 27.1315, 223.08, 1287.74, 1082.14, 'The State', 'Fara descriere.', 0, 0, 0, 1, 0, 1, 0, 0, 0, 2, 78, -1, 1),
(79, 2549.44, 19.3482, 27.6799, 223.08, 1287.74, 1082.14, 'The State', 'Fara descriere.', 0, 0, 0, 1, 0, 1, 0, 1, 0, 2, 79, -1, 1),
(80, 251.5, -1220.16, 76.1024, 226.705, 1114.25, 1080.99, 'The State', 'Se3en Regele Banilor', 0, 0, 0, 5, 0, 1, 0, 1, 0, 7, 80, -1, 3),
(81, 253.367, -1269.89, 74.4301, 225.662, 1022.08, 1084.02, 'The State', 'Hai Cu Rent', 0, 0, 0, 7, 0, 1, 0, 1, 0, 7, 81, -1, 3),
(82, 2551.22, 57.1352, 27.6756, -42.5438, 1406.32, 1084.43, 'The State', 'CaptainRedu', 0, 0, 0, 8, 0, 1, 0, 0, 0, 2, 82, 1, 1),
(83, 219.107, -1249.89, 78.3371, 226.705, 1114.25, 1080.99, 'The State', '*KingForLife*', 0, 0, 0, 5, 0, 1, 0, 0, 0, 7, 83, -1, 3),
(84, 2518.62, 58.3231, 27.6835, 223.08, 1287.74, 1082.14, 'The State', 'Dau din OZN', 0, 0, 0, 1, 0, 1, 0, 1, 0, 2, 84, -1, 1),
(85, 2513.96, 94.3948, 27.6835, 223.08, 1287.74, 1082.14, 'The State', 'Va iub <3', 0, 0, 0, 1, 0, 1, 0, 1, 0, 2, 85, 3, 1),
(86, 189.64, -1308.21, 70.2494, -734.81, 1589.67, 1.6145, 'The State', 'BUN VENIT', 0, 0, 0, 10, 0, 1, 0, 1, 0, 7, 86, 4, 2),
(87, 2479.59, 94.3957, 27.6835, 223.08, 1287.74, 1082.14, 'The State', ' puterea ursului ', 0, 0, 0, 1, 0, 1, 0, 0, 0, 2, 87, 3, 1),
(88, 228.069, -1405.5, 51.6094, 223.08, 1287.74, 1082.14, 'The State', 'Fara descriere.', 0, 0, 0, 1, 0, 1, 0, 0, 0, 7, 88, -1, 1),
(89, 2480.5, 126.993, 27.6756, 223.08, 1287.74, 1082.14, 'The State', 'Fara descriere.', 0, 0, 0, 1, 0, 1, 0, 1, 0, 2, 89, 10, 1),
(90, 254.486, -1367.27, 53.1094, 295.053, 1473.02, 1080.26, 'The State', 'HTML/CSS', 0, 0, 0, 15, 0, 1, 0, 1, 0, 7, 90, -1, 2),
(91, 298.806, -1338.53, 53.4415, 140.182, 1366.47, 1083.86, 'The State', 'HQ MVP TEAM', 0, 0, 0, 5, 0, 1, 0, 1, 0, 7, 91, 1, 3),
(92, 2518.55, 128.969, 27.6756, 223.08, 1287.74, 1082.14, 'The State', 'Dai [/rentroom] si ai o zi faina <3', 0, 0, 0, 1, 0, 1, 0, 1, 0, 2, 92, 1, 1),
(93, 2536.11, 128.985, 27.6835, 223.08, 1287.74, 1082.14, 'The State', 'Bun venit la casa nostra', 0, 0, 0, 1, 0, 1, 0, 0, 0, 2, 93, -1, 1),
(94, 2551.21, 92.0925, 27.6756, 223.08, 1287.74, 1082.14, 'The State', 'Fara descriere.', 0, 0, 0, 1, 0, 1, 0, 1, 0, 2, 94, -1, 1),
(95, -255.15, 2603.27, 62.8582, 447.325, 1397.58, 1084.3, 'The State', 'Fara descriere.', 0, 0, 0, 2, 0, 1, 0, 0, 0, 7, 95, -1, 2),
(96, 2462.95, 134.77, 27.6756, 223.08, 1287.74, 1082.14, 'The State', 'Fara descriere.', 0, 0, 0, 1, 0, 1, 0, 0, 0, 2, 96, -1, 1),
(97, 2166.07, 2165.13, 10.82, 223.08, 1287.74, 1082.14, 'S.Ninel', 'Casa Sefilor', 0, 0, 0, 1, 0, 1, 0, 1, 0, 2, 97, 1, 1),
(98, -314.123, 1774.82, 43.6406, 295.053, 1473.02, 1080.26, 'The State', 'Fara descriere.', 0, 0, 0, 15, 0, 1, 0, 0, 0, 7, 98, -1, 2),
(99, 2373.85, 42.2238, 28.4416, 223.08, 1287.74, 1082.14, 'The State', 'Astept renteri!', 0, 0, 0, 1, 0, 1, 0, 0, 0, 2, 99, -1, 1),
(100, -311.29, 1303.31, 53.6643, 24.068, 1340.55, 1084.38, 'The State', 'Fara descriere.', 0, 0, 0, 10, 0, 1, 0, 0, 0, 7, 100, -1, 2),
(101, 2500.83, 968.752, 14.2725, 226.705, 1114.25, 1080.99, '[]Nutu[]', 'NutuBaws', 0, 1, 0, 5, 0, 1, 0, 1, 0, 10, 163, 3, 3),
(102, 1534.77, -800.212, 72.8495, 226.705, 1114.25, 1080.99, 'Andrei', 'CASA ABONATILOR ', 0, 0, 0, 5, 0, 1, 0, 1, 0, 6, 164, 1, 3),
(103, 2256.75, -44.6444, 26.8834, 300.862, 309.887, 1003.3, 'The State', 'Fara descriere.', 0, 0, 0, 4, 0, 1, 0, 0, 0, 2, 165, -1, 1),
(104, 2256.69, -59.4174, 26.8834, 2259.82, -1135.76, 1050.63, 'The State', 'Fara descriere.', 0, 0, 0, 10, 0, 1, 0, 0, 0, 5, 166, -1, 1),
(105, -1060.71, -1205.71, 129.219, 225.662, 1022.08, 1084.02, 'Cristi_AL_69', 'Fara descriere.', 0, 1, 0, 7, 0, 1, 0, 1, 0, 8, 105, -1, 3),
(106, 2064.89, 2171.67, 10.82, -734.81, 1589.67, 1.615, 'LaurValoare', 'LaurValoare PE YT', 0, 1, 0, 10, 0, 1, 0, 1, 0, 15, 106, -1, 2),
(107, 3274.7, 2454.53, 15.468, 2259.82, -1135.76, 1050.63, 'Exafius[]', 'Exafius Samp pe yt', 0, 1, 1, 10, 0, 1, 0, 0, 0, 20, 107, -1, 1),
(108, 3311.5, 2213.11, 16.636, 234.203, 1064.15, 1084.21, 'Phenomenon', 'Ce mai Jmekera casa BosZetPlay.', 0, 1, 0, 6, 0, 1, 0, 1, 0, 20, 108, 3, 3),
(109, 1455.91, 750.326, 11.023, 140.182, 1366.47, 1083.86, 'CiubyxRPG', 'Fara descriere.', 0, 0, 0, 5, 0, 1, 0, 0, 0, 5, 109, -1, 3),
(110, 1022.24, -983.464, 42.636, 225.662, 1022.08, 1084.02, 'AndreiFunnyMoments', '$$$$$$$$$$', 0, 1, 0, 7, 0, 1, 0, 1, 0, 10, 110, 0, 3),
(111, 3487.07, 2137.02, 16.47, 234.203, 1064.15, 1084.21, 'Bogdan47', 'Fara descriere.', 0, 1, 0, 6, 0, 1, 0, 0, 0, 10, 111, -1, 3),
(112, 1106.54, -299.54, 74.539, 225.662, 1022.08, 1084.02, 'VoRteXx', 'Fara descriere.', 0, 0, 0, 7, 0, 1, 0, 0, 0, 10, 112, -1, 3),
(113, 2139.41, 3142.82, 11.575, -734.81, 1589.67, 1.615, 'HPQ123', 'Fara descriere.', 0, 0, 0, 10, 0, 1, 0, 0, 0, 30, 113, 3, 2),
(114, 1122.71, -2036.9, 69.894, 234.203, 1064.15, 1084.21, 'CiubyxRPG', 'Fara descriere.', 0, 0, 0, 6, 0, 1, 0, 0, 0, 7, 114, -1, 3);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `ipbans`
--

CREATE TABLE `ipbans` (
  `ID` int(11) NOT NULL,
  `Name` varchar(32) NOT NULL DEFAULT 'No One',
  `Serial` varchar(64) NOT NULL,
  `IP` varchar(64) NOT NULL,
  `By` varchar(64) NOT NULL,
  `Reason` varchar(64) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `iplogs`
--

CREATE TABLE `iplogs` (
  `ID` int(11) NOT NULL,
  `ip` varchar(64) NOT NULL,
  `playerid` int(24) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `jobs`
--

CREATE TABLE `jobs` (
  `ID` int(10) NOT NULL,
  `Name` varchar(32) NOT NULL DEFAULT 'No name',
  `NeedLevel` int(10) NOT NULL,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `PosZ` float NOT NULL,
  `Legal` int(10) NOT NULL,
  `Skill1Veh` int(10) NOT NULL DEFAULT 400,
  `Skill2Veh` int(10) NOT NULL DEFAULT 400,
  `Skill3Veh` int(10) NOT NULL DEFAULT 400,
  `Skill4Veh` int(10) NOT NULL DEFAULT 400,
  `Skill5Veh` int(10) NOT NULL DEFAULT 400,
  `Skill6Veh` int(10) NOT NULL DEFAULT 400,
  `Owner` varchar(24) NOT NULL DEFAULT 'None'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `jobs`
--

INSERT INTO `jobs` (`ID`, `Name`, `NeedLevel`, `PosX`, `PosY`, `PosZ`, `Legal`, `Skill1Veh`, `Skill2Veh`, `Skill3Veh`, `Skill4Veh`, `Skill5Veh`, `Skill6Veh`, `Owner`) VALUES
(1, 'Fermier', 1, -382.793, -1426.25, 26.2729, 1, 531, 531, 532, 532, 532, 532, 'HPQ123'),
(2, 'Tirist', 1, 1620.79, 701.532, 10.8203, 1, 403, 403, 514, 514, 515, 515, 'None'),
(3, 'Hot Masini', 1, -2052.3, -39.589, 35.3601, 1, 423, 423, 423, 423, 423, 423, 'None'),
(4, 'Arms Dealer', 3, 1365.32, -1287.88, 13.5469, 0, 411, 499, 459, 459, 482, 482, 'None'),
(5, 'Drugs Dealer', 3, 2178.82, -1660.77, 14.9462, 0, 400, 400, 400, 400, 400, 400, 'None'),
(6, 'Detective', 1, -1743.8, 962.463, 24.8906, 2000, 54, 50, 100, 100, 100, 200, 'None'),
(7, 'Pizza Boy', 1, 2112.53, -1787.47, 13.5608, 1, 448, 448, 448, 448, 448, 448, 'None'),
(8, 'Curier', 1, 2177.04, 924.856, 11.0995, 1, 498, 498, 498, 498, 498, 498, 'None'),
(9, 'Fisher', 1, 2331.7, 548.944, 7.781, 1, 453, 453, 453, 453, 453, 453, 'None'),
(10, 'Forklift', 1, 966.948, 2132.93, 10.8203, 0, 530, 530, 530, 530, 530, 530, 'None');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `kenny_happs`
--

CREATE TABLE `kenny_happs` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(90) NOT NULL,
  `Type` int(11) NOT NULL,
  `Answers` text NOT NULL,
  `Questions` text NOT NULL,
  `Status` int(11) NOT NULL,
  `Date` varchar(90) NOT NULL,
  `ActionBy` varchar(90) NOT NULL,
  `Reason` text NOT NULL,
  `AnswerDate` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `logs`
--

CREATE TABLE `logs` (
  `ID` int(10) NOT NULL,
  `Userid` int(10) NOT NULL,
  `Text` varchar(256) NOT NULL,
  `Date` varchar(256) NOT NULL,
  `Type` int(10) NOT NULL,
  `IP` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `logs`
--

INSERT INTO `logs` (`ID`, `Userid`, `Text`, `Date`, `Type`, `IP`) VALUES
(1, 51, '(chat) :))', '24/11/2019 - 23:17:23', 9, '86.124.10.177'),
(2, 1, 'Raduq si-a achizitionat un Mythic Voucher pentru 255 Premium Points.', '30/11/2020 - 00:13:19', 1, '127.0.0.1'),
(3, 1, 'Raduq si-a achizitionat un cont VIP User pentru 400 Premium Points.', '30/11/2020 - 00:28:02', 1, '127.0.0.1'),
(4, 1, '(chat) pscripter', '30/11/2020 - 23:50:50', 9, '127.0.0.1'),
(5, 1, 'Raduq a primit $37,866 pentru munca efectuata la job-ul Fisher.', '30/11/2020 - 23:54:30', 4, '127.0.0.1'),
(6, 1, '(chat) easy.b-hood.ro', '01/12/2020 - 00:13:23', 9, '127.0.0.1'),
(7, 1, '(chat) server', '01/12/2020 - 00:14:11', 9, '127.0.0.1'),
(8, 1, '(chat) easy.b-hood.ro', '01/12/2020 - 00:15:49', 9, '127.0.0.1'),
(9, 1, '(chat) easy.b-hood.ro.', '01/12/2020 - 00:17:16', 9, '127.0.0.1'),
(10, 1, 'Raduq si-a achizitionat un Mythic Voucher pentru 255 Premium Points.', '01/12/2020 - 00:20:19', 1, '127.0.0.1'),
(11, 1, '(chat) easy.b-hood.ro', '01/12/2020 - 00:24:38', 9, '127.0.0.1'),
(12, 1, '(chat) 1 decembrie', '01/12/2020 - 00:25:19', 9, '127.0.0.1'),
(13, 1, '(chat) lma romania', '01/12/2020 - 00:25:21', 9, '127.0.0.1'),
(14, 1, '(chat) 800/8000', '01/12/2020 - 00:28:28', 9, '127.0.0.1'),
(15, 1, '(chat) 800/800', '01/12/2020 - 00:28:30', 9, '127.0.0.1'),
(16, 2, '(chat) rpg', '01/12/2020 - 12:52:38', 9, '192.168.1.4'),
(17, 2, '(chat) rpg.', '01/12/2020 - 12:52:39', 9, '192.168.1.4'),
(18, 2, '(chat) ne-am mutat pe', '01/12/2020 - 12:52:44', 9, '192.168.1.4'),
(19, 2, '(chat) ne-am mutat pe rpg', '01/12/2020 - 12:52:46', 9, '192.168.1.4'),
(20, 2, '(chat) easy.b-hood.ro', '01/12/2020 - 12:55:49', 9, '192.168.1.4'),
(21, 2, '(chat) beta.b-hood.rod', '01/12/2020 - 12:59:31', 9, '192.168.1.4'),
(22, 2, '(chat) beta.b-hood.ro', '01/12/2020 - 12:59:33', 9, '192.168.1.4'),
(23, 3, '(chat) easy.b-hood.ro', '03/12/2020 - 19:25:37', 9, '192.168.1.2'),
(24, 3, '(chat) 152', '03/12/2020 - 19:27:44', 9, '192.168.1.2'),
(25, 3, '(chat) 750/750', '03/12/2020 - 19:32:42', 9, '192.168.1.2'),
(26, 3, '(chat) x', '03/12/2020 - 19:32:42', 9, '192.168.1.2'),
(27, 3, '(chat) xxxxxxxxxxxxxx', '03/12/2020 - 19:32:46', 9, '192.168.1.2'),
(28, 3, '(chat) easy', '03/12/2020 - 19:33:45', 9, '192.168.1.2'),
(29, 3, '(chat) b-hoodt', '03/12/2020 - 19:33:46', 9, '192.168.1.2'),
(30, 3, '(chat) xx', '03/12/2020 - 19:33:48', 9, '192.168.1.2'),
(31, 3, '(chat) wef', '03/12/2020 - 19:33:50', 9, '192.168.1.2'),
(32, 3, '(chat) etwrfv', '03/12/2020 - 19:33:51', 9, '192.168.1.2'),
(33, 3, '(chat) easy.b-hood.ro', '03/12/2020 - 19:35:18', 9, '192.168.1.2'),
(34, 3, '(chat) easy.b-hood.ro', '03/12/2020 - 19:40:15', 9, '192.168.1.2'),
(35, 3, '(chat) awake tuber', '03/12/2020 - 19:40:18', 9, '192.168.1.2'),
(36, 3, '(chat) easypanel.b-hood.ro', '04/12/2020 - 00:01:07', 9, '192.168.1.2'),
(37, 3, '(chat) 13', '04/12/2020 - 00:02:28', 9, '192.168.1.2'),
(38, 3, '(chat) b-hood.ro/dsiscord', '04/12/2020 - 00:04:17', 9, '192.168.1.2'),
(39, 3, '(chat) easy ', '04/12/2020 - 00:04:19', 9, '192.168.1.2'),
(40, 3, '(chat) sau general', '04/12/2020 - 00:04:22', 9, '192.168.1.2'),
(41, 3, '(chat) 10', '04/12/2020 - 00:08:11', 9, '192.168.1.2'),
(42, 3, '(chat) meidum', '04/12/2020 - 00:08:13', 9, '192.168.1.2'),
(43, 3, '(chat) hard', '04/12/2020 - 00:08:14', 9, '192.168.1.2'),
(44, 3, '(chat) easy', '04/12/2020 - 00:08:15', 9, '192.168.1.2'),
(45, 3, '(chat) rpg', '04/12/2020 - 00:08:16', 9, '192.168.1.2'),
(46, 3, '(chat) rp1', '04/12/2020 - 00:08:19', 9, '192.168.1.2'),
(47, 3, '(chat) rp2', '04/12/2020 - 00:08:20', 9, '192.168.1.2'),
(48, 3, '(chat) rpg1', '04/12/2020 - 00:08:25', 9, '192.168.1.2'),
(49, 3, '(chat) rpg2', '04/12/2020 - 00:08:27', 9, '192.168.1.2'),
(50, 3, '(chat) bilboadrd', '04/12/2020 - 00:08:34', 9, '192.168.1.2'),
(51, 3, '(chat) client', '04/12/2020 - 00:08:39', 9, '192.168.1.2'),
(52, 3, '(chat) voice', '04/12/2020 - 00:08:44', 9, '192.168.1.2'),
(53, 3, 'David a primit $650.000.000 de la David', '04/12/2020 - 00:12:07', 4, '192.168.1.2'),
(54, 3, 'David si-a cumparat un Infernus[1], (last money: $650.141.116 / new money: $141.116)', '04/12/2020 - 00:12:08', 5, '192.168.1.2'),
(55, 3, 'David si-a achizitionat cont premium pentru 100 Premium Points.', '04/12/2020 - 00:13:10', 1, '192.168.1.2'),
(56, 3, 'David si-a achizitionat un cont VIP User pentru 400 Premium Points.', '04/12/2020 - 00:13:14', 1, '192.168.1.2'),
(57, 3, 'David si-a achizitionat un Mythic Voucher pentru 255 Premium Points.', '04/12/2020 - 00:13:27', 1, '192.168.1.2'),
(58, 3, 'David si-a upgradat vehiculul Infernus[id: 1] la unul VIP pentru 300 Premium Points.', '04/12/2020 - 00:13:35', 1, '192.168.1.2'),
(59, 3, 'David si-a upgradat vehiculul Infernus[id: 1] la unul VIP Plus pentru 500 Premium Points.', '04/12/2020 - 00:13:41', 1, '192.168.1.2'),
(60, 3, 'David si-a upgradat vehiculul Infernus[id: 1] la unul RainBow pentru 200 Premium Points.', '04/12/2020 - 00:13:44', 1, '192.168.1.2'),
(61, 3, '(chat) re', '05/12/2020 - 15:54:32', 9, '192.168.1.2'),
(62, 1, '(chat) re', '05/12/2020 - 15:54:34', 9, '127.0.0.1'),
(63, 3, '(chat) cf ba', '05/12/2020 - 15:54:38', 9, '192.168.1.2'),
(64, 1, '(chat) bn', '05/12/2020 - 15:54:42', 9, '127.0.0.1'),
(65, 3, '(chat) da-mi discordu tau', '05/12/2020 - 15:55:00', 9, '192.168.1.2'),
(66, 1, '(chat) Radu#2213', '05/12/2020 - 15:55:16', 9, '127.0.0.1'),
(67, 3, '(chat) nu merge', '05/12/2020 - 15:55:28', 9, '192.168.1.2'),
(68, 3, '(chat) cf ba radu', '05/12/2020 - 16:02:04', 9, '192.168.1.2'),
(69, 1, '(chat) sug ibn', '05/12/2020 - 16:02:08', 9, '127.0.0.1'),
(70, 3, '(chat) radu esti realu?', '05/12/2020 - 16:03:41', 9, '192.168.1.2'),
(71, 3, '(chat) fd', '07/12/2020 - 20:03:51', 9, '192.168.1.3'),
(72, 3, '(chat) 450/450', '08/12/2020 - 21:51:49', 9, '192.168.1.3'),
(73, 3, '(chat) fsdz', '08/12/2020 - 21:51:52', 9, '192.168.1.3'),
(74, 3, '(chat) fdsftdfds', '08/12/2020 - 21:51:53', 9, '192.168.1.3'),
(75, 3, '(chat) fdsfsdt', '08/12/2020 - 21:51:57', 9, '192.168.1.3'),
(76, 3, '(chat) fdsdfsdfsdfjdsfhgd]', '08/12/2020 - 21:51:59', 9, '192.168.1.3'),
(77, 3, '(chat) fjdfhjdsf', '08/12/2020 - 21:52:00', 9, '192.168.1.3'),
(78, 3, '(chat) fsdh]', '08/12/2020 - 21:52:01', 9, '192.168.1.3'),
(79, 3, '(chat) fd', '08/12/2020 - 21:52:07', 9, '192.168.1.3'),
(80, 3, '(chat) fsdtdsf', '08/12/2020 - 21:52:08', 9, '192.168.1.3'),
(81, 3, '(chat) easy.b-hood.row', '08/12/2020 - 21:52:35', 9, '192.168.1.3'),
(82, 3, '(chat) 150', '08/12/2020 - 21:52:37', 9, '192.168.1.3'),
(83, 3, '(chat) 450/450', '08/12/2020 - 21:53:12', 9, '192.168.1.3'),
(84, 3, '(chat) 550', '08/12/2020 - 21:53:14', 9, '192.168.1.3'),
(85, 3, '(chat) 5550', '08/12/2020 - 21:53:15', 9, '192.168.1.3'),
(86, 3, '(chat) fdsfds', '08/12/2020 - 21:55:39', 9, '192.168.1.3'),
(87, 3, '(chat) fdsfds/t', '08/12/2020 - 21:55:41', 9, '192.168.1.3'),
(88, 3, '(chat) fsdfsdfd', '08/12/2020 - 21:55:44', 9, '192.168.1.3'),
(89, 3, '(chat) r/pc re', '08/12/2020 - 21:55:49', 9, '192.168.1.3'),
(90, 3, '(chat) ere', '08/12/2020 - 21:55:52', 9, '192.168.1.3'),
(91, 3, '(chat) dsfasd]f', '08/12/2020 - 21:56:03', 9, '192.168.1.3'),
(92, 3, '(chat) rpg.b-hood.ro', '08/12/2020 - 21:57:30', 9, '192.168.1.3'),
(93, 3, '(chat) easy.b-hood.ro', '08/12/2020 - 21:57:32', 9, '192.168.1.3'),
(94, 3, '(chat) 800', '08/12/2020 - 21:58:35', 9, '192.168.1.3'),
(95, 3, '(chat) 900', '08/12/2020 - 21:58:37', 9, '192.168.1.3'),
(96, 3, '(chat) 1000', '08/12/2020 - 21:58:38', 9, '192.168.1.3'),
(97, 3, '(chat) fdtr', '08/12/2020 - 21:58:58', 9, '192.168.1.3'),
(98, 3, '(chat) sfds', '08/12/2020 - 21:59:00', 9, '192.168.1.3'),
(99, 3, '(chat) dffr', '08/12/2020 - 21:59:03', 9, '192.168.1.3'),
(100, 3, '(chat) payday', '08/12/2020 - 22:00:08', 9, '192.168.1.3'),
(101, 3, '(chat) re', '08/12/2020 - 22:02:48', 9, '192.168.1.3'),
(102, 3, '(chat) rew', '08/12/2020 - 22:03:13', 9, '192.168.1.3'),
(103, 3, '(chat) besina', '08/12/2020 - 22:03:15', 9, '192.168.1.3'),
(104, 1, '(chat) mue', '08/12/2020 - 22:03:28', 9, '127.0.0.1'),
(105, 3, '(chat) D', '08/12/2020 - 22:03:31', 9, '192.168.1.3'),
(106, 3, '(chat) 30', '08/12/2020 - 22:04:23', 9, '192.168.1.3'),
(107, 3, '(chat) 50/50', '08/12/2020 - 22:08:07', 9, '192.168.1.3'),
(108, 3, 'David si-a achizitionat un Mythic Voucher pentru 255 Premium Points.', '12/12/2020 - 21:53:15', 1, '127.0.0.1'),
(109, 3, '(chat) chars', '12/12/2020 - 21:53:58', 9, '127.0.0.1'),
(110, 3, '(chat) crowland', '12/12/2020 - 21:54:01', 9, '127.0.0.1'),
(111, 3, '(chat) burned', '12/12/2020 - 21:54:07', 9, '127.0.0.1'),
(112, 3, '(chat) b-hood', '12/12/2020 - 21:54:08', 9, '127.0.0.1'),
(113, 3, '(chat) bi-zon', '12/12/2020 - 21:54:11', 9, '127.0.0.1'),
(114, 3, '(chat) 193.203', '12/12/2020 - 21:54:15', 9, '127.0.0.1'),
(115, 3, '(chat) 193.203.39.47', '12/12/2020 - 21:54:18', 9, '127.0.0.1'),
(116, 3, '(chat) 193.203.39.45]', '12/12/2020 - 21:54:20', 9, '127.0.0.1'),
(117, 3, '(chat) 193.203.39.456', '12/12/2020 - 21:54:21', 9, '127.0.0.1'),
(118, 3, '(chat)  /spawncar 411', '12/12/2020 - 21:55:50', 9, '127.0.0.1'),
(119, 3, '(chat) b-hood.ro/colindati', '12/12/2020 - 21:56:06', 9, '127.0.0.1'),
(120, 3, '(chat) daaaaaaaaaaaaaaaaaaa', '30/12/2020 - 18:14:31', 9, '127.0.0.1'),
(121, 3, '(chat) daaaaaaaaaaaa', '30/12/2020 - 18:14:38', 9, '127.0.0.1'),
(122, 3, '(chat) daa', '30/12/2020 - 18:14:52', 9, '127.0.0.1'),
(123, 3, '(chat) okk', '30/12/2020 - 18:14:57', 9, '127.0.0.1'),
(124, 2, '(chat) hello', '31/12/2020 - 22:44:18', 9, '127.0.0.1'),
(125, 2, '(chat) ah ', '31/12/2020 - 22:47:37', 9, '127.0.0.1'),
(126, 2, '(chat) 2 sec', '31/12/2020 - 22:47:39', 9, '127.0.0.1'),
(127, 2, '(chat) :)a', '31/12/2020 - 22:47:52', 9, '127.0.0.1'),
(128, 2, '(chat) f', '31/12/2020 - 22:48:15', 9, '127.0.0.1'),
(129, 2, '(chat) rip', '31/12/2020 - 22:48:28', 9, '127.0.0.1'),
(130, 2, '(chat) ah', '31/12/2020 - 22:48:29', 9, '127.0.0.1'),
(131, 1, '(chat) \"bhood\"', '09/01/2021 - 21:11:29', 9, '127.0.0.1'),
(132, 1, '(chat) f', '09/01/2021 - 21:11:34', 9, '127.0.0.1'),
(133, 1, '(chat) rpg1_bhood.pwn', '09/01/2021 - 21:14:19', 9, '127.0.0.1'),
(134, 1, '(chat) :7772', '09/01/2021 - 21:17:33', 9, '127.0.0.1'),
(135, 1, '(chat) 250-400', '09/01/2021 - 21:22:58', 9, '127.0.0.1'),
(136, 1, '(chat) 100', '09/01/2021 - 21:22:59', 9, '127.0.0.1'),
(137, 1, '(chat) 100-450', '09/01/2021 - 21:23:02', 9, '127.0.0.1'),
(138, 1, '(chat) 	//orm_errno(ormid) = EQS;', '09/01/2021 - 21:28:47', 9, '127.0.0.1'),
(139, 1, '(chat) orm_errno(ormid) = EQS;', '09/01/2021 - 21:28:50', 9, '127.0.0.1'),
(140, 1, '(/f) # Director David: re', '07/02/2021 - 11:42:31', 9, '127.0.0.1'),
(141, 1, '(chat)  SendTeamMessage(14, 0x2e64feFF, string);', '07/02/2021 - 11:59:15', 9, '127.0.0.1'),
(142, 1, 'David a primit $650.000 de la David', '07/02/2021 - 12:12:17', 4, '127.0.0.1'),
(143, 1, 'David si-a cumparat un Bike[1], (last money: $775.984 / new money: $125.984)', '07/02/2021 - 12:12:27', 5, '127.0.0.1'),
(144, 1, 'David a primit $650.000 de la David', '07/02/2021 - 12:12:36', 4, '127.0.0.1'),
(145, 1, 'David si-a cumparat un Bike[2], (last money: $803.424 / new money: $153.424)', '07/02/2021 - 12:12:40', 5, '127.0.0.1'),
(146, 1, 'David a primit $650.000 de la David', '07/02/2021 - 12:20:30', 4, '127.0.0.1'),
(147, 1, 'David si-a achizitionat un cont VIP User pentru 400 Premium Points.', '07/02/2021 - 16:30:03', 1, '127.0.0.1'),
(148, 1, 'David si-a achizitionat un slot (vehicul) pentru 20 Premium Points.', '07/02/2021 - 16:30:24', 1, '127.0.0.1'),
(149, 1, '(chat) .fv', '07/02/2021 - 20:24:12', 9, '127.0.0.1'),
(150, 1, 'David a primit $2.000.000.000 de la David', '07/02/2021 - 20:24:28', 4, '127.0.0.1'),
(151, 1, 'David a primit $53,434 pentru munca efectuata la job-ul Fisher.', '07/02/2021 - 21:51:44', 4, '127.0.0.1'),
(152, 1, 'David a primit $137,706 pentru munca efectuata la job-ul Fisher.', '07/02/2021 - 21:55:29', 4, '127.0.0.1'),
(153, 1, 'David si-a achizitionat cont premium pentru 100 Premium Points.', '10/02/2021 - 21:34:30', 1, '127.0.0.1'),
(154, 1, 'David a primit $43,558 pentru munca efectuata la job-ul Fisher.', '10/02/2021 - 21:40:12', 4, '127.0.0.1'),
(155, 1, '(/f) Verdant Boss David: re', '01/04/2021 - 14:10:45', 9, '127.0.0.1'),
(156, 1, '(chat) id 0', '02/04/2021 - 22:38:21', 9, '127.0.0.1'),
(157, 3, '(chat) a', '03/04/2021 - 11:38:48', 9, '127.0.0.1'),
(158, 2, '(chat) cf edisoane?', '03/04/2021 - 11:44:36', 9, '127.0.0.1'),
(159, 2, '(chat) fuck', '03/04/2021 - 11:44:41', 9, '127.0.0.1'),
(160, 2, '(chat) nu ma uit la cod eu l-am facut', '03/04/2021 - 11:44:46', 9, '127.0.0.1'),
(161, 2, '(chat) cheats.tw - the best cheat', '03/04/2021 - 11:44:55', 9, '127.0.0.1'),
(162, 2, '(chat) ne dam admin edisoane', '03/04/2021 - 11:44:58', 9, '127.0.0.1'),
(163, 2, '(chat) ce zici?', '03/04/2021 - 11:45:01', 9, '127.0.0.1'),
(164, 2, '(chat) \"scripter\"', '03/04/2021 - 11:45:04', 9, '127.0.0.1'),
(165, 2, '(chat) hoo deluta', '03/04/2021 - 11:45:11', 9, '127.0.0.1'),
(166, 2, '(chat) re baieti', '03/04/2021 - 11:45:16', 9, '127.0.0.1'),
(167, 2, '(chat) cheats.tw', '03/04/2021 - 11:45:18', 9, '127.0.0.1'),
(168, 2, '(chat) 3', '03/04/2021 - 11:45:18', 9, '127.0.0.1'),
(169, 2, '(chat) 2', '03/04/2021 - 11:45:19', 9, '127.0.0.1'),
(170, 2, '(chat) 1', '03/04/2021 - 11:45:20', 9, '127.0.0.1'),
(171, 2, '(chat) ah', '03/04/2021 - 11:45:22', 9, '127.0.0.1'),
(172, 2, '(chat) 1/1000', '03/04/2021 - 11:45:49', 9, '127.0.0.1'),
(173, 2, '(chat) sal', '03/04/2021 - 11:46:17', 9, '127.0.0.1'),
(174, 2, '(chat) sunt david', '03/04/2021 - 11:46:19', 9, '127.0.0.1'),
(175, 2, '(chat) pe contu lu edison', '03/04/2021 - 11:46:21', 9, '127.0.0.1'),
(176, 2, '(chat) fantomita rpg', '03/04/2021 - 11:46:43', 9, '127.0.0.1'),
(177, 2, '(chat) radule', '03/04/2021 - 11:46:45', 9, '127.0.0.1'),
(178, 2, '(chat) raduq', '03/04/2021 - 11:46:47', 9, '127.0.0.1'),
(179, 2, '(chat) mersi de', '03/04/2021 - 11:46:49', 9, '127.0.0.1'),
(180, 2, '(chat) nimica', '03/04/2021 - 11:46:50', 9, '127.0.0.1'),
(181, 2, '(chat) m-ai gherlit', '03/04/2021 - 11:46:52', 9, '127.0.0.1'),
(182, 2, '(chat) bravo', '03/04/2021 - 11:46:54', 9, '127.0.0.1'),
(183, 2, '(chat) edison \"scripter\"', '03/04/2021 - 11:46:57', 9, '127.0.0.1'),
(184, 2, '(chat) acum nu va mai puneti  cu mn ok?', '03/04/2021 - 11:47:05', 9, '127.0.0.1'),
(185, 2, '(chat) sa nu rezolvati', '03/04/2021 - 11:47:19', 9, '127.0.0.1'),
(186, 2, '(chat) nu va mai uitati la coduri fmm', '03/04/2021 - 11:47:23', 9, '127.0.0.1'),
(187, 2, '(chat) cheats.twe', '03/04/2021 - 11:47:26', 9, '127.0.0.1'),
(188, 2, '(chat) cheats.tw', '03/04/2021 - 11:47:26', 9, '127.0.0.1'),
(189, 2, '(chat) usor deluta', '03/04/2021 - 11:47:47', 9, '127.0.0.1'),
(190, 2, '(chat) usor deluta.', '03/04/2021 - 11:47:49', 9, '127.0.0.1'),
(191, 2, '(chat) usor deluta', '03/04/2021 - 11:47:49', 9, '127.0.0.1'),
(192, 2, '(chat) usor deluta.', '03/04/2021 - 11:47:50', 9, '127.0.0.1'),
(193, 2, '(chat) usor deluta', '03/04/2021 - 11:47:52', 9, '127.0.0.1'),
(194, 2, '(chat) usor deluta.', '03/04/2021 - 11:47:53', 9, '127.0.0.1'),
(195, 2, '(chat) usor deluta', '03/04/2021 - 11:47:54', 9, '127.0.0.1'),
(196, 2, '(chat) fantomita rpg', '03/04/2021 - 11:48:09', 9, '127.0.0.1'),
(197, 2, '(chat) nr 1 pe romania', '03/04/2021 - 11:48:12', 9, '127.0.0.1'),
(198, 2, '(chat) nr 1 la prostit', '03/04/2021 - 11:48:16', 9, '127.0.0.1'),
(199, 2, '(chat) radu si edison', '03/04/2021 - 11:48:19', 9, '127.0.0.1'),
(200, 2, '(chat) nu va mai puneti', '03/04/2021 - 11:48:22', 9, '127.0.0.1'),
(201, 2, '(chat) ca nu iese bine', '03/04/2021 - 11:48:27', 9, '127.0.0.1'),
(202, 2, '(chat) hai sa vedem rezultatul in cateva ore', '03/04/2021 - 11:48:34', 9, '127.0.0.1'),
(203, 2, '(chat) asaw', '03/04/2021 - 11:49:13', 9, '127.0.0.1'),
(204, 2, '(chat) fantomita rpg aka bihud', '03/04/2021 - 11:49:20', 9, '127.0.0.1'),
(205, 2, '(chat) how mai gad', '03/04/2021 - 11:49:55', 9, '127.0.0.1'),
(206, 2, '(chat) mi-a scot atminu', '03/04/2021 - 11:49:59', 9, '127.0.0.1'),
(207, 2, '(chat) ;(', '03/04/2021 - 11:50:00', 9, '127.0.0.1'),
(208, 2, '(chat) nu va mai uitati la coduri mm', '03/04/2021 - 11:50:09', 9, '127.0.0.1'),
(209, 2, '(chat) cheats.tw', '03/04/2021 - 11:50:12', 9, '127.0.0.1'),
(210, 2, '(chat) ne dam admin?', '03/04/2021 - 11:50:15', 9, '127.0.0.1'),
(211, 2, '(chat) v-atz dus', '03/04/2021 - 11:50:37', 9, '127.0.0.1'),
(212, 2, '(chat) :))))', '03/04/2021 - 11:50:38', 9, '127.0.0.1'),
(213, 2, '(chat) bihu', '03/04/2021 - 11:50:41', 9, '127.0.0.1'),
(214, 2, '(chat) d', '03/04/2021 - 11:50:41', 9, '127.0.0.1'),
(215, 2, '(chat) rpg', '03/04/2021 - 11:50:43', 9, '127.0.0.1'),
(216, 2, '(chat) tank', '03/04/2021 - 11:50:45', 9, '127.0.0.1'),
(217, 2, '(chat) re baieti', '03/04/2021 - 11:51:48', 9, '127.0.0.1'),
(218, 2, '(chat) am banat adminii', '03/04/2021 - 11:51:51', 9, '127.0.0.1'),
(219, 2, '(chat) acu tot serveru', '03/04/2021 - 11:51:53', 9, '127.0.0.1'),
(220, 2, '(chat) sunt david daca nu v-atz prins', '03/04/2021 - 11:52:14', 9, '127.0.0.1'),
(221, 2, '(chat) mi-am scos adminu sa vedeti', '03/04/2021 - 11:52:22', 9, '127.0.0.1'),
(222, 2, '(chat) cine se va uita la cod', '03/04/2021 - 11:52:28', 9, '127.0.0.1'),
(223, 2, '(chat) =))', '03/04/2021 - 11:52:29', 9, '127.0.0.1'),
(224, 2, '(chat) 3', '03/04/2021 - 11:52:35', 9, '127.0.0.1'),
(225, 2, '(chat) 2', '03/04/2021 - 11:52:35', 9, '127.0.0.1'),
(226, 2, '(chat) 1', '03/04/2021 - 11:52:36', 9, '127.0.0.1'),
(227, 2, '(chat) cat se mai baneaza', '03/04/2021 - 11:52:59', 9, '127.0.0.1'),
(228, 2, '(chat) asteptam rezultatul', '03/04/2021 - 11:53:03', 9, '127.0.0.1'),
(229, 2, '(chat) test', '03/04/2021 - 11:53:05', 9, '127.0.0.1'),
(230, 1, 'David si-a achizitionat un Millionare Voucher pentru 1005 Premium Points.', '05/04/2021 - 14:26:03', 1, '127.0.0.1'),
(231, 1, 'David si-a achizitionat un Millionare Voucher pentru 1005 Premium Points.', '05/04/2021 - 14:28:53', 1, '127.0.0.1'),
(232, 1, 'David si-a achizitionat un Millionare Voucher pentru 1005 Premium Points.', '05/04/2021 - 14:30:45', 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `objects_accesory`
--

CREATE TABLE `objects_accesory` (
  `ID` int(11) NOT NULL,
  `Model` int(11) NOT NULL,
  `Type` int(11) NOT NULL DEFAULT 5,
  `Money` int(11) NOT NULL DEFAULT 15000,
  `Premium` int(11) NOT NULL,
  `Bone` int(11) NOT NULL DEFAULT 2,
  `fOffsetX` float NOT NULL DEFAULT 0.162424,
  `fOffsetY` float NOT NULL DEFAULT 0.021068,
  `fOffsetZ` float NOT NULL DEFAULT 0.011462,
  `fRotX` float NOT NULL DEFAULT 272.137,
  `fRotY` float NOT NULL DEFAULT 348.285,
  `fRotZ` float NOT NULL DEFAULT 270.647
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `objects_accesory`
--

INSERT INTO `objects_accesory` (`ID`, `Model`, `Type`, `Money`, `Premium`, `Bone`, `fOffsetX`, `fOffsetY`, `fOffsetZ`, `fRotX`, `fRotY`, `fRotZ`) VALUES
(1, 18947, 0, 20000, 50, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(2, 18948, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(3, 18945, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(4, 18949, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(5, 18950, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(6, 18951, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(7, 18941, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(8, 18942, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(9, 18943, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(10, 19095, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(11, 18962, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(12, 19097, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(13, 19096, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(14, 18934, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(15, 18969, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(16, 18945, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(17, 18962, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(18, 19098, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(19, 19096, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(20, 18935, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(21, 18934, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(22, 19488, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(23, 18931, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(24, 19487, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(25, 19558, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(26, 19160, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(27, 19098, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(28, 19528, 0, 15000, 0, 2, 0.169287, 0.002255, -0.002116, 0, 0, 0),
(29, 19006, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(30, 19008, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(31, 19007, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(32, 19009, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(33, 19010, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(34, 19011, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(35, 19012, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(36, 19018, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(37, 19013, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(38, 19014, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(39, 19015, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(40, 19016, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(41, 19017, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(42, 19019, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(43, 19020, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(44, 19021, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(45, 19022, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(46, 19023, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(47, 19024, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(48, 19025, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(49, 19026, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(50, 19027, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(51, 19028, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(52, 19029, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(53, 19030, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(54, 19031, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(55, 19032, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(56, 19033, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(57, 19034, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(58, 19035, 1, 15000, 0, 2, 0.079939, 0.020731, -0.005162, 89.6755, 83.5503, 0),
(59, 19039, 2, 15000, 0, 5, -0.025012, -0.002121, 0.012567, 206.874, 247.756, 9.74427),
(60, 19042, 2, 15000, 0, 5, -0.025012, -0.002121, 0.012567, 206.874, 247.756, 9.74427),
(61, 19053, 2, 15000, 0, 5, -0.025012, -0.002121, 0.012567, 206.874, 247.756, 9.74427),
(62, 19052, 2, 15000, 0, 5, -0.025012, -0.002121, 0.012567, 206.874, 247.756, 9.74427),
(63, 19051, 2, 15000, 0, 5, -0.025012, -0.002121, 0.012567, 206.874, 247.756, 9.74427),
(64, 19050, 2, 15000, 0, 5, -0.025012, -0.002121, 0.012567, 206.874, 247.756, 9.74427),
(65, 19049, 2, 15000, 0, 5, -0.025012, -0.002121, 0.012567, 206.874, 247.756, 9.74427),
(66, 19048, 2, 15000, 0, 5, -0.025012, -0.002121, 0.012567, 206.874, 247.756, 9.74427),
(67, 19047, 2, 15000, 0, 5, -0.025012, -0.002121, 0.012567, 206.874, 247.756, 9.74427),
(68, 19046, 2, 15000, 0, 5, -0.025012, -0.002121, 0.012567, 206.874, 247.756, 9.74427),
(69, 19045, 2, 15000, 0, 5, -0.025012, -0.002121, 0.012567, 206.874, 247.756, 9.74427),
(70, 19044, 2, 15000, 0, 5, -0.025012, -0.002121, 0.012567, 206.874, 247.756, 9.74427),
(71, 19043, 2, 15000, 0, 5, -0.025012, -0.002121, 0.012567, 206.874, 247.756, 9.74427),
(72, 19041, 2, 15000, 0, 5, -0.025012, -0.002121, 0.012567, 206.874, 247.756, 9.74427),
(73, 19040, 2, 15000, 0, 5, -0.025012, -0.002121, 0.012567, 206.874, 247.756, 9.74427),
(74, 19081, 3, 15000, 0, 6, 0.096126, 0.008285, 0, 126.63, 88.235, 52.2948),
(75, 19084, 3, 15000, 0, 6, 0.096126, 0.008285, 0, 126.63, 88.235, 52.2948),
(76, 18643, 3, 15000, 0, 6, 0.096126, 0.008285, 0, 126.63, 88.235, 52.2948),
(77, 19080, 3, 15000, 0, 6, 0.096126, 0.008285, 0, 126.63, 88.235, 52.2948),
(78, 19082, 3, 15000, 0, 6, 0.096126, 0.008285, 0, 126.63, 88.235, 52.2948),
(79, 19083, 3, 15000, 0, 6, 0.096126, 0.008285, 0, 126.63, 88.235, 52.2948),
(80, 2404, 4, 15000, 0, 5, -0.023777, 0.060493, 0.036487, 0, 0, 0),
(81, 18637, 4, 15000, 0, 3, 0.372591, -0.2732, -0.035485, 0, 5.66619, 95.4819),
(82, 18632, 4, 15000, 0, 6, 0.08081, 0.038068, 0, 192.926, 9.6064, 0),
(83, 1210, 4, 15000, 0, 5, 0.326087, 0.085488, 0, 0, 266.01, 0),
(84, 19878, 4, 15000, 0, 5, 0.012479, 0.10195, 0.029353, 114.236, 356.216, 93.6255),
(85, 2704, 4, 15000, 0, 6, 0.446643, 0, -0.029046, 0, 275.05, 0),
(86, 19038, 5, 15000, 0, 2, 0.106539, 0.034585, 0.001571, 0, 84.578, 91.2186),
(87, 19036, 5, 15000, 0, 2, 0.106539, 0.034585, 0.001571, 0, 84.578, 91.2186),
(88, 19037, 5, 15000, 0, 2, 0.106539, 0.034585, 0.001571, 0, 84.578, 91.2186),
(89, 18919, 5, 15000, 0, 2, 0.162424, 0.021068, 0.011462, 272.137, 348.285, 270.647),
(90, 18912, 5, 15000, 0, 2, 0.162424, 0.021068, 0.011462, 272.137, 348.285, 270.647),
(91, 18913, 5, 15000, 0, 2, 0.162424, 0.021068, 0.011462, 272.137, 348.285, 270.647),
(92, 18914, 5, 15000, 0, 2, 0.162424, 0.021068, 0.011462, 272.137, 348.285, 270.647),
(93, 18915, 5, 15000, 0, 2, 0.162424, 0.021068, 0.011462, 272.137, 348.285, 270.647),
(94, 18916, 5, 15000, 0, 2, 0.162424, 0.021068, 0.011462, 272.137, 348.285, 270.647),
(95, 18917, 5, 15000, 0, 2, 0.162424, 0.021068, 0.011462, 272.137, 348.285, 270.647),
(96, 18918, 5, 15000, 0, 2, 0.162424, 0.021068, 0.011462, 272.137, 348.285, 270.647),
(97, 18920, 5, 15000, 0, 2, 0.162424, 0.021068, 0.011462, 272.137, 348.285, 270.647),
(98, 19317, 6, 15000, 0, 1, 0.127579, -0.115369, 0, 355.117, 105.806, 352.232),
(99, 19318, 6, 15000, 0, 1, 0.127579, -0.115369, 0, 355.117, 105.806, 352.232),
(100, 19079, 7, 15000, 0, 1, 0.387458, -0.061525, -0.176822, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `player_accessory`
--

CREATE TABLE `player_accessory` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Accessory` varchar(64) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0',
  `Bone` varchar(32) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0',
  `Status` varchar(64) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0',
  `Index0` varchar(64) NOT NULL DEFAULT '0.0|0.0|0.0|0.0|0.0|0.0',
  `Index1` varchar(64) NOT NULL DEFAULT '0.0|0.0|0.0|0.0|0.0|0.0',
  `Index2` varchar(64) NOT NULL DEFAULT '0.0|0.0|0.0|0.0|0.0|0.0',
  `Index3` varchar(64) NOT NULL DEFAULT '0.0|0.0|0.0|0.0|0.0|0.0',
  `Index4` varchar(64) NOT NULL DEFAULT '0.0|0.0|0.0|0.0|0.0|0.0',
  `Index5` varchar(64) NOT NULL DEFAULT '0.0|0.0|0.0|0.0|0.0|0.0',
  `Index6` varchar(64) NOT NULL DEFAULT '0.0|0.0|0.0|0.0|0.0|0.0',
  `Index7` varchar(64) NOT NULL DEFAULT '0.0|0.0|0.0|0.0|0.0|0.0',
  `Index8` varchar(64) NOT NULL DEFAULT '0.0|0.0|0.0|0.0|0.0|0.0',
  `Index9` varchar(64) NOT NULL DEFAULT '0.0|0.0|0.0|0.0|0.0|0.0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `safezones`
--

CREATE TABLE `safezones` (
  `ID` int(10) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `Range` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `sanctions`
--

CREATE TABLE `sanctions` (
  `ID` int(10) NOT NULL,
  `Player` varchar(256) NOT NULL,
  `By` varchar(256) NOT NULL,
  `Time` varchar(256) NOT NULL,
  `Userid` int(10) NOT NULL,
  `Type` int(10) NOT NULL,
  `Reason` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `sanctions`
--

INSERT INTO `sanctions` (`ID`, `Player`, `By`, `Time`, `Userid`, `Type`, `Reason`) VALUES
(1, 'Raduq (1)', 'AdmBot', '30/11/2020 - 00:24:08', 1, 1, 'Teleport to checkpoint.'),
(2, 'Raduq (1)', 'AdmBot', '01/12/2020 - 00:05:40', 1, 1, 'Teleport to checkpoint.'),
(3, 'Raduq (1)', 'AdmBot', '01/12/2020 - 00:09:03', 1, 1, 'Teleport to checkpoint.'),
(4, 'Raduq (1)', 'AdmBot', '01/12/2020 - 00:22:46', 1, 1, 'Teleport to checkpoint.'),
(5, 'David (3)', 'AdmBot', '05/12/2020 - 15:50:53', 3, 1, 'Teleport to checkpoint.'),
(6, 'David (3)', 'AdmBot', '12/12/2020 - 21:54:50', 3, 1, 'Teleport to checkpoint.'),
(7, 'David (1)', 'AdmBot', '07/02/2021 - 01:58:43', 1, 1, 'Teleport to checkpoint.'),
(8, 'David (1)', 'AdmBot', '07/02/2021 - 11:21:17', 1, 1, 'Teleport to checkpoint.'),
(9, 'David (1)', 'AdmBot', '07/02/2021 - 11:23:15', 1, 1, 'Teleport to checkpoint.'),
(10, 'David (1)', 'AdmBot', '07/02/2021 - 11:29:23', 1, 1, 'Teleport to checkpoint.'),
(11, 'David (1)', 'AdmBot', '07/02/2021 - 11:42:22', 1, 1, 'Teleport to checkpoint.'),
(12, 'David (1)', 'AdmBot', '07/02/2021 - 12:03:37', 1, 1, 'Teleport to checkpoint.'),
(13, 'David (1)', 'AdmBot', '07/02/2021 - 12:13:44', 1, 1, 'Teleport to checkpoint.'),
(14, 'David (1)', 'AdmBot', '07/02/2021 - 20:23:41', 1, 1, 'Teleport to checkpoint.'),
(15, 'David (1)', 'AdmBot', '07/02/2021 - 21:50:52', 1, 1, 'Teleport to checkpoint.'),
(16, 'David (1)', 'AdmBot', '07/02/2021 - 21:54:27', 1, 1, 'Teleport to checkpoint.'),
(17, 'David (1)', 'AdmBot', '10/02/2021 - 21:40:01', 1, 1, 'Teleport to checkpoint.'),
(18, 'David (1)', 'AdmBot', '01/04/2021 - 14:10:24', 1, 1, 'Teleport to checkpoint.');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `seif`
--

CREATE TABLE `seif` (
  `sID` int(10) NOT NULL,
  `sFactionID` int(10) NOT NULL,
  `sPosX` float NOT NULL,
  `sPosY` float NOT NULL,
  `sPosZ` float NOT NULL,
  `sMoney` int(10) NOT NULL DEFAULT 500000,
  `sDrugs` int(10) NOT NULL DEFAULT 1000,
  `sMaterials` int(10) NOT NULL DEFAULT 100000,
  `sVirtualID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `seif`
--

INSERT INTO `seif` (`sID`, `sFactionID`, `sPosX`, `sPosY`, `sPosZ`, `sMoney`, `sDrugs`, `sMaterials`, `sVirtualID`) VALUES
(1, 1, 240.683, 71.1112, 1005.04, 500000, 1000, 100000, 1),
(2, 2, 228.863, 169.008, 1003.02, 500000, 1000, 100000, 2),
(3, 3, 301.576, 187.933, 1007.17, 500000, 1000, 90000, 3),
(4, 4, 2755.54, -72.5488, 1312.6, 499020, 1000, 99080, 4),
(5, 5, 2755.96, -72.786, 1312.6, 500000, 1000, 100000, 5),
(6, 6, 2756.2, -72.5556, 1312.6, 500000, 1000, 100000, 6),
(7, 7, 1502.14, 1308.88, 1093.29, 500000, 1000, 100000, 7),
(8, 8, 604.763, -26.5193, 1004.78, 500000, 1000, 100000, 8),
(9, 9, -2034.81, -114.67, 1035.17, 500000, 1000, 100000, 9),
(10, 10, 2755.54, -72.5488, 1312.6, 500000, 1000, 100000, 10),
(11, 11, -2165.66, 646.313, 1052.38, 500000, 1000, 100000, 11),
(12, 12, 1723.13, -1673.03, 20.2233, 500000, 1000, 100000, 12),
(13, 13, 1501.94, 1309.4, 1093.29, 500000, 1000, 100000, 13),
(14, 14, 259.444, 107.849, 1003.22, 0, 1000, 100000, 14),
(15, 15, 1722.87, -1673.41, 20.2231, 500000, 1000, 100000, 15),
(16, 16, 1722.87, -1673.41, 20.2231, 500000, 1000, 100000, 16),
(17, 17, 240.683, 71.1112, 1005.04, 500000, 1000, 100000, 17),
(18, 18, 2755.54, -72.5488, 1312.6, 0, 1000, 0, 18);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `stuff`
--

CREATE TABLE `stuff` (
  `ID` int(11) NOT NULL,
  `Tax` int(20) NOT NULL,
  `TaxValue` int(20) NOT NULL,
  `Giftbox` int(11) NOT NULL,
  `GiftMoney` int(20) NOT NULL,
  `GiftRP` int(10) NOT NULL,
  `GiftGold` int(10) NOT NULL,
  `GiftFP` int(10) NOT NULL,
  `GiftVehicle` int(10) NOT NULL,
  `GiftLevel` int(10) NOT NULL,
  `MaxPlayers` int(10) NOT NULL,
  `MaxPlayersDate` varchar(256) NOT NULL,
  `StaffMotd` varchar(256) NOT NULL,
  `GiftHP` int(11) NOT NULL,
  `GiftOpen` int(11) NOT NULL,
  `ServerStock` varchar(9) NOT NULL DEFAULT '0|0',
  `goal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `stuff`
--

INSERT INTO `stuff` (`ID`, `Tax`, `TaxValue`, `Giftbox`, `GiftMoney`, `GiftRP`, `GiftGold`, `GiftFP`, `GiftVehicle`, `GiftLevel`, `MaxPlayers`, `MaxPlayersDate`, `StaffMotd`, `GiftHP`, `GiftOpen`, `ServerStock`, `goal`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '13/11/2019 - 03:25:01', '', 0, 0, '0|0|0|0|0', 0);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `supdates`
--

CREATE TABLE `supdates` (
  `ID` int(11) NOT NULL,
  `byAdmin` int(11) NOT NULL,
  `text` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `suspendd`
--

CREATE TABLE `suspendd` (
  `ID` int(11) NOT NULL,
  `gadmin` int(11) NOT NULL,
  `player` varchar(64) NOT NULL,
  `motiv` varchar(125) NOT NULL,
  `days` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `svehicles`
--

CREATE TABLE `svehicles` (
  `vID` int(11) NOT NULL,
  `vModel` int(10) NOT NULL,
  `LocationX` float NOT NULL,
  `LocationY` float NOT NULL,
  `LocationZ` float NOT NULL,
  `Angle` float NOT NULL,
  `Color1` int(10) NOT NULL,
  `Color2` int(10) NOT NULL,
  `Faction` int(10) NOT NULL,
  `Rank` int(10) NOT NULL,
  `NumberPlate` varchar(64) NOT NULL DEFAULT 'NewCar'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `svehicles`
--

INSERT INTO `svehicles` (`vID`, `vModel`, `LocationX`, `LocationY`, `LocationZ`, `Angle`, `Color1`, `Color2`, `Faction`, `Rank`, `NumberPlate`) VALUES
(1, 551, 2161.2, -1197.34, 23.6963, 89.751, 154, -1, 7, 1, 'NewCar'),
(2, 551, 2161.51, -1187.45, 23.6195, 88.6365, 154, -1, 7, 1, 'NewCar'),
(3, 551, 2161.32, -1192.17, 23.6209, 90.0961, 154, -1, 7, 1, 'NewCar'),
(4, 551, 2161.24, -1182.66, 23.6185, 89.5193, 154, -1, 7, 1, 'NewCar'),
(5, 560, 2148.42, -1198.83, 23.5916, 270.469, 154, -1, 7, 3, 'NewCar'),
(6, 560, 2148.64, -1194.17, 23.5361, 271.759, 154, -1, 7, 3, 'NewCar'),
(7, 560, 2148.61, -1189.52, 23.5257, 273.548, 154, -1, 7, 3, 'NewCar'),
(8, 560, 2148.52, -1184.95, 23.5256, 270.715, 154, -1, 7, 3, 'NewCar'),
(9, 599, 1538.95, -1643.46, 6.07707, 181.466, 0, 1, 1, 1, 'NewCar'),
(10, 427, 1528.82, -1649.36, 6.0236, 268.208, 0, 1, 1, 1, 'NewCar'),
(11, 427, 1528.84, -1654.83, 6.02344, 272.277, 0, 1, 1, 1, 'NewCar'),
(12, 411, 1536.02, -1678.8, 13.1101, 359.438, 1, 1, 1, 1, 'NewCar'),
(13, 596, 1550.68, -1652.95, 13.292, 90.3776, 0, 1, 1, 1, 'NewCar'),
(14, 597, 1546.77, -1676.15, 5.69112, 88.4719, 0, 1, 1, 1, 'NewCar'),
(15, 597, 1527.63, -1688.07, 5.65998, 268.894, 0, 1, 1, 1, 'NewCar'),
(16, 597, 1527.81, -1683.62, 5.654, 270.368, 0, 1, 1, 1, 'NewCar'),
(17, 523, 1579.85, -1693, 5.78111, 176.462, 0, 1, 1, 1, 'NewCar'),
(18, 523, 1577.8, -1693.25, 5.8038, 184.818, 0, 1, 1, 1, 'NewCar'),
(19, 523, 1574.97, -1693.37, 5.78056, 175.377, 0, 1, 1, 1, 'NewCar'),
(20, 597, 1558.79, -1711.6, 5.66022, 0.585178, 0, 1, 1, 1, 'NewCar'),
(21, 523, 1560.28, -1692.93, 5.46778, 181.129, 0, 1, 1, 1, 'NewCar'),
(22, 523, 1558.16, -1692.97, 5.46132, 182.425, 223, 223, 1, 1, 'NewCar'),
(23, 596, 1550.6, -1698.11, 13.2626, 91.402, 0, 1, 1, 1, 'NewCar'),
(24, 597, 1546.69, -1680.38, 5.69899, 89.9835, 0, 1, 1, 1, 'NewCar'),
(25, 597, 1570.42, -1712.1, 5.68921, 359.818, 0, 1, 1, 1, 'NewCar'),
(26, 597, 1583.73, -1711.07, 5.661, 356.092, 0, 1, 1, 1, 'NewCar'),
(27, 497, 1565.38, -1644.6, 28.5585, 88.4126, 0, 1, 1, 1, 'NewCar'),
(28, 411, 1536.11, -1666.69, 13.1162, 179.335, 1, 1, 1, 3, 'NewCar'),
(29, 596, 667.596, -583.375, 16.105, 88.3337, 0, 0, 2, 1, 'NewCar'),
(30, 596, 667.717, -579.21, 16.1035, 89.8194, 0, 0, 2, 1, 'NewCar'),
(31, 599, -2420.79, 504.916, 30.264, 111.544, 0, 0, 2, 1, 'NewCar'),
(32, 599, 620.867, -543.083, 16.6273, 270.298, 0, 0, 2, 1, 'NewCar'),
(33, 596, 611.019, -590.954, 16.9992, 270.279, 0, 0, 2, 1, 'NewCar'),
(34, 428, 622.168, -605.849, 17.2411, 269.494, 0, 0, 2, 1, 'NewCar'),
(35, 596, 615.297, -597.127, 16.9555, 271.138, 0, 0, 2, 1, 'NewCar'),
(36, 596, 615.409, -601.443, 17.0005, 271.269, 0, 0, 2, 1, 'NewCar'),
(37, 490, -2416.24, 528.211, 30.0584, 237.622, 0, 0, 2, 1, 'NewCar'),
(38, 497, 664.776, -615.275, 16.0668, 359.864, 0, 0, 2, 1, 'NewCar'),
(39, 411, 668.026, -546.144, 16.063, 90.3766, 0, 0, 2, 1, 'NewCar'),
(40, 428, 622.145, -610.525, 17.2419, 270.149, 0, 0, 2, 1, 'NewCar'),
(41, 470, 202.537, 1920.24, 17.6333, 179.424, 0, 0, 3, 1, 'NewCar'),
(42, 470, 211.501, 1919.92, 17.6339, 180.782, 0, 0, 3, 1, 'NewCar'),
(43, 470, 226.581, 1925.86, 17.633, 179.598, 0, 0, 3, 1, 'NewCar'),
(44, 470, 187.122, 1925.97, 17.7093, 181.291, 0, 0, 3, 1, 'NewCar'),
(45, 433, 138.526, 1865.79, 18.2101, 269.804, 0, 0, 3, 1, 'NewCar'),
(46, 520, 310.009, 1810.14, 17.3677, 0.190774, 0, 0, 3, 1, 'NewCar'),
(47, 425, 202.016, 1884.03, 17.3759, 1.00503, 0, 0, 3, 1, 'NewCar'),
(48, 425, 225.607, 1884.88, 17.3677, 359.749, 0, 0, 3, 1, 'NewCar'),
(49, 476, 280.871, 2024.44, 17.3677, 270.303, 0, 0, 3, 1, 'NewCar'),
(50, 476, 281.684, 1955.98, 17.3677, 269.829, 0, 0, 3, 1, 'NewCar'),
(51, 476, 280.954, 1989.63, 17.3677, 271.302, 0, 0, 3, 1, 'NewCar'),
(52, 411, 220.5, 1920.38, 17.3677, 181.418, 86, 86, 3, 1, 'NewCar'),
(53, 411, 193.502, 1919.92, 17.376, 180.377, 86, 86, 3, 1, 'NewCar'),
(54, 488, 2775.4, -2389.9, 19.0982, 179.439, 1, 220, 9, 1, 'NewCar'),
(55, 582, 2725.69, -2392.99, 13.6919, 268.643, 1, 220, 9, 1, 'NewCar'),
(56, 582, 2725.68, -2413.03, 13.6876, 269.742, 1, 220, 9, 1, 'NewCar'),
(57, 582, 2739.94, -2387.76, 13.7612, 177.921, 1, 220, 9, 1, 'NewCar'),
(58, 582, 2747.09, -2387.68, 13.7, 179.119, 1, 220, 9, 1, 'NewCar'),
(59, 582, 2763.33, -2382.09, 13.6885, 179.899, 1, 220, 9, 1, 'NewCar'),
(60, 525, 1655.38, 998.759, 10.7004, 0.614126, 0, 222, 8, 1, 'NewCar'),
(61, 525, 1658.62, 988.447, 10.7011, 180.753, 0, 222, 8, 1, 'NewCar'),
(62, 525, 1652.18, 988.453, 10.698, 181.426, 0, 222, 8, 1, 'NewCar'),
(63, 525, 1681.1, 988.926, 10.7035, 180.393, 0, 222, 8, 1, 'NewCar'),
(64, 525, 1674.7, 988.494, 10.6922, 180.494, 0, 222, 8, 1, 'NewCar'),
(65, 525, 1677.77, 998.909, 10.6983, 359.787, 0, 222, 8, 1, 'NewCar'),
(66, 522, 1045.56, -308.228, 73.5609, 178.039, 129, 129, 11, 1, 'NewCar'),
(67, 402, 1070.65, -294.219, 73.8167, 180.098, 129, 129, 11, 1, 'NewCar'),
(68, 560, 1077.49, -293.829, 73.69, 180.834, 129, 129, 11, 1, 'NewCar'),
(69, 487, 1041.43, -348.755, 74.1676, 88.2589, 129, 129, 11, 1, 'NewCar'),
(70, 469, 1017.03, -326.791, 74.0214, 268.923, 129, 129, 11, 1, 'NewCar'),
(71, 469, 1042.3, -355.724, 73.9946, 87.825, 129, 129, 11, 1, 'NewCar'),
(72, 469, 1017.13, -333.177, 74.0296, 269.953, 129, 129, 11, 1, 'NewCar'),
(73, 522, 1019.38, -307.121, 73.5609, 179.779, 129, 129, 11, 1, 'NewCar'),
(74, 560, 1067.02, -293.904, 73.6569, 177.843, 129, 129, 11, 1, 'NewCar'),
(75, 582, 2768.22, -2393.89, 13.6886, 90.5486, 1, 220, 9, 1, 'NewCar'),
(76, 582, 2725.56, -2398.06, 13.6986, 269.617, 1, 220, 9, 1, 'NewCar'),
(77, 402, 1074.13, -294.143, 73.8166, 181.202, 129, 129, 11, 1, 'NewCar'),
(78, 582, 2753.48, -2387.55, 13.6942, 180.309, 1, 220, 9, 1, 'NewCar'),
(79, 487, 1100.62, -335.772, 74.1412, 89.5893, 129, 129, 11, 1, 'NewCar'),
(80, 487, 1100.7, -342.272, 74.1685, 90.7268, 129, 129, 11, 1, 'NewCar'),
(81, 552, 1658.56, 1028.65, 10.5115, 180.028, 1, 222, 8, 1, 'NewCar'),
(82, 552, 1674.59, 1028.69, 10.5226, 180.858, 1, 222, 8, 1, 'NewCar'),
(83, 443, 1711.91, 986.435, 11.4534, 90.1407, 222, 222, 8, 1, 'NewCar'),
(84, 582, -2498.29, -602.499, 132.615, 179.194, 1, 220, 9, 1, 'NewCar'),
(85, 492, 2484.25, -1953.55, 13.2062, 181.047, 234, 234, 4, 1, 'NewCar'),
(86, 560, 2489.06, -1953.76, 13.0579, 178.827, 234, 234, 4, 1, 'NewCar'),
(87, 409, 2498.61, -1944.33, 13.3087, 89.644, 234, 234, 4, 1, 'NewCar'),
(88, 560, 2499.18, -1953.41, 13.0612, 177.229, 234, 234, 4, 1, 'NewCar'),
(89, 492, 2479.78, -1953.73, 13.2046, 177.425, 234, 234, 4, 1, 'NewCar'),
(90, 567, 2474.13, -1953.14, 13.295, 179.958, 234, 234, 4, 1, 'NewCar'),
(91, 482, 1494.35, 2837.58, 10.935, 180.237, 135, 135, 5, 1, 'NewCar'),
(92, 487, 1483.78, 2762.23, 11.01, 18.0755, 135, 135, 5, 2, 'NewCar'),
(93, 409, 1466.04, 2797.96, 10.6165, 139.234, 135, 135, 5, 1, 'NewCar'),
(94, 562, 1503.6, 2806.47, 10.4176, 56.1265, 135, 135, 5, 1, 'NewCar'),
(95, 411, 1477.22, 2757.92, 10.5431, 36.2187, 135, 135, 5, 4, 'NewCar'),
(96, 560, 1477.19, 2789.04, 10.5237, 133.654, 135, 135, 5, 1, 'NewCar'),
(97, 567, 2804.61, -1054.96, 28.9526, 89.3269, 6, 6, 6, 1, 'NewCar'),
(98, 411, 2822.31, -1093.37, 30.4647, 358.204, 6, 6, 6, 6, 'NewCar'),
(99, 482, 2814.54, -1083.92, 30.8645, 2.03406, 6, 6, 6, 1, 'NewCar'),
(100, 560, 2822.62, -1077.06, 30.3258, 359.483, 6, 6, 6, 5, 'NewCar'),
(101, 461, 2802.58, -1065.34, 30.1502, 175.673, 6, 6, 6, 1, 'NewCar'),
(102, 461, 2807.39, -1065.38, 29.9116, 177.999, 6, 6, 6, 1, 'NewCar'),
(103, 566, 2612.55, 2279.4, 10.6006, 88.6804, 167, 167, 10, 1, 'NewCar'),
(104, 409, 2565.37, 2258.21, 10.6205, 270.247, 167, 167, 10, 1, 'NewCar'),
(105, 560, 2592.6, 2279.23, 10.4557, 90.523, 167, 167, 10, 1, 'NewCar'),
(106, 560, 2592.57, 2271.77, 10.4555, 88.6727, 167, 167, 10, 1, 'NewCar'),
(107, 567, 2613.05, 2267.05, 10.6848, 90.1864, 167, 167, 10, 1, 'NewCar'),
(108, 482, 2593.9, 2250.77, 10.9411, 359.793, 167, 167, 10, 1, 'NewCar'),
(109, 597, 1578.69, -1711.99, 5.66, 1.313, 0, 1, 1, 1, 'NewCar'),
(110, 420, 952.069, 1744.95, 8.42699, 270.587, 6, 6, 12, 1, 'NewCar'),
(111, 420, 952.057, 1715.89, 8.42791, 270.164, 6, 6, 12, 1, 'NewCar'),
(112, 420, 952.097, 1739.1, 8.42691, 270.43, 6, 6, 12, 1, 'NewCar'),
(113, 438, 965.728, 1706.49, 8.7432, 269.808, 6, 6, 12, 1, 'NewCar'),
(114, 438, 971.847, 1766.99, 8.74543, 179.322, 6, 6, 12, 1, 'NewCar'),
(115, 410, 1838.05, -1871.21, 13.3911, 359.734, 6, 6, 0, 0, 'NewCar'),
(116, 560, 985.025, 1721.57, 8.36013, 90.4871, 6, 6, 12, 3, 'NewCar'),
(117, 560, 984.979, 1744.84, 8.35469, 90.2769, 6, 6, 12, 3, 'NewCar'),
(118, 416, 1590.54, 1849.39, 10.9695, 180, 3, 1, 13, 1, 'NewCar'),
(120, 407, 1612.43, 1833.36, 11.056, 270.793, 3, 3, 13, 1, 'NewCar'),
(121, 416, 1600.2, 1849.33, 10.9695, 180.18, 3, 1, 13, 1, 'NewCar'),
(122, 599, 1580.72, 1825.28, 11.0136, 269.919, 1, 3, 13, 1, 'NewCar'),
(123, 599, 1604.27, 1850.58, 11.0093, 179.121, 1, 3, 13, 1, 'NewCar'),
(125, 445, 1024.51, -1507.89, 13.4081, 269.969, 112, 0, 0, 0, 'NewCar'),
(126, 421, 1635.18, -1907.28, 13.4339, 5.51622, 41, 2, 0, 0, 'NewCar'),
(127, 475, 1285.25, -1526.25, 13.3677, 269.382, 52, 3, 0, 0, 'NewCar'),
(128, 566, 956.348, -1187.23, 16.7255, 269.845, 25, 1, 0, 0, 'NewCar'),
(129, 458, 1506.33, -1284.33, 14.4, 178.728, 56, 2, 0, 0, 'NewCar'),
(130, 487, 1529.51, -2647.22, 13.7236, 358.528, 154, 154, 7, 1, 'NewCar'),
(131, 487, 1508.82, -2647.53, 13.7236, 356.978, 154, 154, 7, 1, 'NewCar'),
(132, 487, 1488.27, -2647.23, 13.7236, 358.508, 154, 154, 7, 1, 'NewCar'),
(133, 446, 140.919, -1920.95, -0.551752, 177.004, 154, 154, 7, 1, 'NewCar'),
(134, 446, 136.784, -1938.92, -0.520285, 149.837, 154, 154, 7, 1, 'NewCar'),
(135, 446, 135.573, -1960.84, -0.544881, 212.983, 154, 154, 7, 1, 'NewCar'),
(136, 487, 1983.49, -2647.09, 13.7235, 0.313807, 51, 71, 0, 0, 'NewCar'),
(137, 487, 1998.22, -2647.73, 13.7235, 359.699, 52, 64, 0, 0, 'NewCar'),
(138, 487, 2013.33, -2648.2, 13.7236, 359.528, 3, 64, 0, 0, 'NewCar'),
(139, 513, 1900.63, -2618.84, 14.0356, 0, 3, 2, 0, 0, 'NewCar'),
(140, 513, 1862.69, -2618.47, 14.0975, 359.327, 6, 0, 0, 0, 'NewCar'),
(141, 513, 1823.25, -2617.87, 14.098, 358.698, 9, 2, 0, 0, 'NewCar'),
(142, 511, 2091, -2636.93, 14.92, 57.4277, 211, 222, 0, 0, 'NewCar'),
(143, 415, 1484.69, 2837.85, 10.5414, 179.514, 135, 135, 5, 1, 'NewCar'),
(144, 461, 1484.01, 2778.03, 10.4023, 86.9233, 135, 135, 5, 1, 'NewCar'),
(145, 461, 1484.19, 2772.05, 10.4016, 90.6412, 135, 135, 5, 1, 'NewCar'),
(146, 415, 2476.3, -1944.43, 13.2817, 90.0154, 234, 234, 4, 1, 'NewCar'),
(147, 461, 2499.76, -1957.59, 13.1909, 0.678692, 234, 234, 4, 1, 'NewCar'),
(148, 461, 2502.52, -1957.66, 13.1686, 3.15124, 234, 234, 4, 1, 'NewCar'),
(149, 409, 2819.69, -1043.89, 25.2331, 90.0304, 6, 6, 6, 6, 'NewCar'),
(150, 487, 2831.36, -1086.21, 23.9204, 358.487, 6, 6, 6, 1, 'NewCar'),
(151, 412, 2832.75, -1066.84, 23.2161, 359.595, 6, 6, 6, 1, 'NewCar'),
(152, 461, 2641.82, 2350.55, 10.3152, 156.428, 167, 167, 10, 1, 'NewCar'),
(153, 461, 2646.39, 2349.07, 10.3167, 165.144, 167, 167, 10, 1, 'NewCar'),
(154, 487, 2567.97, 2295.12, 17.9989, 234.166, 167, 167, 10, 1, 'NewCar'),
(155, 522, 2161.24, -1177.88, 23.3845, 87.2149, 154, 154, 7, 3, 'NewCar'),
(156, 522, 2148.72, -1180.18, 23.3881, 270.553, 154, 154, 7, 3, 'NewCar'),
(157, 522, 2148.64, -1203.59, 23.4127, 272.467, 154, 154, 7, 3, 'NewCar'),
(158, 588, 1991.75, -2061.54, 13.2671, 178.615, 1, 1, 0, 0, 'NewCar'),
(159, 522, 2772.4, -2406.21, 13.1895, 85.2821, 85, 1, 9, 2, 'NewCar'),
(160, 522, 2772.28, -2411.59, 13.1904, 89.5723, 85, 1, 0, 0, 'NewCar'),
(161, 410, 2389.96, 1629.48, 10.4752, 1.80023, 3, 244, 0, 0, 'NewCar'),
(162, 565, 985.081, 1727.4, 8.2783, 90.2395, 6, 6, 12, 3, 'NewCar'),
(163, 565, 985.353, 1739.04, 8.27605, 89.0186, 6, 6, 12, 3, 'NewCar'),
(164, 487, 2487.22, -1966.32, 21.9978, 88.4204, 16, 16, 4, 1, 'NewCar'),
(165, 597, 1546.93, -1684.49, 5.68883, 89.8407, 0, 1, 1, 3, 'NewCar'),
(166, 419, 2219, 2059.47, 10.4284, 268.387, 3, 3, 0, 0, 'NewCar'),
(167, 410, 2185.75, 2004.5, 10.4286, 88.5765, 3, 3, 0, 0, 'NewCar'),
(168, 598, 2324.11, 2419.44, 10.523, 135.897, 0, 1, 14, 1, 'NewCar'),
(169, 598, 2319.18, 2419.73, 10.528, 136.377, 0, 1, 14, 1, 'NewCar'),
(170, 598, 2267.3, 2420.07, 10.569, 121.437, 0, 1, 14, 1, 'NewCar'),
(171, 598, 2261.32, 2420.09, 10.575, 120.585, 0, 1, 14, 1, 'NewCar'),
(172, 411, 2283.82, 2429.96, 10.547, 181.256, 1, 1, 14, 3, 'NewCar'),
(173, 411, 2295.87, 2430.1, 10.547, 179.604, 1, 1, 14, 3, 'NewCar'),
(174, 523, 2264.66, 2407.53, 10.348, 353.593, 0, 1, 14, 1, 'NewCar'),
(175, 599, 2308.24, 2456.64, 11.009, 179.936, 0, 1, 14, 2, 'NewCar'),
(176, 523, 2266.11, 2407.51, 10.348, 358.73, 0, 1, 14, 1, 'NewCar'),
(177, 598, 2255.44, 2420.1, 10.6, 120.558, 0, 1, 14, 1, 'NewCar'),
(178, 523, 2267.88, 2407.21, 10.389, 354.738, 0, 1, 14, 1, 'NewCar'),
(179, 599, 2303.52, 2456.57, 11.01, 176.52, 0, 1, 14, 2, 'NewCar'),
(180, 598, 2272.96, 2419.64, 10.533, 132.443, 0, 1, 14, 1, 'NewCar'),
(181, 420, 952.098, 1750.71, 8.42746, 270.354, 6, 6, 12, 1, 'NewCar'),
(182, 420, 952.164, 1727.44, 8.42725, 270.103, 6, 6, 12, 1, 'NewCar'),
(183, 420, 952.098, 1710.1, 8.42692, 271.147, 6, 6, 12, 1, 'NewCar'),
(184, 420, 952.077, 1721.62, 8.42769, 270.265, 6, 6, 12, 1, 'NewCar'),
(185, 420, 952.099, 1756.54, 8.43272, 269.71, 6, 6, 12, 1, 'NewCar'),
(186, 438, 965.217, 1759.96, 8.74838, 270.344, 6, 6, 12, 1, 'NewCar'),
(187, 560, 1082.44, -1775.6, 13.0498, 89.3088, 226, 6, 15, 1, 'NewCar'),
(188, 560, 1081.74, -1746.72, 13.1427, 88.8045, 226, 6, 15, 1, 'NewCar'),
(189, 411, 1133.08, -1764.63, 13.3253, 89.3312, 226, 6, 15, 3, 'NewCar'),
(190, 560, 1099.23, -1775.72, 13.0497, 90.3104, 226, 6, 15, 1, 'NewCar'),
(191, 541, 1099.33, -1754.95, 12.9751, 89.1543, 226, 0, 15, 2, 'NewCar'),
(192, 541, 1099.15, -1760.91, 12.9755, 89.987, 226, 0, 15, 2, 'NewCar'),
(193, 411, 1123.92, -1765.03, 13.3237, 91.6237, 226, 6, 15, 3, 'NewCar'),
(194, 411, 1547.64, -2191.99, 13.375, 102.343, 205, 226, 0, 0, 'NewCar'),
(195, 560, 1034.2, 1305.73, 10.5274, 1.55143, 243, 243, 7, 0, 'NewCar'),
(196, 560, 1028.27, 1305.73, 10.5253, 0.557079, 243, 243, 7, 0, 'NewCar'),
(197, 426, 1050.82, 1306.16, 10.5626, 359.363, 243, 243, 7, 0, 'NewCar'),
(198, 426, 1055.62, 1306.1, 10.563, 358.022, 243, 243, 7, 0, 'NewCar'),
(199, 551, 1083.66, 1358.76, 10.6214, 180.894, 243, 243, 7, 0, 'NewCar'),
(200, 551, 1079.61, 1358.75, 10.6209, 179.812, 243, 243, 7, 0, 'NewCar'),
(201, 487, 1045.81, 1345.12, 11.0087, 266.225, 243, 1, 7, 0, 'NewCar'),
(202, 547, 1095.23, 1359.01, 10.5553, 180.594, 243, 243, 7, 0, 'NewCar'),
(203, 547, 1091.46, 1359.16, 10.5567, 180.473, 243, 243, 7, 0, 'NewCar'),
(204, 532, -365.495, -1440.04, 26.7124, 87.9913, 1, 1, 0, 0, 'NewCar'),
(205, 523, -2918.51, -864.628, 4.17439, 190.191, 1, 1, 0, 0, 'NewCar'),
(206, 523, -1898.32, 243.691, 40.6114, 178.15, 1, 1, 0, 0, 'NewCar'),
(207, 523, -2007.61, -376.091, 26.069, 99.6504, 1, 1, 0, 0, 'NewCar'),
(208, 541, -2347.15, -1593.82, 483.334, 245.253, 1, 133, 0, 0, 'NewCar'),
(209, 541, -2306.31, -1683.55, 482.271, 31.8941, 3, 2, 0, 0, 'NewCar'),
(210, 497, -2830.8, -1758.2, 141.723, 107.382, 133, 133, 0, 0, 'NewCar'),
(211, 523, -2136, -607.462, 43.0027, 214.679, 1, 1, 0, 0, 'NewCar'),
(212, 523, -2292.98, -1638.92, 483.267, 347.828, 1, 1, 0, 0, 'NewCar'),
(213, 523, -2343.02, -1586.36, 483.118, 234.475, 1, 1, 0, 0, 'NewCar'),
(214, 490, -992.232, -450.222, 37.11, 352.718, 3, 133, 0, 0, 'NewCar'),
(215, 490, -2357.39, -1636.07, 483.947, 308.158, 3, 3, 0, 0, 'NewCar'),
(216, 528, -2817.45, -1758.04, 141.647, 93.9663, 133, 133, 0, 0, 'NewCar'),
(217, 528, -2352.17, -1613.71, 483.68, 251.325, 1, 3, 0, 0, 'NewCar'),
(218, 461, 1484.3, 2773.85, 10.4015, 90.049, 135, 135, 5, 0, 'NewCar'),
(219, 461, 1483.94, 2775.75, 10.4033, 97.5008, 135, 135, 5, 0, 'NewCar'),
(220, 560, 1460.7, 2780.59, 10.5249, 271.366, 135, 135, 5, 0, 'NewCar'),
(221, 560, 1460.68, 2784.08, 10.5238, 270.653, 135, 135, 5, 0, 'NewCar'),
(222, 567, 1460.92, 2763.71, 10.6268, 270.308, 135, 135, 5, 0, 'NewCar'),
(223, 567, 1460.92, 2768.05, 10.6273, 270.24, 135, 135, 5, 0, 'NewCar'),
(224, 579, 1460.59, 2837.8, 10.7561, 179.806, 135, 135, 5, 0, 'NewCar'),
(225, 579, 1470.52, 2837.83, 10.7549, 179.986, 135, 135, 5, 0, 'NewCar'),
(226, 579, 1479.7, 2837.77, 10.7492, 178.909, 135, 135, 5, 0, 'NewCar'),
(227, 579, 1489.51, 2837.66, 10.7539, 178.813, 135, 135, 5, 0, 'NewCar'),
(228, 482, 1528.19, 2804.7, 10.9415, 89.0282, 135, 135, 5, 0, 'NewCar'),
(229, 482, 1528.43, 2813.4, 10.9358, 88.0379, 135, 135, 5, 0, 'NewCar'),
(230, 405, 1528.9, 2822.2, 10.6953, 87.7048, 135, 135, 5, 0, 'NewCar'),
(231, 405, 1528.51, 2831.59, 10.6953, 90.1153, 135, 135, 5, 0, 'NewCar'),
(232, 488, -2397.97, -592.033, 132.376, 125.446, 1, 220, 9, 0, 'NewCar'),
(233, 488, 2751.79, -2422.7, 13.3648, 316.87, 1, 220, 9, 0, 'NewCar'),
(234, 582, -2651.24, 358.044, 4.48851, 0.129722, 1, 220, 9, 0, 'NewCar'),
(235, 582, -2651.32, 393.16, 4.39252, 180.046, 1, 220, 9, 0, 'NewCar'),
(236, 582, -2505.78, -602.412, 132.618, 179.542, 1, 220, 9, 0, 'NewCar'),
(237, 582, -2531.83, -602.325, 132.615, 180.362, 1, 220, 9, 0, 'NewCar'),
(238, 582, -2524.38, -602.388, 132.625, 179.041, 1, 220, 9, 0, 'NewCar'),
(239, 582, 2774.68, -2397.57, 13.6866, 88.4536, 1, 220, 9, 0, 'NewCar'),
(240, 560, -1456.18, 66.5351, 14.1789, 139.909, 1, 6, 0, 0, 'NewCar'),
(241, 560, -1371.92, 151.242, 14.2001, 128.712, 1, 6, 0, 0, 'NewCar'),
(242, 560, -1211.08, 251.291, 14.1908, 329.248, 1, 6, 0, 0, 'NewCar'),
(243, 560, -1243.54, 152.297, 13.8521, 326.959, 1, 6, 0, 0, 'NewCar'),
(244, 560, -1288.82, 53.6922, 13.8578, 357.915, 1, 6, 0, 0, 'NewCar'),
(245, 560, -1394.15, -401.114, 5.70532, 258.268, 1, 6, 0, 0, 'NewCar'),
(246, 438, -1263.97, -417.389, 14.1518, 265.73, 1, 6, 0, 0, 'NewCar'),
(247, 438, -1469.51, -471.104, 6.00386, 183.64, 1, 6, 0, 0, 'NewCar'),
(248, 438, -1206.99, -453.41, 14.1523, 200.04, 1, 6, 0, 0, 'NewCar'),
(249, 438, -1482.98, -399.899, 6.90614, 309.779, 1, 6, 0, 0, 'NewCar'),
(250, 567, -1543.56, 1111.2, 7.05732, 89.8886, 23, 23, 0, 0, 'NewCar'),
(251, 400, -1838.47, 114.406, 15.1194, 266.192, 22, 6, 0, 0, 'NewCar'),
(252, 426, -1129.29, -177.225, 13.8905, 352.622, 1, 6, 0, 0, 'NewCar'),
(253, 426, -1133.93, -277.041, 13.8909, 9.94623, 1, 6, 0, 0, 'NewCar'),
(254, 426, -1127.94, -349.569, 13.8894, 347.379, 1, 100, 0, 0, 'NewCar'),
(255, 426, -1619.26, -478.925, 6.84939, 127.349, 1, 6, 0, 0, 'NewCar'),
(256, 426, -1262.71, -22.1491, 13.8914, 357.907, 1, 6, 0, 0, 'NewCar'),
(257, 426, -2285.44, 416.031, 34.9111, 271.386, 1, 6, 0, 0, 'NewCar'),
(258, 596, 667.47, -587.589, 16.0561, 89.1523, 0, 0, 2, 0, 'NewCar'),
(259, 411, 626.278, -585.021, 16.4717, 262.58, 0, 0, 2, 0, 'NewCar'),
(260, 487, 1043.53, 1334.07, 11.0111, 257.087, 243, 1, 7, 0, 'NewCar'),
(261, 598, 2253.52, 2406.05, 10.577, 37.13, 0, 1, 14, 0, 'NewCar'),
(262, 598, 2258.22, 2406.45, 10.528, 38.292, 0, 1, 14, 0, 'NewCar'),
(263, 598, 2248.96, 2405.85, 10.566, 42.446, 0, 1, 14, 0, 'NewCar'),
(264, 598, 2249.99, 2420.19, 10.566, 116.427, 0, 1, 14, 0, 'NewCar'),
(265, 497, 2316.87, 2396.94, 10.5474, 0.150658, 0, 1, 0, 0, 'NewCar'),
(266, 525, 1671.45, 999.062, 10.6923, 0, 0, 222, 8, 0, 'NewCar'),
(267, 525, 1661.76, 998.891, 10.7019, 0, 0, 222, 8, 0, 'NewCar'),
(268, 443, 1705.12, 963.221, 11.4535, 0.384613, 222, 222, 8, 0, 'NewCar'),
(269, 487, 1620.5, 995.549, 10.9837, 270.765, 1, 222, 8, 0, 'NewCar'),
(270, 596, 636.699, -564.214, 15.9806, 182.218, 0, 0, 2, 0, 'NewCar'),
(271, 596, 636.524, -578.336, 15.9806, 359.817, 0, 0, 2, 0, 'NewCar'),
(272, 560, 1088.2, -1737.13, 13.246, 91.4559, 226, 234, 15, 1, 'NewCar'),
(273, 560, 1081.69, -1754.92, 13.0938, 88.03, 226, 234, 15, 1, 'NewCar'),
(274, 560, 1061.78, -1772.76, 13.0614, 270.976, 226, 234, 15, 1, 'NewCar'),
(275, 409, 1067.32, -1737.17, 13.2891, 88.7931, 226, 234, 15, 4, 'NewCar'),
(276, 487, 1113.73, -1773.49, 13.7897, 326.018, 234, 234, 15, 5, 'NewCar'),
(277, 416, 1593.61, 1830.94, 10.9694, 179.66, 3, 1, 13, 0, 'NewCar'),
(278, 416, 1608.59, 1849.37, 10.9696, 179.85, 3, 1, 13, 0, 'NewCar'),
(280, 599, 1613.01, 1838.91, 11.0121, 359.921, 1, 3, 13, 0, 'NewCar'),
(284, 407, 1584.33, 1804.01, 11.0607, 0.151969, 3, 1, 13, 0, 'NewCar'),
(287, 565, 985.368, 1733.18, 8.28227, 90.0903, 6, 6, 12, 0, 'NewCar'),
(288, 438, 971.84, 1699.14, 8.74363, 359.92, 6, 6, 12, 0, 'NewCar'),
(289, 598, 2313.35, 2419.77, 10.522, 126.833, 0, 1, 14, 0, 'NewCar'),
(290, 598, 2308.58, 2420.16, 10.595, 120.457, 0, 1, 14, 0, 'NewCar'),
(291, 426, -51.8137, 1166.71, 19.3635, 0.435257, 17, 17, 0, 0, 'NewCar'),
(292, 405, -37.6494, 1166.34, 19.3557, 1.30045, 6, 3, 0, 0, 'NewCar'),
(293, 405, 1551.54, -1622.51, 13.334, 84.071, 5, 2, 1, 1, 'NewCar'),
(294, 461, -57.3433, 1207.8, 19.0527, 90.3996, 1, 0, 0, 0, 'NewCar'),
(295, 426, -66.0739, 61.8706, 2.86032, 341.235, 13, 13, 0, 0, 'NewCar'),
(296, 426, -13.4177, 91.3639, 2.86067, 68.9988, 250, 250, 0, 0, 'NewCar'),
(297, 426, -100.606, -29.7018, 2.85625, 73.4426, 44, 44, 0, 0, 'NewCar'),
(298, 510, 2184.61, 2337.05, 10.421, 267.31, 43, 43, 0, 0, 'NewCar'),
(299, 510, 2178.35, 2337.17, 10.418, 269.659, 1, 1, 0, 0, 'NewCar'),
(300, 510, 2173.06, 2337.06, 10.42, 269.958, 2, 2, 0, 0, 'NewCar'),
(301, 510, 2168.77, 2337.11, 10.417, 272.23, 1, 1, 0, 0, 'NewCar'),
(302, 510, 2164.51, 2337.09, 10.42, 272.081, 1, 1, 0, 0, 'NewCar'),
(303, 510, 2160.29, 2337.04, 10.417, 272.167, 1, 1, 0, 0, 'NewCar'),
(304, 510, 2155.84, 2337.02, 10.421, 272.574, 1, 1, 0, 0, 'NewCar'),
(305, 510, 2151.31, 2336.94, 10.417, 269.558, 1, 1, 0, 0, 'NewCar'),
(306, 510, 2145.24, 2336.89, 10.419, 272.929, 1, 1, 0, 0, 'NewCar'),
(307, 510, 2138.49, 2337.01, 10.423, 269.713, 1, 1, 0, 0, 'NewCar'),
(308, 510, 2132.37, 2336.94, 10.426, 271.451, 1, 1, 0, 0, 'NewCar'),
(309, 510, 2127.51, 2336.9, 10.425, 270.79, 1, 1, 0, 0, 'NewCar'),
(310, 510, 2121.99, 2336.98, 10.427, 269.533, 1, 1, 0, 0, 'NewCar'),
(311, 510, 2117.44, 2336.77, 10.427, 268.944, 1, 1, 0, 0, 'NewCar'),
(312, 510, 2110.99, 2336.94, 10.429, 271.64, 1, 1, 0, 0, 'NewCar'),
(313, 510, 2105.62, 2336.93, 10.421, 273.258, 1, 1, 0, 0, 'NewCar'),
(314, 411, -2399.52, 349.372, 34.703, 226.383, 3, 3, 16, 1, 'NewCar'),
(315, 510, 2114.27, 2336.78, 10.429, 270.281, 1, 1, 0, 0, 'NewCar'),
(316, 510, 2109.28, 2341.99, 10.672, 27.902, 1, 1, 0, 0, 'NewCar'),
(317, 411, -2415.75, 338.611, 35.179, 303.296, 3, 3, 0, 0, 'NewCar');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `byID` int(13) NOT NULL,
  `type` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(2) NOT NULL,
  `text` text NOT NULL,
  `owner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `tickets_panel`
--

CREATE TABLE `tickets_panel` (
  `ID` int(11) NOT NULL,
  `Nickname` int(11) NOT NULL,
  `Ticket` text NOT NULL,
  `Status` int(11) NOT NULL,
  `Created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `transferlog`
--

CREATE TABLE `transferlog` (
  `ID` int(11) NOT NULL,
  `ip1` varchar(64) NOT NULL,
  `ip2` varchar(64) NOT NULL,
  `psql1` int(11) NOT NULL,
  `psql2` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `time` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `turfs`
--

CREATE TABLE `turfs` (
  `ID` int(11) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `Owned` int(11) NOT NULL,
  `Time` int(11) NOT NULL,
  `MinX` float NOT NULL,
  `MinY` float NOT NULL,
  `MaxX` float NOT NULL,
  `MaxY` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `turfs`
--

INSERT INTO `turfs` (`ID`, `Name`, `Owned`, `Time`, `MinX`, `MinY`, `MaxX`, `MaxY`) VALUES
(1, '', 4, 0, 127.941, -1984.92, 623.941, -1686.92),
(2, '', 18, 24, 127.93, -1686.91, 623.93, -1388.91),
(3, '', 4, 0, 623.93, -1986.91, 851.93, -1388.91),
(4, '', 4, 0, 852.926, -1897.91, 1083.93, -1578.91),
(5, '', 4, 24, 1084.91, -2304.91, 1808.91, -1668.91),
(6, '', 4, 24, 1084.91, -1668.91, 1808.91, -1032.91),
(7, '', 4, 24, 851.906, -1578.91, 1085.91, -1032.91),
(8, '', 4, 24, 127.906, -1388.91, 851.906, -920.906),
(9, '', 5, 24, 1808.91, -2302.91, 2480.91, -1668.91),
(10, '', 4, 24, 1808.91, -1668.91, 2480.91, -1034.91),
(11, '', 5, 0, 2120.88, 539.125, 2664.88, 979.125),
(12, '', 5, 0, 1576.88, 631.125, 2120.88, 1071.12),
(13, '', 18, 0, 964.875, 815.125, 1576.88, 1255.12),
(14, '', 5, 0, 1576.88, 1071.12, 2120.88, 1511.12),
(15, '', 5, 0, 2120.88, 979.125, 2664.88, 1419.12),
(16, '', 18, 24, 2120.88, 1419.12, 2664.88, 1859.12),
(17, '', 6, 0, 988.875, 1255.12, 1576.88, 1695.12),
(18, '', 6, 0, 1576.88, 1511.12, 2120.88, 1951.12),
(19, '', 6, 0, 2120.88, 1859.12, 2664.88, 2299.12),
(20, '', 6, 0, 1576.88, 1951.12, 2120.88, 2391.12),
(21, '', 6, 0, 988.875, 1695.12, 1576.88, 2135.12),
(22, '', 6, 24, 2120.88, 2299.12, 2664.88, 2739.12),
(23, '', 6, 0, 1576.88, 2391.12, 2120.88, 2831.12),
(24, '', 6, 0, 988.875, 2135.12, 1576.88, 2575.12),
(25, '', 6, 0, -2799.12, 2211.12, -2187.12, 2651.12),
(26, '', 10, 0, -2183.12, 935.125, -1455.12, 1447.12),
(27, '', 10, 0, -2911.12, 887.125, -2183.12, 1399.12),
(28, '', 10, 0, -2183.12, 423.125, -1455.12, 935.125),
(29, '', 10, 0, -2911.12, 375.125, -2183.12, 887.125),
(30, '', 10, 0, -2183.12, -88.875, -1455.12, 423.125),
(31, '', 10, 0, -2911.12, -136.875, -2183.12, 375.125),
(32, '', 10, 0, -2183.12, -600.875, -1455.12, -88.875),
(33, '', 10, 0, -2911.12, -648.875, -2183.12, -136.875),
(34, '', 10, 0, -383.125, 2263.12, 536.875, 2799.12);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `updates`
--

CREATE TABLE `updates` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `byAdmin` text NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `password2` varchar(40) NOT NULL,
  `Security` varchar(256) NOT NULL DEFAULT 'no',
  `IP` varchar(16) NOT NULL DEFAULT 'Not logged',
  `Level` int(3) NOT NULL DEFAULT 1,
  `Admin` int(2) NOT NULL DEFAULT 0,
  `Helper` int(2) NOT NULL DEFAULT 0,
  `Premium` int(2) NOT NULL DEFAULT 0,
  `ConnectedTime` float NOT NULL DEFAULT 0,
  `Registered` int(2) NOT NULL DEFAULT 0,
  `Sex` int(2) NOT NULL DEFAULT 0,
  `Age` int(3) NOT NULL DEFAULT 0,
  `Muted` int(2) NOT NULL DEFAULT 0,
  `MuteTime` int(11) NOT NULL DEFAULT 0,
  `Respect` int(11) NOT NULL DEFAULT 0,
  `Money` int(11) NOT NULL DEFAULT 0,
  `Bank` int(11) NOT NULL DEFAULT 0,
  `Crimes` int(11) NOT NULL DEFAULT 0,
  `Kills` int(11) NOT NULL DEFAULT 0,
  `Deaths` int(11) NOT NULL DEFAULT 0,
  `Arrested` int(11) NOT NULL DEFAULT 0,
  `WantedDeaths` int(11) NOT NULL DEFAULT 0,
  `Phonebook` int(2) NOT NULL DEFAULT 0,
  `LottoNr` int(5) NOT NULL DEFAULT 0,
  `WantedLevel` int(11) NOT NULL DEFAULT 0,
  `Job` int(3) NOT NULL DEFAULT 0,
  `Paycheck` int(11) NOT NULL DEFAULT 0,
  `Jailed` int(2) NOT NULL DEFAULT 0,
  `JailTime` int(11) NOT NULL DEFAULT 0,
  `Materials` int(11) NOT NULL DEFAULT 0,
  `Drugs` int(11) NOT NULL DEFAULT 0,
  `Leader` int(3) NOT NULL DEFAULT 0,
  `Member` int(3) NOT NULL DEFAULT 0,
  `Rank` int(2) NOT NULL DEFAULT 0,
  `CChar` int(11) NOT NULL,
  `FWarn` int(2) NOT NULL DEFAULT 0,
  `FPunish` int(4) NOT NULL DEFAULT 0,
  `Acceptpoints` int(2) NOT NULL DEFAULT 0,
  `Team` int(3) NOT NULL DEFAULT 0,
  `Model` int(11) NOT NULL,
  `PhoneNr` int(5) NOT NULL DEFAULT 0,
  `PhoneCredits` int(4) NOT NULL DEFAULT 0,
  `House` int(11) NOT NULL DEFAULT 999,
  `Bizz` int(11) NOT NULL DEFAULT 255,
  `Rob` int(11) NOT NULL DEFAULT 0,
  `CarLicT` int(11) NOT NULL DEFAULT 0,
  `CarLic` int(2) NOT NULL DEFAULT 0,
  `FlyLicT` int(11) NOT NULL DEFAULT 0,
  `FlyLic` int(2) NOT NULL DEFAULT 0,
  `BoatLicT` int(11) NOT NULL DEFAULT 0,
  `BoatLic` int(2) NOT NULL DEFAULT 0,
  `FishLicT` int(11) NOT NULL DEFAULT 0,
  `FishLic` int(2) NOT NULL DEFAULT 0,
  `GunLicT` int(11) NOT NULL DEFAULT 0,
  `GunLic` int(2) NOT NULL DEFAULT 0,
  `PayDay` int(20) NOT NULL DEFAULT 0,
  `PayDayHad` int(20) NOT NULL DEFAULT 0,
  `Tutorial` int(2) NOT NULL DEFAULT 0,
  `Warnings` int(2) NOT NULL DEFAULT 0,
  `Rented` int(111) NOT NULL DEFAULT 0,
  `Fuel` int(11) NOT NULL DEFAULT 0,
  `WTalkie` int(2) NOT NULL DEFAULT 0,
  `Lighter` int(2) NOT NULL DEFAULT 0,
  `Cigarettes` int(2) NOT NULL DEFAULT 0,
  `Tow` int(20) NOT NULL DEFAULT 0,
  `Email` varchar(50) NOT NULL DEFAULT 'email@yahoo.com',
  `RegisterDate` varchar(50) NOT NULL DEFAULT 'Nu exista',
  `lastOn` varchar(50) NOT NULL DEFAULT 'Nu exista',
  `Banned` int(3) NOT NULL DEFAULT 0,
  `Victim` varchar(64) NOT NULL,
  `Radio2` int(2) NOT NULL DEFAULT 0,
  `Status` int(11) NOT NULL DEFAULT 0,
  `CRank` int(11) NOT NULL DEFAULT 0,
  `Phone` int(11) NOT NULL DEFAULT 0,
  `Accused` varchar(64) NOT NULL DEFAULT '********',
  `Crime1` varchar(184) NOT NULL DEFAULT 'Fara',
  `Crime2` varchar(184) NOT NULL DEFAULT 'Fara',
  `Crime3` varchar(184) NOT NULL DEFAULT 'Fara',
  `BTemp` int(11) NOT NULL DEFAULT 0,
  `BYear` int(11) NOT NULL DEFAULT 0,
  `BMonth` int(11) NOT NULL DEFAULT 0,
  `BDay` int(11) NOT NULL DEFAULT 0,
  `BBy` varchar(25) NOT NULL,
  `BReason` varchar(184) NOT NULL,
  `ALeader` int(11) NOT NULL DEFAULT 0,
  `HPoints` int(11) NOT NULL DEFAULT 0,
  `TruckerSkill` int(10) NOT NULL,
  `GarbageSkill` int(10) NOT NULL,
  `ShowJob` int(10) NOT NULL,
  `ShowFP` int(10) NOT NULL,
  `ShowLogo` int(10) NOT NULL DEFAULT 1,
  `ShowCeas` int(10) NOT NULL DEFAULT 1,
  `MowerSkill` int(10) NOT NULL,
  `GoldPoints` int(10) NOT NULL,
  `Clan` int(10) NOT NULL,
  `ClanRank` int(10) NOT NULL,
  `CarKey1` int(10) NOT NULL,
  `CarKey2` int(10) NOT NULL,
  `CarKey3` int(10) NOT NULL,
  `CarKey4` int(10) NOT NULL,
  `CarKey5` int(10) NOT NULL,
  `Pin` int(10) NOT NULL DEFAULT 0,
  `Seconds` int(10) NOT NULL,
  `Commands` int(10) NOT NULL,
  `Commands2` int(10) NOT NULL,
  `Commands3` int(10) NOT NULL,
  `Commands4` int(10) NOT NULL,
  `Commands5` int(10) NOT NULL,
  `ShowFaction` int(10) NOT NULL,
  `GiftPoints` int(10) NOT NULL,
  `NewbieMute` int(10) NOT NULL,
  `HelpedPlayers` int(10) NOT NULL,
  `SpawnChange` int(10) NOT NULL,
  `DailyMission` int(11) NOT NULL DEFAULT -1,
  `DailyMission2` int(11) NOT NULL DEFAULT -1,
  `Progress` int(11) NOT NULL,
  `Progress2` int(11) NOT NULL,
  `NeedProgress1` int(10) NOT NULL,
  `NeedProgress2` int(10) NOT NULL,
  `Youtuber` int(10) NOT NULL,
  `IceSkill` int(10) NOT NULL,
  `ReportTime` int(10) NOT NULL,
  `EvSeconds` int(100) NOT NULL,
  `Descalificat` varchar(256) NOT NULL DEFAULT '0',
  `WTChannel` int(10) NOT NULL,
  `PizzaSkill` int(10) NOT NULL,
  `GasCan` int(10) NOT NULL,
  `CurierSkill` int(10) NOT NULL,
  `ShowGlasses` int(10) NOT NULL,
  `Glasses` int(10) NOT NULL,
  `HelpedPlayersToday` int(10) NOT NULL,
  `Used` int(10) NOT NULL,
  `Days` int(10) NOT NULL,
  `FarmerSkill` int(10) NOT NULL,
  `PilotSkill` int(10) NOT NULL,
  `ShowHP` int(10) NOT NULL,
  `ShowAP` int(10) NOT NULL,
  `Color` int(10) NOT NULL,
  `Kicks` int(10) NOT NULL,
  `Warns` int(10) NOT NULL,
  `Bans` int(10) NOT NULL,
  `Jails` int(10) NOT NULL,
  `Mutes` int(10) NOT NULL,
  `HoursMonth` int(10) NOT NULL,
  `DayHours` int(10) NOT NULL,
  `CarKey6` int(10) NOT NULL,
  `CarKey7` int(10) NOT NULL,
  `CarKey8` int(10) NOT NULL,
  `CarKey9` int(10) NOT NULL,
  `CarKey10` int(10) NOT NULL,
  `Vip` int(10) NOT NULL,
  `Mats` int(10) NOT NULL,
  `ClanWarns` int(10) NOT NULL,
  `ClanDays` int(10) NOT NULL,
  `CarLicS` int(10) NOT NULL,
  `FlyLicS` int(10) NOT NULL,
  `BoatLicS` int(10) NOT NULL,
  `GunLicS` int(10) NOT NULL,
  `FishSkill` int(10) NOT NULL,
  `ShowDMG` int(10) NOT NULL,
  `EscapePoints` int(10) NOT NULL,
  `AJail` int(10) NOT NULL,
  `Hat` int(10) NOT NULL,
  `ShowHat` int(10) NOT NULL,
  `NewbieChat` int(10) NOT NULL,
  `TogLC` int(10) NOT NULL,
  `TogFC` int(10) NOT NULL,
  `TogWT` int(10) NOT NULL,
  `HidePM` int(10) NOT NULL,
  `TogNews` int(10) NOT NULL,
  `TogLicitatie` int(10) NOT NULL,
  `TogClan` int(10) NOT NULL,
  `TogEvent` int(10) NOT NULL,
  `TogDing` int(10) NOT NULL,
  `PhoneOnline` int(10) NOT NULL,
  `DayLogin` int(10) NOT NULL,
  `AW` int(10) NOT NULL,
  `HW` int(10) NOT NULL,
  `LW` int(10) NOT NULL,
  `Tag` int(10) NOT NULL,
  `MatSkill` int(10) NOT NULL,
  `PaintKills1` int(10) NOT NULL,
  `PaintKills2` int(10) NOT NULL,
  `PaintKills3` int(10) NOT NULL,
  `PaintDeaths1` int(10) NOT NULL,
  `PaintDeaths2` int(10) NOT NULL,
  `PaintDeaths3` int(10) NOT NULL,
  `RacePoints` int(10) NOT NULL,
  `RacePlace1` int(10) NOT NULL,
  `RacePlace2` int(10) NOT NULL,
  `RacePlace3` int(10) NOT NULL,
  `RacePlace4` int(10) NOT NULL,
  `ArenaKills` int(10) NOT NULL,
  `ArenaDeaths` int(10) NOT NULL,
  `Crash` int(11) NOT NULL,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `PosZ` float NOT NULL,
  `InvalidCommands` int(10) NOT NULL,
  `Referral` int(11) NOT NULL,
  `ReferralMoney` int(11) NOT NULL,
  `ReferralRP` int(11) NOT NULL,
  `SpecialQuest` varchar(300) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `Coins` int(10) NOT NULL,
  `StivuitorSkill` int(10) NOT NULL,
  `DM` int(10) NOT NULL,
  `Propose` varchar(64) NOT NULL DEFAULT 'Nimeni',
  `WarKills` int(11) NOT NULL,
  `WarDeaths` int(11) NOT NULL,
  `WarTurf` int(11) NOT NULL,
  `TogVip` int(11) NOT NULL,
  `Fires` int(11) NOT NULL,
  `TogSurf` int(11) NOT NULL,
  `TogFind` int(11) NOT NULL,
  `TogRaport` int(11) NOT NULL,
  `TogJob` int(11) NOT NULL,
  `TogAlert` int(11) NOT NULL,
  `ShowCP` int(11) NOT NULL,
  `AchievementStatus` varchar(64) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `WantedTime` int(10) NOT NULL,
  `ShowProgress1` int(11) NOT NULL,
  `ShowProgress2` int(11) NOT NULL,
  `DailyLogin` int(11) NOT NULL,
  `Bonus` tinyint(2) NOT NULL DEFAULT 0,
  `GiftCr` tinyint(2) NOT NULL DEFAULT 0,
  `Backpack` int(11) NOT NULL,
  `FirstLogin` int(11) NOT NULL,
  `KFCFoodDeliverSkill` int(11) NOT NULL,
  `RainbowAcc` int(11) NOT NULL,
  `Voucher` varchar(30) NOT NULL DEFAULT '0|0|0|0|0',
  `Crates` varchar(100) NOT NULL DEFAULT '0|0|0|0|0|0',
  `steptutorial` int(11) NOT NULL,
  `JobBoost` int(11) NOT NULL,
  `HudGen` int(11) NOT NULL DEFAULT 1,
  `Skin` varchar(100) NOT NULL DEFAULT '250|-1|-1|-1|-1|-1|-1|-1|-1|-1|',
  `Scripter` int(11) NOT NULL,
  `DailyBonus` int(11) NOT NULL,
  `HardPoints` int(11) NOT NULL,
  `PetPoints` int(11) NOT NULL,
  `PetLevel` int(11) NOT NULL,
  `PetStatus` int(11) NOT NULL,
  `Pet` int(11) NOT NULL,
  `pHealth` int(11) NOT NULL,
  `SpinPoints` int(11) NOT NULL,
  `CarKey11` int(11) NOT NULL,
  `CarKey12` int(11) NOT NULL,
  `CarKey13` int(11) NOT NULL,
  `CarKey14` int(11) NOT NULL,
  `CarKey15` int(11) NOT NULL,
  `ShowBanca` int(11) NOT NULL,
  `TogRainBow` int(11) NOT NULL,
  `WebDev` int(3) NOT NULL DEFAULT 0,
  `Founder` int(3) NOT NULL DEFAULT 0,
  `Support` int(3) NOT NULL DEFAULT 0,
  `Owner` int(3) NOT NULL DEFAULT 0,
  `CarKey16` int(11) NOT NULL,
  `CarKey17` int(11) NOT NULL,
  `CarKey18` int(11) NOT NULL,
  `CarKey19` int(11) NOT NULL,
  `CarKey20` int(11) NOT NULL,
  `Hidden` int(11) NOT NULL,
  `ShowProgress3` int(11) NOT NULL,
  `JobOwner` int(11) NOT NULL,
  `MStore` int(100) NOT NULL,
  `Tickete` varchar(64) NOT NULL DEFAULT '0|0',
  `Quest` int(11) NOT NULL,
  `Manager` int(11) NOT NULL,
  `Credit` int(11) NOT NULL,
  `IceCreams` int(11) NOT NULL,
  `MBank` int(11) NOT NULL,
  `Slot` int(11) NOT NULL DEFAULT 14,
  `Map` int(11) NOT NULL,
  `TogPremium` int(11) NOT NULL,
  `ShowProgress4` int(11) NOT NULL,
  `StoreMoney` int(11) NOT NULL,
  `QuestFinish` int(11) NOT NULL,
  `Guns` varchar(50) NOT NULL DEFAULT '0|0|0|0|0',
  `JobProgress` int(11) NOT NULL,
  `SprayQuest` int(11) NOT NULL,
  `Reborn` int(11) NOT NULL DEFAULT 0,
  `ReportsPlayers` int(11) NOT NULL DEFAULT 0,
  `ReportsPlayersToday` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `password2`, `Security`, `IP`, `Level`, `Admin`, `Helper`, `Premium`, `ConnectedTime`, `Registered`, `Sex`, `Age`, `Muted`, `MuteTime`, `Respect`, `Money`, `Bank`, `Crimes`, `Kills`, `Deaths`, `Arrested`, `WantedDeaths`, `Phonebook`, `LottoNr`, `WantedLevel`, `Job`, `Paycheck`, `Jailed`, `JailTime`, `Materials`, `Drugs`, `Leader`, `Member`, `Rank`, `CChar`, `FWarn`, `FPunish`, `Acceptpoints`, `Team`, `Model`, `PhoneNr`, `PhoneCredits`, `House`, `Bizz`, `Rob`, `CarLicT`, `CarLic`, `FlyLicT`, `FlyLic`, `BoatLicT`, `BoatLic`, `FishLicT`, `FishLic`, `GunLicT`, `GunLic`, `PayDay`, `PayDayHad`, `Tutorial`, `Warnings`, `Rented`, `Fuel`, `WTalkie`, `Lighter`, `Cigarettes`, `Tow`, `Email`, `RegisterDate`, `lastOn`, `Banned`, `Victim`, `Radio2`, `Status`, `CRank`, `Phone`, `Accused`, `Crime1`, `Crime2`, `Crime3`, `BTemp`, `BYear`, `BMonth`, `BDay`, `BBy`, `BReason`, `ALeader`, `HPoints`, `TruckerSkill`, `GarbageSkill`, `ShowJob`, `ShowFP`, `ShowLogo`, `ShowCeas`, `MowerSkill`, `GoldPoints`, `Clan`, `ClanRank`, `CarKey1`, `CarKey2`, `CarKey3`, `CarKey4`, `CarKey5`, `Pin`, `Seconds`, `Commands`, `Commands2`, `Commands3`, `Commands4`, `Commands5`, `ShowFaction`, `GiftPoints`, `NewbieMute`, `HelpedPlayers`, `SpawnChange`, `DailyMission`, `DailyMission2`, `Progress`, `Progress2`, `NeedProgress1`, `NeedProgress2`, `Youtuber`, `IceSkill`, `ReportTime`, `EvSeconds`, `Descalificat`, `WTChannel`, `PizzaSkill`, `GasCan`, `CurierSkill`, `ShowGlasses`, `Glasses`, `HelpedPlayersToday`, `Used`, `Days`, `FarmerSkill`, `PilotSkill`, `ShowHP`, `ShowAP`, `Color`, `Kicks`, `Warns`, `Bans`, `Jails`, `Mutes`, `HoursMonth`, `DayHours`, `CarKey6`, `CarKey7`, `CarKey8`, `CarKey9`, `CarKey10`, `Vip`, `Mats`, `ClanWarns`, `ClanDays`, `CarLicS`, `FlyLicS`, `BoatLicS`, `GunLicS`, `FishSkill`, `ShowDMG`, `EscapePoints`, `AJail`, `Hat`, `ShowHat`, `NewbieChat`, `TogLC`, `TogFC`, `TogWT`, `HidePM`, `TogNews`, `TogLicitatie`, `TogClan`, `TogEvent`, `TogDing`, `PhoneOnline`, `DayLogin`, `AW`, `HW`, `LW`, `Tag`, `MatSkill`, `PaintKills1`, `PaintKills2`, `PaintKills3`, `PaintDeaths1`, `PaintDeaths2`, `PaintDeaths3`, `RacePoints`, `RacePlace1`, `RacePlace2`, `RacePlace3`, `RacePlace4`, `ArenaKills`, `ArenaDeaths`, `Crash`, `PosX`, `PosY`, `PosZ`, `InvalidCommands`, `Referral`, `ReferralMoney`, `ReferralRP`, `SpecialQuest`, `Coins`, `StivuitorSkill`, `DM`, `Propose`, `WarKills`, `WarDeaths`, `WarTurf`, `TogVip`, `Fires`, `TogSurf`, `TogFind`, `TogRaport`, `TogJob`, `TogAlert`, `ShowCP`, `AchievementStatus`, `WantedTime`, `ShowProgress1`, `ShowProgress2`, `DailyLogin`, `Bonus`, `GiftCr`, `Backpack`, `FirstLogin`, `KFCFoodDeliverSkill`, `RainbowAcc`, `Voucher`, `Crates`, `steptutorial`, `JobBoost`, `HudGen`, `Skin`, `Scripter`, `DailyBonus`, `HardPoints`, `PetPoints`, `PetLevel`, `PetStatus`, `Pet`, `pHealth`, `SpinPoints`, `CarKey11`, `CarKey12`, `CarKey13`, `CarKey14`, `CarKey15`, `ShowBanca`, `TogRainBow`, `WebDev`, `Founder`, `Support`, `Owner`, `CarKey16`, `CarKey17`, `CarKey18`, `CarKey19`, `CarKey20`, `Hidden`, `ShowProgress3`, `JobOwner`, `MStore`, `Tickete`, `Quest`, `Manager`, `Credit`, `IceCreams`, `MBank`, `Slot`, `Map`, `TogPremium`, `ShowProgress4`, `StoreMoney`, `QuestFinish`, `Guns`, `JobProgress`, `SprayQuest`, `Reborn`, `ReportsPlayers`, `ReportsPlayersToday`) VALUES
(1, 'David', '920BAC49634447AE251653E1D5E68E86', '', 'no', '127.0.0.1', 100, 7, 0, 1, 0.32, 0, 0, 12, 0, 0, 411, 22341907, 5006, 0, 0, 0, 0, 0, 0, 0, 0, 9, 1447378, 0, 0, 0, 0, 18, 18, 7, 0, 0, 0, 4, 3, 0, 0, 0, 999, 255, 4, 46, 1, 46, 1, 46, 1, 0, 0, 46, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'email@yahoo.com', '2021-2-7 11:28:59', '05.04.2021 14:29', 0, '', 0, 1, 0, 0, '********', 'Fara', 'Fara', 'Fara', 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 1, 1, 1, 0, 17771, 0, 0, 0, 0, 0, 0, 0, 0, 642, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 6, 12, 0, 0, 1, 1, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 3, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 'Nimeni', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|1|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|1|0|1|0', 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0|0', 0, 0, 1, '250|-1|-1|-1|-1|-1|-1|-1|-1|-1|', 0, 5, 7225, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, '0|0', 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, '0|0|0|0|0', 47784, 1, 1, 0, 0),
(2, 'Edison', '920BAC49634447AE251653E1D5E68E86', '', 'no', '127.0.0.1', 1, 8, 0, 0, 0.051, 0, 0, 12, 0, 0, 5, 87031, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20900, 0, 0, 0, 0, 0, 0, 0, 217, 0, 0, 0, 0, 0, 0, 0, 999, 255, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'edison.nz@yahoo.com', '2021-4-3 10:38:8', '03.04.2021 12:26', 0, '', 0, 0, 0, 0, '********', 'Fara', 'Fara', 'Fara', 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 0, 0, 0, 3, 8, 0, 0, 15, 1, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 'Nimeni', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '0|0|0|0', '0|0|0|0|0|0', 0, 0, 1, '250|-1|-1|-1|-1|-1|-1|-1|-1|-1|', 0, 3, 40, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0', 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, '0|0|0|0|0', 0, 0, 0, 0, 0),
(3, 'Raduq', '920BAC49634447AE251653E1D5E68E86', '', 'no', '127.0.0.1', 1, 7, 0, 0, 0.031, 0, 0, 20, 0, 0, 4, 83273, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12552, 0, 0, 0, 0, 0, 0, 0, 217, 0, 0, 0, 0, 0, 0, 0, 999, 255, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'raducurnc@gmail.com', '2021-4-3 10:39:18', '03.04.2021 11:39', 0, '', 0, 0, 0, 0, '********', 'Fara', 'Fara', 'Fara', 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 9, 17, 0, 0, 1, 5, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 'Nimeni', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '0|0|0|0', '0|0|0|0|0|0', 0, 0, 1, '250|-1|-1|-1|-1|-1|-1|-1|-1|-1|', 0, 3, 20, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0', 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, '0|0|0|0|0', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wcode_applications`
--

CREATE TABLE `wcode_applications` (
  `id` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(32) NOT NULL,
  `FactionID` int(11) NOT NULL,
  `Answers` text NOT NULL,
  `Questions` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ActionBy` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wcode_commentaries`
--

CREATE TABLE `wcode_commentaries` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(32) NOT NULL,
  `Skin` int(11) NOT NULL,
  `Text` text NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `Section` varchar(32) NOT NULL,
  `TopicID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wcode_complaints`
--

CREATE TABLE `wcode_complaints` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(32) NOT NULL,
  `AccusedID` int(11) NOT NULL,
  `AccusedName` varchar(32) NOT NULL,
  `Text` text NOT NULL,
  `Category` int(11) NOT NULL,
  `Faction` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ActionBy` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wcode_donations`
--

CREATE TABLE `wcode_donations` (
  `ID` int(11) NOT NULL,
  `Username` varchar(32) NOT NULL,
  `Message` text NOT NULL,
  `Amount` int(11) NOT NULL,
  `CreatedAt` varchar(64) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `Activated` int(11) NOT NULL,
  `ActivatedOn` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wcode_donations_logs`
--

CREATE TABLE `wcode_donations_logs` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(32) NOT NULL,
  `Log` text NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `IP` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wcode_editables`
--

CREATE TABLE `wcode_editables` (
  `ID` int(11) NOT NULL,
  `Text` text NOT NULL,
  `By` varchar(32) NOT NULL,
  `Form` varchar(32) NOT NULL,
  `Updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wcode_functions`
--

CREATE TABLE `wcode_functions` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(32) NOT NULL,
  `Tag` varchar(64) NOT NULL,
  `Color` varchar(32) NOT NULL,
  `Icon` varchar(64) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `wcode_functions`
--

INSERT INTO `wcode_functions` (`ID`, `UserID`, `UserName`, `Tag`, `Color`, `Icon`, `Date`) VALUES
(1, 1, 'David', 'Fondator', '#ff0000', 'fa fa-legal', '2021-02-06 23:23:14');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wcode_logs`
--

CREATE TABLE `wcode_logs` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(32) NOT NULL,
  `Log` text NOT NULL,
  `VictimID` int(11) NOT NULL,
  `VictimName` varchar(32) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `wcode_logs`
--

INSERT INTO `wcode_logs` (`ID`, `UserID`, `UserName`, `Log`, `VictimID`, `VictimName`, `Date`) VALUES
(1, 1, 'David', 'Admin David deleted log ID #2 from faction history of David.', 1, 'David', '2021-02-06 23:26:27');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wcode_notifications`
--

CREATE TABLE `wcode_notifications` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(32) NOT NULL,
  `Notification` text NOT NULL,
  `FromID` int(11) NOT NULL,
  `FromName` varchar(32) NOT NULL,
  `Seen` int(11) NOT NULL,
  `Link` text NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `wcode_notifications`
--

INSERT INTO `wcode_notifications` (`ID`, `UserID`, `UserName`, `Notification`, `FromID`, `FromName`, `Seen`, `Link`, `Date`) VALUES
(1, 1, 'David', 'Your email has been changed by David.', 1, 'David', 1, 'http://localhost/l2p/profile/David', '2021-02-06 23:23:22');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wcode_questions`
--

CREATE TABLE `wcode_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `factionid` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `wcode_questions`
--

INSERT INTO `wcode_questions` (`id`, `question`, `factionid`, `date`) VALUES
(1, 'de ce iti place atat de mult sa joci sa;mp?', 17, '2021-02-10 19:11:34');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wcode_suspend`
--

CREATE TABLE `wcode_suspend` (
  `ID` int(11) NOT NULL,
  `User` varchar(32) COLLATE latin1_bin NOT NULL,
  `Userid` int(11) NOT NULL,
  `Admin` varchar(32) COLLATE latin1_bin NOT NULL,
  `Adminid` int(11) NOT NULL,
  `Days` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `Date_unix` int(11) NOT NULL,
  `Expire_unix` int(11) NOT NULL,
  `Expire` varchar(32) COLLATE latin1_bin NOT NULL,
  `Reason` varchar(64) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wcode_tickets`
--

CREATE TABLE `wcode_tickets` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(32) NOT NULL,
  `Category` varchar(64) NOT NULL,
  `Text` text NOT NULL,
  `Status` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ActionBy` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wcode_unban`
--

CREATE TABLE `wcode_unban` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(32) NOT NULL,
  `BanDetails` text NOT NULL,
  `Title` varchar(32) NOT NULL,
  `Details` text NOT NULL,
  `Status` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ActionBy` varchar(32) NOT NULL DEFAULT 'Banned'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `whitelist`
--

CREATE TABLE `whitelist` (
  `id` int(11) NOT NULL,
  `nume` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `banlog`
--
ALTER TABLE `banlog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `bizz`
--
ALTER TABLE `bizz`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `blacklist`
--
ALTER TABLE `blacklist`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `clanhq`
--
ALTER TABLE `clanhq`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `clans`
--
ALTER TABLE `clans`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `commands`
--
ALTER TABLE `commands`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `commentaries`
--
ALTER TABLE `commentaries`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `comm_req`
--
ALTER TABLE `comm_req`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `donatii`
--
ALTER TABLE `donatii`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `dsveh`
--
ALTER TABLE `dsveh`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `factionlog`
--
ALTER TABLE `factionlog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `factions`
--
ALTER TABLE `factions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `faction_logs`
--
ALTER TABLE `faction_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `fobjects`
--
ALTER TABLE `fobjects`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexuri pentru tabele `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `garages`
--
ALTER TABLE `garages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `graffiti`
--
ALTER TABLE `graffiti`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexuri pentru tabele `ipbans`
--
ALTER TABLE `ipbans`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `iplogs`
--
ALTER TABLE `iplogs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexuri pentru tabele `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `objects_accesory`
--
ALTER TABLE `objects_accesory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `player_accessory`
--
ALTER TABLE `player_accessory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `safezones`
--
ALTER TABLE `safezones`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexuri pentru tabele `sanctions`
--
ALTER TABLE `sanctions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `seif`
--
ALTER TABLE `seif`
  ADD PRIMARY KEY (`sID`);

--
-- Indexuri pentru tabele `stuff`
--
ALTER TABLE `stuff`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `supdates`
--
ALTER TABLE `supdates`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `suspendd`
--
ALTER TABLE `suspendd`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `svehicles`
--
ALTER TABLE `svehicles`
  ADD PRIMARY KEY (`vID`);

--
-- Indexuri pentru tabele `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `tickets_panel`
--
ALTER TABLE `tickets_panel`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `transferlog`
--
ALTER TABLE `transferlog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `turfs`
--
ALTER TABLE `turfs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- Indexuri pentru tabele `wcode_applications`
--
ALTER TABLE `wcode_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `wcode_commentaries`
--
ALTER TABLE `wcode_commentaries`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `wcode_complaints`
--
ALTER TABLE `wcode_complaints`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `wcode_donations`
--
ALTER TABLE `wcode_donations`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `wcode_donations_logs`
--
ALTER TABLE `wcode_donations_logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `wcode_editables`
--
ALTER TABLE `wcode_editables`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `wcode_functions`
--
ALTER TABLE `wcode_functions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `wcode_logs`
--
ALTER TABLE `wcode_logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `wcode_notifications`
--
ALTER TABLE `wcode_notifications`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `wcode_questions`
--
ALTER TABLE `wcode_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `wcode_suspend`
--
ALTER TABLE `wcode_suspend`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `wcode_tickets`
--
ALTER TABLE `wcode_tickets`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `wcode_unban`
--
ALTER TABLE `wcode_unban`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `whitelist`
--
ALTER TABLE `whitelist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `banlog`
--
ALTER TABLE `banlog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pentru tabele `bans`
--
ALTER TABLE `bans`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pentru tabele `bizz`
--
ALTER TABLE `bizz`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pentru tabele `blacklist`
--
ALTER TABLE `blacklist`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pentru tabele `cars`
--
ALTER TABLE `cars`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pentru tabele `clanhq`
--
ALTER TABLE `clanhq`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `clans`
--
ALTER TABLE `clans`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pentru tabele `commands`
--
ALTER TABLE `commands`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `commentaries`
--
ALTER TABLE `commentaries`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `comm_req`
--
ALTER TABLE `comm_req`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `donatii`
--
ALTER TABLE `donatii`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `donation`
--
ALTER TABLE `donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `dsveh`
--
ALTER TABLE `dsveh`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pentru tabele `emails`
--
ALTER TABLE `emails`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pentru tabele `factionlog`
--
ALTER TABLE `factionlog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pentru tabele `factions`
--
ALTER TABLE `factions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pentru tabele `faction_logs`
--
ALTER TABLE `faction_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pentru tabele `fobjects`
--
ALTER TABLE `fobjects`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `friends`
--
ALTER TABLE `friends`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pentru tabele `garages`
--
ALTER TABLE `garages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `graffiti`
--
ALTER TABLE `graffiti`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `houses`
--
ALTER TABLE `houses`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT pentru tabele `ipbans`
--
ALTER TABLE `ipbans`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `iplogs`
--
ALTER TABLE `iplogs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `jobs`
--
ALTER TABLE `jobs`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pentru tabele `logs`
--
ALTER TABLE `logs`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT pentru tabele `objects_accesory`
--
ALTER TABLE `objects_accesory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pentru tabele `player_accessory`
--
ALTER TABLE `player_accessory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `safezones`
--
ALTER TABLE `safezones`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `sanctions`
--
ALTER TABLE `sanctions`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pentru tabele `seif`
--
ALTER TABLE `seif`
  MODIFY `sID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pentru tabele `stuff`
--
ALTER TABLE `stuff`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pentru tabele `supdates`
--
ALTER TABLE `supdates`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `suspendd`
--
ALTER TABLE `suspendd`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `svehicles`
--
ALTER TABLE `svehicles`
  MODIFY `vID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT pentru tabele `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `tickets_panel`
--
ALTER TABLE `tickets_panel`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `transferlog`
--
ALTER TABLE `transferlog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `turfs`
--
ALTER TABLE `turfs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pentru tabele `updates`
--
ALTER TABLE `updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pentru tabele `wcode_applications`
--
ALTER TABLE `wcode_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `wcode_commentaries`
--
ALTER TABLE `wcode_commentaries`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `wcode_complaints`
--
ALTER TABLE `wcode_complaints`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `wcode_donations`
--
ALTER TABLE `wcode_donations`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `wcode_donations_logs`
--
ALTER TABLE `wcode_donations_logs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `wcode_editables`
--
ALTER TABLE `wcode_editables`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `wcode_functions`
--
ALTER TABLE `wcode_functions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pentru tabele `wcode_logs`
--
ALTER TABLE `wcode_logs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pentru tabele `wcode_notifications`
--
ALTER TABLE `wcode_notifications`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pentru tabele `wcode_questions`
--
ALTER TABLE `wcode_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pentru tabele `wcode_tickets`
--
ALTER TABLE `wcode_tickets`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `wcode_unban`
--
ALTER TABLE `wcode_unban`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `whitelist`
--
ALTER TABLE `whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
