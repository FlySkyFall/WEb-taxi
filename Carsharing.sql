-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Июл 09 2024 г., 20:54
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Carsharing`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Admin`
--

CREATE TABLE `Admin` (
  `AdminUserID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `AdminMessage` varchar(255) DEFAULT NULL,
  `UserMessage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Admin`
--

INSERT INTO `Admin` (`AdminUserID`, `UserID`, `AdminMessage`, `UserMessage`) VALUES
(1, 2, 'Чем могу помочь?', 'Здравствуйте, забыл в машине A123BC ключи от дома');

-- --------------------------------------------------------

--
-- Структура таблицы `Cars`
--

CREATE TABLE `Cars` (
  `CarID` int NOT NULL,
  `Mark` varchar(50) DEFAULT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `GosNumber` varchar(20) DEFAULT NULL,
  `Class` varchar(50) DEFAULT NULL,
  `Info` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Cars`
--

INSERT INTO `Cars` (`CarID`, `Mark`, `Model`, `GosNumber`, `Class`, `Info`) VALUES
(1, 'Lada', 'Granta', 'A123BC', 'economy', 1),
(2, 'Toyota', 'Camry', 'B456DE', 'sedan', 2),
(3, 'BMW', 'X5', 'C789FG', 'SUV', 3),
(4, 'Audi', 'A6', 'D012HI', 'sedan', 4),
(5, 'Mercedes-Benz', 'E-Class', 'E345IJ', 'luxury', 5),
(6, 'Volkswagen', 'Polo', 'F678KL', 'hatchback', 6),
(7, 'Ford', 'Focus', 'G901MN', 'hatchback', 7),
(8, 'Hyundai', 'Solaris', 'H234OP', 'sedan', 8),
(9, 'Kia', 'Rio', 'I567QR', 'sedan', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `Carsharing`
--

CREATE TABLE `Carsharing` (
  `CarsharingID` int NOT NULL,
  `User` int DEFAULT NULL,
  `Car` int DEFAULT NULL,
  `StartPoint` varchar(100) DEFAULT NULL,
  `EndPoint` varchar(100) DEFAULT NULL,
  `OrderTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Carsharing`
--

INSERT INTO `Carsharing` (`CarsharingID`, `User`, `Car`, `StartPoint`, `EndPoint`, `OrderTime`) VALUES
(1, 1, 3, 'Москва', 'Тула', '2024-07-01 08:00:00'),
(2, 2, 4, 'Санкт-Петербург', 'Псков', '2024-07-02 10:00:00'),
(3, 3, 5, 'Екатеринбург', 'Пермь', '2024-07-03 12:00:00'),
(4, 4, 6, 'Новосибирск', 'Омск', '2024-07-04 11:00:00'),
(5, 5, 7, 'Казань', 'Нижний Новгород', '2024-07-05 09:00:00'),
(6, 6, 8, 'Сочи', 'Ростов-на-Дону', '2024-07-06 13:00:00'),
(7, 7, 9, 'Владивосток', 'Хабаровск', '2024-07-07 15:00:00'),
(8, 8, 1, 'Уфа', 'Челябинск', '2024-07-08 14:00:00'),
(9, 9, 2, 'Мурманск', 'Архангельск', '2024-07-09 12:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `CarsInfo`
--

CREATE TABLE `CarsInfo` (
  `InfoID` int NOT NULL,
  `Photo` blob,
  `Year` int DEFAULT NULL,
  `Mileage` int DEFAULT NULL,
  `EnginePower` int DEFAULT NULL,
  `Transmission` varchar(50) DEFAULT NULL,
  `Drivetrain` varchar(50) DEFAULT NULL,
  `PriceDay` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `CarsInfo`
--

INSERT INTO `CarsInfo` (`InfoID`, `Photo`, `Year`, `Mileage`, `EnginePower`, `Transmission`, `Drivetrain`, `PriceDay`) VALUES
(1, NULL, 2019, 25000, 160, 'Automatic', 'AWD', '110.00'),
(2, NULL, 2020, 27000, 190, 'Manual', 'RWD', '125.00'),
(3, NULL, 2018, 20000, 150, 'Automatic', 'FWD', '95.00'),
(4, NULL, 2021, 32000, 170, 'Automatic', 'AWD', '115.00'),
(5, NULL, 2017, 30000, 140, 'Manual', 'RWD', '100.00'),
(6, NULL, 2022, 12000, 220, 'Automatic', 'AWD', '140.00'),
(7, NULL, 2016, 45000, 130, 'Semi-Automatic', 'FWD', '90.00'),
(8, NULL, 2020, 17000, 180, 'Manual', 'RWD', '120.00'),
(9, NULL, 2019, 29000, 165, 'Automatic', 'AWD', '105.00');

-- --------------------------------------------------------

--
-- Структура таблицы `Driver`
--

CREATE TABLE `Driver` (
  `DriverID` int NOT NULL,
  `Document` varchar(100) DEFAULT NULL,
  `Rating` decimal(3,2) DEFAULT NULL,
  `CarID` int DEFAULT NULL,
  `userID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Driver`
--

INSERT INTO `Driver` (`DriverID`, `Document`, `Rating`, `CarID`, `userID`) VALUES
(1, 'DL456789', '4.70', 1, 10),
(2, 'DL789012', '4.20', 2, 11),
(3, 'DL890123', '4.90', 3, 12),
(4, 'DL901234', '4.50', 4, 13),
(5, 'DL012345', '4.80', 5, 14),
(6, 'DL123456', '4.30', 6, 15),
(7, 'DL234567', '4.60', 7, 16),
(8, 'DL345678', '4.40', 8, 17),
(9, 'DL456789', '4.70', 9, 18);

-- --------------------------------------------------------

--
-- Структура таблицы `Orders`
--

CREATE TABLE `Orders` (
  `OrderID` int NOT NULL,
  `Driver` int DEFAULT NULL,
  `User` int DEFAULT NULL,
  `StartPoint` varchar(100) DEFAULT NULL,
  `EndPoint` varchar(100) DEFAULT NULL,
  `StartTime` datetime DEFAULT NULL,
  `EndTime` datetime DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Orders`
--

INSERT INTO `Orders` (`OrderID`, `Driver`, `User`, `StartPoint`, `EndPoint`, `StartTime`, `EndTime`, `Price`) VALUES
(1, 1, 2, 'Москва', 'Санкт-Петербург', '2024-07-01 08:00:00', '2024-07-01 14:00:00', '200.00'),
(2, 3, 4, 'Екатеринбург', 'Новосибирск', '2024-07-02 10:00:00', '2024-07-02 20:00:00', '300.00'),
(3, 5, 6, 'Казань', 'Сочи', '2024-07-03 12:00:00', '2024-07-03 18:00:00', '180.00'),
(4, 7, 8, 'Владивосток', 'Хабаровск', '2024-07-04 11:00:00', '2024-07-04 15:00:00', '150.00'),
(5, 9, 1, 'Уфа', 'Челябинск', '2024-07-05 09:00:00', '2024-07-05 13:00:00', '120.00'),
(6, 2, 3, 'Ростов-на-Дону', 'Самара', '2024-07-06 13:00:00', '2024-07-06 19:00:00', '220.00'),
(7, 4, 5, 'Пермь', 'Омск', '2024-07-07 15:00:00', '2024-07-07 21:00:00', '250.00'),
(8, 6, 7, 'Воронеж', 'Краснодар', '2024-07-08 14:00:00', '2024-07-08 18:00:00', '190.00'),
(9, 8, 9, 'Тюмень', 'Иркутск', '2024-07-09 12:00:00', '2024-07-09 16:00:00', '280.00');

-- --------------------------------------------------------

--
-- Структура таблицы `PromoCode`
--

CREATE TABLE `PromoCode` (
  `PromoCodeID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `PromoCodeValue` varchar(255) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `PromoCode`
--

INSERT INTO `PromoCode` (`PromoCodeID`, `UserID`, `PromoCodeValue`, `Type`) VALUES
(1, 2, 'SUMMER2024', '5%'),
(2, 3, 'FALLSALE22', '10%'),
(3, 4, 'WINTERSALE', '15%'),
(4, 5, 'SPRING2025', '20%');

-- --------------------------------------------------------

--
-- Структура таблицы `User`
--

CREATE TABLE `User` (
  `UserID` int NOT NULL,
  `FIO` varchar(100) DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Nickname` varchar(50) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Rating` int DEFAULT NULL,
  `PromoCodeID` int DEFAULT NULL,
  `AdminID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `User`
--

INSERT INTO `User` (`UserID`, `FIO`, `PhoneNumber`, `Email`, `Nickname`, `Password`, `Rating`, `PromoCodeID`, `AdminID`) VALUES
(1, 'Иванов Иван Иванович', '1234567890', 'ivanov@example.com', 'ivan123', 'pass123', NULL, NULL, NULL),
(2, 'Петров Пётр Петрович', '9876543210', 'petrov@example.com', 'petr456', 'pass456', NULL, NULL, NULL),
(3, 'Сидоров Александр Петрович', '1112223330', 'sidorov@example.com', 'sidor123', 'pass789', NULL, NULL, NULL),
(4, 'Козлов Игорь Владимирович', '9998887770', 'kozlov@example.com', 'kozlov456', 'pass999', NULL, NULL, NULL),
(5, 'Смирнова Ольга Николаевна', '4445556660', 'smirnova@example.com', 'olga777', 'passolga', NULL, NULL, NULL),
(6, 'Михайлова Елена Дмитриевна', '6667778880', 'mikhailova@example.com', 'helen777', 'pashelen', NULL, NULL, NULL),
(7, 'Кузнецов Владимир Сергеевич', '8889990000', 'kuznecov@example.com', 'kuznya777', 'passkuznya', NULL, NULL, NULL),
(8, 'Павлова Наталья Александровна', '2223334440', 'pavlova@example.com', 'natali777', 'passnatali', NULL, NULL, NULL),
(9, 'Николаева Юлия Игоревна', '5554443330', 'nikolaeva@example.com', 'julia888', 'passjulia', NULL, NULL, NULL),
(10, 'Попов Андрей Иванович', '9876512345', 'popov@example.com', 'andrew123', 'pass123', NULL, NULL, NULL),
(11, 'Соколов Иван Петрович', '9876512346', 'sokolov@example.com', 'ivan456', 'pass456', NULL, NULL, NULL),
(12, 'Лебедев Сергей Александрович', '9876512347', 'lebedev@example.com', 'sergey789', 'pass789', NULL, NULL, NULL),
(13, 'Петров Дмитрий Сергеевич', '9876512348', 'petrov@example.com', 'dmitriy456', 'pass456', NULL, NULL, NULL),
(14, 'Смирнов Владимир Дмитриевич', '9876512349', 'smirnov@example.com', 'vladimir123', 'pass123', NULL, NULL, NULL),
(15, 'Егоров Алексей Владимирович', '9876512350', 'egorov@example.com', 'alex789', 'pass789', NULL, NULL, NULL),
(16, 'Кузнецов Денис Андреевич', '9876512351', 'kuznetsov@example.com', 'denis456', 'pass456', NULL, NULL, NULL),
(17, 'Никитин Павел Сергеевич', '9876512352', 'nikitin@example.com', 'pavel789', 'pass789', NULL, NULL, NULL),
(18, 'Захаров Арtem Владимирович', '9876512353', 'zaharov@example.com', 'artem123', 'pass123', NULL, NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`AdminUserID`);

--
-- Индексы таблицы `Cars`
--
ALTER TABLE `Cars`
  ADD PRIMARY KEY (`CarID`),
  ADD KEY `Info` (`Info`);

--
-- Индексы таблицы `Carsharing`
--
ALTER TABLE `Carsharing`
  ADD PRIMARY KEY (`CarsharingID`),
  ADD KEY `User` (`User`),
  ADD KEY `Car` (`Car`);

--
-- Индексы таблицы `CarsInfo`
--
ALTER TABLE `CarsInfo`
  ADD PRIMARY KEY (`InfoID`);

--
-- Индексы таблицы `Driver`
--
ALTER TABLE `Driver`
  ADD PRIMARY KEY (`DriverID`),
  ADD KEY `Car` (`CarID`),
  ADD KEY `fk_user` (`userID`);

--
-- Индексы таблицы `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `Driver` (`Driver`),
  ADD KEY `User` (`User`);

--
-- Индексы таблицы `PromoCode`
--
ALTER TABLE `PromoCode`
  ADD PRIMARY KEY (`PromoCodeID`),
  ADD KEY `UserID` (`UserID`);

--
-- Индексы таблицы `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `fk_promo_code` (`PromoCodeID`),
  ADD KEY `fk_admin` (`AdminID`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Cars`
--
ALTER TABLE `Cars`
  ADD CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`Info`) REFERENCES `CarsInfo` (`InfoID`);

--
-- Ограничения внешнего ключа таблицы `Carsharing`
--
ALTER TABLE `Carsharing`
  ADD CONSTRAINT `carsharing_ibfk_1` FOREIGN KEY (`User`) REFERENCES `User` (`UserID`),
  ADD CONSTRAINT `carsharing_ibfk_2` FOREIGN KEY (`Car`) REFERENCES `Cars` (`CarID`);

--
-- Ограничения внешнего ключа таблицы `Driver`
--
ALTER TABLE `Driver`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`CarID`) REFERENCES `Cars` (`CarID`),
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`userID`) REFERENCES `User` (`UserID`);

--
-- Ограничения внешнего ключа таблицы `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Driver`) REFERENCES `Driver` (`DriverID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`User`) REFERENCES `User` (`UserID`);

--
-- Ограничения внешнего ключа таблицы `PromoCode`
--
ALTER TABLE `PromoCode`
  ADD CONSTRAINT `promocode_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`);

--
-- Ограничения внешнего ключа таблицы `User`
--
ALTER TABLE `User`
  ADD CONSTRAINT `fk_admin` FOREIGN KEY (`AdminID`) REFERENCES `Admin` (`AdminUserID`),
  ADD CONSTRAINT `fk_promo_code` FOREIGN KEY (`PromoCodeID`) REFERENCES `PromoCode` (`PromoCodeID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
