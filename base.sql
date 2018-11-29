-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 29 2018 г., 18:06
-- Версия сервера: 5.7.20
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
-- База данных: `base`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comix`
--

CREATE TABLE `comix` (
  `id_comix` int(11) NOT NULL,
  `nazvanie` varchar(35) NOT NULL,
  `kol_str` int(11) NOT NULL,
  `janr` varchar(30) NOT NULL,
  `author` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comix`
--

INSERT INTO `comix` (`id_comix`, `nazvanie`, `kol_str`, `janr`, `author`) VALUES
(1, 'Бэтмен начало', 150, 'боевик', 'Кэл Блэк'),
(2, 'Халк', 98, 'фантастика', 'Стэн Ли'),
(3, 'Супермэн', 197, 'фантастика', 'Ричард Эл'),
(4, 'Невероятный Халк', 201, 'фантастика,боевик', 'Артур Рэм'),
(5, 'Бэтмен против зомби', 167, 'фантастика,боевик', 'Чак Иф'),
(6, 'Супермэн против всех', 135, 'фантастика', 'Пол Марк'),
(7, 'Халк крушитель', 176, 'фантастика', 'Артур Кари'),
(8, 'Бэтмен возвращение', 221, 'боевик', 'Ло Дан'),
(9, 'Халк бесконечность', 145, 'фантастика', 'Кларк Соло'),
(10, 'Бэтмен полёт на другую землю', 173, 'фантастика,боевик', 'Ирон Ро');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comix`
--
ALTER TABLE `comix`
  ADD PRIMARY KEY (`id_comix`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comix`
--
ALTER TABLE `comix`
  MODIFY `id_comix` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
