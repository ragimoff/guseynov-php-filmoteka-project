-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 28 2018 г., 13:44
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
(13, 'Миссия невыполнима: Последствия', 'боевик', 2018, '', '57554321.jpg'),
(14, 'Великий уравнитель 2', 'боевик', 2018, '', '59891662.jpg'),
(15, 'Такси 5', 'комедия, криминал, приключения', 2018, '', '79216613.jpg'),
(16, 'Дыши во мгле', 'фантастика, триллер, приключения', 2018, '', '15861206.jpg'),
(18, 'План побега 2', 'боевик, триллер', 2018, '', '89340515.jpg'),
(19, 'Профессионал', 'триллер, мелодрама, криминал', 2018, '', '53428955.jpg'),
(22, 'Клуб миллиардеров', 'триллер, драма, биография', 2018, 'Лос-Анджелес начала 1980-х. Компания молодых людей решает провернуть аферу, благоприятный исход которой сулит огромные деньги. Схема обогащения оказывается жизнеспособной и вместе с тем – смертельной.', '47037658.jpg'),
(34, '2122', '2121', 212, '2121', ''),
(35, '12', '212', 21, '122', ''),
(36, '12', '212', 21, '122', ''),
(37, '12', '212', 21, '122', ''),
(38, '12', '212', 21, '122', ''),
(39, '12', '212', 21, '122', ''),
(40, '12', '212', 21, '122', ''),
(41, '12', '212', 21, '122', ''),
(42, '12', '212', 21, '122', '');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `password`) VALUES
(1, 'admin', '555');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `filmoteka`
--
ALTER TABLE `filmoteka`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `filmoteka`
--
ALTER TABLE `filmoteka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
