-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 28, 2022 lúc 01:20 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quansnet`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id_player` int(8) NOT NULL,
  `account_player` varchar(20) NOT NULL,
  `password_player` varchar(32) NOT NULL,
  `currentBalance` int(10) NOT NULL,
  `isAdmin` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id_player`, `account_player`, `password_player`, `currentBalance`, `isAdmin`) VALUES
(40000001, 'hoanhvan20156', 'nhan0909', 7000000, b'1'),
(40000002, 'Dangchieuhien1', 'anhyeuem24', 2500000, b'0'),
(40000003, 'Mkckzd12345', 'mkckzd0604', 1000000, b'0'),
(40000004, 'tuantran4995', '01266945209dd', 5000000, b'0'),
(40000005, 'tragtrog123', '011220khS', 3500000, b'0'),
(40000006, 'sktfackerno11', 'hang24784nb', 2900000, b'0'),
(40000007, 'hjnw5ehot', 'cumam2003', 1700000, b'0'),
(40000008, 'heou11002', 'phuonghuyen1234', 4400000, b'0'),
(40000009, 'darkknightz5555', 'cuong6789', 900000, b'0'),
(40000010, 'chienkcr123', 'chien123kcr', 2600000, b'0'),
(40000011, 'loankute98', 'nhattien2015', 6100000, b'0'),
(40000012, 'minhchuyen93nb', 'chuyen93nbNB', 2300000, b'0'),
(40000013, 'heodenroi1976', 'nhatdeptrai2k7', 3000000, b'0'),
(40000014, 'kunlakun112', 'hoangson07d2', 1400000, b'0'),
(40000015, 'dnhpham10', '12345678mk', 2100000, b'0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fooddrink`
--

CREATE TABLE `fooddrink` (
  `id_fooddrink` int(8) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `price` int(7) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `fooddrink`
--

INSERT INTO `fooddrink` (`id_fooddrink`, `name`, `price`, `image`) VALUES
(30000001, 'Coca', 12000, 'https://cdn.tgdd.vn/Products/Images/2443/83757/bhx/nuoc-ngot-coca-cola-235ml-202112141707442712.jpg'),
(30000002, 'Number One', 13000, 'https://product.hstatic.net/200000122283/product/nuoc-tang-luc-number-one-330ml-9j4r4_d12029f4d06b488ebc5f7615b8e735ae_grande.jpeg'),
(30000003, 'Pepsi', 14000, 'https://minhcaumart.vn/media/com_eshop/products/8934588012228%201.jpg'),
(30000004, 'Cà phê', 20000, 'https://hrinsider.vietnamworks.com/wp-content/uploads/2019/12/shutterstock_1054201226-min.jpg'),
(30000005, 'Trà sữa', 25000, 'https://cdn.dayphache.edu.vn/wp-content/uploads/2019/08/luong-duong-trong-1-ly-tra-sua.jpg'),
(30000006, 'Nước mía', 10000, 'https://www.miaduong333.com/wp-content/uploads/2019/11/tac-dung-cua-nuoc-mia-voi-suc-khoe.jpg'),
(30000007, 'Nước lọc', 5000, 'https://mecaphe.com/wp-content/uploads/2021/09/LY-NUOC.jpg'),
(30000008, 'Fanta', 12000, 'https://cdn.tgdd.vn/Products/Images/2443/76453/bhx/nuoc-ngot-fanta-vi-cam-lon-330ml-201812281420358633.jpg'),
(30001001, 'Hamburger', 15000, 'https://bloganchoi.com/wp-content/uploads/2021/08/tu-lam-hamburger.jpg'),
(30001002, 'Gà rán', 30000, 'https://comhophanoi.com/wp-content/uploads/2021/07/dui-ga-chien-xu.jpeg'),
(30001003, 'Khoai tây chiên', 25000, 'https://comtambason.com/wp-content/uploads/2020/12/Khoai-tay-chien.png'),
(30001004, 'Pizza', 40000, 'https://media.songdep.com.vn/files/thunga/2021/01/27/banh-pizza-thuc-chat-la-do-an-cua-nguoi-ngheo-0-164015.jpg'),
(30001005, 'Bánh mì Pate', 18000, 'https://filebroker-cdn.lazada.vn/kf/S3e47df8b11124a2c8eed424162fc7966r.jpg'),
(30001006, 'Bim Bim', 5000, 'https://reviewaz.vn/storage/bim-bim-oishi.png'),
(30001007, 'Mì ăn liền + trứng', 15000, 'https://adameblog.com/wp-content/uploads/2020/04/image-135.jpeg'),
(30001008, 'Phô mai que', 15000, 'https://cdn.beptruong.edu.vn/wp-content/uploads/2013/01/pho-mai-que.jpg'),
(30001009, 'Cơm cháy', 16000, 'https://i.vietgiaitri.com/2021/9/1/com-chay-chien-nuoc-mam-co-toi-2-cach-lam-mon-an-sieu-ngon-ef7-5999169.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `game`
--

CREATE TABLE `game` (
  `id_game` int(8) NOT NULL,
  `gameName` varchar(1000) NOT NULL,
  `gameInfo` varchar(10000) NOT NULL,
  `image_game` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `game`
--

INSERT INTO `game` (`id_game`, `gameName`, `gameInfo`, `image_game`) VALUES
(10000001, 'League of Legends', 'Game LOL là một trò chơi trực tuyến nhiều người chơi đình đám trên thế giới. Game được phát triển bởi Riot Games. Người chơi sẽ điều khiển nhân vật tham gia vào một chiến lược hành động thời gian thực. Mục tiêu của người chơi là phá hủy công trình chính của địch nằm trong lòng căn cứ của đối phương và được những công trình khác bảo vệ và trợ giúp tiêu diệt quân địch do máy điều khiển theo thời gian ở các làn đường chơi. Liên Minh Huyền Thoại là một trò chơi trực tuyến có lối chơi nhanh và đầy tính cạnh tranh do được tích hợp cả tốc độ lẫn chiều sâu của các trò chơi chiến thuật thời gian thực với các yếu tố nhập vai.', 'https://cdn.tgdd.vn/Files/2021/07/27/1371211/lol-la-gi-la-viet-tat-cua-tu-nao-va-co-mang-y-nghia-bay-khong-202107271752335560.jpg'),
(10000002, 'PUBG', 'PUBG (PlayerUnknown’s Battlegrounds) được thiết kế độc quyền từ Battlegrounds chính thức của Player unknown cho di động. PUBG là một game có nhiều người chiến đấu trực tuyến được khai thác bởi công ty Tencent Games, là loại game hành động miễn phí có nhiều người chơi vô cùng gay cấn. Đây là game bắn súng giữa người chơi với người chơi, trong game có tới 100 người chơi chiến đấu trong Battle Royale, đây là một trận chiến quyết đấu sinh tồn một người duy nhất sống sót, người chơi chiến đấu để trở thành người sống sót cuối cùng. Sinh tồn là điều mấu chốt, người cuối cùng đứng vững sẽ là người chiến thắng. Hãy là người sống sót cuối cùng với trải nghiệm trên màn hình lớn.', 'https://cdn.tgdd.vn/Files/2018/10/25/1126811/cau-hinh-cho-may-tinh-choi-muot-pubg-la-bao-nhieu--1.jpg'),
(10000003, 'Minecraft', 'Minecraft là một trò chơi điện tử độc lập trong một thế giới mở với phong cách sandbox, được phát hành vào năm 2009. Minecraft là một trò chơi về cách đặt khối và tiếp tục cuộc phiêu lưu. Khám phá và những sáng tạo tuyệt vời của cộng đồng, Minecraft tựa game sinh tồn trong một thế giới Zombie, bạn sẽ nhập vai thành nhân vật Steve, bạn sẽ được đưa vào một thế giới ô vuông với nhiều sinh vật khác nhau! Bạn phải chặt cây, đào đá, làm mọi thứ để sinh sống trong thế giới mai cờ ráp. Minecraft là một trò chơi thế giới mở mà không có mục tiêu cụ thể cho người chơi để thực hiện, cho phép người chơi có thể tự do lựa chọn chơi như thế nào.', 'https://cdn.sforum.vn/sforum/wp-content/uploads/2022/04/cach-tai-xuong-va-choi-minecraft-tren-chromebook-e1646810034525.jpg'),
(10000004, 'Total War: Warhammer', 'Total War là một sê-ri trò chơi máy tính thể loại chiến lược. Được phát triển bởi hãng The Creative Assembly. Total War: WARHAMMER là một trong những game chiến thuật thời gian thực. Có lượng fan đông đảo nhất ở thời điểm hiện tại. Được thừa hưởng những tinh hoa từ hai series đình đám là Total War và Warhammer 40000. Người chơi sẽ vừa được sống trong thế giới phép thuật đầy tò mò vừa được thử cảm giác thống lĩnh trăm nghìn quân “bình thiên hạ”.Game với đồ họa đẹp mắt cùng sự phong phú trong lựa chọn hứa hẹn sẽ mang đến cho người chơi nhiều những cảm xúc mới mẻ khi chơi.', 'https://www.pdvg.it/wp-content/uploads/2021/05/total-war-3-header.jpg'),
(10000005, 'FIFA Online 4', 'FIFA Online 4 (FO4) có tên đầy đủ EA SPORTS FIFA Online 4, sở hữu nền tảng engine mới nhất. FIFA Online 4 là phiên bản mới nhất của tựa game quản lý bóng đá FIFA, cho phép người chơi thỏa sức hòa mình vào những trận đấu đỉnh cao, chinh phục trái bóng tròn ngay trên màn hình máy tính. FIFA Online 4 vẫn do Garena và EA Game bắt tay hợp tác, mang tới cho những người yêu bóng đá hàng chục giải đấu chính thức, hàng trăm đội bóng nổi tiếng trên toàn thế giới. Thỏa sức thể hiện tài quản lý bóng đá, dẫn dắt đội bóng của mình thông qua tựa game nổi tiếng này. Game với nhiều các tính năng đặc sắc như thay đổi chỉ số cầu thủ, quà tặng, nhiều chế độ chơi, thẻ mùa đa dạng, hệ thống giải đấu phong phú, thị trường chuyển nhượng, ... hứa hẹn sẽ mang đến cho người chơi những phút giây thăng hoa cùng các trận bóng đỉnh cao.', 'https://cdn.tgdd.vn/Files/2018/03/23/1076619/fifa-online-4-featured_800x450.jpg'),
(10000006, 'Age of Empires', 'Game AOE thuộc thể loại game chiến lược thời gian thực ra mắt lần đầu năm 1997. Age of Empires yêu cầu người chơi sẽ phải phát triển nền văn minh từ lúc chỉ là một nhóm nhỏ chuyên săn bắt hái lượm cho đến khi mở rộng thành một đế quốc đồ sắt. Để chiến thắng, người chơi buộc phải thu thập tài nguyên, xây dựng công trình, mua lính, nâng cấp những công nghệ tiên tiến hơn, lên đời để mở khóa những công nghệ mới, rồi sau cùng mang quân tiêu diệt đối phương bằng cách áp dụng khéo léo những chiến thuật và chiến lược hợp lý và tài tình. Game có 2 chế độ chơi là hệ thống chơi đơn và hệ thống chơi với bạn hay đấu đối kháng. Đồ họa 3D cùng hiệu ứng âm thanh đặc sắc giúp người chơi có được những phút giây hòa mình vào game một cách chân thật nhất.', 'https://gamedustria.com/wp-content/uploads/2019/07/Age-of-Empires-Definitve-Edtion-Gamedustria.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gameaccount`
--

CREATE TABLE `gameaccount` (
  `id_game` int(8) NOT NULL,
  `id_gameaccount` int(8) NOT NULL,
  `gameaccount_username` varchar(32) NOT NULL,
  `gameaccount_password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `price` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `gameaccount`
--

INSERT INTO `gameaccount` (`id_game`, `id_gameaccount`, `gameaccount_username`, `gameaccount_password`, `avatar`, `price`) VALUES
(10000001, 20000001, 'duanhauhoadna8', 'tahyem0a992', 'https://i.pinimg.com/originals/94/23/cf/9423cfa0eef06028835edb1ec69c21e7.jpg', 200000),
(10000001, 20000002, 'quehuongtaowi8', 'giomattrangtanhy', 'https://i.pinimg.com/originals/60/5c/26/605c268f9732211ad5c89239dc01a405.jpg', 150000),
(10000001, 20000003, 'rutinhta727', 'thuyentinhuy8', 'https://i.pinimg.com/474x/c8/cf/f3/c8cff3b8a9268d7cdf241545772d4000.jpg', 230000),
(10000002, 20000004, 'emthaykhognem297', 'emthayemouw38', 'https://i.pinimg.com/originals/99/0e/10/990e10e2e71b794e40eece96f84e7b77.png', 180000),
(10000002, 20000005, 'ngaymnaiemao82', 'didaunuadat818722', 'https://i.pinimg.com/originals/92/1d/6e/921d6ec30a3f911a05b6bb939c9ae303.png', 240000),
(10000002, 20000006, 'lauop289377', 'ngoaivovanaiwy38', 'https://i.pinimg.com/originals/c8/51/f7/c851f7740be845fb788cc847d73bf9a9.png', 150000),
(10000002, 20000007, 'muahetanagayh38', 'muahetanagayh38', 'https://i.pinimg.com/originals/f2/91/b5/f291b5ea58464fc84b46bfe4298fbc77.png', 300000),
(10000003, 20000008, 'tiengkhennouaq', 'xamaingutngabn2938', 'https://thao68.com/wp-content/uploads/2022/03/avatar-minecraft-37.jpg', 100000),
(10000003, 20000009, 'maphilengau277', 'hungvinonxong9882', 'https://thao68.com/wp-content/uploads/2022/03/avatar-minecraft-40.jpg', 130000),
(10000003, 20000010, 'luavoaiu8287', 'cogaimeo92828', 'https://thao68.com/wp-content/uploads/2022/03/avatar-minecraft-1.jpg', 210000),
(10000004, 20000011, 'thoihonoaiw838', 'tamgiacmanqu37', 'https://i.pinimg.com/736x/23/31/a0/2331a004bb5473fa4cb21e3ce9b4e12c.jpg', 270000),
(10000004, 20000012, 'hagianghoq928', 'saomanhothe9383', 'https://i.pinimg.com/736x/dd/fd/15/ddfd156a214610ba0cbc21a0bd829efd.jpg', 240000),
(10000004, 20000013, 'tuonhtuq76276', 'thuongmanhdta7282', 'http://picture.dzogame.vn/Img/cap33_pp_970.jpg', 200000),
(10000005, 20000014, 'chatphat26y37', 'saomayeutah2', 'https://symbols.vn/wp-content/uploads/2021/11/Anh-Avatar-Free-Fire-chat-nhat.jpg', 250000),
(10000005, 20000015, 'hungsq2000', 'hunggogo1232', 'https://symbols.vn/wp-content/uploads/2021/11/Cap-nhat-them-Avatar-Free-Fire.jpg', 180000),
(10000005, 20000016, 'vinhpl1102abc', 'hoangvinh1994', 'https://hieuunganh.com/images/frame/frame_demo/anh-chi-bi-bong-da-FC-Barcelona-demo572b691296b35.jpg', 260000),
(10000005, 20000017, 'nguyenquocvi32', 'quocvi25082002', 'https://hieuunganh.com/images/frame/frame_demo/demo57c57108f0bdf.jpg', 300000),
(10000006, 20000018, 'truongvip113116', 'sangbp4114', 'https://www.ageofempires.com/wp-content/uploads/2020/12/avatar_event0_01.png', 350000),
(10000006, 20000019, 'autumnwindhy12', 'd3stjny9999', 'https://www.ageofempires.com/wp-content/uploads/2020/12/avatar_event0_04.png', 320000),
(10000006, 20000020, 'huhuthua995', 'ottatua8893', 'https://www.ageofempires.com/wp-content/uploads/2020/12/avatar_event0_07.png', 240000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id_order` int(8) NOT NULL,
  `id_fooddrink` int(8) NOT NULL,
  `id_player` int(8) NOT NULL,
  `orderTime` datetime NOT NULL,
  `productName` varchar(1000) NOT NULL,
  `price` int(7) NOT NULL,
  `computerNumber` int(2) NOT NULL,
  `id_gameaccount` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id_player`);

--
-- Chỉ mục cho bảng `fooddrink`
--
ALTER TABLE `fooddrink`
  ADD PRIMARY KEY (`id_fooddrink`);

--
-- Chỉ mục cho bảng `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id_game`);

--
-- Chỉ mục cho bảng `gameaccount`
--
ALTER TABLE `gameaccount`
  ADD PRIMARY KEY (`id_game`,`id_gameaccount`),
  ADD KEY `fk_gameaccount_game` (`id_gameaccount`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`,`id_fooddrink`,`id_player`,`id_gameaccount`),
  ADD KEY `fk_orders_customers` (`id_player`),
  ADD KEY `fk_orders_fooddrink` (`id_fooddrink`),
  ADD KEY `fk_orders_gameaccount` (`id_gameaccount`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `gameaccount`
--
ALTER TABLE `gameaccount`
  ADD CONSTRAINT `fk_gameaccount_game` FOREIGN KEY (`id_game`) REFERENCES `game` (`id_game`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_customers` FOREIGN KEY (`id_player`) REFERENCES `customers` (`id_player`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_orders_fooddrink` FOREIGN KEY (`id_fooddrink`) REFERENCES `fooddrink` (`id_fooddrink`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_orders_gameaccount` FOREIGN KEY (`id_gameaccount`) REFERENCES `gameaccount` (`id_gameaccount`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
