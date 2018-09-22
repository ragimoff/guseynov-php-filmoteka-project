-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 22 2018 г., 09:47
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `WD04-filmoteka-guseynov`
--

-- --------------------------------------------------------

--
-- Структура таблицы `filmoteka`
--

CREATE TABLE `filmoteka` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `genre` text NOT NULL,
  `year` int(11) NOT NULL,
  `description` text NOT NULL,
  `photo` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `filmoteka`
--

INSERT INTO `filmoteka` (`id`, `title`, `genre`, `year`, `description`, `photo`) VALUES
(10, 'Уравнитель 2', 'боевик', 2018, '', ''),
(13, 'Миссия невыполнима: Последствия', 'боевик', 2018, '', ''),
(14, 'Великий уравнитель 2', 'боевик', 2018, '', ''),
(15, 'Такси 5', 'комедия, криминал, приключения', 2018, '', ''),
(16, 'Дыши во мгле', 'фантастика, триллер, приключения', 2018, '', ''),
(18, 'План побега 2', 'боевик, триллер', 2018, '', ''),
(19, 'Профессионал', 'триллер, мелодрама, криминал', 2018, '', ''),
(22, 'Клуб миллиардеров', 'триллер, драма, биография', 2018, 'Лос-Анджелес начала 1980-х. Компания молодых людей решает провернуть аферу, благоприятный исход которой сулит огромные деньги. Схема обогащения оказывается жизнеспособной и вместе с тем – смертельной.', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `filmoteka`
--
ALTER TABLE `filmoteka`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `filmoteka`
--
ALTER TABLE `filmoteka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
