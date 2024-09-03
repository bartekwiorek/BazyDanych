-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Wrz 2024, 08:37
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `ksiegarnia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

CREATE TABLE `klient` (
  `id_klienta` int(11) NOT NULL,
  `imie_klienta` text NOT NULL,
  `nazwisko_klienta` text NOT NULL,
  `miejscowosc` text NOT NULL,
  `numer_telefonu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `klient`
--

INSERT INTO `klient` (`id_klienta`, `imie_klienta`, `nazwisko_klienta`, `miejscowosc`, `numer_telefonu`) VALUES
(1, 'Jan', 'Kowalski', 'Kępno', 925430394),
(2, 'Patryk', 'Mąka', 'Kępno', 28395012),
(3, 'Jak', 'Dutkiewicz', 'Kalisz', 294758374),
(4, 'Zygmunt', 'Czekalski', 'Kalisz', 483759214),
(5, 'Janina', 'Drabska', 'Jarocin', 84345892),
(6, 'Dominika', 'Fara', 'Poznań', 2147483647),
(7, 'Norbert', 'Wolski', 'Opole', 898345934),
(8, 'Jan', 'Kowalski', 'Warszawa', 123456789),
(9, 'Anna', 'Nowak', 'Kraków', 987654321),
(10, 'Michał', 'Wiśniewski', 'Gdańsk', 555111222),
(11, 'Katarzyna', 'Lis', 'Poznań', 999888777),
(12, 'Piotr', 'Wójcik', 'Wrocław', 111222333),
(13, 'Magdalena', 'Zając', 'Łódź', 444555666),
(14, 'Adam', 'Szymański', 'Katowice', 777888999),
(15, 'Ewa', 'Dąbrowska', 'Szczecin', 222333444),
(16, 'Tomasz', 'Lewandowski', 'Bydgoszcz', 666777888),
(17, 'Karolina', 'Witkowska', 'Gdynia', 333444555),
(18, 'Robert', 'Kozłowski', 'Lublin', 888999000),
(19, 'Natalia', 'Krawczyk', 'Kraków', 111222),
(20, 'Łukasz', 'Jankowski', 'Warszawa', 111222333),
(21, 'Aleksandra', 'Kaczmarek', 'Poznań', 444555666),
(22, 'Krzysztof', 'Pawlak', 'Gdańsk', 777888999);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazka`
--

CREATE TABLE `ksiazka` (
  `id_ksiazki` int(11) NOT NULL,
  `imie_autora` text NOT NULL,
  `nazwisko_autora` text NOT NULL,
  `tytul` text NOT NULL,
  `cena` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `ksiazka`
--

INSERT INTO `ksiazka` (`id_ksiazki`, `imie_autora`, `nazwisko_autora`, `tytul`, `cena`) VALUES
(2, 'Łukasz', 'Wierzbicki', 'Afryka Kazika', 40.5),
(3, 'Łukasz', 'Wierzbicki', 'Dziadek i niedźwiadek', 35.8),
(4, 'Joanna', 'Papuzińska', 'Asiunia', 36.25),
(5, 'Grzegorz', 'Kasdepke', 'Detektyw Pozytywka', 45.68),
(6, 'Dorota', 'Gellner', 'Wścibscy', 12.8),
(7, 'Jan', 'Brzechwa', 'Brzechwa dzieciom', 67.4),
(8, 'Julian', 'Tuwim', 'Wiersze dla dzieci', 58.99),
(9, 'Maria', 'Terlikowska', 'Drzewo do samego nieba', 79.9),
(10, 'Adam', 'Nowak', 'Wspaniała przygoda', 39.99),
(11, 'Anna', 'Kowalska', 'Sekrety natury', 49.99),
(12, 'Piotr', 'Lis', 'Tajemnicze zagadki', 29.99),
(13, 'Magdalena', 'Wójcik', 'Podróż w nieznane', 59.99),
(14, 'Krzysztof', 'Zając', 'Intrygujące historie', 34.99),
(15, 'Natalia', 'Szymańska', 'Labirynty umysłu', 44.99),
(16, 'Tomasz', 'Kaczmarek', 'Zakazane tajemnice', 54.99),
(17, 'Karolina', 'Witkowska', 'Odkrywcy czasu', 24.99),
(18, 'Robert', 'Kowalczyk', 'Innowacyjne technologie', 69.99),
(19, 'Aleksandra', 'Pawlak', 'Sztuka kulinarna', 49.99);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienie`
--

CREATE TABLE `zamowienie` (
  `id_zamowienia` int(11) NOT NULL,
  `id_klienta` int(11) NOT NULL,
  `id_ksiazki` int(11) NOT NULL,
  `data_zamowienia` date NOT NULL,
  `status_zamowienia` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `zamowienie`
--

INSERT INTO `zamowienie` (`id_zamowienia`, `id_klienta`, `id_ksiazki`, `data_zamowienia`, `status_zamowienia`) VALUES
(1, 4, 5, '2023-09-07', 0),
(2, 5, 2, '2023-09-06', 1),
(3, 4, 6, '2023-09-08', 0),
(4, 1, 8, '2023-09-06', 0),
(5, 5, 7, '2024-05-05', 0),
(6, 8, 18, '2024-05-17', 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`id_klienta`);

--
-- Indeksy dla tabeli `ksiazka`
--
ALTER TABLE `ksiazka`
  ADD PRIMARY KEY (`id_ksiazki`);

--
-- Indeksy dla tabeli `zamowienie`
--
ALTER TABLE `zamowienie`
  ADD PRIMARY KEY (`id_zamowienia`),
  ADD KEY `id_klienta` (`id_klienta`),
  ADD KEY `id_ksiazki` (`id_ksiazki`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `klient`
--
ALTER TABLE `klient`
  MODIFY `id_klienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT dla tabeli `ksiazka`
--
ALTER TABLE `ksiazka`
  MODIFY `id_ksiazki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT dla tabeli `zamowienie`
--
ALTER TABLE `zamowienie`
  MODIFY `id_zamowienia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `zamowienie`
--
ALTER TABLE `zamowienie`
  ADD CONSTRAINT `zamowienie_ibfk_1` FOREIGN KEY (`id_klienta`) REFERENCES `klient` (`id_klienta`),
  ADD CONSTRAINT `zamowienie_ibfk_2` FOREIGN KEY (`id_ksiazki`) REFERENCES `ksiazka` (`id_ksiazki`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
