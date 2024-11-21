-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le :  mer. 09 sep. 2020 à 12:17
-- Version du serveur :  10.3.14-MariaDB
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bd_messier`
--

-- --------------------------------------------------------

--
-- Structure de la table `objet`
--

DROP TABLE IF EXISTS `objet`;
CREATE TABLE IF NOT EXISTS `objet` (
  `numero` char(4) NOT NULL,
  `nomCommun` varchar(40) DEFAULT NULL,
  `constellation` varchar(40) DEFAULT NULL,
  `codeType` char(2) DEFAULT NULL,
  `periodeVisibilite` varchar(10) DEFAULT NULL,
  `magnitude` double(15,2) DEFAULT NULL,
  `diametreApparent` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`numero`),
  KEY `codeType` (`codeType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `objet`
--

INSERT INTO `objet` (`numero`, `nomCommun`, `constellation`, `codeType`, `periodeVisibilite`, `magnitude`, `diametreApparent`) VALUES
('M001', 'Nébuleuse du Crabe', 'Taureau', 'NP', 'Hiver ', 8.20, '6 x 4'),
('M002', NULL, 'Verseau', 'AG', 'Automne ', 6.50, '13'),
('M003', NULL, 'Chiens de Chasse', 'AG', 'Printemps ', 6.40, '16'),
('M004', NULL, 'Scorpion', 'AG', 'Eté ', 5.90, '26'),
('M005', NULL, 'Serpent', 'AG', 'Printemps ', 5.80, '17'),
('M006', 'Amas du Papillon', 'Scorpion', 'AO', 'Eté ', 4.20, '15'),
('M007', 'Amas de Ptolémée', 'Scorpion', 'AO', 'Eté ', 3.30, '80'),
('M008', 'Nébuleuse du Lagon', 'Sagittaire', 'ND', 'Eté ', 6.80, '80 x 40'),
('M009', NULL, 'Serpentaire (Ophiucus)', 'AG', 'Eté ', 7.90, '2.4'),
('M010', NULL, 'Serpentaire (Ophiucus)', 'AG', 'Eté ', 6.60, '8.19999999999999'),
('M011', 'Amas du Canard Sauvage', 'Bouclier', 'AO', 'Eté ', 5.80, '14'),
('M012', NULL, 'Serpentaire (Ophiucus)', 'AG', 'Eté ', 6.60, '9.30000000000000'),
('M013', 'Grand Amas d\'Hercule', 'Hercule', 'AG', 'Eté ', 5.90, '10'),
('M014', NULL, 'Serpentaire (Ophiucus)', 'AG', 'Eté ', 7.60, '3'),
('M015', NULL, 'Pégase', 'AG', 'Automne ', 6.40, '7.4'),
('M016', NULL, 'Serpent', 'ND', 'Eté ', 6.40, '25'),
('M017', 'Omega ou le Cygne ou le Fer à Cheval ou ', 'Sagittaire', 'ND', 'Eté ', 7.50, '46 x 37'),
('M018', NULL, 'Sagittaire', 'AO', 'Eté ', 6.90, '9'),
('M019', NULL, 'Serpentaire (Ophiucus)', 'AG', 'Eté ', 7.20, '4.3'),
('M020', 'Nébuleuse Trifide', 'Sagittaire', 'ND', 'Eté ', 9.00, '29 x 27'),
('M021', NULL, 'Sagittaire', 'AO', 'Eté ', 5.90, '13'),
('M022', NULL, 'Sagittaire', 'AG', 'Eté ', 5.10, '17.3'),
('M023', NULL, 'Sagittaire', 'AO', 'Eté ', 5.50, '27'),
('M024', 'Nuage Stellaire dans la Voie Lactée', 'Sagittaire', 'AO', 'Eté ', 4.60, '4'),
('M025', NULL, 'Sagittaire', 'AO', 'Eté ', 4.60, '32'),
('M026', NULL, 'Bouclier', 'AO', 'Eté ', 8.00, '15'),
('M027', 'Nébuleuse de l\'Haltère', 'Renard', 'NP', 'Eté ', 7.60, '8 x 4'),
('M028', NULL, 'Sagittaire', 'AG', 'Eté ', 6.90, '6'),
('M029', NULL, 'Cygne', 'AO', 'Eté ', 6.60, '7'),
('M030', NULL, 'Capricorne', 'AG', 'Automne ', 7.50, '5.7'),
('M031', 'Galaxie d\'Andromède', 'Andromède', 'GS', 'Automne ', 4.80, '160 x 40'),
('M032', 'Galaxie Satellite de M31', 'Andromède', 'GE', 'Automne ', 8.70, '3,6 x 3,1'),
('M033', 'Galaxie du Triangle', 'Triangle', 'GS', 'Automne ', 6.30, '60 x 35'),
('M034', NULL, 'Persée', 'AO', 'Automne ', 5.50, '35'),
('M035', NULL, 'Gémeaux', 'AO', 'Hiver ', 5.30, '28'),
('M036', NULL, 'Cocher', 'AO', 'Hiver ', 6.00, '12'),
('M037', NULL, 'Cocher', 'AO', 'Hiver ', 5.60, '24'),
('M038', NULL, 'Cocher', 'AO', 'Hiver ', 6.40, '21'),
('M039', NULL, 'Cygne', 'AO', 'Eté ', 4.60, '32'),
('M040', 'Etoile Double WNC4', 'Grande Ourse', 'ED', 'Printemps ', 9.10, '50'),
('M041', NULL, 'Grand Chien', 'AO', 'Hiver ', 4.60, '38'),
('M042', 'Grande Nébuleuse d\'Orion', 'Oriob', 'ND', 'Hiver ', 2.90, '66 x 60'),
('M043', 'Nébuleuse de Mairan', 'Orion', 'ND', 'Hiver ', 6.90, '20 x 15'),
('M044', 'Praesepe ou la Ruche', 'Cancer', 'AO', 'Printemps ', 3.10, '95'),
('M045', 'Les Pléiades', 'Taureau', 'AO', 'Hiver ', 1.20, '110'),
('M046', NULL, 'Poupe', 'AO', 'Hiver ', 6.10, '27'),
('M047', NULL, 'Poupe', 'AO', 'Hiver ', 4.50, '30'),
('M048', NULL, 'Hydre', 'AO', 'Hiver ', 5.80, '54'),
('M049', NULL, 'Vierge', 'GE', 'Printemps ', 8.40, '4 x 3,4'),
('M050', NULL, 'Licorne', 'AO', 'Hiver ', 5.90, '16 x 5,5'),
('M051', 'Galaxie du Tourbillon', 'Chiens de Chasse', 'GS', 'Printemps ', 8.40, '10 x 5,5'),
('M052', NULL, 'Cassiopée', 'AO', 'Automne ', 6.90, '13'),
('M053', NULL, 'Chevelure de Bérénice', 'AG', 'Printemps ', 7.70, '3'),
('M054', NULL, 'Sagittaire', 'AG', 'Eté ', 7.70, '6'),
('M055', NULL, 'Sagittaire', 'AG', 'Eté ', 7.00, '15'),
('M056', NULL, 'Lyre', 'AG', 'Eté ', 8.30, '1.8'),
('M057', 'Nébuleuse de l\'Anneau', 'Lyre', 'NP', 'Eté ', 9.30, '1 x 1,3'),
('M058', NULL, 'Vierge', 'GS', 'Printemps ', 9.80, '4 x 3,5'),
('M059', NULL, 'Vierge', 'GE', 'Printemps ', 9.80, '2 x 1,8'),
('M060', NULL, 'Vierge', 'GE', 'Printemps ', 8.80, '3 x 2,5'),
('M061', NULL, 'Vierge', 'GS', 'Printemps ', 9.70, '5,7 x 5,5'),
('M062', NULL, 'Serpentaire (Ophiucus)', 'AG', 'Eté ', 6.60, '4.3'),
('M063', 'Galaxie du Tournesol', 'Chiens de Chasse', 'GS', 'Printemps ', 8.60, '10 x 5'),
('M064', 'Galaxie Blackeye', 'Chevelure de Bérénice', 'GS', 'Printemps ', 8.50, '7,8 x 1,5'),
('M065', NULL, 'Lion', 'GS', 'Printemps ', 9.30, '8 x 2,5'),
('M066', NULL, 'Lion', 'GS', 'Printemps ', 9.00, '8 x 2,5'),
('M067', NULL, 'Cancer', 'AO', 'Printemps ', 6.90, '30'),
('M068', NULL, 'Hydre', 'AG', 'Printemps ', 8.20, '2.8'),
('M069', NULL, 'Sagittaire', 'AG', 'Eté ', 7.70, '2.5'),
('M070', NULL, 'Sagittaire', 'AG', 'Eté ', 8.10, '4'),
('M071', NULL, 'Flèche', 'AG', 'Eté ', 8.30, '6.1'),
('M072', NULL, 'Verseau', 'AG', 'Automne ', 9.40, '2'),
('M073', NULL, 'Verseau', 'AO', 'Automne ', 9.00, '2.8'),
('M074', NULL, 'Poissons', 'GS', 'Automne ', 9.20, '9'),
('M075', NULL, 'Sagittaire', 'AG', 'Eté ', 8.60, '1.9'),
('M076', 'La Petite Haltère, le Bouchon ou le Papi', 'Persée', 'NP', 'Automne ', 12.20, '2 x 1'),
('M077', NULL, 'Baleine', 'GS', 'Automne ', 8.90, '6 x 5'),
('M078', NULL, 'Orion', 'ND', 'Hiver ', 10.50, '8 x 6'),
('M079', NULL, 'Lièvre', 'AG', 'Hiver ', 8.40, '3.2'),
('M080', NULL, 'Scorpion', 'AG', 'Eté ', 7.20, '3.3'),
('M081', 'Galaxie de Bode', 'Grande Ourse', 'GS', 'Printemps ', 6.90, '18 x 10'),
('M082', 'Galaxie du Cigare', 'Grande Ourse', 'GI', 'Printemps ', 8.40, '8 x 3'),
('M083', 'Galaxie Pinwheel Australe', 'Hydre', 'GS', 'Printemps ', 8.20, '10 x 8'),
('M084', NULL, 'Vierge', 'GE', 'Printemps ', 9.30, '2 x 1,8'),
('M085', NULL, 'Chevelure de Bérénice', 'GE', 'Printemps ', 9.30, '2,1 x 1,7'),
('M086', NULL, 'Vierge', 'GE', 'Printemps ', 9.20, '3 x 2'),
('M087', 'Virgo A', 'Vierge', 'GE', 'Printemps ', 8.60, '3 x 3'),
('M088', NULL, 'Chevelure de Bérénice', 'GS', 'Printemps ', 9.50, '5,5 x 2,4'),
('M089', NULL, 'Vierge', 'GE', 'Printemps ', 9.80, '2 x 2'),
('M090', NULL, 'Vierge', 'GS', 'Printemps ', 9.50, '7 x 2,5'),
('M091', NULL, 'Chevelure de Bérénice', 'GS', 'Printemps ', 10.20, '3,7 x 3,2'),
('M092', NULL, 'Hercule', 'AG', 'Eté ', 6.50, '8.30000000000000'),
('M093', NULL, 'Poupe', 'AO', 'Hiver ', 6.20, '22'),
('M094', NULL, 'Chiens de Chasse', 'GS', 'Printemps ', 8.20, '5 x 3,5'),
('M095', NULL, 'Lion', 'GS', 'Printemps ', 9.70, '6,1 x 3,9'),
('M096', NULL, 'Lion', 'GS', 'Printemps ', 9.10, '5 x 4'),
('M097', 'Nébuleuse du Hibou', 'Grande Ourse', 'NP', 'Printemps ', 12.00, '3,4 x 3,0'),
('M098', NULL, 'Chevelure de Bérénice', 'GS', 'Printemps ', 10.10, '8,4 x 1,9'),
('M099', NULL, 'Chevelure de Bérénice', 'GS', 'Printemps ', 9.80, '4,6 x 3,9'),
('M100', NULL, 'Chevelure de Bérénice', 'GS', 'Printemps ', 9.40, '5,3 x 4,5'),
('M101', 'Galaxie Pinwheel', 'Grande Ourse', 'GS', 'Printemps ', 7.70, '22 x 20'),
('M102', NULL, 'Grande Ourse', 'GS', 'Printemps ', 10.00, '5,2 x 2,3'),
('M103', NULL, 'Cassiopée', 'AO', 'Automne ', 7.40, '5'),
('M104', 'Galaxie du Sombrero', 'Vierge', 'GS', 'Printemps ', 8.30, '7 x 1,5'),
('M105', NULL, 'Lion', 'GE', 'Printemps ', 9.20, '2,2 x 2'),
('M106', NULL, 'Chiens de Chasse', 'GS', 'Printemps ', 8.30, '18,2 x 7'),
('M107', NULL, 'Serpentaire (Ophiucus)', 'AG', 'Eté ', 8.10, '2.2'),
('M108', NULL, 'Grande Ourse', 'GS', 'Printemps ', 10.10, '7,7 x 1,3'),
('M109', NULL, 'Grande Ourse', 'GS', 'Printemps ', 9.80, '6,2 x 3,5'),
('M110', NULL, 'Andromède', 'GE', 'Automne ', 9.40, '8 x 3');

-- --------------------------------------------------------

--
-- Structure de la table `typeobjet`
--

DROP TABLE IF EXISTS `typeobjet`;
CREATE TABLE IF NOT EXISTS `typeobjet` (
  `code` char(2) NOT NULL,
  `libelle` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`code`),
  KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `typeobjet`
--

INSERT INTO `typeobjet` (`code`, `libelle`) VALUES
('AG', 'Amas globulaire'),
('AO', 'Amas ouvert'),
('ED', 'Etoile double'),
('GE', 'Galaxie elliptique'),
('GI', 'Galaxie irrégulière'),
('GS', 'Galaxie en spirale'),
('ND', 'nébuleuse diffuse'),
('NP', 'nébuleuse planétaire');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `objet`
--
ALTER TABLE `objet`
  ADD CONSTRAINT `objet_ibfk_1` FOREIGN KEY (`codeType`) REFERENCES `typeobjet` (`code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
