-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 26 avr. 2023 à 21:27
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `miniprojet`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `idAdmin` int(11) NOT NULL,
  `nom_admin` varchar(45) NOT NULL,
  `prenom_admin` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`idAdmin`, `nom_admin`, `prenom_admin`) VALUES
(1, 'Nour El Houda', 'Benyelles'),
(2, 'Nesrine', 'Benyelles'),
(3, 'Abir', 'Bensenouci');

-- --------------------------------------------------------

--
-- Structure de la table `affaire`
--

CREATE TABLE `affaire` (
  `id_aff` int(11) NOT NULL,
  `domaine` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `affaire`
--

INSERT INTO `affaire` (`id_aff`, `domaine`) VALUES
(1, 'Famille'),
(2, 'Administratif'),
(3, 'Pénal'),
(4, 'Sociale'),
(5, 'Propeiété intelectuelle'),
(6, 'Immobilier'),
(7, 'Famille'),
(8, 'Affaire'),
(9, 'Pénal'),
(10, 'Pénal'),
(11, 'Immobilier'),
(12, 'Sociale'),
(13, 'Propeiété intelectuelle'),
(14, 'Famille'),
(15, 'Administratif');

-- --------------------------------------------------------

--
-- Structure de la table `avocat`
--

CREATE TABLE `avocat` (
  `code_barrau` int(11) NOT NULL,
  `nom_av` varchar(45) NOT NULL,
  `prenom_av` varchar(45) NOT NULL,
  `num_tel_av` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `spécialité` varchar(45) DEFAULT NULL,
  `code_postale` int(10) DEFAULT NULL,
  `wilaya` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `avocat`
--

INSERT INTO `avocat` (`code_barrau`, `nom_av`, `prenom_av`, `num_tel_av`, `type`, `spécialité`, `code_postale`, `wilaya`, `email`, `password`) VALUES
(20104892, 'Hamza', 'Malti', '0721970349', 'Natioanal', 'Administratif', 1234567890, 'Tlemcen', 'maltihamza@gmail.com', 'hamza1268'),
(20110523, 'Amina', 'Merabet', '0607952189', 'International', 'Affaire', 1230498745, 'Oran', 'aminamerabet@gmail.com', 'amina122'),
(20150150, 'Touria', 'Ferouani', '0679200478', 'National', 'Famille', 1379512067, 'TLEMCEN', 'touriaferouani@gmail.com', 'touria78'),
(20180005, 'Khadidja', 'Merad', '0512345278', 'International', 'Sociale', 1876543210, 'Oran', 'khadidjamerad@gmail.com', 'khadimerad'),
(20181278, 'Fewzia', 'Benchouk', '0719703478', 'National', 'Pénal', 1278965430, 'Tizi Ouzou', 'fewziabenchouk@gmail.com', 'nesrine1111'),
(20192078, 'Mohamed', 'Sahel', '0510047988', 'International', 'Propriété intelectuelle', 2103697458, 'Mostaganem', 'ohamedsahel@gmail.com', 'mohsahel'),
(20200001, 'Fayssel', 'charif', '0512345278', 'National', 'Immobilier', 2103647895, 'Ouargla', 'faysselcharif@gmail.com', 'fatimasami'),
(20200002, 'Houssem', 'Bendjaefer', '0509431878', 'International', 'Administratif', 1023479652, 'Tlemcen', 'houssembendjaefer@gmail.com', 'houssem14'),
(20201279, 'Arslane', 'Belabdelli', '0602379001', 'National', 'Famille', 1023489652, 'Alger', 'arslanebelabdelli@gmail.com', 'arslane0712'),
(20201325, 'Imad', 'Benikhlef', '0700116792', 'International', 'Sociale', 2079413065, 'Sidi Bel Abbés', 'imadbenikhlef@gmail.com', 'imad102'),
(20213596, 'Feriel', 'Medjdoub', '0703946221', 'National', 'Pénal', 2014569327, 'Annaba', 'ferielmedjdoub@gmail.com', 'feriel1211'),
(20230496, 'Adnane', 'Benzerdjeb', '0513790052', 'International', 'Propriété intelectuelle', 1023785312, 'Sidi Bel Abbès', 'adnanebenzerdjeb@gmail.com', 'adnane521');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `nom_cl` varchar(45) NOT NULL,
  `prenom_cl` varchar(45) NOT NULL,
  `num_tel_cl` varchar(45) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom_cl`, `prenom_cl`, `num_tel_cl`, `email`, `password`) VALUES
(1, 'Yasmine', 'Bougherara', '0512345278', 'yasminebougherara@gmail.com', 'yasmine07'),
(2, 'Amel', 'Boumediene', '0601973279', 'amelboumediene@gmail.com', 'amel2805'),
(3, 'Ali', 'Meziane', '0510779634', 'alimeziane@gmail.com', 'ali2079'),
(4, 'Chakib', 'Seladji', '0720934795', 'chakibseladji@gmail.com', 'seladji196'),
(5, 'Alaa', 'Bouchenak', '0721009637', 'alaabouchenak@gmail.com', 'alaabouch45'),
(6, 'Azza', 'Bensenouci', '0702397863', 'azzabensenouci@gmail.com', 'azzaben0309'),
(7, 'Youness', 'Saim', '0579248631', 'younesssaim@gmail.com', 'youness0318'),
(8, 'Imene', 'Benyelles', '0512345278', 'imanebenyelles@gmail.com', 'imanebeny20'),
(9, 'Yasser', 'Boubekeur', '05079625432', 'yasserboubekeur@gmail.com', 'yassser495'),
(10, 'Djawed', 'Bensaid', '0512345278', 'djawedbensaid@gmail.com', 'djawed1128'),
(11, 'Ahmed', 'Benabadji', '0720397864', 'ahmedbenabadji@gmail.com', 'ahmed1589'),
(12, 'Lylia', 'Benmansour', '0732569874', 'lyliabenmansour@gmail.com', 'benmansour8459'),
(13, 'Abderezzak', 'Sekkal', '0515795543', 'abderezzaksekkal@gmail.com', 'sekkal185'),
(14, 'Khaled', 'Kara', '0512344568', 'khaledkara@gmail.com', 'khaledkara597');

-- --------------------------------------------------------

--
-- Structure de la table `dossier`
--

CREATE TABLE `dossier` (
  `id_dossier` int(11) NOT NULL,
  `nom_dos` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

CREATE TABLE `paiement` (
  `id_pai` int(11) NOT NULL,
  `somme` double NOT NULL,
  `avocat` int(11) DEFAULT NULL,
  `client` int(11) DEFAULT NULL,
  `affaire` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `paiement`
--

INSERT INTO `paiement` (`id_pai`, `somme`, `avocat`, `client`, `affaire`) VALUES
(1, 20000, 20104892, 1, 2),
(2, 25000, 20110523, 2, 8),
(3, 30000, 20180005, 3, 4),
(4, 35000, 20192078, 5, 5),
(5, 30000, 20200001, 6, 6),
(6, 35000, 20201325, 7, 12),
(7, 30000, 20201279, 8, 1),
(8, 60000, 20230496, 9, 13),
(9, 35000, 20104892, 10, 15),
(10, 50000, 20181278, 4, 3),
(11, 70000, 20150150, 11, 7),
(12, 55000, 20213596, 12, 9),
(13, 80000, 20181278, 13, 10),
(14, 85000, 20200001, 5, 11),
(15, 20000, 20150150, 9, 14);

-- --------------------------------------------------------

--
-- Structure de la table `rendez_vous`
--

CREATE TABLE `rendez_vous` (
  `id_ren` int(11) NOT NULL,
  `date_re` date NOT NULL,
  `id_client` int(11) DEFAULT NULL,
  `id_avocat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `rendez_vous`
--

INSERT INTO `rendez_vous` (`id_ren`, `date_re`, `id_client`, `id_avocat`) VALUES
(1, '2023-03-16', 3, 20110523),
(2, '2022-09-16', 2, 20230496),
(3, '2023-03-28', 12, 20201325),
(4, '2023-01-14', 11, 20201279),
(5, '2023-03-09', 12, 20200002),
(6, '2023-07-20', 13, 20192078),
(7, '2022-12-22', 9, 20104892),
(9, '2022-11-21', 6, 20150150),
(10, '2023-01-10', 1, 20180005),
(11, '2023-09-15', 4, 20181278),
(12, '2022-11-13', 3, 20192078),
(13, '2022-11-11', 13, 20213596);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(41) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(0, 'abir', 'abirabouraben3@gmail.com', 'lm665;l;');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Index pour la table `affaire`
--
ALTER TABLE `affaire`
  ADD PRIMARY KEY (`id_aff`);

--
-- Index pour la table `avocat`
--
ALTER TABLE `avocat`
  ADD PRIMARY KEY (`code_barrau`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `dossier`
--
ALTER TABLE `dossier`
  ADD PRIMARY KEY (`id_dossier`);

--
-- Index pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD PRIMARY KEY (`id_pai`),
  ADD UNIQUE KEY `id_pai_UNIQUE` (`id_pai`),
  ADD KEY `fk_paie` (`avocat`),
  ADD KEY `fk_pai` (`client`),
  ADD KEY `fk_paiem` (`affaire`);

--
-- Index pour la table `rendez_vous`
--
ALTER TABLE `rendez_vous`
  ADD PRIMARY KEY (`id_ren`),
  ADD KEY `fk_cl_ren` (`id_client`),
  ADD KEY `fk_av_ren` (`id_avocat`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `affaire`
--
ALTER TABLE `affaire`
  MODIFY `id_aff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25704;

--
-- AUTO_INCREMENT pour la table `dossier`
--
ALTER TABLE `dossier`
  MODIFY `id_dossier` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rendez_vous`
--
ALTER TABLE `rendez_vous`
  MODIFY `id_ren` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD CONSTRAINT `fk_pai` FOREIGN KEY (`client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `fk_paie` FOREIGN KEY (`avocat`) REFERENCES `avocat` (`code_barrau`),
  ADD CONSTRAINT `fk_paiem` FOREIGN KEY (`affaire`) REFERENCES `affaire` (`id_aff`);

--
-- Contraintes pour la table `rendez_vous`
--
ALTER TABLE `rendez_vous`
  ADD CONSTRAINT `fk_av_ren` FOREIGN KEY (`id_avocat`) REFERENCES `avocat` (`code_barrau`),
  ADD CONSTRAINT `fk_cl_ren` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
