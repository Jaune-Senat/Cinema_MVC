-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 23 avr. 2021 à 11:42
-- Version du serveur :  8.0.23-0ubuntu0.20.04.1
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cinema`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `id` int NOT NULL,
  `nomActeur` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `prenomActeur` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sexeActeur` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `naissanceActeur` date NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `acteur`
--

INSERT INTO `acteur` (`id`, `nomActeur`, `prenomActeur`, `sexeActeur`, `naissanceActeur`, `image`) VALUES
(1, 'Gibson', 'Mel', 'M', '1956-01-03', 'melgib.jpeg'),
(2, 'Cummings', 'Robert', 'M', '1965-01-12', 'robzom.jpg'),
(3, 'Cummings', 'Sheri', 'F', '1970-09-26', 'sherizom.jpg'),
(4, 'Moseley', 'Bill', 'M', '1951-11-11', 'billmos.jpg'),
(5, 'Caveziel', 'James', 'M', '1968-09-26', 'jamescav.jpg'),
(6, 'Marceau', 'Sophie', 'F', '1966-11-17', 'sophiemar.jpg'),
(7, 'Stallone', 'Sylvester', 'M', '1946-07-06', 'sylvestersta.jpg'),
(8, 'Young', 'Burt', 'M', '1940-04-30', 'burtyou.jpg'),
(9, 'Freeman', 'Morgan', 'M', '1937-06-01', 'morganfre.jpg'),
(10, 'Eastwood', 'Clint', 'M', '1930-05-31', 'clintest.jpg'),
(11, 'Li', 'BingBing', 'F', '1973-02-27', 'bingbingli.jpg'),
(12, 'Tse', 'Nicholas', 'M', '1980-08-29', 'nicholastse.jpg'),
(13, 'Burke', 'Kathy', 'F', '1964-06-13', 'kathybur.jpg'),
(14, 'Reynolds', 'Ryan', 'M', '1976-10-23', 'ryanrey.jpg'),
(15, 'Osterberg', 'James', 'M', '1947-04-21', 'iggypop.jpg'),
(16, 'Dunst', 'Kirsten', 'F', '1982-04-30', 'kirstendun.jpg'),
(17, 'Bellucci', 'Monica', 'F', '1964-09-30', 'monicabel.jpg'),
(18, 'Weathers', 'Carl', 'M', '1948-01-14', 'Carlwea.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `genre_id` int NOT NULL,
  `film_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`genre_id`, `film_id`) VALUES
(1, 1),
(1, 2),
(2, 5),
(2, 6),
(7, 3),
(7, 4),
(7, 5),
(7, 6),
(10, 3),
(10, 4);

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `id` int NOT NULL,
  `nomFilm` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `duree` int NOT NULL,
  `synopsis` longtext NOT NULL,
  `anneeSortie` int NOT NULL,
  `note` decimal(10,0) NOT NULL,
  `realisateur_id` int NOT NULL,
  `affiche` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id`, `nomFilm`, `duree`, `synopsis`, `anneeSortie`, `note`, `realisateur_id`, `affiche`) VALUES
(1, 'House of thousand corpses', 89, 'Deux jeunes couples se lancent à la recherche du docteur Satan, une légende locale. Surpris par un terrible orage, ils se réfugient dans une mystérieuse demeure où réside une famille pour le moins étrange. Celle-ci se compose de membres adeptes du cannibalisme et de rites sataniques. Le cauchemar peut commencer... ', 2003, '3', 3, 'houseofthousandcorpses.jpg'),
(2, 'the devil\'s reject', 101, 'Après la mort de son frère, le shérif Wydell ne rêve que de vengeance. Il est prêt à tout contre la terrifiante famille Firefly, et il n\'hésitera pas à outrepasser la loi.\r\nBarricadés dans leur maison, les Firefly, eux, sont décidés à lui échapper par tous les moyens. Rien ne semble pouvoir arrêter leur macabre saga.\r\nEntre les deux camps, la guerre est ouverte, et elle va s\'étendre... ', 2005, '3', 3, 'thedevilsreject.jpg'),
(3, 'La passion du christ', 127, 'Les douze dernières heures de la vie du Christ. Rendu au Mont des Oliviers, Jésus prie après avoir partagé un dernier repas avec ses apôtres. Il résiste maintenant aux tentations de Satan. Trahi par Judas, Jésus est arrêté et emmené à Jérusalem, où les chefs des Pharisiens l\'accusent de blasphème et lui font un procès qui a pour issue sa condamnation à mort... ', 2004, '3', 1, 'passionduchrist.jpg'),
(4, 'Braveheart', 165, 'Evocation de la vie tumultueuse de William Wallace, héros et symbole de l\'indépendance écossaise, qui à la fin du XIIIe siècle affronta les troupes du roi d\'Angleterre Edward I qui venaient d\'envahir son pays. ', 1995, '4', 1, 'braveheart.jpg'),
(5, 'Rocky III', 99, 'Rocky Balboa est aujourd\'hui un champion respecté après sa victoire contre Apollo Creed. Mais lorsqu\'il perd contre un nouveau venu sur le circuit, c\'est Apollo Creed lui-même qui va venir à sa rescousse et lui redonner le goût du combat et de la victoire. ', 1983, '3', 6, 'rockyIII.jpg'),
(6, 'Rocky IV', 91, 'Apollo Creed, ancien adversaire et dorénavant ami de Rocky Balboa, est tué sur le ring par le boxeur russe Ivan Drago. Se reprochant de n\'avoir pu sauver son camarade à temps, Rocky va demander un combat contre Ivan Drago afin de le venger. Une confrontation qui se déroulera sur le sol russe. ', 1986, '3', 6, 'rockyIV.jpg'),
(7, 'Million Dollar Baby', 132, 'Rejeté depuis longtemps par sa fille, l\'entraîneur Frankie Dunn s\'est replié sur lui-même et vit dans un désert affectif, en évitant toute relation qui pourrait accroître sa douleur et sa culpabilité.\r\nLe jour où Maggie Fitzgerald, 31 ans, pousse la porte de son gymnase à la recherche d\'un coach, elle n\'amène pas seulement avec elle sa jeunesse et sa force, mais aussi une\r\nhistoire jalonnée d\'épreuves et une exigence, vitale et urgente : monter sur le ring, entraînée par Frankie, et enfin concrétiser le rêve d\'une vie.\r\nAprès avoir repoussé plusieurs fois sa demande, Frankie se laisse convaincre par l\'inflexible détermination de la jeune femme. Une relation mouvementée, tour à tour stimulante et exaspérante, se noue entre eux, au fil de laquelle Maggie et l\'entraîneur se découvrent une communauté d\'esprit et une complicité inattendues... ', 2005, '4', 4, 'milliondollarbaby.jpg'),
(8, 'Gran Torino', 116, 'Walt Kowalski est un ancien de la guerre de Corée, un homme inflexible, amer et pétri de préjugés surannés. Après des années de travail à la chaîne, il vit replié sur lui-même, occupant ses journées à bricoler, traînasser et siroter des bières. Avant de mourir, sa femme exprima le voeu qu\'il aille à confesse, mais Walt n\'a rien à avouer, ni personne à qui parler. Hormis sa chienne Daisy, il ne fait confiance qu\'à son M-1, toujours propre, toujours prêt à l\'usage...\r\nSes anciens voisins ont déménagé ou sont morts depuis longtemps. Son quartier est aujourd\'hui peuplé d\'immigrants asiatiques qu\'il méprise, et Walt ressasse ses haines, innombrables - à l\'encontre de ses voisins, des ados Hmong, latinos et afro-américains \"qui croient faire la loi\", de ses propres enfants, devenus pour lui des étrangers. Walt tue le temps comme il peut, en attendant le grand départ, jusqu\'au jour où un ado Hmong du quartier tente de lui voler sa précieuse Ford Gran Torino... Walt tient comme à la prunelle de ses yeux à cette voiture fétiche, aussi belle que le jour où il la vit sortir de la chaîne.\r\nLorsque le jeune et timide Thao tente de la lui voler sous la pression d\'un gang, Walt fait face à la bande, et devient malgré lui le héros du quartier. Sue, la soeur aînée de Thao, insiste pour que ce dernier se rachète en travaillant pour Walt. Surmontant ses réticences, ce dernier confie au garçon des \"travaux d\'intérêt général\" au profit du voisinage. C\'est le début d\'une amitié inattendue, qui changera le cours de leur vie.\r\nGrâce à Thao et sa gentille famille, Walt va découvrir le vrai visage de ses voisins et comprendre ce qui le lie à ces exilés, contraints de fuir la violence... comme lui, qui croyait fermer la porte sur ses souvenirs aussi aisément qu\'il enfermait au garage sa précieuse Gran Torino... ', 2009, '5', 4, 'grantorino.jpg'),
(9, 'Detective Dee : Le mystère de la flamme fantôme', 123, ' L’histoire se déroule en Chine, en l’an 690, durant la période trouble correspondant à l’ascension de l’impératrice Wu Ze Tian. Tout est prêt pour la cérémonie du couronnement et la petite ville de Chang-An est dans ses habits de fête. Mais une série de morts mystérieuses menace l’intronisation de Wu Ze Tian.\r\nL’impératrice décide alors de faire appel au seul homme capable de percer ce mystère : Le juge Ti, de retour après huit ans de prison pour insolence et insubordination…\r\nInspiré de l’histoire d’un authentique détective de la Chine des Tang, Detective Dee a fait l’objet d’une série de romans cultes (par Robert Van Gulick). Le film du cinéaste hong-kongais Tsui Hark a été présenté au Festival de Venise 2010 en compétition officielle.\r\nRegarder ce film', 2011, '4', 2, 'detectivedee.jpg'),
(10, 'Time and Tide', 113, ' A Hong Kong, la brève rencontre entre Tyler, un jeune homme habitué aux dangers de la rue, et Jo, une femme policier infiltrée, ne sera pas sans conséquence : celle-ci tombe enceinte. Afin de gagner de l\'argent rapidement, Tyler devient garde du corps.\r\nAu service de Hong, le chef d\'une puissante triade, il s\'associe avec Jack, un ancien mercenaire décidé à entamer une nouvelle vie avec Hui, la fille de Hong, qu\'il vient d\'épouser et qui attend un enfant de lui.\r\nEnsemble, Tyler et Jack parviennent à déjouer une tentative d\'assassinat dirigée contre leur employeur, mais leur collaboration va être de courte durée. De complots en guets-apens, d\'intérêts opposés en trahisons, ils vont se retrouver opposés et entraînés vers une confrontation mortelle. ', 2001, '4', 2, 'timeandtide.jpg'),
(11, 'Ne pas avaler', 128, ' L\'histoire d\'une famille ordinaire qui vit dans le sud de Londres. Film autobiographique, \"je l\'ai voulu honnete, vrai, sans concessions, declare le realisateur, comme l\'album-photo de tous ceux qui m\'ont touche et trouble dans ma vie\". ', 1997, '3', 5, 'nepasavaler.jpg'),
(12, 'The voices', 109, 'Jerry vit à Milton, petite ville américaine bien tranquille où il travaille dans une usine de baignoires. Célibataire, il n’est pas solitaire pour autant dans la mesure où il s’entend très bien avec son chat, M. Moustache, et son chien, Bosco. Jerry voit régulièrement sa psy, aussi charmante que compréhensive, à qui il révèle un jour qu’il apprécie de plus en plus Fiona - la délicieuse Anglaise qui travaille à la comptabilité de l’usine. Bref, tout se passe bien dans sa vie plutôt ordinaire - du moins tant qu’il n’oublie pas de prendre ses médicaments... ', 2015, '3', 7, 'thevoices.jpg'),
(13, 'Persepolis', 95, '\r\nTéhéran 1978 : Marjane, huit ans, songe à l\'avenir et se rêve en prophète sauvant le monde. Choyée par des parents modernes et cultivés, particulièrement liée à sa grand-mère, elle suit avec exaltation les évènements qui vont mener à la révolution et provoquer la chute du régime du Chah.\r\nAvec l\'instauration de la République islamique débute le temps des \"commissaires de la révolution\" qui contrôlent tenues et comportements. Marjane qui doit porter le voile, se rêve désormais en révolutionnaire.\r\nBientôt, la guerre contre l\'Irak entraîne bombardements, privations, et disparitions de proches. La répression intérieure devient chaque jour plus sévère.\r\nDans un contexte de plus en plus pénible, sa langue bien pendue et ses positions rebelles deviennent problématiques. Ses parents décident alors de l\'envoyer en Autriche pour la protéger.\r\nA Vienne, Marjane vit à quatorze ans sa deuxième révolution : l\'adolescence, la liberté, les vertiges de l\'amour mais aussi l\'exil, la solitude et la différence. ', 2007, '4', 7, 'persepolis.jpg'),
(14, 'virgin suicides', 96, 'Dans une ville américaine tranquille et puritaine des années soixante-dix, Cecilia Lisbon, treize ans, tente de se suicider. Elle a quatre soeurs, de jolies adolescentes. Cet incident éclaire d\'un jour nouveau le mode de vie de toute la famille. L\'histoire, relatée par l\'intermédiare de la vision des garçons du voisinage, obsédés par ces soeurs mystérieuses, dépeint avec cynisme la vie adolescente. Petit a petit, la famille se referme et les filles reçoivent rapidement l\'interdiction de sortir. Alors que la situation s\'enlise, les garçons envisagent de secourir les filles. ', 2000, '4', 8, 'virginsuicides.jpg'),
(15, 'Marie-Antoinette', 123, 'Évocation de la vie de la reine d\'origine autrichienne, épouse mal-aimée de Louis XVI, guillotinée en 1793.\r\nAu sortir de l\'adolescence, une jeune fille découvre un monde hostile et codifié, un univers frivole où chacun observe et juge l\'autre sans aménité.\r\nMariée à un homme maladroit qui la délaisse, elle est rapidement lassée par les devoirs de représentation qu\'on lui impose.\r\nElle s\'évade dans l\'ivresse de la fête et les plaisirs des sens pour réinventer un monde à elle.\r\nY a-t-il un prix à payer à chercher le bonheur que certains vous refusent ? ', 2006, '3', 8, 'marieantoinette.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` int NOT NULL,
  `nomGenre` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id`, `nomGenre`) VALUES
(1, 'horreur'),
(2, 'action'),
(3, 'science-fiction'),
(4, 'animation'),
(5, 'comedie'),
(6, 'cape et épée'),
(7, 'drame'),
(8, 'thriller'),
(9, 'peplum'),
(10, 'historique'),
(11, 'western'),
(12, 'fantastique'),
(13, 'anticipation');

-- --------------------------------------------------------

--
-- Structure de la table `joue`
--

CREATE TABLE `joue` (
  `acteur_id` int NOT NULL,
  `film_id` int NOT NULL,
  `role_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `joue`
--

INSERT INTO `joue` (`acteur_id`, `film_id`, `role_id`) VALUES
(1, 4, 5),
(3, 1, 1),
(3, 2, 1),
(4, 1, 2),
(4, 2, 2),
(5, 3, 3),
(6, 4, 6),
(7, 5, 8),
(7, 6, 8),
(8, 5, 9),
(8, 6, 9),
(9, 7, 11),
(10, 7, 10),
(10, 8, 12),
(11, 9, 13),
(12, 10, 14),
(13, 11, 15),
(14, 12, 16),
(15, 13, 17),
(16, 14, 18),
(16, 15, 19),
(17, 3, 4),
(18, 5, 7),
(18, 6, 7);

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `id` int NOT NULL,
  `nomRealisateur` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `prenomRealisateur` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sexeRealisateur` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `naissanceRealisateur` date NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `realisateur`
--

INSERT INTO `realisateur` (`id`, `nomRealisateur`, `prenomRealisateur`, `sexeRealisateur`, `naissanceRealisateur`, `image`) VALUES
(1, 'Gibson', 'Mel', 'M', '1956-01-03', 'melgib.jpeg'),
(2, 'Hark', 'Tsui', 'M', '1950-02-15', 'tsuihar.jpg'),
(3, 'Cummings', 'Robert', 'M', '1965-01-12', 'robzom.jpg'),
(4, 'Eastwood', 'Clint', 'M', '1930-05-31', 'clintest.jpg'),
(5, 'Oldman', 'Gary', 'M', '1958-03-21', 'garyold.jpg'),
(6, 'Stallone', 'Sylvester', 'M', '1946-07-06', 'sylvestersta.jpg'),
(7, 'Satrapi', 'Marjane', 'F', '1969-11-22', 'marjanesat.jpg'),
(8, 'Coppola', 'Sofia', 'F', '1971-05-14', 'sofiacop.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` int NOT NULL,
  `nomRole` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id`, `nomRole`) VALUES
(1, 'Baby Firefly'),
(2, 'Otis Driftwood'),
(3, 'Jesus Christ'),
(4, 'Marie Madeleine'),
(5, 'William Wallace'),
(6, 'Princesse Isabelle'),
(7, 'Apollo Creed'),
(8, 'Rocky Balboa'),
(9, 'Paulie'),
(10, 'Frankie Dunn'),
(11, 'Eddie Scrap-Iron Dupris'),
(12, 'Walter Kowalski'),
(13, 'Shangguan Wan\'er'),
(14, 'Tyler'),
(15, 'Valérie'),
(16, 'Jerry Hickfang'),
(17, 'Uncle Anouche'),
(18, 'Lux Lisbon'),
(19, 'Marie-Antoinette');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD KEY `categorie_film0_FK` (`film_id`),
  ADD KEY `genre_id_FK` (`genre_id`,`film_id`) USING BTREE;

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_realisateur_FK` (`realisateur_id`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `joue`
--
ALTER TABLE `joue`
  ADD KEY `joue_film0_FK` (`film_id`),
  ADD KEY `joue_role1_FK` (`role_id`),
  ADD KEY `act_id_FK` (`acteur_id`,`film_id`,`role_id`) USING BTREE;

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `acteur`
--
ALTER TABLE `acteur`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `realisateur`
--
ALTER TABLE `realisateur`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD CONSTRAINT `categorie_film0_FK` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`),
  ADD CONSTRAINT `categorie_genre_FK` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`);

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_realisateur_FK` FOREIGN KEY (`realisateur_id`) REFERENCES `realisateur` (`id`);

--
-- Contraintes pour la table `joue`
--
ALTER TABLE `joue`
  ADD CONSTRAINT `joue_acteur_FK` FOREIGN KEY (`acteur_id`) REFERENCES `acteur` (`id`),
  ADD CONSTRAINT `joue_film0_FK` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`),
  ADD CONSTRAINT `joue_role1_FK` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
