-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 27, 2021 lúc 07:24 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlydathang`
--
CREATE DATABASE IF NOT EXISTS `quanlydathang` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `quanlydathang`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`) VALUES
(2, 1, 1, 23000000),
(2, 5, 1, 23000000),
(2, 6, 1, 10990000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `MaSP` int(11) NOT NULL,
  `MaND` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `SoSao` int(11) NOT NULL,
  `BinhLuan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NgayLap` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhgia`
--

INSERT INTO `danhgia` (`MaSP`, `MaND`, `SoSao`, `BinhLuan`, `NgayLap`) VALUES
(33, '2', 5, 'Úi , anh Jack 5 trịu đây òi', '2021-11-17 13:05:40'),
(1, '2', 5, 'con này chơi game đỉnh đỉnh', '2021-11-17 13:05:51'),
(21, '2', 5, 'Vua của những chiếc đt đây òiii', '2021-11-17 13:06:08'),
(11, '2', 1, 'Người iu tối ngày đòi mua , nhưng tôi ko có tiền', '2021-11-17 13:06:24'),
(31, '6', 5, 'sugoi sugoi oniichann', '2021-11-27 18:08:54'),
(21, '6', 5, 'con này chọi có mà vỡ đầu', '2021-11-27 18:09:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `NgayLap` datetime NOT NULL,
  `NguoiNhan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PhuongThucTT` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `TongTien` float NOT NULL,
  `TrangThai` varchar(70) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaND`, `NgayLap`, `NguoiNhan`, `SDT`, `DiaChi`, `PhuongThucTT`, `TongTien`, `TrangThai`) VALUES
(2, 2, '2021-11-20 06:44:08', 'Le Hai Long', '0123456789', 'kế bên nhà thằng Long Lớn', 'Trực tiếp khi nhận h', 55990000, '1'),
(3, 2, '2021-11-20 06:44:11', 'Le Hai Long', '0123456789', 'kế bên nhà thằng Long Lớn', 'Trực tiếp khi nhận h', 55990000, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LoaiKM` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GiaTriKM` float NOT NULL,
  `NgayBD` datetime NOT NULL,
  `NgayKT` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `LoaiKM`, `GiaTriKM`, `NgayBD`, `NgayKT`) VALUES
(1, 'Không khuyến mãi', 'Nothing', 0, '2021-11-14 00:00:00', '2021-11-30 00:00:00'),
(2, 'Giảm giá', 'GiamGia', 500000, '2021-11-14 00:00:00', '2021-11-30 00:00:00'),
(3, 'Giá rẻ online', 'GiaReOnline', 650000, '2021-11-14 00:00:00', '2021-11-30 00:00:00'),
(4, 'Trả góp', 'TraGop', 0, '2021-11-14 00:00:00', '2021-11-30 00:00:00'),
(5, 'Mới ra mắt', 'MoiRaMat', 0, '2021-11-14 00:00:00', '2021-11-30 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLSP` int(11) NOT NULL,
  `TenLSP` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Mota` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLSP`, `TenLSP`, `HinhAnh`, `Mota`) VALUES
(1, 'Apple', 'Apple.jpg', 'Các sản phẩm của Apple'),
(2, 'Techno', 'Techno.png', 'Các sản phẩm của Techno'),
(3, 'HTC', 'HTC.jpg', 'Các sản phẩm đến từ HTC'),
(4, 'Itel', 'Itel.jpg', 'Các sản phẩm của Itel'),
(5, 'Mobell', 'Mobell.jpg', 'Các sản phẩm của mobell'),
(6, 'Vivo', 'Vivo.jpg', 'Các sản phẩm của Vivo'),
(7, 'Oppo', 'Oppo.jpg', 'Camara Selphi cuc chat tu Oppo'),
(8, 'SamSung', 'Samsung.jpg', 'Các sản phẩm từ SamSung'),
(9, 'Phillips', 'Philips.jpg', 'Cac san pham tuyet dep tu Phillip'),
(10, 'Nokia', 'Nokia.jpg', 'Các sản phẩm đến từ thương hiệu Nokia'),
(11, 'Motorola', 'Motorola.jpg', 'Các sản phẩm từ Motorola'),
(12, 'Mobiistar', 'Mobiistar.jpg', 'Các sản phẩm đến từ thương hiệu Mobiistar'),
(14, 'Xiaomi', 'Xiaomi.png', 'Các sản phẩm đến từ thương hiệu Xiaomi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaND` int(11) NOT NULL,
  `Ho` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ten` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TaiKhoan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MaQuyen` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`MaND`, `Ho`, `Ten`, `GioiTinh`, `SDT`, `Email`, `DiaChi`, `TaiKhoan`, `MatKhau`, `MaQuyen`, `TrangThai`) VALUES
(1, 'Lê', 'Long', 'Nam', '', '', '', 'Admin', '202cb962ac59075b964b07152d234b70', 2, 1),
(2, 'Le', 'Hai Long', 'nam', '0123456789', 'll1@gmail.com', 'kế bên nhà thằng Long Lớn', 'longb1805698', '202cb962ac59075b964b07152d234b70', 1, 1),
(3, 'Lê', 'Thanh Long', 'nam', '0123456789', 'll@gmail.com', 'ST', 'longne', '202cb962ac59075b964b07152d234b70', 1, 1),
(6, 'te', 'st', '', '0231456987', 'test@gmail.com', 'testt', 'test', 'c4ca4238a0b923820dcc509a6f75849b', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaQuyen` int(11) NOT NULL,
  `TenQuyen` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ChiTietQuyen` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `ChiTietQuyen`) VALUES
(1, 'Customer', 'Khách hàng có tài khoản'),
(2, 'Admin', 'Admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `MaLSP` int(11) NOT NULL,
  `TenSP` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `DonGia` int(11) NOT NULL,
  `SoLuong` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `HinhAnh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `MaKM` int(11) NOT NULL,
  `ManHinh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HDH` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CamSau` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CamTruoc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CPU` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ram` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Rom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SDCard` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Pin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SoSao` int(11) NOT NULL,
  `SoDanhGia` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaLSP`, `TenSP`, `DonGia`, `SoLuong`, `HinhAnh`, `MaKM`, `ManHinh`, `HDH`, `CamSau`, `CamTruoc`, `CPU`, `Ram`, `Rom`, `SDCard`, `Pin`, `SoSao`, `SoDanhGia`, `TrangThai`) VALUES
(1, 8, 'SamSung Galaxy Note 20 Ultra', 23000000, 10, 'img/products/samsung galaxy note 20 ultra.jpg', 4, '6.9 inches Dynamic AMOLED', 'Android 10 , One UI 2.1', '108 MP, f/1.8, 26mm (wide)', '10 MP, f/2.2, 26mm (wide)', 'Exynos 990 (7 nm+)', '12 GB', '256 GB', 'MicroSD', '4500 mAh', 5, 201, 1),
(2, 7, 'Oppo Reno6 Z', 9290000, 10, 'img/products/oppo-reno6-z-5g-den-1-org.jpg', 2, 'AMOLED, 6.43\", Full HD+', 'Android 11', 'Chính 64 MP & Phụ 8 MP, 2 MP', '32 MP ', 'MediaTek Dimensity 800U 5G', '8 GB', '128 GB', 'MicroSD', '4300 mAh, có sạc nhanh', 4, 2, 1),
(3, 10, 'Nokia 5.1 Plus', 4790000, 10, 'img/products/nokia-51-plus-black-18thangbh-400x400.jpg', 2, 'IPS LCD, 5.8\', HD+', 'Android One', '13 MP và 5 MP (2 camera)', '8 MP', 'MediaTek Helio P60 8 nhân 64-bit', '3 GB', '32 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '3060 mAh, có sạc nhanh', 0, 0, 0),
(4, 1, 'iPhone X 256GB Silver', 30990000, 10, 'img/products/iphone-x-256gb-silver-400x400.jpg', 3, 'OLED, 5.8\', Super Retina', 'iOS 11', '2 camera 12 MP', '7 MP', 'Apple A11 Bionic 6 nhân', '3 GB', '256 GB', 'Không', '2716 mAh, có sạc nhanh', 3, 3, 1),
(5, 8, 'Samsung Galaxy Z Flip 3', 23000000, 10, 'img/products/samsung z flip3.jpg', 2, 'Super AMOLED, 6.7\', HD+', 'Android 11', '12MP, f/2.2, Dual Pixel AF, OIS và 12MP, f/1.8', 'Góc rộng 10MP, f/2.4', 'Snapdragon 888 (5nm)', '8 GB', '128 GB', 'Không', '3500 mAh', 5, 3, 1),
(6, 8, 'Samsung Galaxy A72', 10990000, 10, 'img/products/samsung-galaxy-a72-32.jpg', 2, 'Super AMOLED, 6.7\'', 'Android 11, One UI 3.0', '64 MP và 8MP và 12MP và 5MP', '32 MP, f/2.2, 26mm (wide), 1/2.8\", 0.8µm', 'Snapdragon 720G (8 nm)', '8 GB', '256 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '5000 mAh, có sạc nhanh', 4, 10, 1),
(7, 7, 'OPPO A74', 6690000, 10, 'img/products/oppo-a74-xanh-duong-1-org.jpg', 4, 'AMOLED, 6.43\", Full HD+', 'Android 11', 'Chính 48 MP & Phụ 2 MP, 2 MP', '16 MP', 'Snapdragon 662', '8 GB', '128 GB', 'MicroSD', '5000 mAh', 4, 12, 1),
(8, 14, 'Xiaomi Mi 11 Lite 5G', 8690000, 10, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/x/i/xiaomi-mi-11-lite-5g-2_10.png', 4, 'AMOLED, 6.55\'', 'Android 11, MIUI 12', '64 MP, 8 MP và 5 MP (3 camera)', '20 MP', 'Snapdragon 780G (5 nm)', '8 GB', '128 GB', 'MicroSD', '4250 mAh, có sạc nhanh', 5, 95, 1),
(10, 14, '4.950.000 ₫', 4950000, 10, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/r/e/redmi-note-10-5g.jpg', 5, 'IPS LCD, 6.5\', Full HD+', 'Android 11, MIUI 12', '48MP, 2MP và 2MP (3 camera)', '24 MP', 'Dimensity 700 5G (7 nm)', '4 GB', '128 GB', 'MicroSD', '5000 mAh, có sạc nhanh', 4, 20, 1),
(11, 1, 'iPhone 13 Pro Max', 37990000, 10, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/i/p/iphone_13-_pro-1_2_1.jpg', 5, '6.7\" , OLED', 'iOS ', '3 camera 12 MP', '12 MP', 'Apple A15', '6 GB', '256 GB', 'Không', '4325 mAh', 1, 101, 1),
(12, 12, 'Mobiistar X', 3490000, 10, 'img/products/mobiistar-x-3-600x600.jpg', 4, 'IPS LCD, 5.86\', HD+', 'Android 8.1 (Oreo)', '16 MP và 5 MP (2 camera)', '16 MP', 'MediaTek MT6762 8 nhân 64-bit (Helio P22)', '4 GB', '32 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '3000 mAh', 0, 0, 1),
(13, 12, 'Mobiistar E Selfie', 2490000, 10, 'img/products/mobiistar-e-selfie-300-1copy-600x600.jpg', 1, 'IPS LCD, 6.0\', HD+', 'Android 7.0 (Nougat)', '13 MP', '13 MP', 'MediaTek MT6739 4 nhân 64-bit', '2 GB', '16 GB', 'MicroSD, hỗ trợ tối đa 128 GB', '3900 mAh', 0, 0, 1),
(14, 12, 'Mobiistar Zumbo S2 Dual', 2850000, 10, 'img/products/mobiistar-zumbo-s2-dual-300x300.jpg', 5, 'IPS LCD, 5.5\', Full HD', 'Android 7.0 (Nougat)', '13 MP', '13 MP và 8 MP (2 camera)', 'MT6737T, 4 nhân', '3 GB', '32 GB', 'MicroSD, hỗ trợ tối đa 128 GB', '3000 mAh', 0, 0, 1),
(15, 12, 'Mobiistar B310', 260000, 10, 'img/products/mobiistar-b310-orange-600x600.jpg', 5, 'LCD, 1.8\', QQVGA', 'Không', '0.08 MP', 'Không', 'Không', 'Không', 'Không', 'MicroSD, hỗ trợ tối đa 32 GB', '800 mAh', 4, 1, 1),
(16, 14, 'Xiaomi Redmi Note 10 Pro 8GB', 7300000, 10, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/x/i/xiaomi-redmi-note-10-pro_2_.png', 5, '6.77\" AMOLED', 'Android 8.1 (Oreo)', '108 MP, 8 MP, 5 MP và 2 MP (4 cam)', '16 MP', 'Snapdragon 732G (8 nm)', '8 GB', '128 GB', 'MicroSD', '5000 mAh, có sạc nhanh', 4, 26, 1),
(17, 14, 'Xiaomi Redmi 10', 4290000, 10, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/0/0/001_2.jpg', 1, '6.5 inches', 'MIUI 12.5', '50MP, 8 MP, 2MP, 2MP (4 cam )', '8 MP', 'MediaTek Helio G88', '4 GB', '128 GB', 'MicroSD', '5000 mAh', 4, 10, 1),
(21, 10, 'Nokia black future', 999999000, 10, 'https://cdn.tgdd.vn/Products/Images/42/22701/dien-thoai-di-dong-Nokia-1280-dienmay.com-l.jpg', 2, '4K, Chống nước, Chống trầy', 'iOS + Android song song', 'Bộ tứ camara tàng hình', 'Chuẩn thế giới 50MP', '16 nhân 128 bit', 'Không giới hạn', 'Dùng thoải mái', 'Không cần', 'Không cần sạc', 5, 2, 1),
(22, 8, 'Samsung Galaxy S21 Ultra 5G', 8990000, 10, 'img/products/samsung-galaxy-s21-ultra-1.jpg', 4, 'Dynamic AMOLED , 6.8\'', 'Android 11, One UI 3.0', '108MP và 10MP và 10MP và 12MP và Laser (4 cam) ', '40 MP, f/2.2', 'Exynos 2100 8 nhân', '12 GB', '128 GB', 'Không', '5000 mAh', 5, 12, 1),
(30, 6, 'Vivo X60 Pro 5G', 13900000, 10, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/v/i/vivo-x60-pro-8.jpg', 2, 'AMOLED  6.5\'', 'Android 11', '48MP (Gimbal 2.0) + 13MP + 13MP', '32 MP ', 'Snapdragon 870 5G (7 nm)', '12 GB + 3 GB (RAM bổ sung)', '128 GB', 'MicroSD', '4200 mAh', 5, 30, 1),
(31, 6, 'Vivo Y12s (2021)', 3190000, 10, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/v/i/vivo-y12s-162620-112633-600x600.jpg', 5, '6.5 inches', 'Android 10, Funtouch 11', '13 MP, f/2.2, (wide), PDAF 2 MP, f/2.4, (depth)', '8 MP, f/1.8, (wide)', 'Qualcomm Snapdragon 439', '3 GB', '32 GB', 'MicroSD', '5000 mAh, có sạc nhanh', 5, 22, 1),
(32, 6, 'Vivo X70 Pro 5G', 16900000, 10, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/7/7/77725f642649329d8a5ea716e86d9027.jpg', 2, '6.56 inches AMOLED', 'Android 11, Funtouch OS 12', '50 MP + 12 MP + 12 MP + 8 MP', '32MP', 'Dimensity 1200', '12 GB', '256 GB', 'Không', '4450 mAh', 5, 35, 1),
(33, 6, 'Vivo V21 5G\r\n', 8490000, 10, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/v/i/vivo-v21-5g-2.jpg', 4, '6.44 inches AMOLED', 'Android 11, Funtouch 11.1', '64MP, 8MP, 2MP (3 cam)', '44 MP, f/2.0', 'Dimensity 800U 5G (7 nm)', '8 GB', '128 GB', 'microSDXC', '4000 mAh', 5, 121, 1),
(34, 5, 'Mobell M789', 550000, 10, 'https://cdn.tgdd.vn/Products/Images/42/92016/mobell-m789-8-300x300.jpg', 1, 'TFT, 2.4\', 65.536 màu', 'Không', 'Không', 'Không', 'Không', 'Không', 'Không', 'Không', '1200 mAh', 0, 0, 1),
(35, 5, 'Mobell Rock 3', 590000, 10, 'https://cdn.tgdd.vn/Products/Images/42/112837/mobell-rock-3-2-300x300.jpg', 1, 'TFT, 2.4\', 65.536 màu', 'Không', 'Không', 'Không', 'Không', 'Không', 'Không', 'Không', '5000 mAh', 0, 0, 1),
(36, 5, 'Mobell S60', 1790000, 10, 'https://cdn.tgdd.vn/Products/Images/42/193271/mobell-s60-red-1-600x600.jpg', 5, 'LCD, 5.5\', FWVGA', 'Android 8.1 (Oreo)', '8 MP và 2 MP (2 camera)', '5 MP', 'MT6580 4 nhân 32-bit', '1 GB', '16 GB', 'MicroSD, hỗ trợ tối đa 32 GB', '2650 mAh', 0, 0, 1),
(37, 4, 'Itel P32', 1890000, 10, 'https://cdn.tgdd.vn/Products/Images/42/186851/itel-p32-gold-600x600.jpg', 1, 'IPS LCD, 5.45\', qHD', 'Android 8.1 (Oreo)', '5 MP và 0.3 MP (2 camera)', '5 MP', 'MT6580 4 nhân 32-bit', '1 GB', '8 GB', 'MicroSD, hỗ trợ tối đa 32 GB', '4000 mAh', 0, 0, 1),
(38, 4, 'Itel A32F', 1350000, 10, 'https://cdn.tgdd.vn/Products/Images/42/193990/itel-a32f-pink-gold-600x600.jpg', 5, 'TFT, 5\', FWVGA', 'Android Go Edition', '5 MP', '2 MP', 'MediaTek MT6580 4 nhân 32-bit', '1 GB', '8 GB', 'MicroSD, hỗ trợ tối đa 32 GB', '2050 mAh', 0, 0, 1),
(39, 4, 'Itel it2123', 160000, 10, 'https://cdn.tgdd.vn/Products/Images/42/146651/itel-it2123-d-300-300x300.jpg', 1, 'TFT, 1.77\', 65.536 màu', 'Không', 'Không', 'Không', 'Không', 'Không', 'Không', 'Không', '1000 mAh', 0, 0, 1),
(40, 4, 'Itel it2161', 170000, 10, 'https://cdn.tgdd.vn/Products/Images/42/193989/itel-it2161-600x600.jpg', 5, 'TFT, 1.77\', WVGA', 'Không', 'Không', 'Không', 'Không', 'Không', 'Không', 'MicroSD, hỗ trợ tối đa 32 GB', '1000 mAh', 0, 0, 1),
(41, 2, 'Coolpad N3D', 2390000, 10, 'https://cdn.tgdd.vn/Products/Images/42/193504/coolpad-n3d-blue-600x600.jpg', 5, 'IPS LCD, 5.45\', HD+', 'Android 8.1 (Oreo)', '8 MP và 0.3 MP (2 camera)', '5 MP', 'Spreadtrum SC9850K 4 nhân', '2 GB', '16 GB', 'MicroSD, hỗ trợ tối đa 32 GB', '2500 mAh', 0, 0, 1),
(42, 3, 'HTC U12 life', 7690000, 10, 'https://cdn.tgdd.vn/Products/Images/42/186397/htc-u12-life-1-600x600.jpg', 5, 'Super LCD, 6\', Full HD+', 'Android 8.1 (Oreo)', '16 MP và 5 MP (2 camera)', '13 MP', 'Qualcomm Snapdragon 636 8 nhân', '4 GB', '64 GB', 'MicroSD, hỗ trợ tối đa 512 GB', '3600 mAh', 0, 0, 1),
(43, 2, 'Coolpad N3 mini', 1390000, 10, 'https://cdn.tgdd.vn/Products/Images/42/193503/coolpad-n3-mini-600x600.jpg', 5, 'IPS LCD, 5\', WVGA', 'Android Go Edition', '5 MP và 0.3 MP (2 camera)', '2 MP', 'MT6580 4 nhân 32-bit', '1 GB', '8 GB', 'MicroSD, hỗ trợ tối đa 32 GB', '2000 mAh', 0, 0, 1),
(44, 2, 'Coolpad N3', 1890000, 10, 'https://cdn.tgdd.vn/Products/Images/42/193502/coolpad-n3-gray-1-600x600.jpg', 5, 'IPS LCD, 5.45\', HD+', 'Android Go Edition', '5 MP và 0.3 MP (2 camera)', '2 MP', 'Spreadtrum SC9850K 4 nhân', '1 GB', '16 GB', 'MicroSD, hỗ trợ tối đa 32 GB', '2300 mAh', 4, 2, 1),
(45, 11, 'Motorola Moto C 4G', 1290000, 10, 'https://cdn.tgdd.vn/Products/Images/42/109099/motorola-moto-c-4g-300-300x300.jpg', 1, 'TFT, 5\', FWVGA', 'Android 7.1 (Nougat)', '5 MP', '2 MP', 'MT6737 4 nhân', '1 GB', '16 GB', 'MicroSD, hỗ trợ tối đa 32 GB', '2350 mAh', 0, 0, 1),
(46, 1, 'iPhone Xr 128GB', 24990000, 10, 'https://cdn.tgdd.vn/Products/Images/42/191483/iphone-xr-128gb-red-600x600.jpg', 3, 'IPS LCD, 6.1\', IPS LCD, 16 triệu màu', 'iOS 12', '12 MP', '7 MP', 'Apple A12 Bionic 6 nhân', '3 GB', '128 GB', 'Không', '2942 mAh, có sạc nhanh', 3, 2, 1),
(47, 1, 'iPhone 8 Plus 64GB', 20990000, 10, 'https://cdn.tgdd.vn/Products/Images/42/114110/iphone-8-plus-hh-600x600.jpg', 4, 'LED-backlit IPS LCD, 5.5\', Retina HD', 'iOS 11', '2 camera 12 MP', '7 MP', 'Apple A11 Bionic 6 nhân', '3 GB', '64 GB', 'Không', '2691 mAh, có sạc nhanh', 0, 0, 1),
(48, 1, 'iPhone Xr 64GB', 22990000, 10, 'https://cdn.tgdd.vn/Products/Images/42/190325/iphone-xr-black-400x460.png', 3, 'IPS LCD, 6.1\', IPS LCD, 16 triệu màu', 'iOS 12', '12 MP', '7 MP', 'Apple A12 Bionic 6 nhân', '3 GB', '64 GB', '', '2942 mAh, có sạc nhanh', 0, 0, 1),
(49, 1, 'iPhone 8 Plus 256GB', 25790000, 10, 'https://cdn.tgdd.vn/Products/Images/42/114114/iphone-8-plus-256gb-red-600x600.jpg', 2, 'LED-backlit IPS LCD, 4.7\', Retina HD', 'iOS 11', '12 MP', '7 MP', 'Apple A11 Bionic 6 nhân', '2 GB', '256 GB', 'Không', '1821 mAh, có sạc nhanh', 0, 0, 1),
(50, 1, 'Iphone 13', 26000000, 10, 'img/products/iphone-13-01.jpg', 5, '6.7 inches OLED', 'iOs', '12MP và 12 MP và 12 MP (3 cam)', '12MP', 'Apple A15', '4 GB', '256 GB', 'Không', '3095 mAh', 5, 100, 1),
(51, 1, 'Iphone 13 mini', 22400000, 10, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/i/p/iphone-13-02_6.jpg', 5, '5.4\", OLED', 'iOs', '12MP và 12MP (2 cam)', '12MP', 'Apple A15', '4 GB', '256 GB', 'không', '2400 mAh', 5, 20, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `MaHD` (`MaHD`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `MaKH` (`MaND`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLSP`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaND`),
  ADD KEY `MaQuyen` (`MaQuyen`);

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `LoaiSP` (`MaLSP`),
  ADD KEY `MaKM` (`MaKM`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `MaND` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `MaQuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`);

--
-- Các ràng buộc cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `danhgia_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`);

--
-- Các ràng buộc cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaLSP`) REFERENCES `loaisanpham` (`MaLSP`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
