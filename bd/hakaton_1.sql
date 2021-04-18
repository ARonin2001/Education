-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3330
-- Время создания: Апр 17 2021 г., 19:58
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
--

-- --------------------------------------------------------

--
-- Структура таблицы `autorization_info`
--

CREATE TABLE `autorization_info` (
  `ID` int(11) NOT NULL,
  `Login` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Phone` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `autorization_info`
--

INSERT INTO `autorization_info` (`ID`, `Login`, `Email`, `Phone`) VALUES
(1, 'UIRussia3', 'chelik1111@mail.ru', '78452351635'),
(2, 'ilyaTRK', 'berezikovIA@mail.ru', '74155246934');

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

-- --------------------------------------------------------

--
-- Структура таблицы `departament_users`
--

CREATE TABLE `departament_users` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Surname` varchar(45) NOT NULL,
  `Patronymic` varchar(45) NOT NULL,
  `Gender_ID` int(11) NOT NULL,
  `Photo` varchar(45) DEFAULT NULL,
  `autorization_info_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `departament_users`
--

INSERT INTO `departament_users` (`ID`, `Name`, `Surname`, `Patronymic`, `Gender_ID`, `Photo`, `autorization_info_ID`) VALUES
(1, 'Илья', 'Березников', 'Алексеев', 2, NULL, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `dp_users_password`
--

CREATE TABLE `dp_users_password` (
  `departament_users_ID` int(11) NOT NULL,
  `Password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dp_users_password`
--

INSERT INTO `dp_users_password` (`departament_users_ID`, `Password`) VALUES
(1, 'LoveYou231');

-- --------------------------------------------------------

--
-- Структура таблицы `education`
--

CREATE TABLE `education` (
  `ID` int(11) NOT NULL,
  `contingent_ID` int(11) NOT NULL,
  `Place` varchar(45) NOT NULL,
  `education_types_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `education`
--

INSERT INTO `education` (`ID`, `contingent_ID`, `Place`, `education_types_ID`) VALUES
(1, 1, 'Школа \"Рябинка\"', 2),
(2, 3, 'Школа №83', 1),
(3, 2, 'Школа \"Малинка\"', 1),
(4, 4, 'Школа №83', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `education_types`
--

CREATE TABLE `education_types` (
  `ID` int(11) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `Note` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `education_types`
--

INSERT INTO `education_types` (`ID`, `Type`, `Note`) VALUES
(1, 'Основное общее', NULL),
(2, 'Среднее общее', NULL),
(3, 'Начальное профессиональное', NULL),
(4, 'Среднее профессиональное', NULL),
(5, 'Высшее профессиональное', NULL),
(6, 'Послевузовское профессиональное', NULL),
(7, 'Начальное общее', NULL),
(8, 'Дошкольное', 'Это как так?');

-- --------------------------------------------------------

--
-- Структура таблицы `exams_info`
--

CREATE TABLE `exams_info` (
  `Exam_ID` int(11) NOT NULL,
  `contingent_ID` int(11) NOT NULL,
  `Discipline` varchar(45) NOT NULL,
  `exam_types_ID` int(11) NOT NULL,
  `Mark` decimal(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `exams_info`
--

INSERT INTO `exams_info` (`Exam_ID`, `contingent_ID`, `Discipline`, `exam_types_ID`, `Mark`) VALUES
(1, 1, 'Русский', 1, '5.00'),
(2, 1, 'Математика', 1, '4.00'),
(3, 1, 'Информатика', 1, '5.00'),
(4, 1, 'Русский', 2, '5.00'),
(5, 1, 'Математика', 2, '5.00'),
(6, 1, 'Информатика', 2, '5.00'),
(7, 4, 'Русский', 1, '5.00'),
(8, 4, 'Математика', 1, '5.00'),
(9, 4, 'Информатика', 1, '5.00');

-- --------------------------------------------------------

--
-- Структура таблицы `exam_types`
--

CREATE TABLE `exam_types` (
  `ID` int(11) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `Note` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `exam_types`
--

INSERT INTO `exam_types` (`ID`, `Type`, `Note`) VALUES
(1, 'ОГЭ', 'Экзамен за курс основного общего образования'),
(2, 'ЕГЭ', 'Экзамен за курс среднего общего образования');

-- --------------------------------------------------------

--
-- Структура таблицы `family`
--

CREATE TABLE `family` (
  `ID` int(11) NOT NULL,
  `Mother` varchar(45) DEFAULT NULL,
  `Mother_Phone` varchar(25) DEFAULT NULL,
  `Father` varchar(45) DEFAULT NULL,
  `Father_Phone` varchar(25) DEFAULT NULL,
  `IsOrphan` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gender`
--

CREATE TABLE `gender` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gender`
--

INSERT INTO `gender` (`ID`, `Name`) VALUES
(1, 'Женщина'),
(2, 'Мужчина');

-- --------------------------------------------------------

--
-- Структура таблицы `organizations`
--

CREATE TABLE `organizations` (
  `ID` int(11) NOT NULL,
  `Full_Name` varchar(45) NOT NULL,
  `Short_Name` varchar(45) DEFAULT NULL,
  `Address` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `organizations`
--

INSERT INTO `organizations` (`ID`, `Full_Name`, `Short_Name`, `Address`) VALUES
(1, 'Ульяновский Авиационный Колледж - МЦК', 'УАвиаК', 'пр-т. Созидателей 13, Ульяновск, 432059');

-- --------------------------------------------------------

--
-- Структура таблицы `organizations_has_contingent`
--

CREATE TABLE `organizations_has_contingent` (
  `organizations_ID` int(11) NOT NULL,
  `contingent_ID` int(11) NOT NULL,
  `specializations_ID` int(11) NOT NULL,
  `Date_of_entering` date NOT NULL,
  `way_of_teaching_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `organizations_has_contingent`
--

INSERT INTO `organizations_has_contingent` (`organizations_ID`, `contingent_ID`, `specializations_ID`, `Date_of_entering`, `way_of_teaching_ID`) VALUES
(1, 1, 1, '2019-09-01', 1),
(1, 2, 1, '2019-09-01', 1),
(1, 3, 1, '2019-09-01', 1),
(1, 4, 1, '2019-09-01', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `org_users`
--

CREATE TABLE `org_users` (
  `ID` int(11) NOT NULL,
  `Organizations_ID` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Surname` varchar(45) NOT NULL,
  `Patronymic` varchar(45) NOT NULL,
  `Gender_ID` int(11) NOT NULL,
  `Photo` varchar(45) DEFAULT NULL,
  `autorization_info_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `org_users`
--

INSERT INTO `org_users` (`ID`, `Organizations_ID`, `Name`, `Surname`, `Patronymic`, `Gender_ID`, `Photo`, `autorization_info_ID`) VALUES
(1, 1, 'Яна', 'Куликова', 'Андреевна', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `org_users_password`
--

CREATE TABLE `org_users_password` (
  `org_users_ID` int(11) NOT NULL,
  `Password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `org_users_password`
--

INSERT INTO `org_users_password` (`org_users_ID`, `Password`) VALUES
(1, 'LoveYou231');

-- --------------------------------------------------------

--
-- Структура таблицы `passport`
--

CREATE TABLE `passport` (
  `ID` int(11) NOT NULL,
  `Series` varchar(4) NOT NULL,
  `Number` varchar(6) NOT NULL,
  `When` date NOT NULL,
  `By_whom` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `passport`
--

INSERT INTO `passport` (`ID`, `Series`, `Number`, `When`, `By_whom`) VALUES
(1, '7316', '412415', '2016-10-12', 'РУВД по Ульяновской Области по селу Ульяновска 141-124'),
(2, '7317', '616125', '2017-04-12', 'Полицейский околоток на нижней'),
(3, '7317', '167235', '2017-12-21', 'УФМС России по Ульяновской области'),
(4, '7318', '411264', '2018-02-10', 'МВД Ростовской области по городу Куржавела');

-- --------------------------------------------------------

--
-- Структура таблицы `social_benefits`
--

CREATE TABLE `social_benefits` (
  `ID` int(11) NOT NULL,
  `contingent_ID` int(11) NOT NULL,
  `Benefit` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `social_benefits`
--

INSERT INTO `social_benefits` (`ID`, `contingent_ID`, `Benefit`) VALUES
(1, 1, 'Герой Социалистического Труда');

-- --------------------------------------------------------

--
-- Структура таблицы `specializations`
--

CREATE TABLE `specializations` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Code` varchar(20) NOT NULL,
  `Training period` decimal(2,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `specializations`
--

INSERT INTO `specializations` (`ID`, `Name`, `Code`, `Training period`) VALUES
(1, 'Информационные системы и программирование', '09.02.07', '4.0'),
(2, 'Слесарь-сборщик авиационной техники', '24.01.01', '3.0');

-- --------------------------------------------------------

--
-- Структура таблицы `way_of_teaching`
--

CREATE TABLE `way_of_teaching` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Note` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `way_of_teaching`
--

INSERT INTO `way_of_teaching` (`ID`, `Name`, `Note`) VALUES
(1, 'Очное', NULL),
(2, 'Заочное', NULL),
(3, 'Очно-заочное', 'Вечерняя учеба');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `autorization_info`
--
ALTER TABLE `autorization_info`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Login_UNIQUE` (`Login`),
  ADD UNIQUE KEY `Email_UNIQUE` (`Email`);

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
-- Индексы таблицы `departament_users`
--
ALTER TABLE `departament_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_departament_users_gender1_idx` (`Gender_ID`),
  ADD KEY `fk_departament_users_autorization_info1_idx` (`autorization_info_ID`);

--
-- Индексы таблицы `dp_users_password`
--
ALTER TABLE `dp_users_password`
  ADD PRIMARY KEY (`departament_users_ID`);

--
-- Индексы таблицы `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`ID`,`contingent_ID`),
  ADD KEY `fk_education_contingent1_idx` (`contingent_ID`),
  ADD KEY `fk_education_edu_types1_idx` (`education_types_ID`);

--
-- Индексы таблицы `education_types`
--
ALTER TABLE `education_types`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `exams_info`
--
ALTER TABLE `exams_info`
  ADD PRIMARY KEY (`Exam_ID`,`contingent_ID`),
  ADD KEY `fk_exams_info_contingent1_idx` (`contingent_ID`),
  ADD KEY `fk_exams_info_exam_types1_idx` (`exam_types_ID`);

--
-- Индексы таблицы `exam_types`
--
ALTER TABLE `exam_types`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `family`
--
ALTER TABLE `family`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `organizations_has_contingent`
--
ALTER TABLE `organizations_has_contingent`
  ADD PRIMARY KEY (`organizations_ID`,`contingent_ID`),
  ADD KEY `fk_organizations_has_contingent_contingent1_idx` (`contingent_ID`),
  ADD KEY `fk_organizations_has_contingent_organizations1_idx` (`organizations_ID`),
  ADD KEY `fk_organizations_has_contingent_specializations1_idx` (`specializations_ID`),
  ADD KEY `fk_organizations_has_contingent_way_of_teaching1_idx` (`way_of_teaching_ID`);

--
-- Индексы таблицы `org_users`
--
ALTER TABLE `org_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_org_users_organizations1_idx` (`Organizations_ID`),
  ADD KEY `fk_org_users_gender1_idx` (`Gender_ID`),
  ADD KEY `fk_org_users_autorization_info1_idx` (`autorization_info_ID`);

--
-- Индексы таблицы `org_users_password`
--
ALTER TABLE `org_users_password`
  ADD PRIMARY KEY (`org_users_ID`);

--
-- Индексы таблицы `passport`
--
ALTER TABLE `passport`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `social_benefits`
--
ALTER TABLE `social_benefits`
  ADD PRIMARY KEY (`ID`,`contingent_ID`),
  ADD KEY `fk_social_benefits_contingent1_idx` (`contingent_ID`);

--
-- Индексы таблицы `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `way_of_teaching`
--
ALTER TABLE `way_of_teaching`
  ADD PRIMARY KEY (`ID`);

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

--
-- Ограничения внешнего ключа таблицы `departament_users`
--
ALTER TABLE `departament_users`
  ADD CONSTRAINT `fk_departament_users_autorization_info1` FOREIGN KEY (`autorization_info_ID`) REFERENCES `autorization_info` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_departament_users_gender1` FOREIGN KEY (`Gender_ID`) REFERENCES `gender` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `dp_users_password`
--
ALTER TABLE `dp_users_password`
  ADD CONSTRAINT `fk_dp_users_password_departament_users1` FOREIGN KEY (`departament_users_ID`) REFERENCES `departament_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `fk_education_edu_types1` FOREIGN KEY (`education_types_ID`) REFERENCES `education_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_exams_info_contingent1` FOREIGN KEY (`contingent_ID`) REFERENCES `contingent` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `exams_info`
--
ALTER TABLE `exams_info`
  ADD CONSTRAINT `fk_exams_info_contingent12` FOREIGN KEY (`contingent_ID`) REFERENCES `contingent` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_exams_info_exam_types12` FOREIGN KEY (`exam_types_ID`) REFERENCES `exam_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `organizations_has_contingent`
--
ALTER TABLE `organizations_has_contingent`
  ADD CONSTRAINT `fk_organizations_has_contingent_contingent1` FOREIGN KEY (`contingent_ID`) REFERENCES `contingent` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_organizations_has_contingent_organizations1` FOREIGN KEY (`organizations_ID`) REFERENCES `organizations` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_organizations_has_contingent_specializations1` FOREIGN KEY (`specializations_ID`) REFERENCES `specializations` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_organizations_has_contingent_way_of_teaching1` FOREIGN KEY (`way_of_teaching_ID`) REFERENCES `way_of_teaching` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `org_users`
--
ALTER TABLE `org_users`
  ADD CONSTRAINT `fk_org_users_autorization_info1` FOREIGN KEY (`autorization_info_ID`) REFERENCES `autorization_info` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_org_users_gender1` FOREIGN KEY (`Gender_ID`) REFERENCES `gender` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_org_users_organizations1` FOREIGN KEY (`Organizations_ID`) REFERENCES `organizations` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `org_users_password`
--
ALTER TABLE `org_users_password`
  ADD CONSTRAINT `fk_org_users_password_org_users1` FOREIGN KEY (`org_users_ID`) REFERENCES `org_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `social_benefits`
--
ALTER TABLE `social_benefits`
  ADD CONSTRAINT `fk_social_benefits_contingent1` FOREIGN KEY (`contingent_ID`) REFERENCES `contingent` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
