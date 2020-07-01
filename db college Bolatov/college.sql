-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 25 2020 г., 07:00
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
-- База данных: `college`
--

-- --------------------------------------------------------

--
-- Структура таблицы `classroom_bolatov`
--

CREATE TABLE `classroom_bolatov` (
  `classroom_id` int(11) NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `course_bolatov`
--

CREATE TABLE `course_bolatov` (
  `course_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `special_id` int(11) NOT NULL,
  `hours` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `course_bolatov`
--

INSERT INTO `course_bolatov` (`course_id`, `name`, `special_id`, `hours`) VALUES
(1, 'Основы алгоритмизации', 1, 90),
(2, 'Электротехника', 3, 106),
(3, 'Основы алгоритмизации', 5, 52),
(4, 'Мультимедиа технологии', 1, 36),
(5, 'Техническая механика', 6, 96),
(6, 'Промышленная электротехника', 4, 108),
(7, 'Автоматизированные информационные  системы', 1, 86);

-- --------------------------------------------------------

--
-- Структура таблицы `day_bolatov`
--

CREATE TABLE `day_bolatov` (
  `day_id` tinyint(4) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `day_bolatov`
--

INSERT INTO `day_bolatov` (`day_id`, `name`) VALUES
(1, 'Понедельник'),
(2, 'Вторник'),
(3, 'Среда'),
(4, 'Четверг'),
(5, 'Пятница'),
(6, 'Суббота'),
(7, 'Воскресенье');

-- --------------------------------------------------------

--
-- Структура таблицы `gender_bolatov`
--

CREATE TABLE `gender_bolatov` (
  `gender_id` tinyint(4) NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `gender_bolatov`
--

INSERT INTO `gender_bolatov` (`gender_id`, `name`) VALUES
(1, 'Мужской'),
(2, 'Женский');

-- --------------------------------------------------------

--
-- Структура таблицы `graduate_bolatov`
--

CREATE TABLE `graduate_bolatov` (
  `graduate_id` int(11) NOT NULL,
  `gruppa_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `graduate_time_bolatov`
--

CREATE TABLE `graduate_time_bolatov` (
  `graduate_time_id` int(11) NOT NULL,
  `graduate_id` int(11) NOT NULL,
  `day_id` tinyint(4) NOT NULL,
  `lesson_num_id` int(11) NOT NULL,
  `classroom_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `gruppa_bolatov`
--

CREATE TABLE `gruppa_bolatov` (
  `gruppa_id` int(11) NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `special_id` int(11) NOT NULL,
  `date_begin` date NOT NULL,
  `date_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `gruppa_bolatov`
--

INSERT INTO `gruppa_bolatov` (`gruppa_id`, `name`, `special_id`, `date_begin`, `date_end`) VALUES
(1, '101 ИС', 1, '2016-09-01', '2020-07-01'),
(2, '102 АС', 3, '2016-09-01', '2020-07-01'),
(3, '302 ИС', 1, '2014-09-01', '2018-07-01'),
(4, '302 АС', 3, '2014-09-01', '2018-07-01'),
(5, '202 С', 6, '2015-09-01', '2019-07-01'),
(6, '404 П', 5, '2014-09-01', '2017-07-01'),
(7, '303 ЭЛ', 4, '2014-09-01', '2018-07-01');

-- --------------------------------------------------------

--
-- Структура таблицы `lesson_num_bolatov`
--

CREATE TABLE `lesson_num_bolatov` (
  `lesson_num_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_lesson` time NOT NULL,
  `year_lesson` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `otdel_bolatov`
--

CREATE TABLE `otdel_bolatov` (
  `otdel_id` smallint(6) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `otdel_bolatov`
--

INSERT INTO `otdel_bolatov` (`otdel_id`, `name`) VALUES
(1, 'Информационные системы'),
(2, 'Технические специальности'),
(3, 'Автоматизация и управление');

-- --------------------------------------------------------

--
-- Структура таблицы `special_bolatov`
--

CREATE TABLE `special_bolatov` (
  `special_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otdel_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `special_bolatov`
--

INSERT INTO `special_bolatov` (`special_id`, `name`, `otdel_id`) VALUES
(1, 'Информационные системы', 1),
(2, 'Нефтегазовое дело', 2),
(3, 'Автоматизация и управление', 3),
(4, 'Электроснабжение', 3),
(5, 'Программное обеспечение ВТ и  ПО', 1),
(6, 'Строительство и эксплуатация  зданий и сооружений', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `student_bolatov`
--

CREATE TABLE `student_bolatov` (
  `user_id` bigint(20) NOT NULL,
  `gruppa_id` int(11) NOT NULL,
  `num_zach` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `student_bolatov`
--

INSERT INTO `student_bolatov` (`user_id`, `gruppa_id`, `num_zach`) VALUES
(6, 1, 'К1020'),
(7, 2, 'А5292'),
(8, 2, 'В8578'),
(9, 5, 'Р5285'),
(10, 4, 'Ф5285'),
(11, 1, 'К7485'),
(12, 3, 'А2585');

-- --------------------------------------------------------

--
-- Структура таблицы `teacher_bolatov`
--

CREATE TABLE `teacher_bolatov` (
  `user_id` bigint(20) NOT NULL,
  `otdel_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `teacher_bolatov`
--

INSERT INTO `teacher_bolatov` (`user_id`, `otdel_id`) VALUES
(1, 1),
(2, 1),
(3, 2),
(5, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `user_bolatov`
--

CREATE TABLE `user_bolatov` (
  `user_id` bigint(20) NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronomic` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender_id` tinyint(4) NOT NULL,
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_bolatov`
--

INSERT INTO `user_bolatov` (`user_id`, `lastname`, `firstname`, `patronomic`, `login`, `pass`, `gender_id`, `birthday`) VALUES
(1, 'Иванов', 'Иван', 'Иванович', '', '', 1, '1975-05-25'),
(2, 'Петров', 'Петр', 'Петрович', '', '', 1, '1980-08-06'),
(3, 'Козлов', 'Иван', 'Афанасьевич', '', '', 1, '1985-04-15'),
(4, 'Чурюмова', 'Кристина', 'Федоровна', '', '', 2, '1990-05-20'),
(5, 'Васильев', 'Феофан', 'Александрович', '', '', 1, '1991-01-13'),
(6, 'Федорова', 'Милана', 'Андреевна', '', '', 2, '1998-04-15'),
(7, 'Нуржанов', 'Нуржан', 'Нуржанович', '', '', 1, '1999-09-18'),
(8, 'Канатов', 'Канат', 'Канатович', '', '', 1, '1999-07-07'),
(9, 'Золотая', 'Ирина', 'Кайратовна', '', '', 2, '2000-09-14'),
(10, 'Серая', 'Арина', 'Радионовна', '', '', 2, '2001-10-29'),
(11, 'Петухов', 'Виталий', 'Фадеевич', '', '', 1, '2000-02-20'),
(12, 'Котова', 'Аурелия', 'Ароновна', '', '', 2, '2002-12-19');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `classroom_bolatov`
--
ALTER TABLE `classroom_bolatov`
  ADD PRIMARY KEY (`classroom_id`),
  ADD KEY `classroom_id` (`classroom_id`);

--
-- Индексы таблицы `course_bolatov`
--
ALTER TABLE `course_bolatov`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `course_id_2` (`course_id`),
  ADD KEY `special_id` (`special_id`);

--
-- Индексы таблицы `day_bolatov`
--
ALTER TABLE `day_bolatov`
  ADD PRIMARY KEY (`day_id`),
  ADD KEY `day_id` (`day_id`);

--
-- Индексы таблицы `gender_bolatov`
--
ALTER TABLE `gender_bolatov`
  ADD PRIMARY KEY (`gender_id`),
  ADD KEY `gender_id` (`gender_id`);

--
-- Индексы таблицы `graduate_bolatov`
--
ALTER TABLE `graduate_bolatov`
  ADD PRIMARY KEY (`graduate_id`),
  ADD KEY `graduate_id` (`graduate_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `gruppa_id` (`gruppa_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `graduate_time_bolatov`
--
ALTER TABLE `graduate_time_bolatov`
  ADD PRIMARY KEY (`graduate_time_id`),
  ADD KEY `graduate_id` (`graduate_id`),
  ADD KEY `classroom_id` (`classroom_id`),
  ADD KEY `day_id` (`day_id`),
  ADD KEY `lesson_num_id` (`lesson_num_id`);

--
-- Индексы таблицы `gruppa_bolatov`
--
ALTER TABLE `gruppa_bolatov`
  ADD PRIMARY KEY (`gruppa_id`),
  ADD KEY `special_id` (`special_id`);

--
-- Индексы таблицы `lesson_num_bolatov`
--
ALTER TABLE `lesson_num_bolatov`
  ADD PRIMARY KEY (`lesson_num_id`),
  ADD KEY `lesson_num_id` (`lesson_num_id`);

--
-- Индексы таблицы `otdel_bolatov`
--
ALTER TABLE `otdel_bolatov`
  ADD PRIMARY KEY (`otdel_id`),
  ADD KEY `otdel_id` (`otdel_id`);

--
-- Индексы таблицы `special_bolatov`
--
ALTER TABLE `special_bolatov`
  ADD PRIMARY KEY (`special_id`),
  ADD KEY `special_id` (`special_id`),
  ADD KEY `otdel_id` (`otdel_id`);

--
-- Индексы таблицы `student_bolatov`
--
ALTER TABLE `student_bolatov`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `gruppa_id` (`gruppa_id`);

--
-- Индексы таблицы `teacher_bolatov`
--
ALTER TABLE `teacher_bolatov`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `otdel_id` (`otdel_id`);

--
-- Индексы таблицы `user_bolatov`
--
ALTER TABLE `user_bolatov`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `gender_id` (`gender_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `classroom_bolatov`
--
ALTER TABLE `classroom_bolatov`
  MODIFY `classroom_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `course_bolatov`
--
ALTER TABLE `course_bolatov`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `day_bolatov`
--
ALTER TABLE `day_bolatov`
  MODIFY `day_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `gender_bolatov`
--
ALTER TABLE `gender_bolatov`
  MODIFY `gender_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `graduate_bolatov`
--
ALTER TABLE `graduate_bolatov`
  MODIFY `graduate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `graduate_time_bolatov`
--
ALTER TABLE `graduate_time_bolatov`
  MODIFY `graduate_time_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `gruppa_bolatov`
--
ALTER TABLE `gruppa_bolatov`
  MODIFY `gruppa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `lesson_num_bolatov`
--
ALTER TABLE `lesson_num_bolatov`
  MODIFY `lesson_num_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `otdel_bolatov`
--
ALTER TABLE `otdel_bolatov`
  MODIFY `otdel_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `special_bolatov`
--
ALTER TABLE `special_bolatov`
  MODIFY `special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `user_bolatov`
--
ALTER TABLE `user_bolatov`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `course_bolatov`
--
ALTER TABLE `course_bolatov`
  ADD CONSTRAINT `course_bolatov_ibfk_1` FOREIGN KEY (`special_id`) REFERENCES `special_bolatov` (`special_id`);

--
-- Ограничения внешнего ключа таблицы `graduate_bolatov`
--
ALTER TABLE `graduate_bolatov`
  ADD CONSTRAINT `graduate_bolatov_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course_bolatov` (`course_id`),
  ADD CONSTRAINT `graduate_bolatov_ibfk_2` FOREIGN KEY (`gruppa_id`) REFERENCES `gruppa_bolatov` (`gruppa_id`),
  ADD CONSTRAINT `graduate_bolatov_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `teacher_bolatov` (`user_id`);

--
-- Ограничения внешнего ключа таблицы `graduate_time_bolatov`
--
ALTER TABLE `graduate_time_bolatov`
  ADD CONSTRAINT `graduate_time_bolatov_ibfk_1` FOREIGN KEY (`graduate_id`) REFERENCES `graduate_bolatov` (`graduate_id`),
  ADD CONSTRAINT `graduate_time_bolatov_ibfk_2` FOREIGN KEY (`classroom_id`) REFERENCES `classroom_bolatov` (`classroom_id`),
  ADD CONSTRAINT `graduate_time_bolatov_ibfk_3` FOREIGN KEY (`day_id`) REFERENCES `day_bolatov` (`day_id`),
  ADD CONSTRAINT `graduate_time_bolatov_ibfk_4` FOREIGN KEY (`lesson_num_id`) REFERENCES `lesson_num_bolatov` (`lesson_num_id`);

--
-- Ограничения внешнего ключа таблицы `gruppa_bolatov`
--
ALTER TABLE `gruppa_bolatov`
  ADD CONSTRAINT `gruppa_bolatov_ibfk_1` FOREIGN KEY (`special_id`) REFERENCES `special_bolatov` (`special_id`);

--
-- Ограничения внешнего ключа таблицы `special_bolatov`
--
ALTER TABLE `special_bolatov`
  ADD CONSTRAINT `special_bolatov_ibfk_1` FOREIGN KEY (`otdel_id`) REFERENCES `otdel_bolatov` (`otdel_id`);

--
-- Ограничения внешнего ключа таблицы `student_bolatov`
--
ALTER TABLE `student_bolatov`
  ADD CONSTRAINT `student_bolatov_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_bolatov` (`user_id`),
  ADD CONSTRAINT `student_bolatov_ibfk_2` FOREIGN KEY (`gruppa_id`) REFERENCES `gruppa_bolatov` (`gruppa_id`);

--
-- Ограничения внешнего ключа таблицы `teacher_bolatov`
--
ALTER TABLE `teacher_bolatov`
  ADD CONSTRAINT `teacher_bolatov_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_bolatov` (`user_id`),
  ADD CONSTRAINT `teacher_bolatov_ibfk_2` FOREIGN KEY (`otdel_id`) REFERENCES `otdel_bolatov` (`otdel_id`);

--
-- Ограничения внешнего ключа таблицы `user_bolatov`
--
ALTER TABLE `user_bolatov`
  ADD CONSTRAINT `user_bolatov_ibfk_1` FOREIGN KEY (`gender_id`) REFERENCES `gender_bolatov` (`gender_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
