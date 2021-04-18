-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3330
-- Время создания: Апр 17 2021 г., 16:25
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `hakaton`
CREATE SCHEMA IF NOT EXISTS hakaton DEFAULT CHARACTER SET utf8;
USE hakaton;
--

-- --------------------------------------------------------

--
-- Структура таблицы `contingent`
--

CREATE TABLE `contingent` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Surname` varchar(45) NOT NULL,
  `Patronymic` varchar(45) DEFAULT NULL,
  `Gender_ID` int(11) NOT NULL,
  `Passport_ID` int(11) NOT NULL,
  `Date_of_birth` date NOT NULL,
  `Place_of_birth` varchar(50) DEFAULT NULL,
  `Citizenship` varchar(45) DEFAULT NULL,
  `Registration_address` varchar(45) NOT NULL,
  `Living_address` varchar(45) DEFAULT NULL,
  `Nationality` varchar(45) DEFAULT NULL,
  `Military_registration` varchar(45) DEFAULT NULL,
  `Personal_phone` varchar(25) NOT NULL,
  `Home_phone` varchar(11) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Family_ID` int(11) DEFAULT NULL,
  `Scholarship` int(11) DEFAULT NULL,
  `Disability` tinyint(4) DEFAULT NULL,
  `Average_mark` decimal(3,2) DEFAULT NULL,
  `Photo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contingent`
--

INSERT INTO `contingent` (`ID`, `Name`, `Surname`, `Patronymic`, `Gender_ID`, `Passport_ID`, `Date_of_birth`, `Place_of_birth`, `Citizenship`, `Registration_address`, `Living_address`, `Nationality`, `Military_registration`, `Personal_phone`, `Home_phone`, `Email`, `Family_ID`, `Scholarship`, `Disability`, `Average_mark`, `Photo`) VALUES
(1, 'Александр', 'Пронин', 'Олегович', 2, 1, '2001-03-20', 'Ульяновск', 'Россия', 'г. Ульяновск ул. Андреевка 42, кв. 135', NULL, 'Русский', NULL, '89515425112', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Виталий', 'Коткин', 'Олегович', 2, 2, '2002-01-19', 'Ульяновск', NULL, 'г. Ульяновск, ул. Красная 2Б, кв. 121', NULL, NULL, NULL, '84152525113', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Оля', 'Шапинская', 'Владимировна', 1, 3, '2002-03-21', 'КНДР, г. Сонджун', 'Россия', 'г. Ульяновск, ул. Синяя 3А, кв. 21', NULL, NULL, NULL, '89170416321', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Егор', 'Безбородов', 'Юрьевич', 2, 4, '2003-03-06', NULL, NULL, 'г. Ульяновск, ул. Революции 5, кв. 7', NULL, NULL, NULL, '89176542323', NULL, 'bratvaIzRostova@rambler.ru', NULL, 1300, 0, '4.26', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `contingent`
--
ALTER TABLE `contingent`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Personal_phoneID_UNIQUE` (`Personal_phone`),
  ADD KEY `fk_contingent_gender_idx` (`Gender_ID`),
  ADD KEY `fk_contingent_passport1_idx` (`Passport_ID`),
  ADD KEY `fk_contingent_family1_idx` (`Family_ID`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `contingent`
--
ALTER TABLE `contingent`
  ADD CONSTRAINT `fk_contingent_family1` FOREIGN KEY (`Family_ID`) REFERENCES `family` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_contingent_gender` FOREIGN KEY (`Gender_ID`) REFERENCES `gender` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_contingent_passport1` FOREIGN KEY (`Passport_ID`) REFERENCES `passport` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
