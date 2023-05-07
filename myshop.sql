-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2023 at 07:37 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `ward` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `shippingAdr` text DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `fullName`, `phoneNumber`, `ward`, `district`, `city`, `shippingAdr`, `userId`, `createdAt`, `updatedAt`) VALUES
(5, 'nhungContact22', '+8489932938', 'Xã Bành Trạch', 'Huyện Ba Bể', 'Tỉnh Bắc Kạn', '123, street 30/4', 27, '2023-04-09 22:18:17', '2023-05-05 17:08:38'),
(6, 'nhungContact1', '+8489932938', 'Thị trấn Pác Miầu', 'Huyện Bảo Lâm', 'Tỉnh Cao Bằng', 'ABC, d123', 27, '2023-04-09 22:35:04', '2023-05-07 01:42:16');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `writer` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  `newBlog` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `name`, `photo`, `writer`, `slug`, `description`, `content`, `hidden`, `newBlog`, `createdAt`, `updatedAt`) VALUES
(1, 'Mẹo bảo quản & vệ sinh các đồ nội thất', 'photo-1683217807630-tintuc1.jpg', 'Home\'s team', 'meo-bao-quan-&-ve-sinh-cac-do-noi-that', 'Chỉ với những mẹo đơn giản là bạn đã có thể dễ dàng làm sạch các vết bẩn trên đồ nội thất của gia đình luôn bền đẹp.', '<ol><li>Đối với nội thất bằng kim loại</li><li class=\"ql-indent-1\">Khi xử lý các vết bẩn thông thường, bạn chỉ cần xịt một chút dung dịch vệ sinh kính và dùng khăn mềm để lau qua.</li><li class=\"ql-indent-1\">Đối với các vết ố vàng, hãy xử lý chúng bằng khăn thấm ít chanh loãng hoặc giấm. Đừng quên lau khô sản phẩm sau khi vệ sinh (để tránh axit trong dung dịch làm kim loại bị hoan gỉ). Phương pháp này cũng có thể sử dụng cho vết gỉ nhưng sử dụng dung dịch đậm đặc hơn, thời gian dùng trên sản phẩm lâu hơn (5-10 phút). Ngoài ra, khoai tây cắt lát cũng có thể thay thế chanh hay giấm.</li><li class=\"ql-indent-1\">Để đánh bóng các vật dụng bằng sắt không gỉ hoặc crom, phủ một ít bột mì lên bề mặt, chà xát, rửa lại với nước và lau thật khô.</li><li class=\"ql-indent-1\">Nếu không sử dụng những chất tẩy tự nhiên (như chanh, giấm, bột mì,...) thì hãy mua những loại dung dịch vệ sinh chuyên dụng cho từng chất liệu bạn nhé. Tuyệt đối không sử dụng giấy nhám hay các sản phẩm có mức độ tẩy rửa quá cao làm hư bề mặt sản phẩm.</li><li>Đối với nội thất có sử dụng chất hiệu da</li><li class=\"ql-indent-1\">Bạn nên tránh để các vật dụng da tiếp xúc trực tiếp với ánh sáng mặt trời làm giảm sắc tố và độ đàn hồi.</li><li class=\"ql-indent-1\">Không sử dụng chất tẩy mạnh, nhiều thành phần xút trong dung dịch.</li><li class=\"ql-indent-1\">Không sử dụng bàn chải để chà các vết bẩn trên bề mặt sản phẩm da. Vì chất liệu này cực kì nhạy cảm nên bạn hãy sử dụng những dụng cụ và chất tẩy rửa chuyên dụng để an tâm hơn bạn nhé.</li><li>Đối với mặt gương, kính</li></ol><p>Để vệ sinh gương thật sạch và sáng, trước tiên bạn hãy cố gắng loại bỏ các vết nước đọng trên gương bằng khăn ướt và khăn khô. Sau đó sử dụng các dung dịch chuyên dụng để lau gương sạch và sáng hơn, lưu ý bạn chỉ nên lau theo một chiều và cố gắng lau hết chiều dài (hoặc ngang) một lượt để hạn chế các vệt nước còn sót lại.</p>', 1, 1, '2023-05-04 23:01:32', '2023-05-07 21:16:16');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `createdAt`, `updatedAt`) VALUES
(1, 'Ghế', 'Ghế', '2023-04-06 18:09:37', '2023-04-06 18:09:37'),
(2, 'Sofa', 'Sofa', '2023-04-06 18:09:46', '2023-04-06 18:09:46');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `createdAt`, `updatedAt`) VALUES
(1, 'Xanh đậm', '#050e33', '2023-04-06 18:10:03', '2023-04-06 18:10:03'),
(2, 'Cam nâu', '#b33e00', '2023-04-06 18:10:23', '2023-04-06 18:10:23'),
(3, 'Trắng sữa', '#cfbebe', '2023-04-06 18:10:39', '2023-04-06 18:10:39'),
(4, 'Chàm', '#939c16', '2023-04-06 20:45:14', '2023-04-06 20:45:14'),
(5, 'Hồng Phấn', '#e189b8', '2023-04-06 20:45:38', '2023-04-06 20:45:38'),
(6, 'Xanh sáng', '#364e87', '2023-05-07 00:39:08', '2023-05-07 00:39:08'),
(7, 'Xám', '#ababa6', '2023-05-07 00:43:39', '2023-05-07 00:43:39'),
(8, 'Đen', '#000000', '2023-05-07 00:49:25', '2023-05-07 00:49:25'),
(9, 'Cam gỗ', '#ab5f07', '2023-05-07 00:49:48', '2023-05-07 00:49:48'),
(10, 'Xanh biển', '#49adc1', '2023-05-07 00:54:57', '2023-05-07 00:54:57'),
(11, 'Xám đậm', '#555558', '2023-05-07 00:59:47', '2023-05-07 00:59:47'),
(12, 'Cam', '#c97b0d', '2023-05-07 01:21:01', '2023-05-07 01:21:01');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `content` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `blogId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `status`, `createdAt`, `updatedAt`, `blogId`, `userId`) VALUES
(5, 'tuyet voi', 0, '2023-05-06 21:20:11', '2023-05-06 21:20:11', 1, 28),
(6, 'hay qua', 0, '2023-05-07 01:47:51', '2023-05-07 01:49:12', 1, 27),
(7, 'that bo ich', 0, '2023-05-07 01:48:29', '2023-05-07 13:46:59', 1, 27),
(8, 'thật tuyệt', 1, '2023-05-07 12:47:30', '2023-05-07 13:59:23', 1, 27);

-- --------------------------------------------------------

--
-- Table structure for table `detailorders`
--

CREATE TABLE `detailorders` (
  `id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detailorders`
--

INSERT INTO `detailorders` (`id`, `quantity`, `color`, `price`, `createdAt`, `updatedAt`, `orderId`, `productId`) VALUES
(4, 4, '#364e87', 41130703, '2023-05-07 01:43:48', '2023-05-07 01:43:48', 4, 15),
(5, 5, '#e189b8', 82626000, '2023-05-07 01:43:48', '2023-05-07 01:43:48', 4, 24),
(6, 4, '#b33e00', 93955000, '2023-05-07 01:44:10', '2023-05-07 01:44:10', 5, 20),
(7, 8, '#939c16', 41130703, '2023-05-07 12:11:59', '2023-05-07 12:11:59', 6, 15);

-- --------------------------------------------------------

--
-- Table structure for table `detailproducts`
--

CREATE TABLE `detailproducts` (
  `id` int(11) NOT NULL,
  `qtyProduct` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `colorId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detailproducts`
--

INSERT INTO `detailproducts` (`id`, `qtyProduct`, `createdAt`, `updatedAt`, `productId`, `colorId`) VALUES
(15, 30, '2023-05-07 00:29:24', '2023-05-07 00:29:24', 13, 1),
(16, 30, '2023-05-07 00:29:24', '2023-05-07 00:29:24', 13, 2),
(17, 30, '2023-05-07 00:29:24', '2023-05-07 00:29:24', 13, 3),
(18, 45, '2023-05-07 00:34:48', '2023-05-07 00:34:48', 14, 3),
(19, 30, '2023-05-07 00:42:32', '2023-05-07 00:42:32', 15, 6),
(20, 30, '2023-05-07 00:42:32', '2023-05-07 00:42:32', 15, 4),
(21, 30, '2023-05-07 00:42:32', '2023-05-07 00:42:32', 15, 3),
(22, 30, '2023-05-07 00:47:20', '2023-05-07 00:47:20', 16, 3),
(23, 30, '2023-05-07 00:47:20', '2023-05-07 00:47:20', 16, 7),
(24, 30, '2023-05-07 00:52:24', '2023-05-07 00:52:24', 17, 9),
(25, 30, '2023-05-07 00:52:24', '2023-05-07 00:52:24', 17, 8),
(26, 80, '2023-05-07 00:57:33', '2023-05-07 00:57:33', 18, 10),
(27, 50, '2023-05-07 01:02:03', '2023-05-07 01:02:03', 19, 3),
(28, 50, '2023-05-07 01:02:03', '2023-05-07 01:02:03', 19, 11),
(29, 50, '2023-05-07 01:05:31', '2023-05-07 01:05:31', 20, 3),
(30, 30, '2023-05-07 01:05:31', '2023-05-07 01:05:31', 20, 2),
(31, 40, '2023-05-07 01:09:01', '2023-05-07 01:09:01', 21, 2),
(32, 30, '2023-05-07 01:09:01', '2023-05-07 01:09:01', 21, 8),
(33, 60, '2023-05-07 01:12:48', '2023-05-07 01:12:48', 22, 11),
(34, 30, '2023-05-07 01:12:48', '2023-05-07 01:12:48', 22, 3),
(35, 30, '2023-05-07 01:17:44', '2023-05-07 01:17:44', 23, 6),
(36, 30, '2023-05-07 01:17:44', '2023-05-07 01:17:44', 23, 2),
(37, 30, '2023-05-07 01:17:44', '2023-05-07 01:17:44', 23, 3),
(38, 40, '2023-05-07 01:23:01', '2023-05-07 01:23:01', 24, 5),
(39, 40, '2023-05-07 01:23:01', '2023-05-07 01:23:01', 24, 12),
(40, 10, '2023-05-07 23:27:35', '2023-05-08 00:33:36', 25, 5),
(41, 2, '2023-05-08 00:33:36', '2023-05-08 00:33:36', 25, 6);

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `content` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `content`, `createdAt`, `updatedAt`, `productId`, `userId`) VALUES
(5, 'xinh xiu luon', '2023-05-07 01:25:14', '2023-05-07 12:22:18', 24, 27),
(6, 'mau giong anh', '2023-05-07 01:25:43', '2023-05-07 01:25:43', 24, 27);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `grandtotal` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` enum('processing','shipping','delivered','cancel') DEFAULT 'processing',
  `deliveryDate` datetime DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `addressId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `number`, `grandtotal`, `message`, `status`, `deliveryDate`, `userId`, `addressId`, `createdAt`, `updatedAt`) VALUES
(4, '886949097393', 577652812, NULL, 'processing', NULL, 27, 5, '2023-05-07 01:43:48', '2023-05-07 01:43:48'),
(5, '135887690108', 375820000, NULL, 'delivered', NULL, 27, 5, '2023-05-07 01:44:10', '2023-05-07 01:44:26'),
(6, '463344529778', 329045624, NULL, 'delivered', '2023-05-13 07:00:00', 27, 5, '2023-05-07 12:11:59', '2023-05-07 16:32:59');

-- --------------------------------------------------------

--
-- Table structure for table `productphotos`
--

CREATE TABLE `productphotos` (
  `id` int(11) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `productId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productphotos`
--

INSERT INTO `productphotos` (`id`, `path`, `createdAt`, `updatedAt`, `productId`) VALUES
(30, 'productphoto-1683394164848-penn-chair-xl (6).jpg', '2023-05-07 00:29:25', '2023-05-07 00:29:25', 13),
(31, 'productphoto-1683394164857-penn-chair-xl (5).jpg', '2023-05-07 00:29:25', '2023-05-07 00:29:25', 13),
(32, 'productphoto-1683394164885-penn-chair-xl (4).jpg', '2023-05-07 00:29:25', '2023-05-07 00:29:25', 13),
(33, 'productphoto-1683394164915-penn-chair-xl (3).jpg', '2023-05-07 00:29:25', '2023-05-07 00:29:25', 13),
(34, 'productphoto-1683394164921-penn-chair-xl (2).jpg', '2023-05-07 00:29:25', '2023-05-07 00:29:25', 13),
(35, 'productphoto-1683394164928-penn-chair-xl.jpg', '2023-05-07 00:29:25', '2023-05-07 00:29:25', 13),
(36, 'productphoto-1683394164934-penn-chair-1-xl.jpg', '2023-05-07 00:29:25', '2023-05-07 00:29:25', 13),
(37, 'productphoto-1683394164999-penn-chair-f.jpg', '2023-05-07 00:29:25', '2023-05-07 00:29:25', 13),
(38, 'productphoto-1683394488345-viv-swivel-chair-xl.jpg', '2023-05-07 00:34:48', '2023-05-07 00:34:48', 14),
(39, 'productphoto-1683394488354-viv-swivel-chair-3-xl.jpg', '2023-05-07 00:34:48', '2023-05-07 00:34:48', 14),
(40, 'productphoto-1683394488369-viv-swivel-chair-1-xl.jpg', '2023-05-07 00:34:48', '2023-05-07 00:34:48', 14),
(41, 'productphoto-1683394488375-viv-swivel-chair-2-xl.jpg', '2023-05-07 00:34:48', '2023-05-07 00:34:48', 14),
(42, 'productphoto-1683394952045-carlo-mid-century-chair-metal-legs-xl (4).jpg', '2023-05-07 00:42:32', '2023-05-07 00:42:32', 15),
(43, 'productphoto-1683394952049-carlo-mid-century-chair-metal-legs-xl (2).jpg', '2023-05-07 00:42:32', '2023-05-07 00:42:32', 15),
(44, 'productphoto-1683394952058-carlo-mid-century-chair-metal-legs-xl (1).jpg', '2023-05-07 00:42:32', '2023-05-07 00:42:32', 15),
(45, 'productphoto-1683394952086-carlo-mid-century-chair-metal-legs-xl.jpg', '2023-05-07 00:42:32', '2023-05-07 00:42:32', 15),
(46, 'productphoto-1683394952102-carlo-mid-century-chair-white-chenille-brass-legs-xl (2).jpg', '2023-05-07 00:42:32', '2023-05-07 00:42:32', 15),
(47, 'productphoto-1683394952107-carlo-mid-century-chair-white-chenille-brass-legs-xl (1).jpg', '2023-05-07 00:42:32', '2023-05-07 00:42:32', 15),
(48, 'productphoto-1683394952115-carlo-mid-century-chair-white-chenille-brass-legs-xl.jpg', '2023-05-07 00:42:32', '2023-05-07 00:42:32', 15),
(49, 'productphoto-1683395240169-mid-century-show-wood-chair-xl (1).jpg', '2023-05-07 00:47:20', '2023-05-07 00:47:20', 16),
(50, 'productphoto-1683395240175-mid-century-show-wood-chair-xl (2).jpg', '2023-05-07 00:47:20', '2023-05-07 00:47:20', 16),
(51, 'productphoto-1683395240200-mid-century-show-wood-chair-xl (3).jpg', '2023-05-07 00:47:20', '2023-05-07 00:47:20', 16),
(52, 'productphoto-1683395544557-naomi-rattan-chair-xl (1).jpg', '2023-05-07 00:52:24', '2023-05-07 00:52:24', 17),
(53, 'productphoto-1683395544568-naomi-rattan-chair-6-xl.jpg', '2023-05-07 00:52:24', '2023-05-07 00:52:24', 17),
(54, 'productphoto-1683395544575-naomi-rattan-chair-xl.jpg', '2023-05-07 00:52:24', '2023-05-07 00:52:24', 17),
(55, 'productphoto-1683395544578-naomi-rattan-chair-1-xl.jpg', '2023-05-07 00:52:24', '2023-05-07 00:52:24', 17),
(56, 'productphoto-1683395544588-naomi-rattan-chair-1-xl (1).jpg', '2023-05-07 00:52:24', '2023-05-07 00:52:24', 17),
(57, 'productphoto-1683395544594-naomi-rattan-chair-xl (3).jpg', '2023-05-07 00:52:24', '2023-05-07 00:52:24', 17),
(58, 'productphoto-1683395544599-naomi-rattan-chair-2-xl (1).jpg', '2023-05-07 00:52:24', '2023-05-07 00:52:24', 17),
(59, 'productphoto-1683395544609-naomi-rattan-chair-2-xl.jpg', '2023-05-07 00:52:24', '2023-05-07 00:52:24', 17),
(60, 'productphoto-1683395544617-naomi-rattan-chair-xl (2).jpg', '2023-05-07 00:52:24', '2023-05-07 00:52:24', 17),
(61, 'productphoto-1683395544630-naomi-rattan-chair-5-xl.jpg', '2023-05-07 00:52:24', '2023-05-07 00:52:24', 17),
(62, 'productphoto-1683395853445-viv-slipper-chair-9-xl.jpg', '2023-05-07 00:57:33', '2023-05-07 00:57:33', 18),
(63, 'productphoto-1683395853450-viv-slipper-chair-6-xl.jpg', '2023-05-07 00:57:33', '2023-05-07 00:57:33', 18),
(64, 'productphoto-1683395853455-viv-slipper-chair-xl.jpg', '2023-05-07 00:57:33', '2023-05-07 00:57:33', 18),
(65, 'productphoto-1683395853466-viv-slipper-chair-3-xl.jpg', '2023-05-07 00:57:33', '2023-05-07 00:57:33', 18),
(66, 'productphoto-1683395853469-viv-slipper-chair-7-xl.jpg', '2023-05-07 00:57:33', '2023-05-07 00:57:33', 18),
(67, 'productphoto-1683396123719-oliver-sofa-72-82-xl (2).jpg', '2023-05-07 01:02:03', '2023-05-07 01:02:03', 19),
(68, 'productphoto-1683396123723-oliver-sofa-72-82-5-xl.jpg', '2023-05-07 01:02:03', '2023-05-07 01:02:03', 19),
(69, 'productphoto-1683396123727-oliver-sofa-72-82-xl (1).jpg', '2023-05-07 01:02:03', '2023-05-07 01:02:03', 19),
(70, 'productphoto-1683396123735-oliver-sofa-72-82-8-xl.jpg', '2023-05-07 01:02:03', '2023-05-07 01:02:03', 19),
(71, 'productphoto-1683396123747-oliver-sofa-72-82-1-xl.jpg', '2023-05-07 01:02:03', '2023-05-07 01:02:03', 19),
(72, 'productphoto-1683396123775-oliver-sofa-72-82-2-xl.jpg', '2023-05-07 01:02:03', '2023-05-07 01:02:03', 19),
(73, 'productphoto-1683396123791-oliver-sofa-72-82-3-xl.jpg', '2023-05-07 01:02:03', '2023-05-07 01:02:03', 19),
(74, 'productphoto-1683396123794-oliver-sofa-72-82-4-xl.jpg', '2023-05-07 01:02:03', '2023-05-07 01:02:03', 19),
(75, 'productphoto-1683396123801-oliver-sofa-72-82-7-xl.jpg', '2023-05-07 01:02:04', '2023-05-07 01:02:04', 19),
(76, 'productphoto-1683396331576-shelter-daybed-xl (4).jpg', '2023-05-07 01:05:31', '2023-05-07 01:05:31', 20),
(77, 'productphoto-1683396331582-shelter-daybed-xl (3).jpg', '2023-05-07 01:05:31', '2023-05-07 01:05:31', 20),
(78, 'productphoto-1683396331599-shelter-daybed-xl (2).jpg', '2023-05-07 01:05:31', '2023-05-07 01:05:31', 20),
(79, 'productphoto-1683396331618-shelter-daybed-xl (1).jpg', '2023-05-07 01:05:31', '2023-05-07 01:05:31', 20),
(80, 'productphoto-1683396541366-zander-leather-sofa-90-xl (3).jpg', '2023-05-07 01:09:01', '2023-05-07 01:09:01', 21),
(81, 'productphoto-1683396541368-zander-leather-sofa-90-xl (2).jpg', '2023-05-07 01:09:01', '2023-05-07 01:09:01', 21),
(82, 'productphoto-1683396541374-zander-leather-sofa-90-xl (1).jpg', '2023-05-07 01:09:01', '2023-05-07 01:09:01', 21),
(83, 'productphoto-1683396541377-zander-leather-sofa-90-xl.jpg', '2023-05-07 01:09:01', '2023-05-07 01:09:01', 21),
(84, 'productphoto-1683396768114-jannick-full-futon-sleeper-85-xl (9).jpg', '2023-05-07 01:12:48', '2023-05-07 01:12:48', 22),
(85, 'productphoto-1683396768117-jannick-full-futon-sleeper-85-xl (8).jpg', '2023-05-07 01:12:48', '2023-05-07 01:12:48', 22),
(86, 'productphoto-1683396768120-jannick-full-futon-sleeper-85-xl (7).jpg', '2023-05-07 01:12:48', '2023-05-07 01:12:48', 22),
(87, 'productphoto-1683396768121-jannick-full-futon-sleeper-85-xl (6).jpg', '2023-05-07 01:12:48', '2023-05-07 01:12:48', 22),
(88, 'productphoto-1683396768124-jannick-full-futon-sleeper-85-xl (5).jpg', '2023-05-07 01:12:48', '2023-05-07 01:12:48', 22),
(89, 'productphoto-1683396768125-jannick-full-futon-sleeper-85-xl (4).jpg', '2023-05-07 01:12:48', '2023-05-07 01:12:48', 22),
(90, 'productphoto-1683396768131-jannick-full-futon-sleeper-85-xl (3).jpg', '2023-05-07 01:12:48', '2023-05-07 01:12:48', 22),
(91, 'productphoto-1683396768133-jannick-full-futon-sleeper-85-xl (2).jpg', '2023-05-07 01:12:48', '2023-05-07 01:12:48', 22),
(92, 'productphoto-1683396768134-jannick-full-futon-sleeper-85-xl (1).jpg', '2023-05-07 01:12:48', '2023-05-07 01:12:48', 22),
(93, 'productphoto-1683396768136-jannick-full-futon-sleeper-85-xl.jpg', '2023-05-07 01:12:48', '2023-05-07 01:12:48', 22),
(94, 'productphoto-1683397064530-paidge-sofa-73-87-1-xl (1).jpg', '2023-05-07 01:17:44', '2023-05-07 01:17:44', 23),
(95, 'productphoto-1683397064535-paidge-sofa-73-87-xl (3).jpg', '2023-05-07 01:17:44', '2023-05-07 01:17:44', 23),
(96, 'productphoto-1683397064554-paidge-sofa-73-87-1-xl.jpg', '2023-05-07 01:17:44', '2023-05-07 01:17:44', 23),
(97, 'productphoto-1683397064554-paidge-sofa-73-87-xl (2).jpg', '2023-05-07 01:17:44', '2023-05-07 01:17:44', 23),
(98, 'productphoto-1683397064556-paidge-sofa-73-87-xl (1).jpg', '2023-05-07 01:17:44', '2023-05-07 01:17:44', 23),
(99, 'productphoto-1683397064557-paidge-sofa-73-87-xl.jpg', '2023-05-07 01:17:44', '2023-05-07 01:17:44', 23),
(100, 'productphoto-1683397381404-parlor-sofa-60-82-xl (2).jpg', '2023-05-07 01:23:01', '2023-05-07 01:23:01', 24),
(101, 'productphoto-1683397381415-parlor-sofa-60-82-xl (1).jpg', '2023-05-07 01:23:01', '2023-05-07 01:23:01', 24),
(102, 'productphoto-1683476855803-z2184049760565_e667f445540fc7a8c0e7b92832276951.jpg', '2023-05-07 23:27:35', '2023-05-07 23:27:35', 25);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `discountPer` int(11) DEFAULT NULL,
  `totalQty` int(11) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  `newArrival` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `categoryId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `photo`, `price`, `discount`, `discountPer`, `totalQty`, `slug`, `content`, `hidden`, `newArrival`, `createdAt`, `updatedAt`, `categoryId`) VALUES
(13, 'Ghế Penn', 'photo-1683394164678-penn-chair-xl (1).jpg', 35000900, 31500810, 10, 90, 'Ghe-Penn', '<ul><li>Được bao phủ bởi sự lựa chọn của bạn về Vải Chenille Hiện đại (65% polyester, 35% polyester tái chế) màu Đen Slate hoặc Màu ô liu, hoặc Vải nhung Đau khổ (60% polyester, 40% polyester tái chế) màu Dune.</li><li>Gỗ thông sấy khô và khung gỗ kỹ thuật.</li><li>Chân kim loại trong một kết thúc Đen.</li><li>Lò xo hình sin khổ lớn cung cấp hỗ trợ đệm.</li><li>Đệm ngồi và lưng có lõi xốp polyurethane được bọc sợi, có độ đàn hồi cao.</li><li>Độ chắc của ghế: Trung bình. Trên thang điểm từ 1 đến 5 (5 là vững chắc nhất), đó là 4.</li><li>Đệm bán kèm theo.</li><li>Sản xuất tại Trung Quốc.</li></ul>', 0, 1, '2023-05-07 00:29:24', '2023-05-07 00:29:24', 1),
(14, 'Ghế Xoay Viv', 'photo-1683394488085-viv-swivel-chair-xl.jpg', 56890000, 420986000, 26, 45, 'Ghe-Xoay-Viv', '<ul><li>Gỗ thông sấy khô và khung gỗ kỹ thuật với ván ghép thanh gia cố.</li><li>Hỗ trợ đệm có màng.</li><li>Bọt polyurethane có độ đàn hồi cao được bọc bằng sợi để tạo thêm sự thoải mái.</li><li>Độ chắc của ghế: Trung bình. Trên thang điểm từ 1 đến 5 (5 là vững chắc nhất), đó là 3.</li><li>Đế xoay 360 độ.</li><li>Đệm ghế rời, có thể đảo ngược với nắp khóa kéo.</li><li>Mặt hàng cấp hợp đồng này được sản xuất để đáp ứng nhu cầu sử dụng thương mại bên cạnh khu dân cư.</li><li>Nhập khẩu.</li></ul>', 0, 1, '2023-05-07 00:34:48', '2023-05-07 00:34:48', 1),
(15, 'Ghế Carlo Mid-Century', 'photo-1683394951858-carlo-mid-century-chair-metal-legs-xl (3).jpg', 48965123, 41130703, 16, 78, 'Ghe-Carlo-Mid-Century', '<ul><li>Khung gỗ thông và gỗ cứng kỹ thuật chắc chắn với ván ghép thanh gia cố.</li><li>Tất cả gỗ đều được sấy khô để tăng độ bền.</li><li>Ghế có màng và hỗ trợ lưng.</li><li>Đệm ngồi có lõi xốp Polyurethane bọc sợi, có độ đàn hồi cao.</li><li>Độ chắc của ghế: Mềm. Trên thang điểm từ 1 đến 5 (5 là vững chắc nhất), đó là 2.</li><li>Đệm lưng được làm đầy bằng chất xơ.</li><li>Đệm rời, có thể đảo ngược (không bao gồm Astor Velvet) có nắp khóa kéo.</li><li>Chân kim loại (có thể tháo rời).</li><li>Mặt hàng cấp hợp đồng này được sản xuất để đáp ứng nhu cầu sử dụng thương mại bên cạnh khu dân cư. Xem thêm.</li><li>Sản xuất tại Trung Quốc.</li></ul>', 0, 1, '2023-05-07 00:42:31', '2023-05-07 12:11:59', 1),
(16, 'Ghế gỗ trưng bày giữa thế kỷ', 'photo-1683395240067-mid-century-show-wood-chair-xl.jpg', 52360000, 42411600, 19, 60, 'Ghe-go-trung-bay-giua-the-ky', '<ul><li>Tay chân gỗ tần bì nguyên khối.</li><li>Mặt ngồi và lưng bằng gỗ công nghiệp.</li><li>Tất cả gỗ đều được sấy khô để tăng độ bền.</li><li>Được làm bằng gỗ được chứng nhận FSC® từ các khu rừng được quản lý có trách nhiệm.</li><li>Hỗ trợ đệm có màng với đệm xốp.</li><li>Độ chắc của ghế: Trung bình. Trên thang điểm từ 1 đến 5 (5 là vững chắc nhất), đó là 4.</li><li>Mặt hàng cấp hợp đồng này được sản xuất để đáp ứng nhu cầu sử dụng thương mại bên cạnh khu dân cư. Xem thêm.</li><li>Sản xuất tại Rumani.</li></ul>', 0, 1, '2023-05-07 00:47:20', '2023-05-07 00:47:20', 1),
(17, 'Ghế Mây Naomi', 'photo-1683395544418-naomi-rattan-chair-4-xl.jpg', 23560000, 20732800, 12, 60, 'ghe-may-naomi', '<ul><li>Khung mây.</li><li>Buộc bằng vỏ mây.</li><li>Đệm ghế được làm đầy bằng bọt bọc polyester.</li><li>Đệm lỏng lẻo với nắp zip-off.</li><li>Sản xuất ở In-đô-nê-xi-a.</li></ul>', 0, 1, '2023-05-07 00:52:24', '2023-05-07 00:52:24', 1),
(18, 'Ghế Dép Viv', 'photo-1683395853232-viv-slipper-chair-2-xl.jpg', 21999999, 20234000, 8, 80, 'ghe-dep-viv', '<ul><li>Khung gỗ kỹ thuật sấy khô.</li><li>Chân kim loại.</li><li>Hỗ trợ đệm có màng.</li><li>Bọt polyurethane có độ đàn hồi cao được bọc bằng sợi để tạo thêm sự thoải mái.</li><li>Độ chắc của ghế: Trung bình. Trên thang điểm từ 1 đến 5 (5 là vững chắc nhất), đó là 3.</li><li>Đệm ghế rời, có thể đảo ngược với nắp khóa kéo.</li><li>Mặt hàng cấp hợp đồng này được sản xuất để đáp ứng nhu cầu sử dụng thương mại bên cạnh khu dân cư. Xem thêm.</li><li>Sản xuất tại Trung Quốc.</li></ul>', 0, 1, '2023-05-07 00:57:33', '2023-05-07 00:57:33', 1),
(19, 'Sofa Oliver', 'photo-1683396123574-oliver-sofa-72-82-xl.jpg', 78900000, 59175000, 25, 100, 'Sofa-Oliver', '<ul><li>Được bao phủ bởi sự lựa chọn của bạn về Twill (73% polyester, 27% acrylic) bằng vải Dove hoặc Vải lanh nhuộm sợi (78% polyester, 22% vải lanh) bằng Pewter.</li><li>Khung gỗ thông và gỗ kỹ thuật chắc chắn.</li><li>Chân gỗ cao su chắc chắn với lớp hoàn thiện Light Walnut (chân có thể tháo rời).</li><li>Lò xo hình sin khổ lớn cung cấp hỗ trợ đệm.</li><li>Đệm ngồi và lưng có lõi xốp polyurethane được bọc sợi, có độ đàn hồi cao.</li><li>Độ chắc chắn của ghế: Trên thang điểm từ 1 đến 5 (5 là độ chắc chắn nhất), đó là 4.</li><li>Đệm bán kèm, không thể đảo ngược.</li><li>Sản xuất tại Trung Quốc.</li></ul>', 0, 1, '2023-05-07 01:02:03', '2023-05-07 01:02:03', 2),
(20, 'Nơi trú ẩn', 'photo-1683396331463-shelter-daybed-xl.jpg', 98900000, 93955000, 5, 76, 'noi-tru-an', '<ul><li>Khung được làm bằng tay với vải bọc hoàn thiện bằng tay.</li><li>Gỗ sồi đặc và khung gỗ cứng kỹ thuật với ván ghép thanh gia cố.</li><li>Tất cả gỗ được sấy khô để tăng độ bền.</li><li>Lò xo hình sin khổ lớn cung cấp hỗ trợ đệm.</li><li>Đệm ngồi có lõi xốp polyurethane được bọc sợi, có độ đàn hồi cao.</li><li>Đệm bên được làm đầy bằng sợi poly.</li><li>Đệm có thể đảo ngược (loại trừ Astor Velvet) có nắp khóa kéo.</li><li>Chân hỗ trợ ẩn cho một cấu hình hợp lý.</li><li>Đi văng nhỏ vừa vặn ở cuối giường cỡ king.</li><li>Lắp ráp tại Mỹ.</li></ul>', 0, 1, '2023-05-07 01:05:31', '2023-05-07 01:44:10', 2),
(21, 'Sofa Da Zander', 'photo-1683396541230-zander-leather-sofa-90-xl (4).jpg', 68900000, 58565000, 15, 70, 'Sofa-Da-Zander', '<ul><li>Có sẵn cho bạn lựa chọn da thật hàng đầu hoặc da thuần chay thân thiện với động vật.</li><li>Khung gỗ thông và gỗ kỹ thuật chắc chắn.</li><li>Chân gỗ cao su với lớp hoàn thiện màu Hạnh nhân (chân có thể tháo rời).</li><li>Tất cả gỗ đều được sấy khô để tăng độ bền.</li><li>Gỗ được chứng nhận FSC®, hỗ trợ các khu rừng và hệ sinh thái trên toàn thế giới.</li><li>Ghế có màng và hỗ trợ lưng.</li><li>Đệm ghế bằng xốp và được làm đầy.</li><li>Độ chắc của ghế: Mềm. Trên thang điểm từ 1 đến 5 (5 là vững chắc nhất), đó là 2.</li><li>Đệm lưng được làm đầy bằng bọt.</li><li>Đệm ngồi và lưng lỏng lẻo, không thể đảo ngược với nắp có khóa kéo.</li><li>Được sản xuất tại việt nam.</li></ul>', 0, 1, '2023-05-07 01:09:01', '2023-05-07 01:09:01', 2),
(22, 'Nệm đầy đủ của Jannick', 'photo-1683396767975-jannick-full-futon-sleeper-85-xl (10).jpg', 106900000, 96210000, 10, 90, 'nem-day-du-cua-jannick', '', 0, 0, '2023-05-07 01:12:48', '2023-05-07 01:12:48', 2),
(23, 'Sofa trả tiền', 'photo-1683397064391-paidge-sofa-73-87-xl (4).jpg', 69900000, 65706000, 6, 90, 'sofa-tra-tien', '<ul><li>Khung được làm bằng tay với vải bọc hoàn thiện bằng tay.</li><li>Gỗ sồi đặc và khung gỗ cứng kỹ thuật với ván ghép thanh gia cố.</li><li>Chân gỗ chắc chắn theo lựa chọn hình dạng và lớp hoàn thiện (chân có thể tháo rời).</li><li>Tất cả gỗ đều được sấy khô để tăng độ bền.</li><li>Lò xo hình sin khổ lớn cung cấp hỗ trợ đệm.</li><li>Đường may nổi dọc theo đệm và tay xuôi.</li><li>Đệm ghế có lõi xốp polyurethane được bọc sợi, có độ đàn hồi cao.</li><li>Độ chắc của ghế: Trung bình. Trên thang điểm từ 1 đến 5 (5 là vững chắc nhất), đó là 3.</li><li>Đệm lưng 100% poly-fill.</li><li>Đệm có thể đảo ngược (loại trừ Astor Velvet) có nắp khóa kéo.</li><li>Lắp ráp tại Mỹ.</li></ul>', 0, 1, '2023-05-07 01:17:44', '2023-05-07 01:17:44', 2),
(24, 'Sofa phòng khách', 'photo-1683397381325-parlor-sofa-60-82-xl.jpg', 87900000, 82626000, 6, 75, 'sofa-phong-khach', '<ul><li>Gỗ thông sấy khô và khung gỗ kỹ thuật.</li><li>Chân gỗ cao su với lớp hoàn thiện Pecan.</li><li>Được làm bằng gỗ được chứng nhận FSC® từ các khu rừng được quản lý có trách nhiệm.</li><li>Ghế có màng và hỗ trợ lưng.</li><li>Đệm ghế có lõi xốp polyurethane có độ đàn hồi cao và được bọc sợi.</li><li>Độ chắc của ghế: Mềm. Trên thang điểm từ 1 đến 5 (5 là vững chắc nhất), đó là 2.</li><li>Gối thắt lưng được nhồi 100% lông vũ.</li><li>Đệm rời, có thể đảo ngược với nắp có khóa kéo.</li><li>Được sản xuất tại việt nam.</li></ul>', 0, 1, '2023-05-07 01:23:01', '2023-05-07 01:43:48', 2),
(25, 'adsasd', 'photo-1683476855399-z2174166885914_cffb6fb92234e3b3eba9c0f7b8e8baee (1).jpg', 123242, 0, 0, 12, 'dsadasd', '<p>dsadsad</p>', 0, 1, '2023-05-07 23:27:35', '2023-05-08 00:33:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '2023-04-08 10:47:25', '2023-04-08 10:47:25'),
(2, 'admin', '2023-04-08 10:47:25', '2023-04-08 10:47:25');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('migration-create-address.js'),
('migration-create-blog.js'),
('migration-create-cart.js'),
('migration-create-category.js'),
('migration-create-color.js'),
('migration-create-comment.js'),
('migration-create-detailorder.js'),
('migration-create-detailproduct.js'),
('migration-create-feedback.js'),
('migration-create-order.js'),
('migration-create-product.js'),
('migration-create-productphoto.js'),
('migration-create-role.js'),
('migration-create-user.js'),
('migration-create-userrole.js');

-- --------------------------------------------------------

--
-- Table structure for table `userroles`
--

CREATE TABLE `userroles` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userroles`
--

INSERT INTO `userroles` (`id`, `userId`, `roleId`, `createdAt`, `updatedAt`) VALUES
(2, 27, 2, '2023-04-08 15:51:51', '2023-04-08 15:51:51'),
(3, 28, 1, '2023-05-06 21:19:49', '2023-05-06 21:19:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `phoneNumber`, `createdAt`, `updatedAt`) VALUES
(27, 'admin', 'admin@gmail.com', '$2a$10$2kUD3F.bL4TaztvOCzpSfeXCGQyX85oGF68t1mtsqRGUhOeKcs7de', '+8412345678', '2023-04-08 15:51:51', '2023-05-07 01:35:30'),
(28, 'yennhung', 'nhung1@gmail.com', '$2a$10$gkXBjc4dL3zCn3FYa73pVek8w02bAP.50HN15B9PAFO.7ivKHA7d6', '+8489932937', '2023-05-06 21:19:48', '2023-05-06 21:19:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogId` (`blogId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `detailorders`
--
ALTER TABLE `detailorders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderId` (`orderId`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `detailproducts`
--
ALTER TABLE `detailproducts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`),
  ADD KEY `colorId` (`colorId`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `addressId` (`addressId`);

--
-- Indexes for table `productphotos`
--
ALTER TABLE `productphotos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryId` (`categoryId`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `userroles`
--
ALTER TABLE `userroles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `roleId` (`roleId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `detailorders`
--
ALTER TABLE `detailorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `detailproducts`
--
ALTER TABLE `detailproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `productphotos`
--
ALTER TABLE `productphotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userroles`
--
ALTER TABLE `userroles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`blogId`) REFERENCES `blogs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detailorders`
--
ALTER TABLE `detailorders`
  ADD CONSTRAINT `detailorders_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detailorders_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detailproducts`
--
ALTER TABLE `detailproducts`
  ADD CONSTRAINT `detailproducts_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detailproducts_ibfk_2` FOREIGN KEY (`colorId`) REFERENCES `colors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD CONSTRAINT `feedbacks_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feedbacks_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`addressId`) REFERENCES `addresses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `productphotos`
--
ALTER TABLE `productphotos`
  ADD CONSTRAINT `productphotos_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `userroles`
--
ALTER TABLE `userroles`
  ADD CONSTRAINT `userroles_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userroles_ibfk_2` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
