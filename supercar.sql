-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 24 sep. 2025 à 06:04
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `supercar`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin', '1234'),
(2, 'kyffr', '27082003');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `idcontact` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `messages` text,
  PRIMARY KEY (`idcontact`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`idcontact`, `nom`, `adresse`, `email`, `messages`) VALUES
(1, 'Gerome', 'Ebene', 'rafalifrancky03@gmal.com', 'est ce que je pourrais avoir plus de détails sur le ford Ft-150\r\n'),
(5, 'Ginola', '4 Bornes', 'gi@gmail.com', 'zgrqrvqvq'),
(6, 'Ginola', '4 Bornes', 'gi@gmail.com', ':bonjour;'),
(7, 'RABIALAHY', 'Moka', 'Joary@gmail.com', 'bonjour, est ce vous êtes disponibles 7j/7'),
(12, '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `demandes_essai`
--

DROP TABLE IF EXISTS `demandes_essai`;
CREATE TABLE IF NOT EXISTS `demandes_essai` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `voiture` varchar(100) DEFAULT NULL,
  `date_essai` date DEFAULT NULL,
  `date_demande` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `heure` time DEFAULT NULL,
  `statut` varchar(20) DEFAULT 'en cours',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `demandes_essai`
--

INSERT INTO `demandes_essai` (`id`, `nom`, `prenom`, `email`, `voiture`, `date_essai`, `date_demande`, `heure`, `statut`) VALUES
(1, 'Arena', 'ior', 'arena@gmail.com', 'Mercedes', '2025-06-02', '2025-03-28 05:46:20', NULL, 'approuvé'),
(8, 'Anthony', 'Marcel', 'rafalifrancky03@gmail.com', 'Ranger Raptor', '2025-07-26', '2025-04-10 06:59:24', NULL, 'refusé'),
(9, 'Anthony', 'Marcel', 'rafalifrancky03@gmail.com', 'Magnite', '2025-05-22', '2025-04-10 07:29:50', '00:00:00', 'refusé'),
(10, 'Anthony', 'Marcel', 'rafalifrancky03@gmail.com', 'Magnite', '2025-05-22', '2025-04-10 07:32:23', '00:00:00', 'en cours'),
(11, 'Anthony', 'Marcel', 'rafalifrancky03@gmail.com', 'Magnite', '2025-05-22', '2025-04-10 07:32:28', '00:00:00', 'refusé'),
(12, 'Anthony', 'Marcel', 'rafalifrancky03@gmail.com', 'GTR', '2025-05-06', '2025-04-10 07:32:49', '17:30:00', 'en cours'),
(13, 'RABIALAHY', 'Leka', 'Joary@gmail.com', 'Corolla', '2025-04-30', '2025-04-10 07:35:25', '16:00:00', 'approuvé'),
(14, 'RABIALAHY', 'Leka', 'Joary@gmail.com', 'Ranger Raptor', '2025-04-19', '2025-04-10 07:41:08', '08:30:00', 'supprimé');

-- --------------------------------------------------------

--
-- Structure de la table `service_car`
--

DROP TABLE IF EXISTS `service_car`;
CREATE TABLE IF NOT EXISTS `service_car` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `details` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `service_car`
--

INSERT INTO `service_car` (`id`, `nom`, `image`, `description`, `details`) VALUES
(1, 'Maintenance', 'IMAGES/Maintenance.jpg', 'Nous assurons l\'entretien et la longévité de votre véhicule avec un service expert.', 'MAINTENANCE A : Moteur, Transmission, Boîte de vitesse. \r\n  MAINTENANCE B : Carrosserie, Climatiseur, Pneu.'),
(2, 'Réparation', 'IMAGES/Réparation.jpg', 'Des réparations rapides et efficaces pour remettre votre véhicule en parfait état.', 'RÉPARATION A : Embrayage, Frein, Courroie de distribution. \r\n  RÉPARATION B : Faisceau électrique, Système multimédia, Système d’allumage.'),
(3, 'Pièces de rechange', 'IMAGES/Pièce.jpg', 'Des pièces de qualité pour garantir le bon fonctionnement de votre véhicule.', 'PIÈCES A : Essuie-glace, Disque frein, Amortisseur. \r\n  PIÈCES B : Batterie, Radiateur, Alternateur.');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nom_utilisateur` varchar(50) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `nom_utilisateur` (`nom_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `email`, `nom_utilisateur`, `mot_de_passe`) VALUES
(1, 'Arena', 'ior', 'arena@gmail.com', 'Arenaior', '1234'),
(2, 'Ginola', 'Manjaka', 'manjakaginola@gmail.com', 'Ginola', '5555'),
(3, 'Marcel', 'Olivier', 'Marcel@gmail.com', 'Marcel', '3333'),
(5, 'Fabio', 'HKJ', 'HKJ@gmail.com', 'HKJ', '0000'),
(6, 'ljmj', 'qkjb', 'qbk@gmail.com', 'hjkfo', '3333'),
(7, 'Elvao', 'Joujou', 'Elvao@gmail.com', 'Joujou', '4321'),
(8, 'Ginola', 'Benja', 'Ginola@gmail.com', 'Benj', '5555'),
(9, 'Ndretsa', 'manana', 'ndretsa@gmail.com', 'Beloha', '3346');

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

DROP TABLE IF EXISTS `voiture`;
CREATE TABLE IF NOT EXISTS `voiture` (
  `id` int NOT NULL AUTO_INCREMENT,
  `marque` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `voiture`
--

INSERT INTO `voiture` (`id`, `marque`, `modele`, `prix`, `image`, `description`) VALUES
(1, 'Ford', 'Ford Ranger Raptor', 55000.00, 'IMAGES/ford raptor1.jpg', 'La Ford Ranger Raptor est un pick-up haute performance conçu pour le tout-terrain. Avec son moteur bi-turbo diesel de 213 chevaux et une suspension Fox Racing, il offre une conduite stable et puissante sur les terrains les plus accidentés.'),
(2, 'Ford', 'Ford F-150', 60000.00, 'IMAGES/150.jpg', 'La Ford F-150 est un pick-up légendaire reconnu pour sa robustesse et sa polyvalence. Il offre une capacité de remorquage impressionnante, un intérieur confortable et des technologies avancées, idéales pour le travail et les loisirs.'),
(3, 'Ford', 'Focus', 29000.00, 'IMAGES/Ford Focus.webp', 'La Ford Focus est une berline dynamique et moderne. Avec ses motorisations économiques, son design aérodynamique et ses équipements high-tech, elle allie performance, confort et sécurité pour une conduite agréable en ville comme sur route.'),
(4, 'Ford', 'Ford Explorer', 65.00, 'IMAGES/explorer.jpg', 'La Ford Explorer est un SUV spacieux et puissant conçu pour les familles et les aventuriers. Doté d’un moteur V6 hybride de 457 chevaux, d’une transmission intégrale et d’un intérieur haut de gamme avec écran tactile et sièges chauffants, il garantit un confort et une sécurité optimaux.'),
(5, 'Mercedes', 'AMG GT', 95000.00, 'IMAGES/AMG GT.jpg', 'La Mercedes AMG GT est une voiture de sport haut de gamme qui allie puissance phénoménale, design sculpté et technologie de pointe, offrant des performances exceptionnelles sur route comme sur circuit.'),
(6, 'Mercedes', 'CLS 63 AMG', 190000.00, 'IMAGES/CLS 63 AMG Mercedes Benz.jpg', 'Le CSL 63 AMG est un véritable chef-d\'œuvre de la performance, combinant puissance brute, agilité et luxe, pour offrir une expérience de conduite exaltante et exclusive.'),
(7, 'Mercedes', 'Mercedes class G', 163000.00, 'IMAGES/Mercedes class G.jpg', 'La Mercedes Classe G est une légende de l\'automobile, alliant robustesse, luxe et capacités tout-terrain exceptionnelles.'),
(8, 'Mercedes', 'Mercedes Maybach', 155000.00, 'IMAGES/Mercedes Maybach.jpg', 'La Mercedes Maybach incarne le summum du raffinement et du luxe, offrant une expérience de conduite ultra-privilégiée avec des matériaux nobles, un confort absolu et une puissance discrète mais impressionnante.'),
(9, 'Toyota', 'RAV4', 36100.00, 'toyota/RAV4.jpg', 'Le Toyota RAV4 est un SUV hybride combinant puissance et efficacité énergétique. Son design audacieux et son intérieur spacieux en font un choix idéal pour toutes les aventures.'),
(10, 'Toyota', 'Corolla', 29300.00, 'toyota/2023-toyota-corolla-zr-hybrid-hatch-silver-1.jpg', 'La Toyota Corolla est une berline économique et fiable. Elle offre un excellent rendement énergétique, un confort moderne et des technologies avancées pour une conduite agréable.'),
(11, 'Toyota', 'Camry', 24000.00, 'toyota/toyota_camry.jpg', 'La Toyota Camry est une berline élégante et performante. Elle propose un habitacle spacieux, des technologies de pointe et un moteur dynamique pour une conduite fluide et confortable.'),
(12, 'Toyota', 'Land Cruiser V8', 130000.00, 'toyota/v8.jpg', 'Le Toyota Land Cruiser V8 est un SUV robuste et puissant, conçu pour affronter tous les terrains. Son moteur performant et son intérieur haut de gamme garantissent une expérience unique.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
