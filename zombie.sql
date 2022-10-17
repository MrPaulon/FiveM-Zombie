-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 17 oct. 2022 à 11:58
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `zombie`
--

-- --------------------------------------------------------

--
-- Structure de la table `clothes`
--

CREATE TABLE `clothes` (
  `Name` varchar(50) NOT NULL,
  `Label` varchar(50) NOT NULL,
  `Description` mediumtext NOT NULL DEFAULT 'No description.',
  `Weight` float NOT NULL DEFAULT 0,
  `Limit` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `clothes`
--

INSERT INTO `clothes` (`Name`, `Label`, `Description`, `Weight`, `Limit`) VALUES
('bags1', 'Sac', 'No description.', 0.3, 1),
('bags10', 'Sac', 'No description.', 0.3, 1),
('bags11', 'Sac', 'No description.', 0.3, 1),
('bags12', 'Sac', 'No description.', 0.3, 1),
('bags13', 'Sac', 'No description.', 0.3, 1),
('bags14', 'Sac', 'No description.', 0.3, 1),
('bags15', 'Sac', 'No description.', 0.3, 1),
('bags16', 'Sac', 'No description.', 0.3, 1),
('bags17', 'Sac', 'No description.', 0.3, 1),
('bags18', 'Sac', 'No description.', 0.3, 1),
('bags19', 'Sac', 'No description.', 0.3, 1),
('bags2', 'Sac', 'No description.', 0.3, 1),
('bags20', 'Sac', 'No description.', 0.3, 1),
('bags21', 'Sac', 'No description.', 0.3, 1),
('bags22', 'Sac', 'No description.', 0.3, 1),
('bags23', 'Sac', 'No description.', 0.3, 1),
('bags24', 'Sac', 'No description.', 0.3, 1),
('bags25', 'Sac', 'No description.', 0.3, 1),
('bags26', 'Sac', 'No description.', 0.3, 1),
('bags27', 'Sac', 'No description.', 0.3, 1),
('bags28', 'Sac', 'No description.', 0.3, 1),
('bags29', 'Sac', 'No description.', 0.3, 1),
('bags3', 'Sac', 'No description.', 0.3, 1),
('bags30', 'Sac', 'No description.', 0.3, 1),
('bags31', 'Sac', 'No description.', 0.3, 1),
('bags32', 'Sac', 'No description.', 0.3, 1),
('bags33', 'Sac', 'No description.', 0.3, 1),
('bags34', 'Sac', 'No description.', 0.3, 1),
('bags35', 'Sac', 'No description.', 0.3, 1),
('bags36', 'Sac', 'No description.', 0.3, 1),
('bags37', 'Sac', 'No description.', 0.3, 1),
('bags38', 'Sac', 'No description.', 0.3, 1),
('bags39', 'Sac', 'No description.', 0.3, 1),
('bags4', 'Sac', 'No description.', 0.3, 1),
('bags40', 'Sac', 'No description.', 0.3, 1),
('bags41', 'Sac', 'No description.', 0.3, 1),
('bags42', 'Sac', 'No description.', 0.3, 1),
('bags43', 'Sac', 'No description.', 0.3, 1),
('bags44', 'Sac', 'No description.', 0.3, 1),
('bags45', 'Sac', 'No description.', 0.3, 1),
('bags46', 'Sac', 'No description.', 0.3, 1),
('bags47', 'Sac', 'No description.', 0.3, 1),
('bags48', 'Sac', 'No description.', 0.3, 1),
('bags49', 'Sac', 'No description.', 0.3, 1),
('bags5', 'Sac', 'No description.', 0.3, 1),
('bags50', 'Sac', 'No description.', 0.3, 1),
('bags51', 'Sac', 'No description.', 0.3, 1),
('bags52', 'Sac', 'No description.', 0.3, 1),
('bags53', 'Sac', 'No description.', 0.3, 1),
('bags6', 'Sac', 'No description.', 0.3, 1),
('bags7', 'Sac', 'No description.', 0.3, 1),
('bags8', 'Sac', 'No description.', 0.3, 1),
('bags9', 'Sac', 'No description.', 0.3, 1),
('mask1', 'Masque', 'No description.', 0.3, 1),
('mask10', 'Masque', 'No description.', 0.3, 1),
('mask11', 'Masque', 'No description.', 0.3, 1),
('mask12', 'Masque', 'No description.', 0.3, 1),
('mask13', 'Masque', 'No description.', 0.3, 1),
('mask14', 'Masque', 'No description.', 0.3, 1),
('mask15', 'Masque', 'No description.', 0.3, 1),
('mask16', 'Masque', 'No description.', 0.3, 1),
('mask17', 'Masque', 'No description.', 0.3, 1),
('mask18', 'Masque', 'No description.', 0.3, 1),
('mask19', 'Masque', 'No description.', 0.3, 1),
('mask2', 'Masque', 'No description.', 0.3, 1),
('mask20', 'Masque', 'No description.', 0.3, 1),
('mask21', 'Masque', 'No description.', 0.3, 1),
('mask22', 'Masque', 'No description.', 0.3, 1),
('mask23', 'Masque', 'No description.', 0.3, 1),
('mask24', 'Masque', 'No description.', 0.3, 1),
('mask25', 'Masque', 'No description.', 0.3, 1),
('mask26', 'Masque', 'No description.', 0.3, 1),
('mask27', 'Masque', 'No description.', 0.3, 1),
('mask28', 'Masque', 'No description.', 0.3, 1),
('mask29', 'Masque', 'No description.', 0.3, 1),
('mask3', 'Masque', 'No description.', 0.3, 1),
('mask30', 'Masque', 'No description.', 0.3, 1),
('mask31', 'Masque', 'No description.', 0.3, 1),
('mask32', 'Masque', 'No description.', 0.3, 1),
('mask33', 'Masque', 'No description.', 0.3, 1),
('mask34', 'Masque', 'No description.', 0.3, 1),
('mask35', 'Masque', 'No description.', 0.3, 1),
('mask36', 'Masque', 'No description.', 0.3, 1),
('mask37', 'Masque', 'No description.', 0.3, 1),
('mask38', 'Masque', 'No description.', 0.3, 1),
('mask39', 'Masque', 'No description.', 0.3, 1),
('mask4', 'Masque', 'No description.', 0.3, 1),
('mask40', 'Masque', 'No description.', 0.3, 1),
('mask41', 'Masque', 'No description.', 0.3, 1),
('mask42', 'Masque', 'No description.', 0.3, 1),
('mask43', 'Masque', 'No description.', 0.3, 1),
('mask44', 'Masque', 'No description.', 0.3, 1),
('mask45', 'Masque', 'No description.', 0.3, 1),
('mask46', 'Masque', 'No description.', 0.3, 1),
('mask47', 'Masque', 'No description.', 0.3, 1),
('mask48', 'Masque', 'No description.', 0.3, 1),
('mask5', 'Masque', 'No description.', 0.3, 1),
('mask6', 'Masque', 'No description.', 0.3, 1),
('mask7', 'Masque', 'No description.', 0.3, 1),
('mask8', 'Masque', 'No description.', 0.3, 1),
('mask9', 'Masque', 'No description.', 0.3, 1),
('unemployedbackpack', 'Sac à Dos', 'No description.', 0.5, 1),
('unemployedpants', 'Unemployed Pants', 'No description.', 0.4, 1),
('unemployedshoes', 'Unemployed Shoes', 'No description.', 0.3, 1),
('unemployedtshirt', 'Unemployed T-shirt', 'No description.', 0.2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `Name` varchar(50) NOT NULL,
  `Label` varchar(50) NOT NULL,
  `Description` mediumtext DEFAULT 'No Description.',
  `Weight` float NOT NULL DEFAULT 0,
  `Limit` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `Identifier` varchar(50) NOT NULL,
  `Nickname` tinytext DEFAULT NULL,
  `Name` tinytext DEFAULT NULL,
  `Date Of Birth` varchar(10) DEFAULT NULL,
  `Sex` varchar(12) DEFAULT NULL,
  `Level` int(11) NOT NULL DEFAULT 1,
  `Occupation` varchar(50) DEFAULT NULL,
  `Skills` longtext DEFAULT NULL,
  `Group` varchar(50) DEFAULT NULL,
  `Faction` varchar(50) DEFAULT NULL,
  `Money` longtext DEFAULT NULL,
  `Inventory` longtext NOT NULL DEFAULT '{}',
  `Skin` longtext DEFAULT NULL,
  `Position` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`ID`, `Identifier`, `Nickname`, `Name`, `Date Of Birth`, `Sex`, `Level`, `Occupation`, `Skills`, `Group`, `Faction`, `Money`, `Inventory`, `Skin`, `Position`) VALUES
(15, 'license:7c8e8710a2b818ab5101c43ae94f90e48b1274ce', 'Paulon', 'Dhoe Traposky', '01/30/1982', 'Male', 1, 'Unemployed', '{}', 'Admin', 'Survivor', '0', '{\"unemployedshoes\":1,\"weapon_hatchet\":{\"Ammo\":-57,\"Tint\":0}}', '{\"EyebrowsColor\":55,\"BlushOpacity\":0,\"BeardOpacity\":0.99,\"MakeupColor\":0,\"Hair\":15,\"EyebrowsOpacity\":0.99,\"ChestHair\":13,\"WrinklesOpacity\":0.99,\"Freckles\":0,\"Beard\":18,\"Skin\":4,\"Face\":44,\"Eyebrows\":0,\"Complexion\":0,\"MakeupOpacity\":0,\"Wrinkles\":5,\"FrecklesOpacity\":0,\"BodyBlemishes\":0,\"BlemishesOpacity\":0,\"Shoes\":24,\"ChestHairColor\":0,\"EyesColor\":3,\"Blush\":0,\"ChestHairOpacity\":0.99,\"Blemishes\":0,\"BeardColor\":55,\"BodyBlemishesOpacity\":0,\"LipstickColor\":0,\"Lipstick\":0,\"ComplexionOpacity\":0,\"BlushColor\":0,\"HairColor\":55,\"SunDamageOpacity\":0,\"LipstickOpacity\":0,\"Makeup\":0,\"SunDamage\":0}', '{\"x\":-217.77520751953126,\"y\":416.0713806152344,\"z\":109.076416015625}'),
(16, 'license:b875cf1e3861a7a5a19d4d65bbb59172d62f9eb1', 'Λnakei', NULL, NULL, NULL, 1, NULL, NULL, 'User', NULL, NULL, '{}', NULL, NULL),
(17, 'license:12f99ef401c322e7f3afb3cda65f5fab26a3d7cc', 'ZedmKa', 'Eddie Washington', '17/03/1980', 'Male', 1, 'Unemployed', '{}', 'Admin', 'Survivor', '0', '{\"unemployedtshirt\":1,\"weapon_hammer\":{\"Tint\":0,\"Ammo\":16},\"unemployedpants\":1,\"weapon_bat\":{\"Tint\":0,\"Ammo\":29},\"unemployedshoes\":1,\"weapon_hatchet\":{\"Tint\":0,\"Ammo\":25},\"weapon_pistol\":{\"Ammo\":21,\"Tint\":0}}', '{\"MakeupColor\":0,\"MakeupOpacity\":0,\"WrinklesOpacity\":0.99,\"Hair\":1,\"ComplexionOpacity\":0.99,\"EyesColor\":5,\"Skin\":2,\"LipstickColor\":3,\"Eyebrows\":21,\"Pants\":76,\"SunDamageOpacity\":0.03,\"Freckles\":0,\"Shoes\":24,\"Complexion\":9,\"Blemishes\":0,\"BeardOpacity\":0.99,\"BlushColor\":0,\"Lipstick\":0,\"BodyBlemishesOpacity\":0.99,\"FrecklesOpacity\":0.03,\"Beard\":9,\"Blush\":0,\"BlushOpacity\":0,\"BeardColor\":2,\"BodyBlemishes\":0,\"Wrinkles\":3,\"Makeup\":0,\"LipstickOpacity\":0,\"HairColor\":2,\"Face\":0,\"Tshirt\":56,\"SunDamage\":1,\"ChestHairOpacity\":0.99,\"EyebrowsColor\":2,\"ChestHair\":0,\"EyebrowsOpacity\":0.99,\"BlemishesOpacity\":0.15,\"ChestHairColor\":2}', '{\"x\":-405.59039306640627,\"y\":1177.1051025390626,\"z\":325.6414794921875}'),
(18, 'license:b743e02bad66e5673ac3fb1ce153e576c829ddb7', 'Jack Meyer', 'Jon Poll', '11/09/2001', 'Male', 1, 'Unemployed', '{}', 'Admin', 'Survivor', '0', '{\"weapon_heavysniper\":{\"Ammo\":44,\"Tint\":0}}', '{\"EyebrowsColor\":0,\"BodyBlemishesOpacity\":0.99,\"BeardOpacity\":0.99,\"MakeupColor\":0,\"Hair\":35,\"Blush\":0,\"ChestHair\":3,\"WrinklesOpacity\":0.72,\"Freckles\":5,\"Beard\":7,\"Skin\":10,\"Face\":44,\"Eyebrows\":25,\"Complexion\":4,\"BlushColor\":0,\"Wrinkles\":1,\"Makeup\":0,\"BodyBlemishes\":5,\"BlemishesOpacity\":0,\"ChestHairColor\":0,\"EyebrowsOpacity\":0.99,\"Blemishes\":0,\"ChestHairOpacity\":0.99,\"LipstickOpacity\":0,\"BlushOpacity\":0,\"Lipstick\":0,\"LipstickColor\":0,\"ComplexionOpacity\":0.99,\"MakeupOpacity\":0,\"BeardColor\":0,\"HairColor\":57,\"EyesColor\":5,\"FrecklesOpacity\":0.33,\"SunDamageOpacity\":0.54,\"SunDamage\":3}', '{\"x\":-545.8731689453125,\"y\":55.17071914672851,\"z\":51.62163925170898}');

-- --------------------------------------------------------

--
-- Structure de la table `weapons`
--

CREATE TABLE `weapons` (
  `Name` varchar(50) NOT NULL,
  `Label` varchar(50) NOT NULL,
  `Description` mediumtext NOT NULL DEFAULT 'No description.',
  `Weight` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `weapons`
--

INSERT INTO `weapons` (`Name`, `Label`, `Description`, `Weight`) VALUES
('weapon_assaultrifle', 'AK47', 'No description.', 1),
('weapon_bat', 'Bate', 'No description.', 1),
('weapon_hammer', 'Marteau', 'No description.', 1),
('weapon_hatchet', 'Hache', 'No description.', 1),
('weapon_heavysniper', 'Barrett M82', 'No description.', 1),
('weapon_marksmanrifle', 'MK12', 'No description.', 1),
('weapon_pistol', 'Pistolet', 'No description.', 1),
('weapon_tacticalrifle', 'm4a16', 'No description.', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `clothes`
--
ALTER TABLE `clothes`
  ADD PRIMARY KEY (`Name`);

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`Name`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`Name`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
