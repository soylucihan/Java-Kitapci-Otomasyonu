-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 17 Ara 2018, 23:56:37
-- Sunucu sürümü: 10.1.36-MariaDB
-- PHP Sürümü: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `stok_takip`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici_bilgileri`
--

CREATE TABLE `kullanici_bilgileri` (
  `id` int(11) NOT NULL,
  `kullanici_adi` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_sifresi` varchar(15) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici_bilgileri`
--

INSERT INTO `kullanici_bilgileri` (`id`, `kullanici_adi`, `kullanici_sifresi`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `main`
--

CREATE TABLE `main` (
  `id` int(11) NOT NULL,
  `kullanici_bilgileri` int(11) DEFAULT NULL,
  `ürün_bilgileri` int(11) DEFAULT NULL,
  `satis_bilgileri` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `satislar`
--

CREATE TABLE `satislar` (
  `id` int(11) NOT NULL,
  `satilan_ürün` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `satis_miktari` int(11) NOT NULL,
  `satis_tipi` varchar(15) COLLATE utf8_turkish_ci NOT NULL,
  `satis_tarihi` varchar(15) COLLATE utf8_turkish_ci NOT NULL,
  `satis_fiyati` int(11) DEFAULT NULL,
  `ürün_kari` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `satislar`
--

INSERT INTO `satislar` (`id`, `satilan_ürün`, `satis_miktari`, `satis_tipi`, `satis_tarihi`, `satis_fiyati`, `ürün_kari`) VALUES
(3, 'bilgisayar', 1, 'Nakit', '10/08/2016', NULL, NULL),
(4, 'bilgisayar', 45, 'Nakit', '10/08/2016', NULL, NULL),
(5, 'tablet', 22, 'Nakit', '11/08/2016', NULL, NULL),
(6, 'bilgisayar', 5, 'Nakit', '11/08/2016', NULL, NULL),
(7, 'bilgisayar', 1, 'Nakit', '11/08/2016', NULL, NULL),
(8, 'bilgisayar', 2, 'Kredi Kart?', '11/08/2016', NULL, NULL),
(10, 'bilgisayar', 3, 'Nakit', '12/08/2016', NULL, NULL),
(11, 'bilgisayar', 2, 'Nakit', '12/08/2016', NULL, NULL),
(12, 'pil', 2, 'Nakit', '12/08/2016', NULL, NULL),
(13, 'tablet', 11, 'Nakit', '12/08/2016', NULL, NULL),
(14, 'pil', 1, 'Nakit', '12/08/2016', NULL, NULL),
(15, 'gözlük', 1, 'Kredi Kart?', '12/08/2016', NULL, NULL),
(16, 'pil', 1, 'Nakit', '12/08/2016', NULL, NULL),
(17, 'tablet', 1, 'Nakit', '12/08/2016', NULL, NULL),
(18, 'tablet', 1, 'Kredi Kart?', '12/08/2016', NULL, NULL),
(19, 'bilgisayar', 3, 'Nakit', '15/12/2018', 200, 300),
(20, 'tablet', 5, 'Kredi Kart?', '15/12/2018', 100, 450),
(21, 'Çal?ku?u', 4, 'Nakit', '16/12/2018', 89, 100),
(22, 'Çanlar Kimin için Çal?yor', 4, 'Nakit', '16/12/2018', 140, 300),
(23, 'Çal?ku?u', 2, 'Nakit', '16/12/2018', 93, 58),
(24, 'asdasdasd dasasdasasddd', 2, 'Nakit', '16/12/2018', 48, 52),
(25, 'Çanlar Kimin için Çaliyor', 1, 'Nakit', '16/12/2018', 32, -33),
(26, 'Çanlar Kime çaliyor', 2, 'Nakit', '16/12/2018', 322, 604),
(27, 'Çanlar Kime çaliyor', 5, 'Kredi Kart?', '16/12/2018', 322, 1510);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ürünler`
--

CREATE TABLE `ürünler` (
  `id` int(11) NOT NULL,
  `Kitap_Adi` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `alis_fiyati` int(11) NOT NULL,
  `satis_fiyati` int(11) NOT NULL,
  `Kitap_Turu` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `stok_miktari` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ürünler`
--

INSERT INTO `ürünler` (`id`, `Kitap_Adi`, `alis_fiyati`, `satis_fiyati`, `Kitap_Turu`, `stok_miktari`) VALUES
(10, 'Suç Ve Ceza', 25, 85, 'Roman', 43),
(14, 'Çal?ku?u', 64, 135, 'Hikaye', 78),
(15, 'Çanlar Kimin için Çal?yor', 65, 230, 'Roman', 55),
(16, 'Çanlar Kimin için Çaliyor', 65, 32, 'Roman', 43),
(17, 'Çanlar Kime çaliyor', 20, 322, 'Roman', 437),
(18, 'asd', 22, 48, 'ererwer', 33),
(19, 'aaaaaaaaaa', 22, 48, 'zzzz', 123),
(20, 'asdasdasd dasasdasasddd', 22, 48, 'qweqe', 41);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kullanici_bilgileri`
--
ALTER TABLE `kullanici_bilgileri`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kullanici_adi` (`kullanici_adi`),
  ADD UNIQUE KEY `kullanici_sifresi` (`kullanici_sifresi`);

--
-- Tablo için indeksler `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kullanici` (`kullanici_bilgileri`),
  ADD KEY `fk_ürün` (`ürün_bilgileri`),
  ADD KEY `fk_satis` (`satis_bilgileri`);

--
-- Tablo için indeksler `satislar`
--
ALTER TABLE `satislar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ürünler`
--
ALTER TABLE `ürünler`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ürün_adi` (`Kitap_Adi`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kullanici_bilgileri`
--
ALTER TABLE `kullanici_bilgileri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `main`
--
ALTER TABLE `main`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `satislar`
--
ALTER TABLE `satislar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Tablo için AUTO_INCREMENT değeri `ürünler`
--
ALTER TABLE `ürünler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `main`
--
ALTER TABLE `main`
  ADD CONSTRAINT `fk_kullanici` FOREIGN KEY (`kullanici_bilgileri`) REFERENCES `kullanici_bilgileri` (`id`),
  ADD CONSTRAINT `fk_satis` FOREIGN KEY (`satis_bilgileri`) REFERENCES `satislar` (`id`),
  ADD CONSTRAINT `fk_ürün` FOREIGN KEY (`ürün_bilgileri`) REFERENCES `ürünler` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
