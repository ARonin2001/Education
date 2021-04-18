-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3330
-- Время создания: Апр 17 2021 г., 16:43
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
USE hakaton ;

-- --------------------------------------------------------

--
-- Структура таблицы `autorization_info`
--

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
-- Дамп данных таблицы `departament_users`
--

INSERT INTO `departament_users` (`ID`, `Name`, `Surname`, `Patronymic`, `Gender_ID`, `Photo`, `autorization_info_ID`) VALUES
(1, 'Илья', 'Березников', 'Алексеев', 2, NULL, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `dp_users_password`
--

--
-- Дамп данных таблицы `dp_users_password`
--

INSERT INTO `dp_users_password` (`departament_users_ID`, `Password`) VALUES
(1, 'LoveYou231');

-- --------------------------------------------------------

--
-- Структура таблицы `education`
--


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

-- --------------------------------------------------------

--
-- Структура таблицы `gender`

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

--
-- Дамп данных таблицы `organizations`
--

INSERT INTO `organizations` (`ID`, `Full_Name`, `Short_Name`, `Address`) VALUES
(1, 'Ульяновский Авиационный Колледж - МЦК', 'УАвиаК', 'пр-т. Созидателей 13, Ульяновск, 432059');

-- --------------------------------------------------------

--
-- Структура таблицы `organizations_has_contingent`
--

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

--
-- Дамп данных таблицы `org_users`
--

INSERT INTO `org_users` (`ID`, `Organizations_ID`, `Name`, `Surname`, `Patronymic`, `Gender_ID`, `Photo`, `autorization_info_ID`) VALUES
(1, 1, 'Яна', 'Куликова', 'Андреевна', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `org_users_password`
--

--
-- Дамп данных таблицы `org_users_password`
--

INSERT INTO `org_users_password` (`org_users_ID`, `Password`) VALUES
(1, 'LoveYou231');

-- --------------------------------------------------------

--
-- Структура таблицы `passport`
--

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

--
-- Дамп данных таблицы `social_benefits`
--

INSERT INTO `social_benefits` (`ID`, `contingent_ID`, `Benefit`) VALUES
(1, 1, 'Герой Социалистического Труда');

-- --------------------------------------------------------

--
-- Структура таблицы `specializations`

--
-- Дамп данных таблицы `specializations`
--

INSERT INTO `specializations` (`ID`, `Name`, `Code`, `Training period`) VALUES
(1, 'Информационные системы и программирование', '09.02.07', '4.0'),
(2, 'Слесарь-сборщик авиационной техники', '24.01.01', '3.0');

-- --------------------------------------------------------

--
-- Дамп данных таблицы `way_of_teaching`
--

INSERT INTO `way_of_teaching` (`ID`, `Name`, `Note`) VALUES
(1, 'Очное', NULL),
(2, 'Заочное', NULL),
(3, 'Очно-заочное', 'Вечерняя учеба');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
