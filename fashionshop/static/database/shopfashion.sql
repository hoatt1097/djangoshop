-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2018 at 10:51 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopfashion`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `IDAdmin` int(10) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`IDAdmin`, `email`, `password`, `name`) VALUES
(1, 'admin@gmail.com', 'admin', 'admin'),
(2, 'hoat1097@gmail.com', '123', 'Trần Thiện Hòa'),
(3, 'khoa01997@gmail.com', '123', 'Huỳnh Văn Khoa'),
(4, 'vy@gmail.com', '123', 'Lê Hoàng Vỹ Vỹ');

-- --------------------------------------------------------

--
-- Table structure for table `bangtin`
--

CREATE TABLE `news` (
  `IDNews` int(10) NOT NULL,
  `IDGroupNews` int(10) NOT NULL,
  `title` longtext NOT NULL,
  `describes` longtext NOT NULL,
  `imageNews` longtext NOT NULL,
  `content` longtext NOT NULL,
  `timePost` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bangtin`
--

INSERT INTO `news` (`IDNews`, `IDGroupNews`, `title`, `describes`, `imageNews`, `content`, `timePost`) VALUES
(1, 1, 'Điểm danh những xu hướng thời trang hot nhất năm 2017', 'Không biết những trào lưu được lòng tín đồ thời trang Việt nhất trong năm 2017 là gì mời các bạn cùng điểm danh với chúng tôi nhé!\r\n', 'images/news/xuHuong2017.jpg', 'Không biết những trào lưu được lòng tín đồ thời trang Việt nhất trong năm 2017 là gì mời các bạn cùng điểm danh với chúng tôi nhé!\r\nÁo thun logo: Vài năm trước, những mẫu áo thun graphic trở thành xu hướng độc đáo, thì năm 2017, T-shirt đơn giản in logo lại nhận được sự yêu thích từ các bạn trẻ Việt và thế giới. Sự thoải mái, năng động của item này đến từ phom dáng suông, chất liệu cotton cùng hình ảnh logo thiết kế sành điệu.\r\nXu hướng xếp pli: Mang phong cách hoài cổ và nữ tính, qua mấy mùa thời trang, những chiếc váy xếp ly vẫn đang là xu hướng \'hot\' và được nhiều sao Việt yêu thích.\r\nTrong mùa xuân hè 2017, những đường xếp li được các nhà thiết kế trên khắp thế giới biết tấu mới lạ khi đan xen với nhau trên nền chất liệu vải rủ, nhẹ hay lấp lánh ánh kim và rất được lòng các tín đồ thời trang.\r\nHọa tiết kẻ sọc: Không khó để bắt gặp hình ảnh của loại họa tiết trẻ trung này trong mỗi buổi tiệc sang trọng của giới giải trí hay \'cặp kè\' cùng các người đẹp trên mọi tuyến phố mùa hè 2017. Các người đẹp thậm chí chấp nhận bị \'đụng hàng\' bởi sức hút trẻ trung, thanh lịch của trang phục kẻ sọc quả thật rất khó chối từ.\r\nÁo khoác kẻ ô: Những mẫu blazer họa tiết kẻ ô trở thành xu hướng thời trang nổi bật trong năm 2017 với sự biến tấu mạnh mẽ cùng phom dáng cứng cáp. Từ nhà mốt Alexander Wang, Stella McCartney cho đến Calvin Klein cũng đều thể hiện chất riêng nhằm mang đến hình ảnh người phụ nữ cá tính, quyền lực trong xã hội ngày nay.\r\nShort jean nửa mông: Là cô nàng yêu thích sự nóng bỏng và sexy tất nhiên bạn không thể nào bỏ lỡ item cứ mặc vào là hot hòn họt này được. Đúng vậy, chiếc quần được nhắc tới là short jean nửa mông, giúp các cô gái khoe vòng 3 nửa kín nửa hở với vẻ sexy đạt tới cực điểm. Món đồ không chỉ thách thức thị giác người nhìn mà nó còn thể hiện sự bản lĩnh của người mặc. Vậy nên, các bạn gái phải cân nhắc thật kỹ trước khi định diện chúng ra đường nhé.\r\nMũ nồi: Đây là xu hướng phụ kiện nổi bật nhất trong năm 2017. Sau nhiều mùa bị lãng quên, item này quay trở lại với sự xuất hiện trong show diễn thu đông của nhà mốt Dior. Mũ nồi mang kiểu dáng mềm, hình tròn, phẳng được thiết kế bằng vải dệt, len, cotton. Phụ kiện xuất hiện vào thế kỷ 19 từ giới quân nhân Pháp và Tây Ban Nha. Về sau, chiếc mũ này đã trở thành item được yêu thích từ nhiều tầng lớp khác nhau trên thế giới.\r\nHọa tiết kẻ ngang là một trong những xu hướng hot dường như chưa bao giờ lỗi mốt và tiếp tục trở thành xu hướng được yêu thích năm 2017. Trang phục kẻ sọc ngang có thể dễ dàng giúp bạn gái cân bằng cơ thể. Mặc dù chúng ta đã biết rằng các đường sọc dọc tạo chiều dài trong khi các đường sọc ngang tạo chiều rộng, tuy nhiên bạn có vóc dáng như thế nào vẫn có thể mặc để tạo ra sự cân bằng. Hơn thế, những kiểu áo thun kẻ sọc ngang đơn giản cũng dễ dàng mix với nhiều trang phục với nhau như quần jeans, quần short, chân váy...\r\nSơmi trắng dạng váy: Những chiếc sơ mi trắng đơn giản nhưng luôn ẩn chứa sức quyến rũ mãnh liệt, mê hoặc hoàn toàn mọi phong cách của phái đẹp. Váy sơmi vẫn mang dáng vẻ của một chiếc áo với hàng cúc chạy dọc thông thường, nhưng phần thân được kéo dài tạo thành hình váy suông, váy maxi... Chính bởi sự kết hợp độc đáo đó, cho nên mẫu trang phục này rất dễ mặc trong nhiều trường hợp, với nhiều phong cách khác nhau và đã trở thành xu hướng được yêu thích. Từ việc nền nã chỉn chu khi đi làm mỗi ngày cho đến cá tính phóng khoáng mỗi buổi tụ tập bạn bè, chiếc váy này đã trở thành lựa chọn đầu bảng của nhiều cô nàng ngay trong lần thử đồ đầu tiên. \r\nHoạ tiết hoa lá: Thu đông 2017 là khoảng thời gian lên ngôi của họa tiết hoa lá. Không chỉ xuất hiện trên áo khoác, sơ mi mà chúng còn biến tấu qua những mẫu chân váy trẻ trung hay phom dáng maxi nữ tính. Trào lưu này mang đến sức hút khi thể hiện được vẻ nhẹ nhàng, sành điệu của người phụ nữ. Các tín đồ thời trang đã phá cách hơn khi kết hợp trang phục hoa lá đồng điệu cùng những mẫu phụ kiện màu sắc như túi xách hay giày cao gót đinh tán. \r\nTúi cói:Năm nay, các nhà mốt xa xỉ đều đồng loạt trình làng các thiết kế túi xách cói khác nhau. Sự đa dạng về mẫu mã từ kiểu dáng hộp, túi picnic hay thậm chí túi tròn đều tạo nên vẻ bắt mắt, nhẹ nhàng cho phái nữ trong những chuyến du lịch.\r\nÁo khoác độn vai:Những chiếc khoác cầu vai cứng cáp trở nên phổ biến và gây mê hoặc giới mộ điệu trong năm 2017. Xu hướng này được yêu thích khi mang tinh thần hoài cổ gợi nhớ về thập niên 1880 - thời kỳ hoàng kim của vẻ đẹp mạnh mẽ. Trang phục này xuất hiện rất nhiều trong những bức ảnh street style của giới mộ điệu khắp nơi trên thế giới.\r\nTrên đây là những trào lưu được lòng tín đồ thời trang Việt nhất trong năm 2017 và bạn đã sưu tập cho mình hết thảy những phong cách ấy chưa. Nếu chưa thì hãy tiếp tục bổ sung vào tủ đồ của mình nhé vì những xu hướng thời trang trên đây vẫn đang được yêu thích và chưa có dấu hiệu hạ nhiệt đâu nhé.', '2017-12-17 13:00:00'),
(2, 1, 'Thời tiết có mưa lạnh đến thế nào, thì chỉ cần chiếc áo này thôi là đủ ấm', 'Đúng là chẳng có gì ấm áp và phù hợp hơn với tiết trời mưa rét những ngày này ngoài chiếc áo phao to sụ.', 'images/news/thoiTietMuaLanh.jpg', 'Miền Bắc đang bước vào những ngày rét đậm với nhiệt độ xuống thấp đột ngột, ai ra đường cũng phải chuẩn bị cho mình những trang phục ấm áp nhất. Ngay lúc này những chiếc áo khoác dày dặn, có khả năng giữ ấm nhưng vẫn đảm bảo tính thời trang trở thành mối quan tâm hàng đầu của mọi cô gái. Chẳng có gì ấm áp và giúp bạn tránh gió tốt hơn những chiếc áo phao. Đừng vội chán ghét chúng bởi vẻ ngoài to sụ và kiểu dáng đơn điệu. Hãy thỏa sức sáng tạo cùng chúng, phối với skinny jeans, chân váy bó sát và những chiếc áo len, áo phông trẻ trung. Chắc chắn, bạn sẽ thấy ngạc nhiên bởi hóa ra chiếc áo cứng nhắc này cũng... thú vị phết đấy.\r\nNhững ngày trời lạnh thế này, áo phao trở thành món đồ chắn gió giữ ấm hiệu quả nhất. Lựa chọn những gam màu trung tính với sắc độ sáng nhẹ nhàng giúp tổng thể hài hòa và tinh tế hơn. Thiết kế áo phao màu trắng đơn giản mix cùng quần skinny trắng xuyệt tông, bộ canh thêm ấm áp và nền nã khi có sự góp mặt của áo len cao cổ màu ghi sáng.\r\nĐến công sở với một set đồ đơn giản nhưng luôn tinh tế, thanh lịch và quan trọng là luôn giữ ấm tối đa cho cơ thể. Một set layer quen thuộc với áo len trơn màu và sơmi trằng bẻ cổ ra ngoài, thêm áo phao đen sur ton với quần âu, set đồ trung tính rất dễ ứng dụng trong những ngày nhiệt độ lạnh tăng cường như hiện tại.\r\nNgay cả khi trời lất phất mưa thì cùng chẳng hề hấn gì, bởi áo phao khác hẳn áo khoác dạ, chất liệu của phao luôn sạch sẽ và chống thấm nước nên bạn hoàn toàn yên tâm khi diện. Trước kiểu thời tiết âm u như hiện tại, khéo chọn một thiết kế áo có sắc màu một chút kết hợp cùng áo len và skinny, đừng quên thắt thêm khăn quàng giữ ấm phần cổ, bạn có ngay một set đồ tiện dụng và cực kỳ tinh tế trong ngày đại hàn.\r\nÁo phao dày dặn, to sụ thế này nhưng vẫn có nhiều kiểu dáng cho các nàng lựa chọn. Áo phao dáng lửng sẽ rất hợp với những cô nàng trẻ trung năng động.\r\nDiện một chiếc áo phao ấm áp như thế này, bạn chỉ cần mặc bên trong một chiếc áo len mỏng cùng quần jeans là đã sẵn sàng một set đồ chắn gió hiệu quả.\r\nCô nàng nữ tính điệu đà nếu muốn diện váy trong những ngày trời chuyển lạnh thì vẫn cứ yên tâm vì chỉ cần khác ngoài với áo phao to sụ là đã đủ ấm áp rồi. Áo phao tuy vẻ ngoài có phân to dày và hơi thô nhưng nó lại có khả năng kết hợp với đue kiểu trang phục có trong tủ đồ của bạn đấy.\r\nMột nàng công sở chỉn chu đương nhiên sẽ có yêu cầu cao hơn cho set đồ của mình. Khi đó những thiết kế áo phao dáng dài sẽ là lựa chọn tối ưu, vốn dĩ kiểu dáng áo đã giúp các nàng ghi điểm với vẻ ngoài tinh tế, gọn gàng, nay lại kết hợp xuỵet tông cùng áo len mỏng và boots da lại càng cho ra một set đồ hài hòa và thanh lịch hơn cả.\r\nNhững thiết kế áo phao dáng dài sẽ không còn nặng nề hay cồng kềnh nữa khi bạn khéo léo lựa chọn những set đồ đi kèm với nó. Bạn có thể mix đồ năng động với áo len trơn màu nổi cùng quần jeans và boots để dạo phố thật năng động và phong cách.\r\nLựa chọn màu sắc sóng đôi cùng nhau chính là cách để các nàng tránh việc bị dáng áo phao to rộng \"nuốt chửng\" vóc dáng. Các nàng có thể chọn áo mặc trong xuyệt tông cùng áo phao, hoặc lựa chọn những gam màu khác sắc độ nhưng xếp vào cùng bảng màu trầm nền nã để bộ đồ có sự liên mạch và liên quan đến nhau.\r\nCape', '2017-12-17 13:01:01'),
(3, 1, 'Với cách mix đồ Giáng sinh \"cute lạc lối\" này, cần gì có người yêu, chỉ cần hội bạn thân là đủ rồi!', 'Bạn đã có ý tưởng gì cho trang phục diện đi chơi đêm Noel cùng hội bạn thân chưa? Nếu chưa thì đây sẽ là những gợi ý hữu ích dành cho bạn, hãy nhanh tay tag ngay hội chị em để cùng thực hiện nhé!', 'images/news/mixDoGiangSinh.jpg', '\r\nGiáng sinh luôn là khoảng thời gian tuyệt vời để các bạn trẻ được “xúng xính” những bộ cánh thật đẹp, cùng hội bạn thân dạo phố hoặc tham gia những buổi tiệc quây quần cùng gia đình. Dưới đây những gợi ý chọn trang phục lí tưởng nhất cho dịp Noel nổi bật mà không bị sến sẩm.\r\n<center><img src=\'images/news/mixDoGiangSinh/1.jpg\' width=\'600\'></center>\r\nVới gam màu đặc trưng của ngày lễ Giáng sinh như đỏ đậm kết hợp với những họa tiết kẻ sọc - hoa văn lộng lẫy này giúp bạn “biến hóa” linh hoạt trong phong cách thời trang trẻ trung, năng động. Bạn có thể chọn cách mix đồ đơn giản như chân váy + áo len, chúng vừa xinh xắn vừa khỏe khoắn, năng động là những gì bạn có thể thấy ở set đồ này.\r\n<center><img src=\'images/news/mixDoGiangSinh/2.jpg\' width=\'600\'></center>\r\nSử dụng rất nhiều màu nóng và lạnh xen kẽ, thế nhưng tổng thể vẫn rất hài hòa với cách phối thống nhất bởi một tông màu đỏ chủ đạo và tất cả còn lại là điểm nhấn nhằm tôn vinh cả set đồ.\r\n<center><img src=\'images/news/mixDoGiangSinh/3.jpg\' width=\'600\'></center>\r\nPhụ kiện như mũ beret, băng đô chính là những thứ không thể thiếu mỗi khi diện đồ nhiều màu sắc nhé các cô nàng, và nhớ hãy chọn phụ kiện đơn sắc để tránh làm rối tổng thể.\r\n<center><img src=\'images/news/mixDoGiangSinh/4.jpg\' width=\'600\'></center>\r\nSet đồ cá tính và ấn tượng với 3 gam màu đen - trắng - đỏ nổi bật. Đây là 1 minh chứng cho việc, không cần phải lộng lẫy hay diêm dúa mới có thể tạo nên 1 set đồ đậm chất Giáng sinh.\r\n<center><img src=\'images/news/mixDoGiangSinh/5.jpg\' width=\'600\'></center>\r\nXanh lá là lựa chọn hoàn hảo để thể hiện sức sống, sự tươi trẻ. Chính vì thế, các thương hiệu thời trang nổi tiếng không bỏ qua màu xanh lá trong BST của mình, đặc biệt trong mùa Giáng sinh này, người ta nói rằng xanh lá là 1 trong top các sắc màu hot nhất.\r\n<center><img src=\'images/news/mixDoGiangSinh/6.jpg\' width=\'600\'></center>\r\nVới trang phục sắc màu xanh lá, các bạn có thể diện cả cây xanh lá hoặc mix & match tùy thích, sắc màu này rất dễ kết hợp, đặc biệt là rất nổi bật khi mix cùng sắc màu đối lập như trắng.\r\n<center><img src=\'images/news/mixDoGiangSinh/7.jpg\' width=\'600\'></center>\r\nNếu muốn diện cả cây xanh mà không nhàm chán, bạn hãy chọn điểm nhấn cho mình bằng họa tiết nhé! Chẳng hạn như chiếc áo babydoll cùng với kẻ sọc trắng sẽ giúp cho bộ trang phục của bạn thêm sinh động và trẻ trung hơn rất nhiều.\r\n<center><img src=\'images/news/mixDoGiangSinh/8.jpg\' width=\'600\'></center>\r\n<center><img src=\'images/news/mixDoGiangSinh/9.jpg\' width=\'600\'></center>\r\nNếu không thích những gam màu sáng như màu đỏ và xanh lá, bạn có thể chọn giải pháp an toàn hơn khi kết hợp gam màu trắng và đen trong cùng một set đồ. Hãy thử tưởng tượng rằng, bạn cùng nhóm mình đi bộ trong cùng một tone màu, cùng diện những trang phục như thế này, chắc chắn mọi người không thể nào rời mắt khỏi nhóm của bạn đâu nhé!\r\n<center><img src=\'images/news/mixDoGiangSinh/10.jpg\' width=\'600\'></center>\r\nNhững set đồ matchy-matchy kẻ caro mang tone trắng đen không hề lạc hậu chút nào mà ngược lại còn rất tươi tắn và trẻ trung như thế này. Và bây giờ chỉ cần tạo dáng nữa thôi là đã có thể sống ảo được rồi!\r\n<center><img src=\'images/news/mixDoGiangSinh/11.jpg\' width=\'600\'></center>\r\nSet đồ dành cho những bạn gái thích sự năng động: chân váy đen xòe và áo sơ mi, thêm một đôi giày đen sẽ giúp diện mạo của bạn thêm trẻ trung, cá tính.\r\n<center><img src=\'images/news/mixDoGiangSinh/12.jpg\' width=\'600\'></center>\r\nĐêm Noel không tránh khỏi những cơn gió lạnh, bạn có thể chọn cho mình một chiếc áo khoác có màu trùng với chân váy hoặc quần legging. Chẳng hạn như áo khoác đen và chân váy đen hoặc áo khoác màu ghi, trắng kết hợp cùng legging đen. Bạn không nên quên chọn cho mình một đôi giày đồng màu với quần hoặc áo hoặc váy nữa nhé!\r\n<br><i>Noel này cần gì cần gì có người yêu nhỉ? Chỉ cần có hội bạn thân này là đủ rồi. Hãy cùng nhau tận hưởng những khoảnh khắc tuyệt vời ngày Giáng sinh và tạo ra những bức ảnh dễ thương qua cách mix đồ ton sur ton này nhé!</i><br>\r\n<br><b>Quyn Quyn</b><br>', '2017-12-17 14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `IDCart` int(10) NOT NULL,
  `IDProduct` int(10) NOT NULL,
  `colorChoose` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sizeChoose` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(10) NOT NULL,
  `sumPrice` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `IDComment` int(10) NOT NULL,
  `IDUser` int(10) NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timeComment` datetime NOT NULL,
  `IDProduct` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`IDComment`, `IDUser`, `content`, `timeComment`, `IDProduct`) VALUES
(1, 1, 'Đẹp quá!', '2017-12-22 20:00:00', 1),
(2, 2, 'Tuyệt vời!', '2017-12-22 20:34:00', 1),
(3, 1, 'Thanks ad ^^', '2017-12-26 01:13:59', 1),
(4, 1, 'test', '2017-12-28 20:26:31', 1),
(0, 1, 'alo', '2017-12-29 23:53:14', 1),
(0, 1, 'het mat roi', '2017-12-29 23:53:58', 3),
(0, 1, '', '2018-05-27 19:24:27', 2),
(0, 1, 'gggg', '2018-06-04 12:21:52', 6);

-- --------------------------------------------------------

--
-- Table structure for table `cthd`
--

CREATE TABLE `cthd` (
  `IDBill int(11) NOT NULL,
  `IDProduct` int(11) NOT NULL,
  `AmountProduct` int(11) NOT NULL,
  `colorChoose`` varchar(100) CHARACTER SET utf8 COChoose`` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sumPLLATE utf8_unicode_ci NOT NULL,
  `sizerice` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cthd`
--

INSERT INTO `cthd` (`IDBill`, `IDProduct`, `AmountProduct`, `colorChoose`, `sizeChoose`, `sumPrice`) VALUES
(0, 4, 4, 'Đen', 's', '1196000'),
(2, 11, 3, 'Xanh chấm bi', 'xl', '750000'),
(0, 14, 1, 'Đen', 's', '600000'),
(2, 5, 2, 'Đỏ', 'xl', '398000'),
(2, 6, 1, 'Xanh', 's', '350000'),
(2, 12, 2, 'Xanh', 'm', '5600000'),
(3, 3, 2, 'Tím', 's', '398000'),
(3, 5, 1, 'Đỏ', 's', '199000'),
(3, 10, 1, 'Đỏ', 's', '350000'),
(4, 7, 1, 'Hồng', 's', '129000'),
(4, 9, 1, 'Xanh', 'xl', '150000'),
(4, 10, 1, 'Đỏ', 's', '350000'),
(4, 12, 2, 'Xanh', 'xl', '5600000'),
(4, 14, 1, 'Đen', 'xl', '600000'),
(5, 6, 2, 'Xanh', 'l', '700000'),
(5, 11, 3, 'Xanh chấm bi', 's', '750000');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `bill` (
  `IDBill` int(11) NOT NULL,
  `timeCreate` datetime NOT NULL,
  `IDAdmin` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nameUser` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phoneNumber` varchar(100) NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `moneyShip` varchar(100) NOT NULL,
  `VAT` varchar(100) NOT NULL DEFAULT '0.1',
  `sumPrice`` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`IDBill`, `timeCreate`, `IDAdmin`, `nameUser`, `phoneNumber`, `address`, `moneyShip`, `VAT`, `sumPrice`) VALUES
(0, '2018-06-02 12:38:42', 'admin', 'Trần Thiện Hòa', '01657790513', 'Quận 9, tp HCM', '40000', '0.1', '2546000'),
(2, '2018-06-04 11:31:01', 'admin', 'Huỳnh Văn Khoa', '0192839202', 'Tân Bình', '40000', '0.1', '6348000'),
(3, '2018-06-04 15:40:41', 'admin', 'Lê Hoàng Vỹ Vỹ', '0192839421', 'Suối Tiên, Quận 9, TP.HCM', '40000', '0.1', '947000'),
(4, '2018-06-04 15:44:34', 'admin', 'Trường CNTT', '02800119923', 'Trường đại học công nghệ thông tin', '40000', '0.1', '6829000'),
(5, '2018-06-04 15:46:19', 'admin', 'Đoàn Văn Châu', '010313', '231, Nguyễn Du', '40000', '0.1', '1450000');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `IDProduct` int(10) NOT NULL,
  `imageLink` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`IDProduct`, `imageLink`) VALUES
(1, 'images/product/thoi-trang-nu/xanh-1-0636086650350562651.jpg'),
(2, 'images/product/thoi-trang-nu/trang-1-0636054082543242809-num1.jpg,images/product/thoi-trang-nu/trang-1-0636054082543242809-num2.jpg,images/product/thoi-trang-nu/trang-1-0636054082543242809-num3.jpg,images/product/thoi-trang-nu/trang-1-0636054082543242809-num4.jpg'),
(3, 'images/product/thoi-trang-nu/tim-1-0636010025286033752-num1.jpg,images/product/thoi-trang-nu/tim-1-0636010025286033752-num2.jpg,images/product/thoi-trang-nu/tim-1-0636010025286033752-num3.jpg,images/product/thoi-trang-nu/tim-1-0636010025286033752-num4.jpg'),
(4, 'images/product/thoi-trang-nu/den-1-0636008271386029189-num1.jpg,images/product/thoi-trang-nu/den-1-0636008271386029189-num2.jpg,images/product/thoi-trang-nu/den-1-0636008271386029189-num3.jpg,\r\nimages/product/thoi-trang-nu/den-1-0636008271386029189-num4.jpg'),
(5, 'images/product/thoi-trang-nu/do-1-0636207801668764682-num1.jpg,images/product/thoi-trang-nu/do-1-0636207801668764682-num2.jpg,images/product/thoi-trang-nu/do-1-0636207801668764682-num3.jpg,images/product/thoi-trang-nu/do-1-0636207801668764682-num4.jpg'),
(6, 'images/product/thoi-trang-nu/xanhsoc-1-0635935674125854622-num1.jpg,\r\nimages/product/thoi-trang-nu/xanhsoc-1-0635935674125854622-num2.jpg,images/product/thoi-trang-nu/xanhsoc-1-0635935674125854622-num3.jpg,images/product/thoi-trang-nu/xanhsoc-1-0635935674125854622-num4.jpg'),
(7, 'images/product/thoi-trang-nu/hong-1-cm-num1.jpg,images/product/thoi-trang-nu/hong-1-cm-num2.jpg,images/product/thoi-trang-nu/hong-1-cm-num3.jpg,images/product/thoi-trang-nu/hong-1-cm-num4.jpg\r\n'),
(8, 'images/product/thoi-trang-nu/xanh-1-0636011521638009955-num1.jpg,images/product/thoi-trang-nu/xanh-1-0636011521638009955-num2.jpg,images/product/thoi-trang-nu/xanh-1-0636011521638009955-num3.jpg,images/product/thoi-trang-nu/xanh-1-0636011521638009955-num4.jpg'),
(9, 'images/product/thoi-trang-nu/xanh-1-0636030480335378891-num1.jpg,\r\nimages/product/thoi-trang-nu/xanh-1-0636030480335378891-num2.jpg,images/product/thoi-trang-nu/xanh-1-0636030480335378891-num3.jpg,images/product/thoi-trang-nu/xanh-1-0636030480335378891-num4.jpg\r\n'),
(10, 'images/product/thoi-trang-nu/do-1-0636046279689386571-num1.jpg,images/product/thoi-trang-nu/do-1-0636046279689386571-num2.jpg,images/product/thoi-trang-nu/do-1-0636046279689386571-num3.jpg,images/product/thoi-trang-nu/do-1-0636046279689386571-num4.jpg'),
(11, 'images/product/thoi-trang-nu/xanh-2-0636028970049926215-num1.jpg,images/product/thoi-trang-nu/xanh-2-0636028970049926215-num2.jpg,images/product/thoi-trang-nu/xanh-2-0636028970049926215-num3.jpg,images/product/thoi-trang-nu/xanh-2-0636028970049926215-num4.jpg'),
(12, 'images/product/thoi-trang-nam/vest-xam-ke-soc-an-tuong-127-num1.jpg,\r\nimages/product/thoi-trang-nam/vest-xam-ke-soc-an-tuong-127-num2.jpg'),
(13, 'images/product/thoi-trang-nam/vest-xam-ke-soc-an-tuong-127-num1.jpg,\r\nimages/product/thoi-trang-nam/vest-xam-ke-soc-an-tuong-127-num2.jpg'),
(14, 'images/product/thoi-trang-nam/quan-au-mau-den-ke-soc-117-num1.jpg,images/product/thoi-trang-nam/quan-au-mau-den-ke-soc-117-num2.jpg,images/product/thoi-trang-nam/quan-au-mau-den-ke-soc-117-num3.jpg,images/product/thoi-trang-nam/quan-au-mau-den-ke-soc-117-num4.jpg'),
(15, 'images/product/thoi-trang-nam/so-mi-trang-cham-den-nho-tinh-te-321-num1.jpg,images/product/thoi-trang-nam/so-mi-trang-cham-den-nho-tinh-te-321-num2.jpg,images/product/thoi-trang-nam/so-mi-trang-cham-den-nho-tinh-te-321-num3.jpg'),
(16, 'images/product/thoi-trang-nam/so-mi-xam-cham-bi-chim-316-num1.jpg,images/product/thoi-trang-nam/so-mi-xam-cham-bi-chim-316-num2.jpg,images/product/thoi-trang-nam/so-mi-xam-cham-bi-chim-316-num1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `Supplier` (
  `IDSupplier` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sumDebt` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `Supplier` (`IDSupplier`, `name`, `kind`, `address`, `sumDebt`) VALUES
(3, 'Công ti dịch vụ Trần Thiện Hòa', 'NCC', 'B133, Tăng Nhơn Phú B, Quận 9, TP.HCM', '100000000'),
(4, 'Công ti phân phối miền Nam', 'KH', 'KCX Linh Trung, quận Thủ Đức, TP.HCM', '12300000'),
(5, 'Công ty may mặc thời trang Huỳnh Khoa', 'NCC', '23 Đồng Nai', '34000000'),
(1, 'Công ty thời trang shopfashion', 'KH', 'B133, Tăng Bạch Hổ, quận Tân Bình, TP.HCM', '54000000'),
(6, 'Công ty TNHH Adidas', 'NCC', '615, Nguyễn Du, quận Bình Thạnh, TP.HCM', '10000000'),
(2, 'Công ty TNHH PT2000', 'NCC', '253 Võ Văn Ngân, Quận Thủ Đức, TP.HCM', '3000000');

-- --------------------------------------------------------

--
-- Table structure for table `nhomtin`
--

CREATE TABLE `groupnews` (
  `IDGroupNews` int(10) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhomtin`
--

INSERT INTO `groupnews` (`IDGroupNews`, `name`) VALUES
(1, 'Thời trang'),
(2, 'Sống khỏe'),
(3, 'Girl'),
(4, 'Đời sống gia đình');

-- --------------------------------------------------------

--
-- Table structure for table `phieuchi`
--

CREATE TABLE `paymentvoucher` (
  `IDTransaction` varchar(100) NOT NULL,
  `timeTransaction` datetime NOT NULL,
  `IDSupplier` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NameTransaction` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phieuchi`
--

INSERT INTO `paymentvoucher` (`IDTransaction`, `timeTransaction`, `IDSupplier`, `NameTransaction`, `value`) VALUES
('GD.001', '2018-06-30 01:00:00', 'Công ty thời trang shopfashion', 'Mua hàng', '54000000'),
('GD.002', '2018-06-30 01:59:00', 'Công ty TNHH Adidas', 'Nhập hàng', '14000000'),
('GD.003', '2018-06-28 02:23:20', 'Công ty TNHH PT2000', 'Nhập quần', '20000000'),
('GD.004', '2018-06-22 08:23:27', 'Công ty thời trang shopfashion', 'Nhập hàng', '2100000'),
('GD.005', '2018-06-22 10:25:00', 'Công ty TNHH Adidas', 'Nhập hàng', '10000000');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `IDProduct` int(10) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `brand` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `status` int(10) NOT NULL,
  `amount` int(11) NOT NULL,
  `sale` int(10) NOT NULL,
  `descrition` varchar(5000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) NOT NULL,
  `image_id` int(10) NOT NULL,
  `image_link` varchar(100) NOT NULL,
  `date_input` date NOT NULL DEFAULT '2018-06-30',
  `IDSupplier` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`IDProduct`, `name`, `brand`, `color`, `price`, `status`, `amount`, `sale`, `descrition`, `category_id`, `image_id`, `image_link`, `date_input`, `IDSupplier`) VALUES
(1, 'Đầm lenin 4 túi thương hiệu Khánh Linh - Màu xanh', 'TWIN', 'Xanh', 0, 1, 2, 70, 'Cùng với những thiết kế tinh tế mang đến vẻ ngoài trẻ trung, duyên dáng và hiện đại cho các bạn gái mỗi khi xuống phố. Chất liệu vải thông thoáng, thấm hút mồ hôi tạo cảm giác dễ chịu cho người mặc. Hãy nhanh tay mua ngay để nhận được những giá trị hấp dẫn bạn nhé!', 4, 1, 'images/product/thoi-trang-nu/xanh-1-0636086650350562651.jpg', '2018-06-30', ''),
(2, 'Đầm Đuôi Cá Form Suông Màu Trắng TP61', 'The fashion', 'Trắng,Xanh', 315000, 0, 0, 10, 'Cùng với những thiết kế tinh tế mang đến vẻ ngoài trẻ trung, duyên dáng và hiện đại cho các bạn gái mỗi khi xuống phố. Chất liệu vải thông thoáng, thấm hút mồ hôi tạo cảm giác dễ chịu cho người mặc. Hãy nhanh tay mua ngay để nhận được những giá trị hấp dẫn bạn nhé!', 4, 2, 'images/product/thoi-trang-nu/trang-1-0636054082543242809.jpg', '2018-06-30', ''),
(3, 'Đầm dây Hàn Quốc hoa tím đính nút', 'Spandex', 'Tím', 199000, 1, 0, 0, 'Cùng với những thiết kế tinh tế mang đến vẻ ngoài trẻ trung, duyên dáng và hiện đại cho các bạn gái mỗi khi xuống phố. Chất liệu vải thông thoáng, thấm hút mồ hôi tạo cảm giác dễ chịu cho người mặc. Hãy nhanh tay mua ngay để nhận được những giá trị hấp dẫn bạn nhé!', 4, 3, 'images/product/thoi-trang-nu/tim-1-0636010025286033752.jpg', '2018-06-30', ''),
(4, 'Đầm công sở xòe nhấn eo sát nách', 'The fashion', 'Đen', 299000, 1, 23, 0, 'Đầm công sở xòe nhấn eo sát nách thiết kế thanh lịch, mang đến phong cách trẻ trung, sang trọng cho chị em phụ nữ.\r\nKiểu dáng form hơi xòe nhẹ tôn lên vóc dáng cân đối, cổ tròn tay sát nách, ở phần thân chít eo tạo điểm nhấn nổi bật cho trang phục.\r\nKhóa kéo nổi sau lưng được thiết kế chắc chắn, cho bạn nữ thoải mái vận động khi diện đầm nơi công sở hoặc lúc dạo phố.\r\nChất liệu thun nhũ mát mẻ, tạo cảm giác dễ chịu khi mặc.\r\nXuất xứ: Việt Nam', 4, 4, 'images/product/thoi-trang-nu/den-1-0636008271386029189.jpg', '2018-06-30', ''),
(5, 'Bộ mặc nhà Nutica lai cách điệu QN-TN màu đô', 'The fashion', 'Đỏ', 199000, 1, 0, 0, 'Size M: Dài 93; Vai 35; Ngực 80; Eo nhún 50\r\nSize L: Dài 94; Vai 36; Ngực 82; Eo nhún 52\r\nSize XL: Dài 95; Vai 37; Ngực 84; Eo nhún 54 \r\nBST Thời trang sành điệu VNXK cao cấp được thiết kế thời trang, duyên dáng với những chân váy sành điệu, trẻ trung, những chiếc áo kiểu nền nã, hiện đại thực sự là lựa chọn hoàn hảo cho các cô nàng thanh lịch. Được may từ chất liệu vải mềm mịn, thoáng mát, các sản phẩm được tạo nên form dáng chuẩn và đem tới gu thẩm mỹ riêng cho bạn gái mỗi khi diện. Nhanh tay để chọn ngay cho mình bộ trang phục ưng ý nhất nào các nàng!', 5, 5, 'images/product/thoi-trang-nu/do-1-0636207801668764682.jpg', '2018-06-30', ''),
(6, 'Đồ mặc nhà Jumsuit cổ V sọc xanh Twins', 'Spandex', 'Xanh,Đỏ', 350000, 1, 33, 0, 'Thiết kế trẻ trung, màu sắc tươi mới mang đến bạn gái diện mạo gọn gàng và năng động ngay cả khi ở nhà.\r\nKiểu dáng đơn giản, form lửng thoải mái, tạo cho bạn sự khỏe khoắn, trẻ trung.\r\nHọa tiết tinh tế và đẹp mắt đem lại sự đáng yêu, duyên dáng.\r\nChất liệu: cotton thoáng mát, bạn dễ dàng làm việc nhà hay hoạt động một cách tự nhiên, thoải mái.\r\nXuất xứ: Việt Nam.', 5, 6, 'images/product/thoi-trang-nu/xanhsoc-1-0635935674125854622.jpg', '2018-06-30', ''),
(7, 'Đồ mặc nhà áo tay con, quần short - Sọc hồng KIR24116/12147', 'Spandex', 'Hồng', 129000, 1, 23, 0, 'Thiết kế trẻ trung, màu sắc tươi mới mang đến bạn gái diện mạo gọn gàng và năng động ngay cả khi ở nhà.\r\nKiểu dáng đơn giản, form lửng thoải mái, tạo cho bạn sự khỏe khoắn, trẻ trung.\r\nHọa tiết tinh tế và đẹp mắt đem lại sự đáng yêu, duyên dáng.\r\nChất liệu: cotton thoáng mát, bạn dễ dàng làm việc nhà hay hoạt động một cách tự nhiên, thoải mái.\r\nXuất xứ: Việt Nam.', 5, 7, 'images/product/thoi-trang-nu/hong-1-cm.jpg', '2018-06-30', ''),
(8, 'Jumsuit cổ V sọc xanh Twins', 'The fashion', 'Xanh', 99000, 0, 34, 0, 'BST Thời trang sành điệu VNXK cao cấp được thiết kế thời trang, duyên dáng với những chân váy sành điệu, trẻ trung, những chiếc áo kiểu nền nã, hiện đại thực sự là lựa chọn hoàn hảo cho các cô nàng thanh lịch. Được may từ chất liệu vải mềm mịn, thoáng mát, các sản phẩm được tạo nên form dáng chuẩn và đem tới gu thẩm mỹ riêng cho bạn gái mỗi khi diện. Nhanh tay để chọn ngay cho mình bộ trang phục ưng ý nhất nào các nàng!', 5, 8, 'images/product/thoi-trang-nu/xanh-1-0636011521638009955.jpg', '2018-06-30', ''),
(9, 'Áo khoác kiểu bóng chày in hình cô gái màu xanh', 'Spandex', 'Xanh', 150000, 1, 56, 30, 'Thiết kế trẻ trung, khỏe khoắn, form áo vừa vặn, sản phẩm sẽ là chiếc áo khoác lý tưởng mang đến bạn sự thoải mái, dễ chịu mỗi khi mặc.\r\nVừa có tác dụng giúp bạn che bớt ánh nắng, khói bụi khi đi ra ngoài vừa giữ ấm vào buổi tối.\r\nKiểu áo có mũ, tay dài bo tiện dụng giúp bảo vệ làn da và mái tóc cho bạn gái.\r\nÁo có khóa kéo chắc chắn phối túi hai bên cá tính tạo nên vẻ ngoài trẻ trung.\r\nChất liệu: vải nỉ.\r\nXuất xứ: Việt Nam', 6, 9, 'images/product/thoi-trang-nu/xanh-1-0636030480335378891.jpg', '2018-06-30', ''),
(10, 'Áo khoác nỉ in chữ ADIDAS màu đỏ', 'Vascara', 'Đỏ', 350000, 1, 34, 0, 'Thiết kế trẻ trung, khỏe khoắn, form áo vừa vặn, sản phẩm sẽ là chiếc áo khoác lý tưởng mang đến bạn sự thoải mái, dễ chịu mỗi khi mặc.\r\nVừa có tác dụng giúp bạn che bớt ánh nắng, khói bụi khi đi ra ngoài vừa giữ ấm vào buổi tối.\r\nKiểu áo có mũ, tay dài bo tiện dụng giúp bảo vệ làn da và mái tóc cho bạn gái.\r\nÁo có khóa kéo chắc chắn phối túi hai bên cá tính tạo nên vẻ ngoài trẻ trung.\r\nChất liệu: vải nỉ.\r\nXuất xứ: Việt Nam', 6, 10, 'images/product/thoi-trang-nu/do-1-0636046279689386571.jpg', '2018-06-30', ''),
(11, 'Áo khoác thun cotton chấm bi màu xanh', 'Spandex', 'Xanh chấm bi', 250000, 1, 0, 0, 'Thiết kế trẻ trung, khỏe khoắn, form áo vừa vặn, sản phẩm sẽ là chiếc áo khoác lý tưởng mang đến bạn sự thoải mái, dễ chịu mỗi khi mặc.\r\nVừa có tác dụng giúp bạn che bớt ánh nắng, khói bụi khi đi ra ngoài vừa giữ ấm vào buổi tối.\r\nKiểu áo có mũ, tay dài bo tiện dụng giúp bảo vệ làn da và mái tóc cho bạn gái.\r\nÁo có khóa kéo chắc chắn phối túi hai bên cá tính tạo nên vẻ ngoài trẻ trung.\r\nChất liệu: vải nỉ.\r\nXuất xứ: Việt Nam', 6, 11, 'images/product/thoi-trang-nu/xanh-2-0636028970049926215.jpg', '2018-06-30', ''),
(12, 'Vest xanh vân vuông', 'Vascara', 'Xanh', 2800000, 1, 54, 0, '', 9, 12, 'images/product/thoi-trang-nam/vest-xam-ke-soc-an-tuong-127.jpg', '2018-06-30', ''),
(13, 'Vest xanh vân vuông', 'Spandex', 'Xanh', 2800000, 1, 0, 0, '', 9, 13, 'images/product/thoi-trang-nam/vest-xam-ke-soc-an-tuong-127.jpg', '2018-06-30', ''),
(14, 'Quần Âu màu đen kẻ sọc', 'Vascara', 'Đen,Nâu', 600000, 1, 43, 0, '', 8, 14, 'images/product/thoi-trang-nam/quan-au-mau-den-ke-soc-117.jpg', '2018-06-30', ''),
(15, 'Sơ mi trắng', 'Spandex', 'Trắng', 600000, 1, 43, 0, '', 7, 15, 'images/product/thoi-trang-nam/so-mi-trang-cham-den-nho-tinh-te-321.jpg', '2018-06-30', ''),
(16, 'Sơ mi xám chấm bi chìm', 'Spandex', 'Xám,Xanh', 600000, 1, 43, 0, '', 7, 16, 'images/product/thoi-trang-nam/so-mi-xam-cham-bi-chim-316.jpg', '2018-06-30', ''),
(17, 'Sơ mi dài tay xanh navy lịch lãm', 'Spandex', 'Xanh', 600000, 1, 0, 0, '', 7, 17, 'images/product/thoi-trang-nam/so-mi-xanh-tim-hoa-tiet-tron-306.jpg', '2018-06-30', ''),
(18, 'Thắt lưng da khóa tròn chạm khắc nổi', 'The fashion', 'Đà', 600000, 1, 53, 0, '', 10, 18, 'images/product/phu-kien/that-lung-da-khoa-tron-cham-khac-noi-226.png', '2018-06-30', ''),
(19, 'Thắt lưng da khóa vân mạ vàng', 'Nice', '', 600000, 1, 535, 0, '', 10, 19, 'images/product/phu-kien/that-lung-da-khoa-van-ma-vang-230-ff0c1375-f337-4d21-b8b8-bb2e91787170.png', '2018-06-30', ''),
(20, 'Đồng hồ Carnival phong cách châu Âu', 'Nice', '', 300000, 1, 54, 0, '', 10, 20, 'images/product/phu-kien/2016-Top-10-Brand-Carnival-Automatical-Mechanical.jpg', '2018-06-30', ''),
(21, 'Giày tây nam', 'Nice', '', 1800000, 1, 54, 0, '', 10, 21, 'images/product/phu-kien/giay-da-tay-nam.jpg', '2018-06-30', ''),
(22, 'Giày tây nam cao cấp', 'Nice', '', 2800000, 1, 21, 0, '', 10, 22, 'images/product/phu-kien/images.jpg', '2018-06-30', ''),
(23, 'Giày cao gót mũi đế vương nữ xinh', 'Spandex', '', 900000, 1, 21, 0, '', 11, 23, 'images/product/phu-kien/giay-cao-got-ho-mui-de-vuong-nu-xinh-1m4G3-OIk1B3.jpg', '2018-06-30', ''),
(24, 'Túi xách thời trang nữ', 'Spandex', '', 1600000, 1, 0, 0, '', 11, 24, 'images/product/phu-kien/tui-xach-nu-svn.jpg', '2018-06-30', ''),
(25, 'Ví thời trang nữ', 'The fashion', 'Xanh dương', 900000, 1, 0, 20, '', 11, 25, 'images/product/phu-kien/vi-nu-da-that-nucelle-070363-11-1-jpeg.jpg', '2018-06-30', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `name`, `parent_id`) VALUES
(1, 'Thời trang nữ', 0),
(2, 'Thời trang nam', 0),
(3, 'Phụ kiện', 0),
(4, 'Váy đầm', 1),
(5, 'Đồ mặc nhà', 1),
(6, 'Áo khoát nữ', 1),
(7, 'Áo thun nam', 2),
(8, 'Quần jean nam', 2),
(9, 'Áo vest nam', 2),
(10, 'Phụ kiện nam', 3),
(11, 'Phụ kiện nữ', 3);

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `idrep` int(10) NOT NULL,
  `iduser` int(10) NOT NULL,
  `reply` longtext NOT NULL,
  `daterep` datetime NOT NULL,
  `idcmt` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reply`
--

INSERT INTO `reply` (`idrep`, `iduser`, `reply`, `daterep`, `idcmt`) VALUES
(1, 2, 'Yep!', '2012-12-22 20:31:01', 1),
(2, 1, ':))', '2017-12-22 20:32:00', 1),
(3, 1, 'test', '2017-12-28 20:56:28', 1),
(4, 1, 'test 2', '2017-12-28 21:06:39', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `IDUser` int(10) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lastlogin` date NOT NULL,
  `datebirth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`IDUser`, `email`, `password`, `firstname`, `lastname`, `lastlogin`, `datebirth`) VALUES
(1, 'abc@gmail.com', 'abc', 'Văn Linh', 'Phạm', '2018-06-14', '2000-06-13'),
(2, 'chitrai@gmail.com', 'chitai', 'Trung Kiên', 'Trần', '2018-06-30', '1998-06-27'),
(3, 'tuduyen@gmail.com', 'tuduyen', 'Nguyễn', 'Tú Duyên', '2018-06-14', '1990-06-19'),
(4, 'ngocquy', 'ngoquy', 'Ngọc Quý', 'Phạm Thị', '2018-06-29', '1998-06-25'),
(7, 'vana@gmail.com', 'van1', 'Văn A', 'Nguyễn', '2018-05-10', '1998-10-09'),
(8, 'thien@gmail.com', 'tthienhoa', 'Thiện B', 'Trần', '2018-05-26', '1998-05-21'),
(9, 'khoavan@gmail.com', 'vankhoa', 'Văn Khoa', 'Nguyễn', '2018-05-31', '1997-05-16'),
(10, 'vy@gmail.com', 'vy', 'Hoàng Vỹ Vỹ', 'Lê', '2018-05-23', '1997-05-03'),
(11, 'chauvan@gmail.com', 'vanchau', 'Văn Châu', 'Đoàn', '2018-05-18', '1995-05-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`IDdmin`);

--
-- Indexes for table `bangtin`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`IDNews`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`IDCart`),

--
-- Indexes for table `cthd`
--
ALTER TABLE `cthd`
  ADD PRIMARY KEY (`IDBill`,`IDProduct`) USING BTREE;

--
-- Indexes for table `hoadon`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`IDBill`);

--
-- Indexes for table `image`
--

--
-- Indexes for table `nhacungcap`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
