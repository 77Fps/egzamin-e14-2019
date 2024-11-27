SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `aktorzy` (
  `id` int(11) NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `filmy` (
  `id` int(10) UNSIGNED NOT NULL,
  `gatunki_id` int(10) UNSIGNED NOT NULL,
  `rezyserzy_id` int(10) UNSIGNED NOT NULL,
  `tytul` text DEFAULT NULL,
  `rok` year(4) DEFAULT NULL,
  `ocena` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `filmy` (`id`, `gatunki_id`, `rezyserzy_id`, `tytul`, `rok`, `ocena`) VALUES
(1, 1, 1, 'Arrival', 2016, 4),
(2, 2, 2, 'Vaiana: Skarb oceanu', 2016, 5),
(3, 3, 3, 'Sully', 2016, 5),
(4, 3, 4, 'Milczenie', 2017, 6),
(5, 4, 5, 'Uciekaj!', 2017, 5),
(6, 5, 6, 'W starym, dobrym stylu', 2017, 6),
(7, 5, 7, 'Bodyguard Zawodowiec', 2017, 5),
(8, 0, 0, 'Suburbicon', 2017, 5);

CREATE TABLE `gatunki` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `gatunki` (`id`, `nazwa`) VALUES
(1, 'Sci-Fi'),
(2, 'animacja'),
(3, 'dramat'),
(4, 'horror'),
(5, 'komedia');

CREATE TABLE `rezyserzy` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `rezyserzy` (`id`, `imie`, `nazwisko`) VALUES
(1, 'Denis', 'Villeneuve'),
(2, 'Ron', 'Clements'),
(3, 'Clint', 'Eastwood'),
(4, 'Martin', 'Scorseze'),
(5, 'Jordan', 'Peele'),
(6, 'Zach', 'Braff'),
(7, 'Patrick', 'Hughes'),
(8, 'Francis', 'Coppola');

ALTER TABLE `aktorzy`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `filmy`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `gatunki`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `rezyserzy`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `filmy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `gatunki`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `rezyserzy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;
