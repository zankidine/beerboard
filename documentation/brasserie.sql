-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 28 juin 2022 à 13:07
-- Version du serveur : 5.7.33
-- Version de PHP : 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `brasserie`
--

-- --------------------------------------------------------

--
-- Structure de la table `biere`
--

CREATE TABLE `biere` (
  `nom_marque` varchar(30) NOT NULL,
  `version` varchar(40) NOT NULL,
  `no_type` int(11) NOT NULL DEFAULT '0',
  `couleur_biere` varchar(30) DEFAULT NULL,
  `taux_alcool` float DEFAULT NULL,
  `caracteristiques` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `biere`
--

INSERT INTO `biere` (`nom_marque`, `version`, `no_type`, `couleur_biere`, `taux_alcool`, `caracteristiques`) VALUES
('1664', '1664', 1, 'blonde', 6.3, 'date de la fondation de la brasserie'),
('Ayinger', 'Fortunator Doppelbock Dunkel', 2, 'chocolat', 7.5, 'vendue en France sous le nom de célébrator'),
('Ayinger', 'Jahrhundert-Bier', 10, 'jaune d\'or', 5.5, 'plaisante bière de soif'),
('Barbar', 'Blonde', 10, 'dorée', 8, 'bière au miel'),
('Bass', 'Pale Ale', 3, 'ambré roux', 5, 'peinte dans un tableau de Manet  \"Un bar aux Folies-Bergères\"'),
('Batemans', 'India Pale Ale', 3, 'ambrée', 3.8, 'cette appellation renvoie à l\'époque de l\'Empire des Indes'),
('Batemans', 'Triple XB.  Ale', 3, 'ambre foncée', 5.5, 'bitter ale'),
('Berliner Kindl', 'Weisse', 6, 'or pâle trouble', 2.5, 'les blanches berlinoises sont moins fortes que celles de Bavière'),
('Binchoise', 'Blonde', 10, 'blonde', 6.5, NULL),
('Binchoise', 'Brune', 10, 'brune', 8.2, NULL),
('Binchoise', 'Flora', 10, 'blonde', 7, NULL),
('Binchoise', 'Rose des Remparts', 10, 'rose', 5.5, 'au sirop de framboise'),
('Black Stout', 'Black Stout', 7, 'noire', 5, NULL),
('Blanche de Namur', 'Blanche de Namur', 6, 'blonde laiteuse', 4.5, NULL),
('Blanche des Flandres', 'Blanche des Flandres', 6, NULL, 5.5, NULL),
('Blanche des Saisis', 'Blanche des Saisis', 5, 'blonde trouble', 6.2, NULL),
('Bofferding', 'Pils', 1, 'Blonde dorée', 4.8, NULL),
('Bombardier', 'Strong Ale', 3, 'ambre acajou', 5.5, NULL),
('Bon Secours', 'La Vieille Bon Secours Ambrée', 10, 'ambrée', 8.5, NULL),
('Bon Secours', 'La Vieille Bon Secours Blonde', 10, 'blonde', 8, NULL),
('Bon Secours', 'La Vieille Bon Secours Brune', 10, 'brune', 7.5, NULL),
('Bonne Espérance', 'Abbaye de Bonne Espérance', 4, 'blonde', 8, NULL),
('Bornem', 'Double', 4, 'brune', 8, NULL),
('Bornem', 'Triple', 4, 'ambrée', 9, NULL),
('Bourganel', 'Bourganel', 1, 'blonde', 6, 'Bière aux marrons'),
('Bourgogne des Flandres', 'Bourgogne des Flandres', 10, 'brune', 6.5, NULL),
('Brand', 'Up (Urtyp)', 1, 'or jaune', 5.5, 'une pils remarquable, non pasteurisée'),
('Brigand', 'Brigand', 10, 'ambrée', 4.5, NULL),
('Brugs', 'Blanche de Bruges', 6, 'or  pâle trouble', 5, 'goût sec et rustique'),
('Brugs', 'Blonde', 10, 'blonde pâle', 8, NULL),
('Brugs', 'Brugse Tripel', 10, 'blonde dorée', 9.5, NULL),
('Brunehaut', 'Blanche', 6, 'Blonde pale', 5, NULL),
('Brunehaut', 'Makasi All Black', 10, 'brune', 8, NULL),
('Brunehaut', 'Tradition', 10, 'Ambrée', 6.5, NULL),
('Brunehaut', 'Villages', 10, 'blonde', 6.5, NULL),
('Budweiser', 'Budvar', 1, 'Blond soutenu', 5, 'l\'authentique'),
('Bush', 'blonde', 10, 'cuivre clair', 7.5, 'rien à voir avec la bière américaine légère'),
('Bush', 'Bush ambrée', 10, 'Rousse', 12, 'anciennement appelée Bush 12'),
('Bush', 'Bush de Noël', 10, 'Rouge ambrée', 12, NULL),
('Cambrinus', 'Cambrinus', 10, 'ambrée', 5.1, NULL),
('Cantillon', 'Fou Foune', 9, 'or pale', 5, 'Surnom du cultivateur d’abricotier à l’origine de cette bière à l\'abricot'),
('Cantillon', 'Grand Cru Bruocsella', 9, 'jaune doré', 5, 'Lambic 3 ans d\'âge'),
('Cantillon', 'Gueuze', 9, 'Ambrée dorée', 5, NULL),
('Cantillon', 'Iris', 10, 'ambré', 5, 'Bière millésimée, goût amer et légèrement caramélisé'),
('Cantillon', 'Kriek', 9, 'acajou', 5, '200g de fruits par litre'),
('Cantillon', 'Lou Pepe Gueuze', 9, 'dorée', 5, 'Bière millésimée, Gueuze composée d\'un seul lambic de deux ans d\'âge'),
('Cantillon', 'Lou Pepe Kriek', 9, 'acajou', 5, 'Même principe que la gueuze Lou Pepe, avec ajout de 300 gr de cerises par litre'),
('Cantillon', 'Rosé de Cambrinus', 9, 'acajou', 5, 'Lambic à la framboise'),
('Cantillon', 'Saint Lamvinus', 9, 'acajou', 5, 'Bière millésimée obtenue par macération de raisin (merlots et cabernets francs) et de lambic'),
('Cantillon', 'Vigneronne', 9, 'acajou', 5, 'Macération de raisins muscats dans du lambic. Seconde fermentation par ajout d\'une liqueur sucrée'),
('Carlsberg', 'Carlsberg', 1, 'blonde', 5.5, NULL),
('Carlsberg', 'Eléphant', 1, 'cuivre jaune', 7.2, 'une amertune impériale'),
('Celta', 'Sans alcool', 1, 'blonde', 0, 'une des plus anciennes de France'),
('Chambly', 'Eau Bénite', 10, 'dorée', 7.7, 'Triple fermentation'),
('Chambly', 'La Blanche de Chambly', 6, 'or pale trouble', 5, NULL),
('Chambly', 'La Fin du Monde', 10, 'ambrée', 9, 'Triple fermentation'),
('Charles Quint', 'Charles Quint', 10, NULL, 7, NULL),
('Chester', 'Gold', 3, 'ambre roux', 6.5, 'brown strong ale'),
('Chimay', 'Blanche(33cl), Cinq Cents(75cl)', 8, 'ambre jaune', 8, 'elle n\'a rien de blanche, seule la capsule est blanche'),
('Chimay', 'Bleue', 8, 'porto rouge', 9, 'Bière  millésimée, bien charpentée'),
('Chimay', 'Dorée', 8, 'Ambrée', 4.5, NULL),
('Chimay', 'Rouge (33cl), Première ( 75cl)', 8, 'cuivrée', 7, 'bière sur levure refermentée en bouteille'),
('Ciney', 'Blonde', 10, 'blonde', 7, NULL),
('Ciney', 'Brune', 10, 'brune', 7, NULL),
('Ciney', 'Spéciale', 10, 'brune', 9, NULL),
('Colomba', 'Colomba', 6, 'blond pâle', 5, NULL),
('Corsaire', 'Bière du Corsaire', 10, 'ambrée', 8, NULL),
('Crystal', 'Light Ale', 3, 'ambrée', 3, NULL),
('De Koninck', 'De Koninck', 3, 'ambrée', 5, 'aussi légère qu\'une pils'),
('Delirium', 'Christmas', 10, NULL, 10, NULL),
('Delirium', 'Nocturum', 10, 'brune', 9, NULL),
('Delirium', 'Tremens', 10, 'ambrée', 9, 'à consommer avec modération'),
('Démon', 'Bière du Démon', 10, 'blonde', 12, NULL),
('Dendermonde', 'Abbaye de Dendermonde', 4, 'blonde', 8, NULL),
('Désert', 'Bière du Désert', 1, 'blonde', 6.2, NULL),
('Desperados', 'Desperados', 10, 'ambre pâle', 5.9, 'désespérante'),
('Deugniet', 'Blonde', 10, NULL, 7.3, NULL),
('Diekirch', 'Exclusive', 1, 'blonde', 5.2, NULL),
('Diekirch', 'Grande réserve', 1, 'ambrée', 6.9, NULL),
('Diekirch', 'Premium', 1, 'blonde', 4.8, NULL),
('Douglas', 'Scotch Ale', 3, 'ambre roux', 8.6, 'Bitter ale'),
('Duchesse de Bourgogne', 'Duchesse de Bourgogne', 10, 'rouge rubis', 6.2, NULL),
('Duvel', 'Rouge', 10, 'blonde très pâle', 8.5, 'blonde au goût de brune de fermentation haute'),
('Duvel', 'Verte', 10, 'blonde', 7.5, NULL),
('Echte Kriek', 'Echte Kriek', 9, 'acajou', 9, NULL),
('Edelweiss', 'Dunkel', 6, 'foncée', 5.2, NULL),
('Edelweiss', 'Hefetrüb', 6, 'blonde trouble', 5.2, NULL),
('Edelweiss', 'Kristall', 6, 'blonde', 5.2, NULL),
('Einbecker', 'Ur-Bock', 2, 'vraie blonde', 6.5, 'suave, maltée, assez sèche'),
('Eku', 'Eku pils', 1, 'blonde', 5, NULL),
('Eku', 'Kulminator ou Eku 28', 2, 'ambrée', 11, 'puissante, pour les amateurs de sensations fortes'),
('Ename', 'Blonde', 4, 'ambrée', 6.5, NULL),
('Ename', 'Double', 4, 'brune', 6.5, NULL),
('Ename', 'Triple', 4, 'ambrée', 9, NULL),
('Erdinger', 'Weissbier Dunkel', 6, 'foncée', 5.6, NULL),
('Erdinger', 'Weissbier Mit feiner Hefe', 6, 'or pâle', 5.3, NULL),
('Estrella', 'Estrella', 1, 'blonde', 5.4, NULL),
('Floreffe', 'Blonde', 4, 'blonde', 6.5, 'filtrée et pasteurisée'),
('Floreffe', 'Double', 4, 'brune', 7, NULL),
('Floreffe', 'La meilleure', 4, NULL, 8, NULL),
('Floreffe', 'Triple', 4, 'blonde', 7.5, NULL),
('Franziskaner', 'Club-Wieissbier', 6, 'pâle peu trouble', 5, 'version sportive'),
('Franziskaner', 'Hefe-Weissbier', 6, 'Blond profond', 5, 'sèche, mousseuse et pleine de corps'),
('Franziskaner', 'Hefe-Weissbier Dunkel', 6, 'foncée', 5, 'version foncée de l\'Heffe-Weissbier'),
('Fruit Défendu', 'De Verboden Vrucht', 10, 'ambrée rouge', 8.8, 'une curiosité, très gazeuse'),
('Gauloise', 'Ambrée', 10, 'ambrée', 6, NULL),
('Gauloise', 'Blonde', 10, 'jaune paille', 6.8, NULL),
('Gauloise', 'Brune', 10, 'rubis foncé', 8.5, NULL),
('Gold Fassl', 'Spezial', 1, 'cuivre doré', 5.6, NULL),
('Grain d\'Orge', 'Blanche', 6, 'blonde pâle', 4.5, NULL),
('Grain d\'Orge', 'Blonde', 10, 'jaune foncée', 8, NULL),
('Grimbergem', 'Blonde', 4, 'blonde', 6.5, 'non refermentée'),
('Grimbergem', 'Double', 4, 'brune', 6.5, 'très sèche'),
('Grimbergem', 'Optimo Bruno', 4, 'ambrée', 10, NULL),
('Grimbergem', 'Triple', 4, 'ambre soutenu', 9, 'troisième fermentation en bouteille'),
('Grisette', 'Ambrée', 10, 'ambrée', 5, NULL),
('Grisette', 'Blanche', 6, NULL, 5, NULL),
('Grisette', 'Blonde', 10, 'blonde', 4.5, NULL),
('Grolsch', 'Herfst Bock', 2, 'brune', 6.5, NULL),
('Grolsch', 'Premium Pilsner', 1, 'or jaune', 5, NULL),
('Guinness', 'Extra Stout', 7, 'noir opaque', 5.1, 'Etrange et bourratif breuvage'),
('Gulden Draak', 'Gulden Draak', 10, 'brun foncé', 10.5, NULL),
('Haacht', 'Bière blanche', 5, 'Blonde pâle', 5, NULL),
('Hannen', 'Albier', 10, 'ambre soutenu', 4.8, 'bière à l\'ancienne (altbier) de ferment. haute,  typique du bassin de la rhur'),
('Heineken', 'Lager', 1, 'blonde', 5, NULL),
('Hercules', 'Hercules', 7, 'foncée', 9, NULL),
('Highlander', 'Traditionnal', 3, 'blond cuivré', 4.5, NULL),
('Hoegaarden', 'Blanche', 6, 'or pâle trouble', 5, NULL),
('Hoegaarden', 'Grand Cru', 10, 'or pâle', 8.7, 'refermentée en bouteille et naturellement voilée'),
('Hoegaarden', 'Julius', 10, 'dorée', 8.8, 'refermentée en bouteille'),
('Honnelles', 'Blanche des Honnelles', 6, 'ambrée', 6, 'porte le nom de la rivière locale, goût différents des blanches du marché'),
('Imperial Stout', 'double malt', 7, 'brun noir', 7.5, NULL),
('Jacobins', 'Framboise', 9, 'acajou', 5.5, NULL),
('Jacobins', 'Gueuze', 9, 'dorée foncée', 5.5, NULL),
('Jacobins', 'Kriek', 9, 'acajou', 5.5, NULL),
('Jan Van Gent', 'Jan Van Gent', 10, 'Roux foncé', 5.5, NULL),
('Jenlain', 'Jenlain', 5, 'cuivrée', 6, 'une valeur sure'),
('John Martin\'s', 'Pale Ale', 3, 'ambrée', 5, NULL),
('John Martin\'s', 'Spécial', 3, 'ambrée', 5.8, NULL),
('Karmeliet', 'Trippel', 10, 'ambrée', 8, NULL),
('Kasteelbier', 'Donder', 10, 'brune', 11, NULL),
('Kasteelbier', 'Gouden Tripel', 10, 'blonde', 11, NULL),
('Keizerberg', 'Abbaye de Keizerberg', 4, 'ambrée', 9, 'identique à la Bornem triple'),
('Kloster', 'Sankt Bernhard', 1, 'blonde  fauve', 7.5, 'à boire avec des bretzels géants'),
('Kronenbourg', 'Kronenbourg', 1, 'blonde', NULL, 'bière de grande diffusion'),
('Kwak', 'Pauwel Kwak', 10, 'cuivre rouge', 8, 'à boire dans son verre: sorte de cornue accrochée à un support de bois'),
('La Blanche Foudroyante', 'de Bruxelles', 6, 'or pâle trouble', 4.5, NULL),
('La Choulette', 'Ambrée', 5, 'ambrée rouge', 7.5, 'bière artisanale'),
('La Goudale', 'La Goudale', 5, 'dorée', 7.2, NULL),
('La Montagnarde', 'Altitude 6', 10, 'blonde', 6, NULL),
('La Montagnarde', 'Blonde', 10, 'ambrée', 9, 'du nom des habitants de Montignies-sur-Roc'),
('La Ramée', 'Ambrée', 10, 'ambrée', 7.5, NULL),
('La Ramée', 'blonde', 10, 'blonde', 8, NULL),
('La Trappe', 'Double', 10, NULL, 6.5, 'Anciennement brassée à l\'abbaye de Koninghoeven, elle a perdu son appellation de trappiste'),
('La Trappe', 'Quadruple', 10, NULL, 10, 'a perdu son appellation de trappiste'),
('La Trappe', 'Triple', 10, NULL, 8, 'a perdu son appellation de trappiste'),
('Leffe', 'Blonde', 4, 'blonde', 6.5, NULL),
('Leffe', 'Brune', 4, 'brune', 6.3, NULL),
('Leffe', 'Radieuse', 4, 'brune', 8.5, 'très houblonnée'),
('Leffe', 'Triple', 4, 'blonde', 8.4, 'refermentée en bouteille'),
('Leffe', 'Vieille Cuvée', 4, NULL, 8.2, 'aromatisée aux épices'),
('Liefmanns', 'Framboise', 9, 'acajou', 6.5, NULL),
('Liefmanns', 'Gluhkriek', 9, 'acajou', 6.5, 'Goût très particulier, à boire chaud'),
('Liefmanns', 'Goudenband', 10, 'brune', 8, NULL),
('Liefmanns', 'Kriek', 9, 'acajou', 6.5, NULL),
('Lindemans', 'Cassis', 9, 'acajou', 4, NULL),
('Lindemans', 'Faro', 9, 'doré foncé', 4.7, 'boison légère et merveilleuse'),
('Lindemans', 'Framboise', 9, 'acajou', 3.5, NULL),
('Lindemans', 'Gueuze', 9, 'ambrée', 5, NULL),
('Lindemans', 'Kriek', 9, 'acajou', 4, NULL),
('Lindemans', 'Pêcheresse', 9, 'dorée', 2.5, 'à la pêche'),
('Loburg', 'Pilsener', 1, 'blonde', 5.7, NULL),
('Maes', 'Maes  cool', 1, 'blonde', 5, NULL),
('Maes', 'Maes pils', 1, 'blonde', 5.1, NULL),
('Mange-soif', 'Blanche', 6, 'blonde pâle', 4.7, NULL),
('Mange-soif', 'Blonde', 1, 'dorée', 4.9, NULL),
('Maredsous', 'Maredsous 10', 4, 'blonde', 9.5, 'refermentée en bouteille'),
('Maredsous', 'Maredsous 6', 4, 'blonde', 6.8, 'refermentée en bouteille'),
('Maredsous', 'Maredsous 6 foncée', 4, 'brune sombre', 6.4, 'refermentée en bouteille'),
('Maredsous', 'Maredsous 8', 4, 'brune sombre', 8, 'refermentée en bouteille'),
('Mater', 'Blanche', 6, 'or trouble', 5, NULL),
('Moinette', 'Moinette Bio', 10, 'blonde', 7.5, NULL),
('Moinette', 'Moinette blonde', 10, 'blonde', 8.5, '= Moinette des iguanodons de Bernissart ou Broqueroise de l\'abbaye de St Denis'),
('Moinette', 'Moinette Brune', 10, 'brune', 8.5, NULL),
('Mort Subite', 'faro', 9, 'doré foncé', 5, NULL),
('Mort Subite', 'Framboise', 9, 'acajou', 4, NULL),
('Mort Subite', 'Gueuse Lambic', 9, 'ambre léger', 4.5, 'coupage de jeunes et de vieux lambics'),
('Mort Subite', 'Kriek', 9, 'acajou', 4.3, NULL),
('Mort Subite', 'Pêche', 9, 'ambrée', 5.5, NULL),
('Nastro Azzuro', 'Premium', 1, 'blonde pâle', 5.2, NULL),
('Nessie', 'Mac Queen\'s', 10, 'rousse', 7.5, NULL),
('Oatmeal', 'Stout', 7, 'caramel foncé', 5, 'stout typique'),
('Orval', '\"Petite\" Orval', 8, 'orangée', 3.5, 'Bière des Moines. Peut se déguster uniquement à l\'Auberge de l\'Ange Gardien, en face de l\'Abbaye'),
('Orval', 'Bière d\'Orval', 8, 'orangée', 6.2, 'la visite de l\'abbaye vaut le détour'),
('Palm', 'Bock Pils', 1, 'blonde', NULL, NULL),
('Palm', 'Double', 10, NULL, NULL, NULL),
('Palm', 'Spéciale', 10, 'ambrée', NULL, NULL),
('Paulaner', 'Hefe-Weissbier', 6, 'or trouble', 5, NULL),
('Paulaner', 'Hefe-Weissbier Dunkel', 6, 'foncée trouble', 5, NULL),
('Paulaner', 'Oktoberfest', 10, 'blonde', NULL, NULL),
('Paulaner', 'Premium pils', 1, 'blonde', 4.3, NULL),
('Paulaner', 'Salvator', 2, 'ambrée', 8, NULL),
('Pietra', 'Pietra', 1, 'ambrée', 6, 'bière à la chataigne'),
('Pilsner', 'Urquell', 1, 'Blond soutenu', 4.4, 'une des meilleure pils du monde et historiquement la 1ère'),
('Piraat', 'Piraat', 10, 'ambrée', 9, NULL),
('Piraat', 'Triple', 10, 'blonde', 10.5, NULL),
('Primus', 'Primus', 1, 'blonde', 5, NULL),
('Queue de Charrue', 'Ambrée', 10, NULL, 5.6, NULL),
('Queue de Charrue', 'Brune', 10, NULL, 5.4, NULL),
('Quintine', 'Ambrée', 10, 'ambrée', 8.5, NULL),
('Quintine', 'Blonde', 10, 'blonde', 8, NULL),
('Quintine', 'de Noël', 10, NULL, 8.5, NULL),
('Quintine', 'saison 2000', 10, NULL, 6.5, NULL),
('Rader', 'Ambrée', 10, 'ambrée', 10.5, 'bière au genièvre'),
('Rader', 'Blonde', 10, 'blonde', 6.5, 'bière au genièvre'),
('Red Stripe +', 'lager', 1, 'or pâle', 4, NULL),
('Régal', 'Christmas', 10, 'brune', 9, NULL),
('Régal', 'Saison', 10, 'rousse', 6, NULL),
('Rochefort', 'Trappistes Rochefort 10', 8, 'brun rouge', 11.3, 'moelleuse, presque sirupeuse'),
('Rochefort', 'Trappistes Rochefort 6', 8, 'brune', 7.5, 'goût voisin de la 10 mais moins alcoolisé'),
('Rochefort', 'Trappistes Rochefort 8', 8, 'brune', 9.5, NULL),
('Rodenbach', 'Grand Cru', 10, 'brun rouge', 6, NULL),
('Rodenbach', 'Rodenbach', 10, 'brune', 5, NULL),
('Roman', 'Oudenaards', 10, 'brune', 5.1, NULL),
('Roman', 'Spéciale', 10, 'brune', 5.5, NULL),
('Romy', 'Pils', 1, 'blonde', 5.1, NULL),
('Royal Oak', 'Ale', 3, 'ambre roux', 4.8, 'bitter ale'),
('Saaz', 'Old Lager', 1, 'blonde', 5.2, NULL),
('Saint-Andrew', 'Saint-Andrew\'s Ale', 3, 'ambrée', 4.6, 'typique ale d\'Ecosse'),
('Saint-Benoît', 'Blonde', 10, 'jaune paille', 6.5, NULL),
('Saint-Benoît', 'Brune', 10, 'brune foncée', 6.5, NULL),
('Saint-Landelin', 'Ambrée', 10, 'ambrée', 6.8, NULL),
('Saint-Landelin', 'Blonde', 10, 'blonde', 5.9, 'produite autrefois à l\'abbaye de St-Crespin'),
('Saint-Landelin', 'Brune', 10, 'brune', 6.2, NULL),
('Samuel Smith\'s', 'Old Brewery Pale Ale', 3, 'ambrée', 5, NULL),
('San Miguel', 'Premium Lager', 1, 'cuivre jaune', 5.4, NULL),
('Sans-Culottes', 'Bière des Sans-Culottes', 5, 'ambrée claire', 7, 'bière artisanale'),
('Satan', 'Gold', 10, 'blonde', 8, NULL),
('Satan', 'Red', 10, 'blonde', 8, NULL),
('Septante cinq', 'Blanche', 6, 'trouble', 4.7, NULL),
('Septante cinq', 'blonde au froment', 1, 'blonde', 6.2, NULL),
('Septante cinq', 'Septante cinq', 5, 'ambrée', 7.5, NULL),
('Sloeber', 'Sloeber', 10, 'ambrée', 7, NULL),
('Songe-fête', 'Ambrée', 1, 'ambrée', 4.8, NULL),
('Songe-fête', 'Blonde', 1, 'dorée', 4.6, NULL),
('Spaten', 'Optimator', 2, 'foncée', 8, 'forte et maltée'),
('Spaten', 'Pils', 1, 'Blond pâle', 5, NULL),
('Spaten', 'Premium Lager', 1, 'or', 5.2, 'blonde munichoise typique'),
('Spaten', 'Ur-Märzen', 10, 'ambrée', NULL, 'inventée en 1872 pour l\'Oktoberfestbier'),
('St Feuillien', 'Blonde', 4, 'blonde', 7.5, NULL),
('St Feuillien', 'Brune', 4, 'brune', 7.5, NULL),
('St Feuillien', 'Cuvée de Noël', 4, NULL, 9, NULL),
('St Feuillien', 'Tirple', 4, 'ambrée', 8.5, NULL),
('St Louis', 'Cassis', 9, 'acajou', 4.5, NULL),
('St Louis', 'Framboise', 9, 'acajou', 4.5, NULL),
('St Louis', 'Gueuze', 9, 'doré foncé', 4.5, NULL),
('St Louis', 'Kriek', 9, 'acajou', 4.5, NULL),
('St Louis', 'Pêche', 9, 'doré foncé', 2.6, NULL),
('St Louis', 'Premium Kriek', 9, 'acajou', 3.2, NULL),
('Steenbrugge', 'Abbaye de Steenbrugge Blonde', 4, 'blonde', 8.5, NULL),
('Steenbrugge', 'Abbaye de Steenbrugge Brune', 4, 'brune', 6.5, NULL),
('Stella', 'Club de Stella Artois', 1, 'blonde', 5.9, NULL),
('Stella', 'Stella Artois', 1, 'blonde', 5.2, NULL),
('Taddy', 'Porter', 7, 'brune', 4.6, 'un des quelques porter encore brassé en Angleterre'),
('Tartan', 'Special Bitter', 3, 'caramel', 3.5, 'Bitter ale'),
('Terken', 'Blonde', 1, 'blonde', 5.2, NULL),
('Terken', 'Brune', 10, 'brune', 6.7, NULL),
('Thomas Hardy\'s', 'Ale', 3, 'foncée', 12, 'Old Ale,en  bouteille numérotée et millésimée'),
('Timmermans', 'Blanche', 6, 'or trouble', 6.5, NULL),
('Timmermans', 'Cassis', 9, 'acajou', 5.5, NULL),
('Timmermans', 'Faro', 9, 'dorée foncé', 4, NULL),
('Timmermans', 'Framboise', 9, 'acajou', 5.5, NULL),
('Timmermans', 'Gueuze Lambic', 9, 'doré foncé', 5.5, NULL),
('Timmermans', 'Kriek', 9, 'acajou', 5.5, NULL),
('Timmermans', 'pêche', 9, 'doré', 5, NULL),
('Tolly\'s', 'Strong Ale', 3, 'or rouge', 4.6, NULL),
('Tongerloo', 'Christmas', 4, 'ambrée', 6.5, NULL),
('Tongerloo', 'Double Blonde', 4, 'blonde', 6, NULL),
('Tongerloo', 'Double Brune', 4, 'brune', 6, NULL),
('Tongerloo', 'Triple blonde', 4, 'ambrée', 8, NULL),
('Triple Moine', 'Triple Moine', 10, NULL, 7, NULL),
('Trois Monts', 'Trois Monts', 5, 'or jaune', 8.5, 'bénéficie du Label \"Qualité Nord Pas-de-Calais\"'),
('Urbock', 'Urbock 23°', 10, 'dorée', 9.9, 'la plus forte du pays'),
('Val Dieu', 'Abbaye de Val Dieu blonde', 4, 'ambrée', 6, NULL),
('Val Dieu', 'Abbaye de Val Dieu brune', 4, 'brune', 8, NULL),
('Val Dieu', 'Abbaye de Val Dieu Triple', 4, 'Ambrée', 7, NULL),
('Val Dieu', 'Bière de Noël', 4, 'ambrée', 7, NULL),
('Val Dieu', 'La Cervoise de Franchimont', 10, 'Blonde', 6, NULL),
('Verhaeghe', 'pils', 1, 'blonde', 5.1, NULL),
('Vichtenaar', 'Vichtenaar', 10, 'brune', 5.1, NULL),
('Vieux Bruges', 'Blanche', 6, 'foncée', 4.5, NULL),
('Vieux Bruges', 'Framboise', 9, 'acajou', 4.5, 'commercialisée aussi sous la marque St Louis'),
('Vieux Bruges', 'Gueuze lambic', 9, 'ambrée', 4.5, 'commercialisée aussi sous la marque St Louis'),
('Vieux Bruges', 'Kriek Lambic', 9, 'acajou', 4.5, 'commercialisée aussi sous la marque St Louis'),
('Watou', 'Blanche de Watou', 6, 'or pâle trouble', 5, NULL),
('Westmalle', 'Dubbel', 8, 'ambrée', 7, NULL),
('Westmalle', 'Single Extra', 8, 'ambrée', 6, NULL),
('Westmalle', 'Tripel', 8, 'cuivre jaune', 9, NULL),
('Westvleteren', 'ABT (capsule jaune) 12', 8, 'foncée', 11, NULL),
('Westvleteren', 'Extra  (capsule bleue) 8', 8, 'foncée', 8, NULL),
('Westvleteren', 'Spéciale  (capsule rouge)  6', 8, 'brune', 6.2, NULL),
('Zipfer', 'Urtyp', 1, 'or jaune', 4.5, NULL),
('Zywiec', 'bouteille 35,6 cl', 1, 'blond métallisé', 5, 'très sèche et très amère');

-- --------------------------------------------------------

--
-- Structure de la table `brasserie`
--

CREATE TABLE `brasserie` (
  `code_brasserie` varchar(10) NOT NULL,
  `nom_brasserie` varchar(45) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  `region` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `brasserie`
--

INSERT INTO `brasserie` (`code_brasserie`, `nom_brasserie`, `ville`, `region`) VALUES
('alpha', 'Brasserie Z', 'Châteauroux', 'Autriche'),
('arto', 'Brasseries Artois (Interbrew)', 'Leuwen', 'Flandre'),
('arts', 'Brasserie artisanale du Sud', 'Nyons', 'Sud'),
('ayin', 'Brauerei Ayinger', 'Aying', 'Bavière'),
('bass', 'Bass Brewers ltd', 'Burton-upon-Trent', 'Grande-Bretagne'),
('bate', 'George Bateman & son', 'Wainfleet', 'Grande-Bretagne'),
('bava', 'Bavaria (ancienne brasserie De Kerkdijk )', 'Lieshout', 'Pays-Bas'),
('beck', 'Brauerei Beck', 'Bremen', 'Brême'),
('belh', 'Belhaven Brewery', 'Dumbar', 'Ecosse'),
('bell', 'Brasserie Belle-Vue', 'Molenbeek-St-Jean', 'Bruxelles'),
('berl', 'Berliner Kindl Brauerei AG', 'Postdam', 'Berlin'),
('binc', 'La Binchoise', 'Binche', 'Wallonie'),
('bock', 'Bockor', 'Bellegem', 'Flandre'),
('boff', 'Bofferding', NULL, 'Luxembourg'),
('bost', 'Brasserie Bosteels', 'Buggenhout', 'Flandre'),
('bour', 'Bourganel', 'Ardèche', 'Sud'),
('bran', 'Brasserie Brand', 'Limbourg', 'Pays-Bas'),
('brun', 'Brunehaut', 'Rongy', 'Wallonie'),
('budv', 'Budvar', 'Ceské Budéjovice', 'Rép. Tchèque'),
('cant', 'Brasserie Cantillon', 'Andelecht', 'Bruxelles'),
('carl', 'Brasserie Carlsberg', 'Copenhague', 'Danemark'),
('caul', 'Caulier Frères', 'Peruwelz', 'Wallonie'),
('chim', 'SA des bières de Chimay, abb. de Scourmont', 'Chimay', 'Wallonie'),
('chou', 'Brasserie La Choulette', 'Hordain', 'Nord-Pas-de-Calais'),
('damm', 'S.A Damm', 'Barcelonne', 'Espagne'),
('debl', 'Brasserie De Block', 'Peizegem-Merchten', 'Flandre'),
('dego', 'Brasserie De Gouden Boom', 'Bruges', 'Flandre'),
('deke', 'Brasserie De Keersmaecker (Alken-Maes)', 'Kogbbegen', 'Flandre'),
('dekl', 'De Kluis Brouwerij van Hoegaarden (Interbrew)', 'Hoegaarden', 'Flandre'),
('diek', 'Brasserie Diekirch', 'Diekirch', 'Luxembourg'),
('dubo', 'Du Bocq', 'Purnode', 'Wallonie'),
('dubu', 'Brasserie Dubuisson', 'Pipaix', 'Wallonie'),
('dupo', 'Brasserie Dupont', 'Tourpes-Leuze', 'Wallonie'),
('duyc', 'Brasserie Duyck', 'Jenlain-en-Avesnois', 'Nord-Pas-de-Calais'),
('eeck', 'Van Eecke', 'Watou', 'Flandre'),
('effe', 'Effes Pilsen Group', 'Istanbul', 'Turquie'),
('egge', 'Eggenberger Schlossbrauerei', 'Salzkammergut', 'Autriche'),
('einb', 'Einbecker Brauhaus A.G.', 'Einbeck', 'Basse-Saxe'),
('eku', 'Erste Kummelbacher Aktienbrauerei', 'Kulmbach', 'Bavière'),
('eldr', 'Eldridge Pope & Co', 'Dorchester', 'Grande-Bretagne'),
('elle', 'Brasserie Ellezelloise', 'Guinaumont', 'Wallonie'),
('enge', 'Engel Brauerei', 'Schwäbisch Gmünd', 'Bad-Wurtemberg'),
('erdi', 'Erdinger Weißbräu', 'Erding', 'Bavière'),
('fisc', 'Brasserie Fischer', 'Schiltigheim', 'Alsace-Lorraine'),
('fria', 'Friart', 'Le Roeulx', 'Wallonie'),
('gaya', 'Les Brasseurs de Gayant', 'Douai', 'Nord-Pas-de-Calais'),
('grol', 'Brasserie Grolsch', 'Enschede', 'Pays-Bas'),
('guib', 'Brasserie Saint-Guibert (Interbrew)', 'Mont-Saint-guibert', 'Wallonie'),
('guin', 'Brasserie Guinness', 'Dublin', 'Irlande'),
('Haac', 'Haacht', 'Boortmeerbeek', 'Flandre'),
('hann', 'Hannen Brauerei', 'Mönchengladbar', 'Rhénanie-Westphalie'),
('hein', 'Brasserie Heineken', 'Amsterdam', 'Pays-Bas'),
('huyg', 'Brasserie  Huyghe', 'Melle', 'Bruxelles'),
('jean', 'Brasserie Grain d\'Orge (ancienne Jeanne d\'Arc', 'Ronchin', 'Nord-Pas-de-Calais'),
('john', 'Brasserie John Martin', 'Genval', 'Wallonie'),
('kalt', 'Hofbräu Kaltenhausen', 'Hallein', 'Autriche'),
('kkbou', 'kkboudin', 'fezgg', 'Brême'),
('koni', 'Browerij de Koninck', 'Anvers', 'Flandre'),
('kron', 'Brasseries Kronenbourg', 'Strasbourg', 'Alsace-Lorraine'),
('lefe', 'Brasserie Lefebvre', 'Quenast', 'Wallonie'),
('lief', 'Liefmanns', 'Oudenaarde', 'Flandre'),
('lind', 'Brasserie Lindemans', 'Vlezenbeeck', 'Flandre'),
('maes', 'Brasserie Maes (Alken-Maes)', 'Waarlos', 'Flandre'),
('moor', 'Brasserie Moorgat', 'Breendonk', 'Flandre'),
('newc', 'Scottish and Newcastle Breweries', 'Edimburg', 'Ecosse'),
('orva', 'Brasserie d\'Orval, abbaye N-D d\'Orval', 'Villers-devant-Orval', 'Wallonie'),
('otta', 'Ottakringer Harmer AG', 'Vienne', 'Autriche'),
('palm', 'Palm', 'Steenhuffel', 'Flandre'),
('paul', 'Paulaner Bräuerei', 'Munich', 'Bavière'),
('pero', 'Birra Peroni Industriale Spa', 'Rome', 'Italie'),
('piet', 'Brasserie Pietra', 'Furiani (corse)', 'Sud'),
('plze', 'Plzensky Prazdroj Urquel', 'Plzen', 'Rép. Tchèque'),
('roch', 'Abbaye N-D de St rémy', 'Rochefort', 'Wallonie'),
('rocs', 'Abbaye des Rocs', 'Montignies-sur-Roc', 'Wallonie'),
('rode', 'Rodenbach', 'Roeselare', 'Flandre'),
('roma', 'Roman', 'Mater', 'Flandre'),
('sanm', 'San Miguel Fabricadas de Cerveza y Malta', 'Madrid', 'Espagne'),
('scot', 'Scottish Brewers', 'Edimbourg', 'Ecosse'),
('smed', 'Brasserie De Smedt', 'Opwijk', 'Flandre'),
('smit', 'Samuel Smith The Old Brewery', 'Tadcaster', 'Grande-Bretagne'),
('spat', 'Spaten Franziskaner Brau', 'Munich', 'Bavière'),
('stsy', 'Brasserie de Saint-Sylvestre', 'Saint-Sylvestre', 'Nord-Pas-de-Calais'),
('terk', 'Brasserie  Terken', 'Roubaix', 'Nord-Pas-de-Calais'),
('timm', 'Timmermans', 'Itterbeek', 'Flandre'),
('tolle', 'Tollemache & Cobbold Brewery', 'Ipswich', 'Grande-Bretagne'),
('unib', 'Brasserie Unibroue', 'Chambly', 'Québec'),
('unio', 'Brasserie de l\'Union (Alken-Maes)', 'Jumet', 'Wallonie'),
('vald', 'Abbaye de Val Dieu', 'Aubel', 'Wallonie'),
('vanh', 'Brasserie Van Honsebrouck', 'IngelMunster', 'Flandre'),
('vans', 'Van Steenberge', 'Ertevelde', 'Flandre'),
('verh', 'Verhaeghe', 'Vichte', 'Flandre'),
('well', 'Charles Wells ltd', 'Bedford', 'Grande-Bretagne'),
('west', 'Brouwerj Abdij Trappisten', 'Westmalle', 'Flandre'),
('westv', 'Abbaye Saint-Sixte', 'Westvleteren', 'Flandre'),
('youn', 'Young & Co\'s Brewery', 'London', 'Grande-Bretagne'),
('zipft', 'Brauerei Zipf', 'Zipft', 'Autriche'),
('zywi', 'Brasserie de Zywiec', 'Zywiec', 'Pologne');

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE `marque` (
  `nom_marque` varchar(30) NOT NULL,
  `code_brasserie` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`nom_marque`, `code_brasserie`) VALUES
('Loburg', 'arto'),
('Stella', 'arto'),
('Mange-soif', 'arts'),
('Songe-fête', 'arts'),
('Ayinger', 'ayin'),
('Bass', 'bass'),
('Batemans', 'bate'),
('La Trappe', 'bava'),
('Beck\'s', 'beck'),
('Belhaven', 'belh'),
('Saint-Andrew', 'belh'),
('Belle-Vue', 'bell'),
('Berliner Kindl', 'berl'),
('Binchoise', 'binc'),
('Jacobins', 'bock'),
('Bofferding', 'boff'),
('Karmeliet', 'bost'),
('Kwak', 'bost'),
('Bourganel', 'bour'),
('Brand', 'bran'),
('Brunehaut', 'brun'),
('La Ramée', 'brun'),
('Budweiser', 'budv'),
('Cantillon', 'cant'),
('Carlsberg', 'carl'),
('Tuborg', 'carl'),
('Bon Secours', 'caul'),
('Chimay', 'chim'),
('La Choulette', 'chou'),
('Sans-Culottes', 'chou'),
('Estrella', 'damm'),
('Dendermonde', 'debl'),
('Satan', 'debl'),
('Brugs', 'dego'),
('Steenbrugge', 'dego'),
('Mort Subite', 'deke'),
('Fruit Défendu', 'dekl'),
('Hoegaarden', 'dekl'),
('Diekirch', 'diek'),
('Blanche de Namur', 'dubo'),
('Deugniet', 'dubo'),
('Gauloise', 'dubo'),
('Régal', 'dubo'),
('Saint-Benoît', 'dubo'),
('Triple Moine', 'dubo'),
('Bush', 'dubu'),
('Moinette', 'dupo'),
('Jenlain', 'duyc'),
('Watou', 'eeck'),
('Effes Pilsener', 'effe'),
('Nessie', 'egge'),
('Urbock', 'egge'),
('Einbecker', 'einb'),
('Eku', 'eku'),
('Crystal', 'eldr'),
('Royal Oak', 'eldr'),
('Thomas Hardy\'s', 'eldr'),
('Blanche des Saisis', 'elle'),
('Hercules', 'elle'),
('Quintine', 'elle'),
('Kloster', 'enge'),
('Erdinger', 'erdi'),
('Desperados', 'fisc'),
('Grisette', 'fria'),
('St Feuillien', 'fria'),
('Celta', 'gaya'),
('Démon', 'gaya'),
('Désert', 'gaya'),
('La Goudale', 'gaya'),
('Saaz', 'gaya'),
('Saint-Landelin', 'gaya'),
('Grolsch', 'grol'),
('Leffe', 'guib'),
('Guinness', 'guin'),
('Adler', 'Haac'),
('Charles Quint', 'Haac'),
('Haacht', 'Haac'),
('Primus', 'Haac'),
('Tongerloo', 'Haac'),
('Hannen', 'hann'),
('Heineken', 'hein'),
('Corsaire', 'huyg'),
('Delirium', 'huyg'),
('La Guillotine', 'huyg'),
('La Poiluchette', 'huyg'),
('Grain d\'Orge', 'jean'),
('Gordon', 'john'),
('John Martin\'s', 'john'),
('Edelweiss', 'kalt'),
('De Koninck', 'koni'),
('1664', 'kron'),
('Kronenbourg', 'kron'),
('Barbar', 'lefe'),
('Bonne Espérance', 'lefe'),
('Floreffe', 'lefe'),
('La Blanche Foudroyante', 'lefe'),
('Jan Van Gent', 'lief'),
('Liefmanns', 'lief'),
('Lindemans', 'lind'),
('Maes', 'maes'),
('Duvel', 'moor'),
('Maredsous', 'moor'),
('Highlander', 'newc'),
('Tartan', 'newc'),
('Orval', 'orva'),
('Gold Fassl', 'otta'),
('Palm', 'palm'),
('Paulaner', 'paul'),
('Nastro Azzuro', 'pero'),
('Colomba', 'piet'),
('Pietra', 'piet'),
('Pilsner', 'plze'),
('Rochefort', 'roch'),
('Abbaye des Rocs', 'rocs'),
('Honnelles', 'rocs'),
('La Montagnarde', 'rocs'),
('Rodenbach', 'rode'),
('Ename', 'roma'),
('Mater', 'roma'),
('Roman', 'roma'),
('Romy', 'roma'),
('Sloeber', 'roma'),
('San Miguel', 'sanm'),
('Douglas', 'scot'),
('Affligem', 'smed'),
('Imperial Stout', 'smit'),
('Oatmeal', 'smit'),
('Samuel Smith\'s', 'smit'),
('Taddy', 'smit'),
('Franziskaner', 'spat'),
('Spaten', 'spat'),
('Trois Monts', 'stsy'),
('Septante cinq', 'terk'),
('Terken', 'terk'),
('Bourgogne des Flandres', 'timm'),
('Timmermans', 'timm'),
('Tolly\'s', 'tolle'),
('Chambly', 'unib'),
('Ciney', 'unio'),
('Grimbergem', 'unio'),
('Rader', 'vald'),
('Val Dieu', 'vald'),
('Bacchus', 'vanh'),
('Blanche des Flandres', 'vanh'),
('Brigand', 'vanh'),
('Kasteelbier', 'vanh'),
('St Louis', 'vanh'),
('Vieux Bruges', 'vanh'),
('Augustijn', 'vans'),
('Bornem', 'vans'),
('Gulden Draak', 'vans'),
('Keizerberg', 'vans'),
('Piraat', 'vans'),
('Cambrinus', 'verh'),
('Duchesse de Bourgogne', 'verh'),
('Echte Kriek', 'verh'),
('Queue de Charrue', 'verh'),
('Verhaeghe', 'verh'),
('Vichtenaar', 'verh'),
('Bombardier', 'well'),
('Chester', 'well'),
('Red Stripe +', 'well'),
('Westmalle', 'west'),
('Westvleteren', 'westv'),
('Black Stout', 'youn'),
('Zipfer', 'zipft'),
('Zywiec', 'zywi');

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `nom_pays` varchar(20) NOT NULL,
  `consommation` double DEFAULT NULL,
  `production` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`nom_pays`, `consommation`, `production`) VALUES
('Allemagne', 148, 118),
('Amérique du nord', 178, 250),
('Belgique', 120, 14),
('Europe centrale', 95, 50),
('Europe du Nord', 120, 30),
('France', 40, 23),
('Iles Britanniques', 115, 65),
('Pays méditerranéen', 50, 45);

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE `region` (
  `nom_region` varchar(20) NOT NULL,
  `nom_pays` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `region`
--

INSERT INTO `region` (`nom_region`, `nom_pays`) VALUES
('Bad-Wurtemberg', 'Allemagne'),
('Basse-Saxe', 'Allemagne'),
('Bavière', 'Allemagne'),
('Berlin', 'Allemagne'),
('Brême', 'Allemagne'),
('Rhénanie-Westphalie', 'Allemagne'),
('Etats-Unis', 'Amérique du nord'),
('Québec', 'Amérique du nord'),
('Bruxelles', 'Belgique'),
('Flandre', 'Belgique'),
('Luxembourg', 'Belgique'),
('Wallonie', 'Belgique'),
('Autriche', 'Europe centrale'),
('Pologne', 'Europe centrale'),
('Rép. Tchèque', 'Europe centrale'),
('Danemark', 'Europe du Nord'),
('Pays-Bas', 'Europe du Nord'),
('Alsace-Lorraine', 'France'),
('Nord-Pas-de-Calais', 'France'),
('Sud', 'France'),
('Ecosse', 'Iles Britanniques'),
('Grande-Bretagne', 'Iles Britanniques'),
('Irlande', 'Iles Britanniques'),
('Espagne', 'Pays méditerranéen'),
('Italie', 'Pays méditerranéen'),
('Turquie', 'Pays méditerranéen');

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `no_type` int(11) NOT NULL DEFAULT '0',
  `nom_type` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `fermentation` varchar(10) DEFAULT NULL,
  `commentaire` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`no_type`, `nom_type`, `description`, `fermentation`, `commentaire`) VALUES
(1, 'Pils', 'blondes, amères, assez gazeuses, limpides', 'basse', 'ou pilsen, pilsner, (lager dans pays anglo-saxons)'),
(2, 'bocks', 'bières fortes souvent foncées', 'basse', 'les Double Bocks sont encore plus forts'),
(3, 'Ale', 'blondes, presque plates, manquant parfois de limpidité', 'haute', 'spécialité britannique'),
(4, 'Abbaye', 'blondes, brunes, ambrées très alcoolisées ou non', 'haute', 'Labellisées par les brasseurs belges pour  concurrencer les trappistes'),
(5, 'Bières de garde', 'gardées longtemps en cuve pour une fermentation prolongée', 'haute', 'bières françaises'),
(6, 'Blanches', 'troubles, peu alcoolisées, à base d\'orge et de froment', 'haute', 'ou Witte , Weisse'),
(7, 'Stouts', 'lourdes, couleur café ou chocolat, breuvage sec', 'haute', 'plus forte et moins amère que le traditionnel Porter devenu plus rare'),
(8, 'Trappistes', 'bières foncées refermentées en bouteille', 'haute', 'produites dans de véritables abbayes, label protégé \"Authentic Trappist Product\"'),
(9, 'Lambics et gueuzes', 'fermentation sans adjonction de levure', 'spontanée', 'gueuze: assemblage de lambics d\'âges différents'),
(10, 'Spécialités', 'Spéciales et locales', 'haute', 'innombrables');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `login`, `password`, `salt`) VALUES
(1, 'zankidine.abdou@cci.com', '1301bd1d11b41d712413218419319519a15912f1931de14e', 0x1ba45a8fc3a78eb8a4d314c7faa7dd3e);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `biere`
--
ALTER TABLE `biere`
  ADD PRIMARY KEY (`nom_marque`,`version`),
  ADD KEY `NomMarque` (`nom_marque`),
  ADD KEY `NoType` (`no_type`);

--
-- Index pour la table `brasserie`
--
ALTER TABLE `brasserie`
  ADD PRIMARY KEY (`code_brasserie`),
  ADD KEY `NomRégion` (`region`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`nom_marque`),
  ADD KEY `CodeBrasserie` (`code_brasserie`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`nom_pays`);

--
-- Index pour la table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`nom_region`),
  ADD KEY `NomPays` (`nom_pays`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`no_type`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `biere`
--
ALTER TABLE `biere`
  ADD CONSTRAINT `FK_marque1` FOREIGN KEY (`nom_marque`) REFERENCES `marque` (`nom_marque`),
  ADD CONSTRAINT `FK_type1` FOREIGN KEY (`no_type`) REFERENCES `type` (`no_type`);

--
-- Contraintes pour la table `brasserie`
--
ALTER TABLE `brasserie`
  ADD CONSTRAINT `FK_region1` FOREIGN KEY (`region`) REFERENCES `region` (`nom_region`);

--
-- Contraintes pour la table `marque`
--
ALTER TABLE `marque`
  ADD CONSTRAINT `FK_brasserie1` FOREIGN KEY (`code_brasserie`) REFERENCES `brasserie` (`code_brasserie`);

--
-- Contraintes pour la table `region`
--
ALTER TABLE `region`
  ADD CONSTRAINT `FK_pays1` FOREIGN KEY (`nom_pays`) REFERENCES `pays` (`nom_pays`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
