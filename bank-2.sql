-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июн 12 2024 г., 12:10
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bank`
--

-- --------------------------------------------------------

--
-- Структура таблицы `borrowers`
--

CREATE TABLE `borrowers` (
  `id_borrower` int(11) NOT NULL,
  `taxID_borrower` int(30) NOT NULL,
  `bin` int(10) NOT NULL,
  `adress` varchar(200) NOT NULL,
  `sum` int(11) NOT NULL,
  `conditions` varchar(200) NOT NULL,
  `law_notes` text NOT NULL,
  `list_of_contracts` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `borrowers`
--

INSERT INTO `borrowers` (`id_borrower`, `taxID_borrower`, `bin`, `adress`, `sum`, `conditions`, `law_notes`, `list_of_contracts`) VALUES
(1, 32423424, 3242344, 'Россия', 325, 'нет', 'нет', 'нет'),
(2, 21, 334, 'Россия', 33423, 'хорошие', 'нет', 'нет'),
(3, 121, 234, 'Россия', 993423, 'нет', 'нет', 'нет'),
(4, 221, 914, 'Россия', 888423, 'хорошие', 'нет', 'нет'),
(5, 991, 2334, 'Россия', 88423, 'хорошие', 'нет', 'нет');

-- --------------------------------------------------------

--
-- Структура таблицы `corporateLoans`
--

CREATE TABLE `corporateLoans` (
  `id_сorporateLoans` int(11) NOT NULL,
  `id_organization` int(11) NOT NULL,
  `id_individuals` int(11) NOT NULL,
  `amount_сorporateLoans` int(11) NOT NULL,
  `term_сorporateLoans` date NOT NULL,
  `percent_сorporateLoans` decimal(10,0) NOT NULL,
  `conditions_сorporateLoans` text NOT NULL,
  `notes_corporateLoans` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `corporateLoans`
--

INSERT INTO `corporateLoans` (`id_сorporateLoans`, `id_organization`, `id_individuals`, `amount_сorporateLoans`, `term_сorporateLoans`, `percent_сorporateLoans`, `conditions_сorporateLoans`, `notes_corporateLoans`) VALUES
(1, 1, 1, 23, '2024-06-26', 21, 'Договора N234', 'нет'),
(2, 2, 2, 324, '2024-06-27', 18, ' Договор N2342354', 'нет'),
(3, 3, 3, 3443, '2026-06-24', 15, ' Договор N324', 'нет'),
(4, 4, 4, 3443, '2028-06-20', 4, 'Договора N214 + Договор N2334', 'нет'),
(5, 5, 5, 34, '2024-06-05', 22, 'Договор N 234', 'должник');

-- --------------------------------------------------------

--
-- Структура таблицы `individuals`
--

CREATE TABLE `individuals` (
  `id_individuals` int(11) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `secondName` varchar(50) NOT NULL,
  `middleName` varchar(50) NOT NULL,
  `passport` int(10) NOT NULL,
  `taxID_individuals` int(15) NOT NULL,
  `insuranceID` int(15) NOT NULL,
  `driverLicense` int(15) NOT NULL,
  `extraDocuments` text NOT NULL,
  `notes_individuals` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `individuals`
--

INSERT INTO `individuals` (`id_individuals`, `firstName`, `secondName`, `middleName`, `passport`, `taxID_individuals`, `insuranceID`, `driverLicense`, `extraDocuments`, `notes_individuals`) VALUES
(1, 'Ivan', 'Ivanov', 'Vladimirovich', 23532134, 546456, 23, 345435, 'нет', 'нет'),
(2, 'Vasy', 'Efimov', 'Igorevich', 3532134, 211156, 4, 435, 'нет', 'нет'),
(3, 'Mariys', 'Efremova', 'Nikolaevna', 3532134, 246456, 13, 245435, 'нет', 'нет'),
(4, 'Nataliya', 'Ivanova', 'Vladimirovna', 13532134, 926456, 9, 34545, 'нет', 'нет'),
(5, 'Katerina', 'Sergeeva', 'Ivanovna', 13532134, 146456, 323, 105035, 'нет', 'нет');

-- --------------------------------------------------------

--
-- Структура таблицы `loans`
--

CREATE TABLE `loans` (
  `id_loans` int(11) NOT NULL,
  `id_borrower` int(11) NOT NULL,
  `id_individuals` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `percent` decimal(10,0) NOT NULL,
  `deposit_rate` decimal(10,0) NOT NULL,
  `term` date NOT NULL,
  `conditions_loans` text NOT NULL,
  `notes_loans` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `loans`
--

INSERT INTO `loans` (`id_loans`, `id_borrower`, `id_individuals`, `amount`, `percent`, `deposit_rate`, `term`, `conditions_loans`, `notes_loans`) VALUES
(1, 1, 1, 4324, 3, 4, '2024-06-13', 'нет', 'нет'),
(2, 2, 2, 4343, 18, 6, '2024-06-27', 'нет', 'нет'),
(3, 3, 3, 32, 3, 342, '2024-06-27', 'Договор N324', 'нет'),
(4, 4, 4, 23, 17, 45, '2024-06-20', 'Договор N2421', ' нет'),
(5, 5, 5, 34, 12, 423, '2024-06-30', 'Договор N2-3432', 'нет');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `borrowers`
--
ALTER TABLE `borrowers`
  ADD PRIMARY KEY (`id_borrower`),
  ADD KEY `id_borrower` (`id_borrower`);

--
-- Индексы таблицы `corporateLoans`
--
ALTER TABLE `corporateLoans`
  ADD PRIMARY KEY (`id_сorporateLoans`),
  ADD KEY `id_individuals` (`id_individuals`);

--
-- Индексы таблицы `individuals`
--
ALTER TABLE `individuals`
  ADD PRIMARY KEY (`id_individuals`),
  ADD KEY `id` (`id_individuals`);

--
-- Индексы таблицы `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id_loans`),
  ADD KEY `id_individuals` (`id_individuals`),
  ADD KEY `id_borrower` (`id_borrower`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `corporateLoans`
--
ALTER TABLE `corporateLoans`
  ADD CONSTRAINT `corporateloans_ibfk_1` FOREIGN KEY (`id_individuals`) REFERENCES `individuals` (`id_individuals`);

--
-- Ограничения внешнего ключа таблицы `loans`
--
ALTER TABLE `loans`
  ADD CONSTRAINT `loans_ibfk_1` FOREIGN KEY (`id_individuals`) REFERENCES `individuals` (`id_individuals`),
  ADD CONSTRAINT `loans_ibfk_2` FOREIGN KEY (`id_borrower`) REFERENCES `borrowers` (`id_borrower`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
