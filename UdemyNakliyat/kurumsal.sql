-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 15 Oca 2023, 16:23:10
-- Sunucu sürümü: 5.7.36
-- PHP Sürümü: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kurumsal`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

DROP TABLE IF EXISTS `ayarlar`;
CREATE TABLE IF NOT EXISTS `ayarlar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `metatitle` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `metadesc` longtext COLLATE utf8_turkish_ci NOT NULL,
  `metakey` longtext COLLATE utf8_turkish_ci NOT NULL,
  `metaauthor` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `metaowner` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `metacopy` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `logoyazisi` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `twit` varchar(70) COLLATE utf8_turkish_ci NOT NULL,
  `face` varchar(70) COLLATE utf8_turkish_ci NOT NULL,
  `ints` varchar(70) COLLATE utf8_turkish_ci NOT NULL,
  `telefonno` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `adres` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `mailadres` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `slogan` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `referansbaslik` longtext COLLATE utf8_turkish_ci NOT NULL,
  `galeribaslik` longtext COLLATE utf8_turkish_ci NOT NULL,
  `yorumbaslik` longtext COLLATE utf8_turkish_ci NOT NULL,
  `iletisimbaslik` longtext COLLATE utf8_turkish_ci NOT NULL,
  `hizmetlerbaslik` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `mesajtercih` int(11) NOT NULL DEFAULT '1',
  `haritabilgi` text COLLATE utf8_turkish_ci NOT NULL,
  `footer` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `title`, `metatitle`, `metadesc`, `metakey`, `metaauthor`, `metaowner`, `metacopy`, `logoyazisi`, `twit`, `face`, `ints`, `telefonno`, `adres`, `mailadres`, `slogan`, `referansbaslik`, `galeribaslik`, `yorumbaslik`, `iletisimbaslik`, `hizmetlerbaslik`, `mesajtercih`, `haritabilgi`, `footer`) VALUES
(1, 'UDEMY NAKLİYAT', 'UDEMY NAKLİYAT', 'UDEMY NAKLİYAT', 'UDEMY NAKLİYAT', 'UDEMY NAKLİYAT-OLCAY KALYONCUOĞLU', 'LES', 'teknolojivadisi', 'UDEMY NAKLİYAT', 'twitter', '', 'teknolojivadisi', '+90 555 44 44 44', 'ew', 'info@udemynakliyat.com', 'slogan', 'referans sayfa başlık', 'galeri sayfasının başlıgı burada olacak', 'teknolojivadisi', 'iletişim sayfasının başlıgı burada olacak', 'hizmetler başlık satırı  olacak', 3, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3183.0867515766513!2d37.350074614694435!3d37.07924065964318!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1531e1656bdd0f11%3A0x3e2faa63f6f932ca!2sFatih+Mahallesi%2C+22018.+Sk.+No%3A8%2C+27060+Sammezreas%C4%B1+K%C3%B6y%C3%BC%2F%C5%9Eehitkamil%2FGaziantep!5e0!3m2!1str!2str!4v1553160054645', '2019 © Copyright UDEMY NAKLİYATi. All rights reserved.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galeri`
--

DROP TABLE IF EXISTS `galeri`;
CREATE TABLE IF NOT EXISTS `galeri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resimyol` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `galeri`
--

INSERT INTO `galeri` (`id`, `resimyol`) VALUES
(10, 'img/filo/1.jpg'),
(11, 'img/filo/2.jpg'),
(12, 'img/filo/3.jpg'),
(13, 'img/filo/4.jpg'),
(14, 'img/filo/5.jpg'),
(15, 'img/filo/6.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gelenmail`
--

DROP TABLE IF EXISTS `gelenmail`;
CREATE TABLE IF NOT EXISTS `gelenmail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `mailadres` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `konu` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `mesaj` text COLLATE utf8_turkish_ci NOT NULL,
  `zaman` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `gelenmail`
--

INSERT INTO `gelenmail` (`id`, `ad`, `mailadres`, `konu`, `mesaj`, `zaman`, `durum`) VALUES
(20, 'aslı', 'aslı@gmail.com', 'mesaj', 'test', '21.03.2019/08:39', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gelenmailayar`
--

DROP TABLE IF EXISTS `gelenmailayar`;
CREATE TABLE IF NOT EXISTS `gelenmailayar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `host` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `mailadres` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `port` int(11) NOT NULL,
  `aliciadres` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `gelenmailayar`
--

INSERT INTO `gelenmailayar` (`id`, `host`, `mailadres`, `sifre`, `port`, `aliciadres`) VALUES
(1, 'host', 'madres', 'hosif', 23456, 'info@teknolojivadisi.pro ');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

DROP TABLE IF EXISTS `hakkimizda`;
CREATE TABLE IF NOT EXISTS `hakkimizda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `resim` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`id`, `baslik`, `icerik`, `resim`) VALUES
(1, 'hakkımızda baslık satırı', 'hakkımızda sayfası içerik kısmıdir', 'img/logo (2).jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hizmetler`
--

DROP TABLE IF EXISTS `hizmetler`;
CREATE TABLE IF NOT EXISTS `hizmetler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `icerik` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hizmetler`
--

INSERT INTO `hizmetler` (`id`, `baslik`, `icerik`) VALUES
(4, 'php odev', 'icerik yeni gelecek olan vsaire\r\nas\r\ndas\r\nd\r\nasd\r\nas\r\nd\r\nas\r\nd\r\nasd\r\nas\r\nd\r\na'),
(5, 'sitedeneme', 'içerik deneme');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `intro`
--

DROP TABLE IF EXISTS `intro`;
CREATE TABLE IF NOT EXISTS `intro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resimyol` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `intro`
--

INSERT INTO `intro` (`id`, `resimyol`) VALUES
(27, 'img/carousel/1.jpg'),
(28, 'img/carousel/2.jpg'),
(29, 'img/carousel/3.jpg'),
(30, 'img/carousel/4.jpg'),
(31, 'img/carousel/5.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `referanslar`
--

DROP TABLE IF EXISTS `referanslar`;
CREATE TABLE IF NOT EXISTS `referanslar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resimyol` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `referanslar`
--

INSERT INTO `referanslar` (`id`, `resimyol`) VALUES
(1, 'img/referans/ref1.png'),
(2, 'img/referans/ref2.png'),
(3, 'img/referans/ref3.png'),
(4, 'img/referans/ref4.png'),
(5, 'img/referans/ref5.png'),
(6, 'img/referans/ref6.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yonetim`
--

DROP TABLE IF EXISTS `yonetim`;
CREATE TABLE IF NOT EXISTS `yonetim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kulad` varchar(60) COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(60) COLLATE utf8_turkish_ci NOT NULL,
  `aktif` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yonetim`
--

INSERT INTO `yonetim` (`id`, `kulad`, `sifre`, `aktif`) VALUES
(1, 'olcay', '44209a6a592dea91bcf7d4dd53e47a5a', 0),
(4, 'kerem', '96de4eceb9a0c2b9b52c0b618819821b', 0),
(5, 'deniz', '0af2e8b1e4a91c959f3f8ed885a39f1c', 0),
(6, 'utku', '123', 0),
(7, 'abc', '123', 1),
(8, 'admin', '96de4eceb9a0c2b9b52c0b618819821b', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

DROP TABLE IF EXISTS `yorumlar`;
CREATE TABLE IF NOT EXISTS `yorumlar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `isim` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`id`, `icerik`, `isim`) VALUES
(1, 'bu bir yorumdur', 'pınar'),
(2, 'bu da bir yorumdur', 'kerem'),
(4, 'Bence bu da yorum', 'deniz ');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
