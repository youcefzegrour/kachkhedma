-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 26 mai 2021 à 22:12
-- Version du serveur :  10.4.6-MariaDB
-- Version de PHP :  7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `base`
--
CREATE DATABASE IF NOT EXISTS `base` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `base`;

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `Theme` varchar(64) NOT NULL,
  `Heures` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`Theme`, `Heures`) VALUES
('Francais', 6);

-- --------------------------------------------------------

--
-- Structure de la table `coursetudiant`
--

CREATE TABLE `coursetudiant` (
  `Cours` varchar(64) NOT NULL,
  `Etudiant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `coursetudiant`
--

INSERT INTO `coursetudiant` (`Cours`, `Etudiant`) VALUES
('Francais', 13);

-- --------------------------------------------------------

--
-- Structure de la table `ecole`
--

CREATE TABLE `ecole` (
  `nom` varchar(64) NOT NULL,
  `mail` varchar(64) NOT NULL,
  `adresse` varchar(64) NOT NULL,
  `numero` varchar(11) NOT NULL,
  `directeur` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE `enseignant` (
  `id` int(11) NOT NULL,
  `nom` varchar(64) NOT NULL,
  `prenom` varchar(64) NOT NULL,
  `mail` varchar(64) NOT NULL,
  `adresse` varchar(64) NOT NULL,
  `numero` varchar(64) NOT NULL,
  `matiere` varchar(64) NOT NULL,
  `mdp` varchar(120) NOT NULL,
  `role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `enseignant`
--

INSERT INTO `enseignant` (`id`, `nom`, `prenom`, `mail`, `adresse`, `numero`, `matiere`, `mdp`, `role`) VALUES
(555, 'Responsable', 'des Etudes', 'resp@ensup.fr', 'Ensup Guyancourt', '101010101', '23 janvier', 'resp', 'responsable'),
(666, 'Monsieur', 'Le Directeur', 'resp@ensup.fr', 'Ensup Guyancourt', '123456789', '22 janvier', 'admin', 'directeur');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(11) NOT NULL,
  `nom` varchar(64) NOT NULL,
  `prenom` varchar(64) NOT NULL,
  `mail` varchar(64) NOT NULL,
  `adresse` varchar(64) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `dateNaissance` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `nom`, `prenom`, `mail`, `adresse`, `numero`, `dateNaissance`) VALUES
(4, 'Simpson', 'Mr.', 'Springfield', '1 rue charles de gaulle', '2001', '2010-04-02'),
(6, 'Eric', 'mr', 'Springfield', 'ok', '2001', '2010-04-02'),
(12, '', 'KKK', 'KK', 'KKK', 'JJJ', 'JJJ'),
(13, 'Jean', 'Paul', 'jjj@jj.ff', 'fffffffa', '123456789', '12 juillet'),
(123, 'jojo', 'bizarre', 'aventure', 'jeanbaptiste', '127287288', 'janvier'),
(777, 'jean', 'baptiste', 'jb@ensup.fr', 'ici', '904949449', '11 janvier 2019'),
(1001, 'Simpson', 'Mr.', 'Springfield', 'ok', '2001', '2010-04-02');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`Theme`);

--
-- Index pour la table `coursetudiant`
--
ALTER TABLE `coursetudiant`
  ADD KEY `Cours` (`Cours`),
  ADD KEY `Id` (`Etudiant`);

--
-- Index pour la table `ecole`
--
ALTER TABLE `ecole`
  ADD PRIMARY KEY (`nom`);

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `coursetudiant`
--
ALTER TABLE `coursetudiant`
  ADD CONSTRAINT `Cours` FOREIGN KEY (`Cours`) REFERENCES `cours` (`Theme`),
  ADD CONSTRAINT `Id` FOREIGN KEY (`Etudiant`) REFERENCES `etudiant` (`id`);
--
-- Base de données :  `base1`
--
CREATE DATABASE IF NOT EXISTS `base1` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `base1`;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nom` varchar(15) NOT NULL,
  `prenom` varchar(15) NOT NULL,
  `mail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `UNIQUE` (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Base de données :  `dougschool`
--
CREATE DATABASE IF NOT EXISTS `dougschool` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
USE `dougschool`;
--
-- Base de données :  `gestionformations`
--
CREATE DATABASE IF NOT EXISTS `gestionformations` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gestionformations`;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `mdp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Base de données :  `kachkhedma`
--
CREATE DATABASE IF NOT EXISTS `kachkhedma` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `kachkhedma`;

-- --------------------------------------------------------

--
-- Structure de la table `candidat`
--

CREATE TABLE `candidat` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `ecole` varchar(50) NOT NULL,
  `annee` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mdp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `candidat`
--

INSERT INTO `candidat` (`id`, `nom`, `prenom`, `ecole`, `annee`, `email`, `mdp`) VALUES
(1, 'Zegrour', 'Youcef', 'ffffff', 2024, 'zegrouryoucef2@gmail.com', '123'),
(2, 'kabouche', 'lyes', 'sorbonne', 2027, 'lyes@zzz.com', '123'),
(3, 'mansoura', 'mohand', 'sorbonne', 2025, 'mansoura2@gmail.com', '123'),
(4, 'mahrous', 'zozo', 'harvard', 2018, 'zegrouryoucef22@gmail.com', '123'),
(5, 'MANSOURA', 'Mohand', 'Assas', 2018, 'mansoura.mohand@gmail.com', '123'),
(6, 'Zegrour', 'Youcef', 'gggg', 2022, 'zegrouryoucef2@gmail.com', '123'),
(7, 'Zegrour', 'Youcef', 'gggg', 2021, 'zegrouryoucef2@gmail.com', '123'),
(8, 'Zegrour', 'Youcef', 'kkk', 2020, 'zegrouryoucef2@gmail.com', 'aze');

-- --------------------------------------------------------

--
-- Structure de la table `recruteurs`
--

CREATE TABLE `recruteurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `ecole` varchar(100) NOT NULL,
  `annee` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mdp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `recruteurs`
--

INSERT INTO `recruteurs` (`id`, `nom`, `prenom`, `ecole`, `annee`, `email`, `mdp`) VALUES
(1, 'Zegrour', 'Youcef', 'sorbonne', 2021, 'zegrouryoucef2@gmail.com', '123'),
(2, 'toto', 'tata', 'titi', 2024, 'zegrouryoucef22@gmail.com', '123'),
(3, 'Zegrour', 'Youcef', 'ss', 2019, 'zegrouryoucef2@gmail.com', '123'),
(4, 'Zegrour', 'Youcef', 'gggg', 2021, 'zegrouryoucef2@gmail.com', '123'),
(5, 'Zegrour', 'Youcef', 'HHHH', 2023, 'zegrouryoucef2@gmail.com', '123'),
(6, 'Zegrour', 'Youcef', 'HHHH', 2023, 'zegrouryoucef2@gmail.com', '123'),
(7, 'Zegrour', 'Youcef', 'ffffff', 2020, 'zegrouryoucef2@gmail.com', 'AZZ');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `candidat`
--
ALTER TABLE `candidat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `recruteurs`
--
ALTER TABLE `recruteurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `candidat`
--
ALTER TABLE `candidat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `recruteurs`
--
ALTER TABLE `recruteurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Base de données :  `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `Theme` varchar(64) NOT NULL,
  `Heures` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`Theme`, `Heures`) VALUES
('Francais', 6);

-- --------------------------------------------------------

--
-- Structure de la table `coursetudiant`
--

CREATE TABLE `coursetudiant` (
  `Cours` varchar(64) NOT NULL,
  `Etudiant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `coursetudiant`
--

INSERT INTO `coursetudiant` (`Cours`, `Etudiant`) VALUES
('Francais', 13);

-- --------------------------------------------------------

--
-- Structure de la table `ecole`
--

CREATE TABLE `ecole` (
  `nom` varchar(64) NOT NULL,
  `mail` varchar(64) NOT NULL,
  `adresse` varchar(64) NOT NULL,
  `numero` varchar(11) NOT NULL,
  `directeur` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE `enseignant` (
  `id` int(11) NOT NULL,
  `nom` varchar(64) NOT NULL,
  `prenom` varchar(64) NOT NULL,
  `mail` varchar(64) NOT NULL,
  `adresse` varchar(64) NOT NULL,
  `numero` varchar(64) NOT NULL,
  `matiere` varchar(64) NOT NULL,
  `mdp` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `enseignant`
--

INSERT INTO `enseignant` (`id`, `nom`, `prenom`, `mail`, `adresse`, `numero`, `matiere`, `mdp`) VALUES
(555, 'Responsable', 'des Etudes', 'resp@ensup.fr', 'Ensup Guyancourt', '101010101', '23 janvier', 'resp'),
(666, 'Monsieur', 'Le Directeur', 'direct@ensup.fr', 'Ensup Guyancourt', '123456789', '22 janvier', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(11) NOT NULL,
  `nom` varchar(64) NOT NULL,
  `prenom` varchar(64) NOT NULL,
  `mail` varchar(64) NOT NULL,
  `adresse` varchar(64) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `dateNaissance` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `nom`, `prenom`, `mail`, `adresse`, `numero`, `dateNaissance`) VALUES
(4, 'Simpson', 'Mr.', 'Springfield', '1 rue charles de gaulle', '2001', '2010-04-02'),
(6, 'Eric', 'mr', 'Springfield', 'ok', '2001', '2010-04-02'),
(13, 'Jean', 'Paul', 'jjj@jj.ff', 'Street', '123456789', '12 juillet'),
(90, 'KO', 'OK', 'papa@jj', '7 rue rip', '678593759', '13 janv'),
(123, 'jojo', 'bizarre', 'aventure', 'jeanbaptiste', '127287288', 'janvier'),
(777, 'jean', 'baptiste', 'jb@ensup.fr', 'ici', '904949449', '11 janvier 2019'),
(1001, 'Simpson', 'Mr.', 'Springfield', 'ok', '2001', '2010-04-02');

-- --------------------------------------------------------

--
-- Structure de la table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Structure de la table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Structure de la table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Structure de la table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Structure de la table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Structure de la table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Structure de la table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Déchargement des données de la table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"test\",\"table\":\"utilisateurs\"},{\"db\":\"toto\",\"table\":\"utilisateur\"},{\"db\":\"base1\",\"table\":\"users\"},{\"db\":\"projet\",\"table\":\"enseignant\"},{\"db\":\"projet\",\"table\":\"ecole\"},{\"db\":\"projet\",\"table\":\"cours\"},{\"db\":\"base\",\"table\":\"ecole\"},{\"db\":\"base\",\"table\":\"enseignant\"},{\"db\":\"base\",\"table\":\"etudiant\"},{\"db\":\"base\",\"table\":\"coursetudiant\"}]');

-- --------------------------------------------------------

--
-- Structure de la table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Structure de la table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Déchargement des données de la table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'base', 'etudiant', '[]', '2020-03-30 15:22:41');

-- --------------------------------------------------------

--
-- Structure de la table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Déchargement des données de la table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-04-27 18:24:56', '{\"lang\":\"fr\",\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":229}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Structure de la table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`Theme`);

--
-- Index pour la table `coursetudiant`
--
ALTER TABLE `coursetudiant`
  ADD KEY `Cours` (`Cours`),
  ADD KEY `Id` (`Etudiant`);

--
-- Index pour la table `ecole`
--
ALTER TABLE `ecole`
  ADD PRIMARY KEY (`nom`);

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Index pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Index pour la table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Index pour la table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Index pour la table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Index pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Index pour la table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Index pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Index pour la table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Index pour la table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Index pour la table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Index pour la table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Index pour la table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Index pour la table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `coursetudiant`
--
ALTER TABLE `coursetudiant`
  ADD CONSTRAINT `Cours` FOREIGN KEY (`Cours`) REFERENCES `cours` (`Theme`),
  ADD CONSTRAINT `Id` FOREIGN KEY (`Etudiant`) REFERENCES `etudiant` (`id`);
--
-- Base de données :  `projet`
--
CREATE DATABASE IF NOT EXISTS `projet` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `projet`;

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `Theme` varchar(64) NOT NULL,
  `Heures` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`Theme`, `Heures`) VALUES
('Francais', 6);

-- --------------------------------------------------------

--
-- Structure de la table `coursetudiant`
--

CREATE TABLE `coursetudiant` (
  `Cours` varchar(64) NOT NULL,
  `Etudiant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `coursetudiant`
--

INSERT INTO `coursetudiant` (`Cours`, `Etudiant`) VALUES
('Francais', 13);

-- --------------------------------------------------------

--
-- Structure de la table `ds_classes`
--

CREATE TABLE `ds_classes` (
  `classes_name` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `classes_hours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `ds_school`
--

CREATE TABLE `ds_school` (
  `school_name` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `school_contact` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `school_address` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `school_phone` varchar(15) COLLATE utf8mb4_bin NOT NULL,
  `school_manager_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `ds_users`
--

CREATE TABLE `ds_users` (
  `user_id` int(11) NOT NULL,
  `user_lastname` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `user_firstname` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `user_email` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `user_address` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `user_phone` varchar(12) COLLATE utf8mb4_bin NOT NULL,
  `user_birthdate` date DEFAULT NULL,
  `user_type` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `ds_users_loggable`
--

CREATE TABLE `ds_users_loggable` (
  `user_id` int(11) NOT NULL,
  `login` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(500) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `ds_users_students`
--

CREATE TABLE `ds_users_students` (
  `user_id` int(11) NOT NULL,
  `current_classes_name` varchar(500) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `ds_users_teachers`
--

CREATE TABLE `ds_users_teachers` (
  `user_id` int(11) NOT NULL,
  `classes_name` varchar(500) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `ecole`
--

CREATE TABLE `ecole` (
  `nom` varchar(64) NOT NULL,
  `mail` varchar(64) NOT NULL,
  `adresse` varchar(64) NOT NULL,
  `numero` varchar(11) NOT NULL,
  `directeur` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE `enseignant` (
  `id` int(11) NOT NULL,
  `nom` varchar(64) NOT NULL,
  `prenom` varchar(64) NOT NULL,
  `mail` varchar(64) NOT NULL,
  `adresse` varchar(64) NOT NULL,
  `numero` varchar(64) NOT NULL,
  `matiere` varchar(64) NOT NULL,
  `mdp` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `enseignant`
--

INSERT INTO `enseignant` (`id`, `nom`, `prenom`, `mail`, `adresse`, `numero`, `matiere`, `mdp`) VALUES
(555, 'Responsable', 'des Etudes', 'resp@ensup.fr', 'Ensup Guyancourt', '101010101', '23 janvier', 'resp'),
(666, 'Monsieur', 'Le Directeur', 'direct@ensup.fr', 'Ensup Guyancourt', '123456789', '22 janvier', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(11) NOT NULL,
  `nom` varchar(64) NOT NULL,
  `prenom` varchar(64) NOT NULL,
  `mail` varchar(64) NOT NULL,
  `adresse` varchar(64) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `dateNaissance` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `nom`, `prenom`, `mail`, `adresse`, `numero`, `dateNaissance`) VALUES
(4, 'Simpson', 'Mr.', 'Springfield', '1 rue charles de gaulle', '2001', '2010-04-02'),
(6, 'Eric', 'mr', 'Springfield', 'ok', '2001', '2010-04-02'),
(13, 'Jean', 'Paul', 'jjj@jj.ff', 'Street', '123456789', '12 juillet'),
(90, 'KO', 'OK', 'papa@jj', '7 rue rip', '678593759', '13 janv'),
(123, 'jojo', 'bizarre', 'aventure', 'jeanbaptiste', '127287288', 'janvier'),
(777, 'jean', 'baptiste', 'jb@ensup.fr', 'ici', '904949449', '11 janvier 2019'),
(1001, 'Simpson', 'Mr.', 'Springfield', 'ok', '2001', '2010-04-02');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`Theme`);

--
-- Index pour la table `coursetudiant`
--
ALTER TABLE `coursetudiant`
  ADD KEY `Cours` (`Cours`),
  ADD KEY `Id` (`Etudiant`);

--
-- Index pour la table `ds_classes`
--
ALTER TABLE `ds_classes`
  ADD PRIMARY KEY (`classes_name`);

--
-- Index pour la table `ds_school`
--
ALTER TABLE `ds_school`
  ADD PRIMARY KEY (`school_name`),
  ADD KEY `directeur` (`school_manager_id`);

--
-- Index pour la table `ds_users`
--
ALTER TABLE `ds_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Index pour la table `ds_users_loggable`
--
ALTER TABLE `ds_users_loggable`
  ADD PRIMARY KEY (`user_id`);

--
-- Index pour la table `ds_users_students`
--
ALTER TABLE `ds_users_students`
  ADD KEY `id user` (`user_id`),
  ADD KEY `classes name` (`current_classes_name`);

--
-- Index pour la table `ds_users_teachers`
--
ALTER TABLE `ds_users_teachers`
  ADD KEY `teacher` (`user_id`),
  ADD KEY `classes` (`classes_name`);

--
-- Index pour la table `ecole`
--
ALTER TABLE `ecole`
  ADD PRIMARY KEY (`nom`);

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ds_users`
--
ALTER TABLE `ds_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `coursetudiant`
--
ALTER TABLE `coursetudiant`
  ADD CONSTRAINT `Cours` FOREIGN KEY (`Cours`) REFERENCES `cours` (`Theme`),
  ADD CONSTRAINT `Id` FOREIGN KEY (`Etudiant`) REFERENCES `etudiant` (`id`);

--
-- Contraintes pour la table `ds_school`
--
ALTER TABLE `ds_school`
  ADD CONSTRAINT `directeur` FOREIGN KEY (`school_manager_id`) REFERENCES `ds_users` (`user_id`);

--
-- Contraintes pour la table `ds_users_loggable`
--
ALTER TABLE `ds_users_loggable`
  ADD CONSTRAINT `login` FOREIGN KEY (`user_id`) REFERENCES `ds_users` (`user_id`);

--
-- Contraintes pour la table `ds_users_students`
--
ALTER TABLE `ds_users_students`
  ADD CONSTRAINT `classes name` FOREIGN KEY (`current_classes_name`) REFERENCES `ds_classes` (`classes_name`),
  ADD CONSTRAINT `id user` FOREIGN KEY (`user_id`) REFERENCES `ds_users` (`user_id`);

--
-- Contraintes pour la table `ds_users_teachers`
--
ALTER TABLE `ds_users_teachers`
  ADD CONSTRAINT `classes` FOREIGN KEY (`classes_name`) REFERENCES `ds_classes` (`classes_name`),
  ADD CONSTRAINT `teacher` FOREIGN KEY (`user_id`) REFERENCES `ds_users` (`user_id`);
--
-- Base de données :  `school`
--
CREATE DATABASE IF NOT EXISTS `school` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `school`;

-- --------------------------------------------------------

--
-- Structure de la table `ds_classes`
--

CREATE TABLE `ds_classes` (
  `classes_name` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `classes_hours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `ds_school`
--

CREATE TABLE `ds_school` (
  `school_name` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `school_contact` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `school_address` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `school_phone` varchar(15) COLLATE utf8mb4_bin NOT NULL,
  `school_manager_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `ds_users`
--

CREATE TABLE `ds_users` (
  `user_id` int(11) NOT NULL,
  `user_lastname` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `user_firstname` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `user_email` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `user_address` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `user_phone` varchar(12) COLLATE utf8mb4_bin NOT NULL,
  `user_birthdate` date DEFAULT NULL,
  `user_type` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `ds_users_loggable`
--

CREATE TABLE `ds_users_loggable` (
  `user_id` int(11) NOT NULL,
  `login` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(500) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `ds_users_students`
--

CREATE TABLE `ds_users_students` (
  `user_id` int(11) NOT NULL,
  `current_classes_name` varchar(500) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `ds_users_teachers`
--

CREATE TABLE `ds_users_teachers` (
  `user_id` int(11) NOT NULL,
  `classes_name` varchar(500) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ds_classes`
--
ALTER TABLE `ds_classes`
  ADD PRIMARY KEY (`classes_name`);

--
-- Index pour la table `ds_school`
--
ALTER TABLE `ds_school`
  ADD PRIMARY KEY (`school_name`),
  ADD KEY `directeur` (`school_manager_id`);

--
-- Index pour la table `ds_users`
--
ALTER TABLE `ds_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Index pour la table `ds_users_loggable`
--
ALTER TABLE `ds_users_loggable`
  ADD PRIMARY KEY (`user_id`);

--
-- Index pour la table `ds_users_students`
--
ALTER TABLE `ds_users_students`
  ADD KEY `id user` (`user_id`),
  ADD KEY `classes name` (`current_classes_name`);

--
-- Index pour la table `ds_users_teachers`
--
ALTER TABLE `ds_users_teachers`
  ADD KEY `teacher` (`user_id`),
  ADD KEY `classes` (`classes_name`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ds_users`
--
ALTER TABLE `ds_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ds_school`
--
ALTER TABLE `ds_school`
  ADD CONSTRAINT `directeur` FOREIGN KEY (`school_manager_id`) REFERENCES `ds_users` (`user_id`);

--
-- Contraintes pour la table `ds_users_loggable`
--
ALTER TABLE `ds_users_loggable`
  ADD CONSTRAINT `login` FOREIGN KEY (`user_id`) REFERENCES `ds_users` (`user_id`);

--
-- Contraintes pour la table `ds_users_students`
--
ALTER TABLE `ds_users_students`
  ADD CONSTRAINT `classes name` FOREIGN KEY (`current_classes_name`) REFERENCES `ds_classes` (`classes_name`),
  ADD CONSTRAINT `id user` FOREIGN KEY (`user_id`) REFERENCES `ds_users` (`user_id`);

--
-- Contraintes pour la table `ds_users_teachers`
--
ALTER TABLE `ds_users_teachers`
  ADD CONSTRAINT `classes` FOREIGN KEY (`classes_name`) REFERENCES `ds_classes` (`classes_name`),
  ADD CONSTRAINT `teacher` FOREIGN KEY (`user_id`) REFERENCES `ds_users` (`user_id`);
--
-- Base de données :  `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `mdp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `prenom`, `mail`, `mdp`) VALUES
(1, 'ZEGROUR', 'YOUCEF', 'ZEGROURYOUCEF2@gmail.com', 'youcef 22');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de données :  `toto`
--
CREATE DATABASE IF NOT EXISTS `toto` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `toto`;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
