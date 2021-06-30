-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th6 26, 2021 lúc 04:39 AM
-- Phiên bản máy phục vụ: 5.7.31
-- Phiên bản PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ltw`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `allbook`
--

DROP TABLE IF EXISTS `allbook`;
CREATE TABLE IF NOT EXISTS `allbook` (
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `price` float NOT NULL,
  `pic` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `pic2` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `pic3` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `content` text COLLATE utf8_vietnamese_ci NOT NULL,
  `likes` int(11) NOT NULL,
  `classify` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `allbook`
--

INSERT INTO `allbook` (`name`, `price`, `pic`, `pic2`, `pic3`, `content`, `likes`, `classify`) VALUES
('Muon Kiep Nhan Sinh', 120000, 'muon-kiep-nhan-sinh.jpg', 'muon-kiep-nhan-sinh-2.jpg', 'muon-kiep-nhan-sinh-3.jpg', 'Từ những cơ duyên kỳ lạ trong cuộc sống, Thomas được kết nối với tiền kiếp của chính mình, nhìn được nhân - quả của mình qua vòng luân hồi của nhiều kiếp nhân sinh.\r\n\r\nTo lớn hơn là từ câu chuyện của Thomas, tác giả và nhân vật chính đặt một vấn đề lớn rằng những gì mà các nhà khoa học và khảo cổ hiểu biết về các nền văn minh cổ xưa trên thế giới còn quá hạn hẹp. \r\n\r\nVì ngoài Lưỡng Hà và Ai Cập, có quá nhiều dấu chỉ khác củng cố niềm tin rằng đã có nhiều nền văn minh cổ xưa hơn tồn tại; và đã có nhiều hơn một nền văn minh đồng thời tồn tại cùng nhau, như Atlantis qua đời sống tiền kiếp của Thomas, hiển hiện là một nền văn minh cổ xưa có thật, không phải trong hư cấu.', 100, ''),
('fdsf', 10000, 'battre2.jpg', 'battre3.jpg', 'battre.jpg', 'fdsfdf', 0, ''),
('dfsfd', 123123000, 'con-chim-xanh-biec-bay-ve-troi.jpg', 'con-chim-xanh-biec-bay-ve-troi-2.jpg', 'con-chim-xanh-biec-bay-ve-troi-3.jpg', 'dfsgfadsgfsg', 0, ''),
('Bat Tre Dong Xanh', 110000, 'battre.jpg', 'battre2.jpg', 'battre3.jpg', 'Nằm trong chuỗi sách hay nên đọc 2020, Bắt Trẻ Đồng Xanh (tên tiếng Anh là: “The Catcher in the Rye”) là cuốn tiểu thuyết của nhà văn nổi tiếng người Mỹ J.D.Salinger. Tác phẩm nói lại câu chuyện của nhân vật chính, Holden Caulfield, trong những mốc thời gian cậu ở thành phố New York sau khi bị đuổi học khỏi trường dự bị đại học Pencey Prep.\r\n\r\nBắt trẻ đồng xanh mượn lời của Holden Caufield để nhìn ra cuộc sống một cách hài hước và chân thực hơn. Nội dung của sách đa phần là những lời lảm nhảm hàng giờ liền của Holden, nhưng tôi thấy nó không hề nhàm chán mà ngược lại rất hài hước và lôi cuốn đến từng trang cuối.\r\n\r\nĐặc biệt, tôi thấy được tình cảm yêu thương của Holden dành cho cậu em trai đã mất cũng như với cô em gái ngây thơ, dễ mến nhưng lại quá người lớn khi chỉ trích tính trẻ con của ông anh. Đọc xong quyển sách này, chợt thấy thích Holden cực kì, nhưng mà cái tính nổi loạn thì phải dè chừng.\r\n\r\nNgôn từ giản dị, đôi lúc cũng khá thô tục để thể hiện các tính của nhân vật, cuốn sách đi vào lòng người bởi các triết lý giản đơn vẫn đang hiện hữu từng ngày trong cuộc sống. Và rồi sẽ đọng lại trong lòng người đọc một ý nghĩ tưởng như đã xem nhẹ từ lâu: Mình là chính mình.', 0, ''),
('Day con lam giau', 100000, 'dayconlmgiau.jpg', 'dayconlmgiau2.jpg', 'dayconlmgiau3.jpg', 'Nên đọc cuốn sách nào về kinh doanh , dạy làm giàu ?\r\n\r\nCó rất nhiều cuốn sách nói về vấn đề này, nhưng với Dạy Con Làm Giàu của tác giả Robert Kiyosaki sẽ luôn là cuốn sách kinh điển về việc dạy làm giàu bằng cả tư duy và kĩ năng\r\n\r\n\r\n \r\nTác giả của nhiều cuốn sách tài chính cá nhân và giảng viên Robert T. Kiyosaki đã phát triển quan điểm kinh tế độc đáo của mình từ hai ảnh hưởng rất khác nhau từ hai ông bố của ông. Một người cha (cha đẻ của Robert) là một người có học thức cao nhưng nghèo tài chính. Người cha kia là cha của người bạn thân nhất của Robert – cha của anh ta là người bỏ học thứ tám, người đã trở thành một triệu phú. Hai người cha, đều là những người có sự thành đạt trong cuộc sống, tính cách mạnh mẽ và có sức ảnh hưởng đến người khác\r\n\r\nCuốn sách Dạy Con Làm Giàu nói về cách làm sinh ra đồng tiền và quan điểm rất hay về đồng tiền., khơi dậy khả năng kiếm tiền của mỗi cá nhân.\r\n\r\nDạy Con Làm Giàu không chỉ đơn giản là 1 cuốn sách hay nên đọc 2020 nói đến đồng tiền. Nó còn hướng dẫn bạn cách tư duy của người giàu, cách sử dụng đồng tiền. Điều mà bạn chưa bao giờ được biết khi còn đi học', 0, ''),
('Đung Bao Gio Di An Mot Minh', 160000, 'dunganmotminh.jpg', 'dunganmotminh2.jpg', 'dunganmotminh3.jpg', 'Trong danh sách cuốn sách hay nên đọc 2020, không thể thiếu Đừng bao giờ đi ăn một mình\r\n\r\n“Trong chúng ta ai cũng có khả năng quyến rũ người khác – cho dù đó là đồng nghiệp, người xa lạ, bạn bè, hay sếp của mình đi nữa. Nhưng với sự giao tiếo và bí quyết vận dụng nó, và đó là lý do tại sao có những người đi qua cuộc đời này lặng lẽ như những dòng bóng, trong khi có người luôn thu hút được sự chú ý bất cứ nơi đâu họ xuất hiện.”\r\n\r\nCho nên, Đừng Bao Giờ Đi Ăn Một Mình.', 0, ''),
('Harry Potter', 200000, 'hary.jpg', 'hary2.jpg', 'hary3.jpg', 'Bộ truyện dài 7 tập “Harry Potter” là tác phẩm đáng tự hào nhất, nổi tiếng nhất đồng thời cũng là tác phẩm mang lại danh tiếng cho sự nghiệp văn chương của nữ tác giả người Anh J. K. Rowling.\r\n\r\nNhững chuyến phiêu lưu của Harry Potter cùng bạn bè tại tại ngôi trường phù thủy Hogwarts, cùng nhau chống lại mọi âm mưu đen tối của chúa tể hắc ám sẽ đưa bạn đến những cung bậc cảm xúc mạnh mẽ nhất.\r\n\r\nHarry Potter là cuốn sách nên đọc nhất của trẻ em trên toàn thế giới.', 0, ''),
('Nha Lanh Dao Khong Chuc Danh', 130000, 'lanhdaokhongdanh.jpg', 'lanhdaokhongdanh2.jpg', 'lanhdaokhongdanh3.jpg', 'Trong cuốn sách Nhà Lãnh Đạo không Chức Danh, bạn sẽ học được:\r\n\r\n– Làm thế nào để làm việc và tạo ảnh hưởng với tất cả mọi người như 1 chính trị gia, bất chấp bạn đang ở vị trí nào.\r\n\r\n\r\n \r\n– Một bí quyết để nhận biết và nắm bắt cơ hội vào những thời điểm thay đổi.\r\n\r\n– Những bí mật thật sự của sự đổi mới.\r\n\r\n– Một chiến lược tức thời để xây dựng đội nhóm hoàn hảo và trở thành 1 nhà chế tạo ngoạn mục của khách hàng.\r\n\r\n– Các thủ thuật giúp trở nên mạnh mẽ cả về thể chất lẫn tinh thần để luôn đi đầu trong lĩnh vực của bạn.\r\n\r\n– Những phương thức thực tế để đánh bại sự căng thẳng, xây dựng một ý chí bất bại, giải phóng năng lượng, và cân bằng được cuộc sống cá nhân.\r\n\r\nCho dù bạn làm gì trong tổ chức và cuộc sống hiện nay của bạn như thế nào, một thực tế quan trọng duy nhất là bạn hoàn toàn có khả năng thể hiện năng lực để làm lãnh đạo. Cho dù sự nghiệp hiện nay của bạn đang ở đâu, bạn vẫn luôn cần thể hiện các khả năng tột đỉnh của mình. Cuốn sách này sẽ hướng dẫn bạn làm thế nào để khai thác tối đa khả năng trong chính bạn, cũng như thay đổi cuộc sống và thế giới ở quanh bạn. ', 0, ''),
('Cafe Cung Tony', 10000, 'ca-phe-cung-tony.jpg', 'ca-phe-cung-tony-2.jpg', 'ca-phe-cung-tony-3.jpg', 'Cà Phê Cùng Tony\r\n\r\nCà phê cùng Tony là sự tập hợp các bài viết trên trạng mạng xã hội của tác giả Tony Buổi Sáng (TnBS) về những bài học, câu chuyện anh đã trải nghiệm trong cuộc sống. Đó có thể là cách anh chia sẻ với các bạn trẻ về những chuyện to tát như khởi nghiệp,đạo đức kinh doanh, học tập đến những việc nhỏ nhặt như ăn mặc, giao tiếp, vệ sinh cơ thể… sao cho văn minh, lịch sự. Hay chỉ đơn giản thuật lại những trải nghiệm thực tế của anh trong quá trình sống, kinh doanh ở trong và ngoài nước.\r\n\r\nXuyên suốt cuốn sách, các câu chuyện được kể với giọng điệu trào phúng, hài hước lại được thể hiện bằng ngôn ngữ “cư dân mạng” tạo sự gần gũi để các bạn trẻ có thể dễ dàng tiếp nhận. Mặc dù tác giả luôn khẳng định những thông tin, chi tiết trong câu chuyện là hư cấu và thậm xưng nhưng điều đó không có nghĩa làm cuốn sách bớt đi sự thú vị.\r\n\r\nChia sẻ về sự ra đời của cuốn sách, tác giả tâm niệm không muốn những điều anh tâm đắc và đúc kết chỉ dừng lại ở mạng xã hội. Anh hi vọng những câu chuyện của mình thông qua Cà phê cùng Tony có thể thổi nguồn cảm hứng tới những độc giả không có điều kiện sử dụng internet, đồng thời khuyến khích văn hóa đọc ở các bạn trẻ trong thời đại mà văn hóa nghe nhìn đang  dần chiếm ưu thế. Đơn giản và không cầu kì, đọc Cà phê cùng Tony, độc giả sẽ cảm thấy như đang khám phá câu chuyện của chính mình qua cách kể  của một người khác.\r\n\r\nĐược bầu chọn là 1 trong những cuốn sách hay nên đọc cho tuần đầu tháng 10, với Cà phê cùng Tony, độc giả sẽ không thể cười lớn như khi đọc những mẩu chuyện cười mà chỉ có thể tủm tỉm với những triết lí dí dỏm mà TnBS mang đến.', 0, ''),
('Chuyen Con Meo Day Hai Au Bay (Tái Bản 2017)', 100000, 'chuyen-con-meo-day-hai-au-bay.jpg', 'chuyen-con-meo-day-hai-au-bay-2.jpg', 'chuyen-con-meo-day-hai-au-bay-3.jpg', 'Chuyện Con Mèo Dạy Hải Âu Bay (Tái Bản 2017)\r\n\r\nCó tồn tại không tình thương yêu giữa mèo và hải âu?\r\n\r\nThế giới này đầy những nghịch lý và khác biệt, nhưng bỏ qua những khác biệt đó để hướng đến tình yêu thương thì cuộc sống sẽ tốt đẹp hơn.“Chuyện con mèo dạy hải âu bay” của nhà văn Chi Lê nổi tiếng Luis SéPulveda.là một câu chuyện thấm đẫm tình mèo, tình người như thế.\r\n\r\nCâu chuyện là cuộc hành trình dài đi thực hiện ba lời hứa của chú mèo mập Zorba: “sẽ không ăn quả trứng”, sẽ “chăm lo cho quả trứng đến khi chú chim non ra đời”, và điều cuối dường như không tưởng là “dạy nó bay”. Những rắc rối liên tiếp ập đến, liệu một bà má rất “xịn” như Zorba có thực hiện đúng được ba lời hứa?\r\n\r\nTình thương giúp thay đổi định kiến.\r\n\r\nMọi khó khăn đã chứng minh rằng sau thẳm bên trong chú mèo Zorba là một trái tim nhân hậu, tràn trề thứ tình cảm gọi là “yêu thương chân thành”. Chính thứ tình cảm này đã kéo cô bé chim hải âu nhỏ gần lại với mèo Zorba, bởi “Thật dễ dàng để chấp nhận và yêu thương một kẻ nào đó giống mình, nhưng để yêu thương ai đó khác mình thực sự rất khó khăn..”. Vậy đấy, yêu thương là học cách chấp nhận sự khác biệt và không có ý định muốn biến người đó trở nên giống mình. Khi chúng ta yêu thương ai đó bằng tất cả sự chân thành, thì mọi định kiến và khác biệt chỉ là điểm tựa cho tình cảm cao đẹp trong loài mèo, loài người ấy được sâu sắc hơn thôi.\r\n', 0, ''),
('Khi Loi Thuoc Ve Nhung Sao', 120000, 'khi-loi-thuoc-ve-nhung-vi-sao.gif', 'khi-loi-thuoc-ve-nhung-vi-sao-2.jpg', 'khi-loi-thuoc-ve-nhung-vi-sao-3.jpg', 'Khi Lỗi Thuộc Về Những Vì Sao\r\n\r\nMặc dù phép màu y học đã giúp thu hẹp khối u và ban thêm vài năm sống cho Hazel nhưng cuộc đời cô bé đang ở vào giai đoạn cuối, từng chương kế tiếp được viết theo kết quả chẩn đoán. Nhưng khi có một nhân vật điển trai tên là Augustus Waters đột nhiên xuất hiện tại Hội Tương Trợ Bệnh Nhi Ung Thư, câu chuyện của Hazel sắp được viết lại hoàn toàn.\r\n\r\nSâu sắc, táo bạo, ngang tàng, và thô ráp, Khi lỗi thuộc về những vì sao là tác phẩm thương tâm và tham vọng nhất của John Green, tác giả của những giải thưởng, nhưng đồng thời lại khám phá một cách khéo léo nét hài hước, li kỳ, và bi thảm của việc sống và việc yêu.\r\n', 0, ''),
('Dac Nhan Tam (Kho lon)', 130000, 'dac-nhan-tam.jpg', 'dac-nhan-tam-2.jpg', 'dac-nhan-tam-3.jpg', 'Đắc nhân tâm của Dale Carnegie là quyển sách duy nhất về thể loại self-help liên tục đứng đầu danh mục sách bán chạy nhất (best-selling Books) do báo The New York Times bình chọn suốt 10 năm liền. Được xuất bản năm 1936, với số lượng bán ra hơn 15 triệu bản, tính đến nay, sách đã được dịch ra ở hầu hết các ngôn ngữ, trong đó có cả Việt Nam, và đã nhận được sự đón tiếp nhiệt tình của đọc giả ở hầu hết các quốc gia.\r\n\r\nLà quyển sách đầu tiên có ảnh hưởng làm thay đổi cuộc đời của hàng triệu người trên thế giới, Đắc Nhân Tâm là cuốn sách đem lại những giá trị tuyệt vời cho người đọc, bao gồm những lời khuyên cực kì bổ ích về cách ứng xử trong cuộc sống hàng ngày. Sức lan toả của quyển sách vô cùng rộng lớn – với nhiều tầng lớp, đối tượng.\r\n\r\nĐắc Nhân Tâm không chỉ là là nghệ thuật thu phục lòng người, Đắc Nhân Tâm còn đem lại cho độc giả góc nhìn, suy nghĩ sâu sắc về việc giao tiếp ứng xử.\r\n\r\nTriết lý của Đắc Nhân Tâm là hiểu mình, thành thật với chính mình, từ đó hiểu biết và quan tâm đến những người xung quanh để nhìn ra và khơi gợi những tiềm năng ẩn khuất nơi họ, giúp họ phát triển lên một tầm cao mới. Đây chính là nghệ thuật cao nhất về con người và chính là ý nghĩa sâu sắc nhất đúc kết từ những nguyên tắc vàng của Dale Carnegie.\r\n\r\nĐây là phiên bản Đắc Nhân Tâm đặc biệt, bìa cứng dày 320 trang, do First News thực hiện và Nhà xuất bản Tổng hợp TP.HCM ấn hành.', 0, ''),
('Ong Tram Tuoi Treo Qua Cua So Va Bien Mat (Tai ban)', 160000, 'ong-tram-tuoi-treo-qua-cua-so-va-bien-mat.jpg', 'ong-tram-tuoi-treo-qua-cua-so-va-bien-mat-2.jpg', 'ong-tram-tuoi-treo-qua-cua-so-va-bien-mat-3.jpg', 'Vào ngày sinh nhật lần thứ 100 của mình, cụ ông Allan Karlsson đột nhiên trèo qua của sổ ngôi nhà dưỡng lão – Nhà Già – và biến mất. Ở cái tuổi 100 hiếm ai đạt tới thì cụ có thể đi đâu được? Một cuộc truy tìm trên khắp nước Thụy Điển diễn ra từ phía những người có trách nhiệm chăm nom cụ cũng như chính quyền sở tại. Song song với cuộc truy tìm nhân đạo ấy, một cuộc truy tìm đuổi bắt khác gay cấn hơn, xảy đến từ một tên tội phạm, kẻ đã ngớ ngẩn hoặc đúng hơn, bất cẩn trao vali 50 triệu crown vào tay cụ già này.\r\n\r\nNhưng một người đã sống qua một thế kỷ thì không dễ gì tóm cụ ta được. Cuốn tiểu thuyết hồi tưởng lại cuộc đời phiêu lưu của Allan Karlsson, người đã đi khắp thế giới từ những năm trước Đại chiến thế giới thứ nhất đến cuộc Thế chiến thứ hai, từ nước Nga Xô Viết tới nước Mỹ siêu cường và nước Trung Quốc con rồng đang lên ở Viễn Đông. Cuốn tiểu thuyết với giọng điệu hóm hỉnh trào lộng, dẫn dắt người đọc chu du cùng Allan qua những tình huống giả tưởng làm bật lên cái nhìn tưng tửng về thế giới này. Những xung đột văn hóa, ý thức hệ và những nét khác thường của các vùng đất xa xôi, càng chứng tỏ sự đa dạng của nhân loại trong thế giới có vẻ phẳng này.\r\n\r\nCuốn tiểu thuyết Ông trăm tuổi bốc hơi qua cửa sổ đã trở thành hiện tượng quốc gia ở Thụy Điển, đem lại cho người đọc một cái nhìn hài hước kín đáo của văn hóa Bắc Âu, nơi có truyền thống tôn quý văn học lâu đời.\r\n', 0, ''),
('Nha Gia Kim', 110000, 'nha-gia-kim.jpg', 'nha-gia-kim-2.jpg', 'nha-gia-kim-3.jpg', 'Nhà Giả Kim\r\n\r\nTất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người.\r\n\r\nTiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.\r\n\r\n“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”\r\n\r\n- Trích Nhà giả kim\r\n', 0, ''),
('Hoang Tu Be (Tai Ban 2019)', 180000, 'hoang-tu-be.jpg', 'hoang-tu-be-2.jpg', 'hoang-tu-be-3.jpg', 'Hoàng tử bé được viết ở New York trong những ngày tác giả sống lưu vong và được xuất bản lần đầu tiên tại New York vào năm 1943, rồi đến năm 1946 mới được xuất bản tại Pháp. Không nghi ngờ gì, đây là tác phẩm nổi tiếng nhất, được đọc nhiều nhất và cũng được yêu mến nhất của Saint-Exupéry. Cuốn sách được bình chọn là tác phẩm hay nhất thế kỉ 20 ở Pháp, đồng thời cũng là cuốn sách Pháp được dịch và được đọc nhiều nhất trên thế giới. Với 250 ngôn ngữ dịch khác nhau kể cả phương ngữ cùng hơn 200 triệu bản in trên toàn thế giới, Hoàng tử bé được coi là một trong những tác phẩm bán chạy nhất của nhân loại.\r\n\r\nỞ Việt Nam, Hoàng tử bé được dịch và xuất bản khá sớm. Từ năm 1966 đã có đồng thời hai bản dịch: Hoàng tử bé của Bùi Giáng do An Tiêm xuất bản và Cậu hoàng con của Trần Thiện Đạo do Khai Trí xuất bản. Từ đó đến nay đã có thêm nhiều bản dịch Hoàng tử bé mới của các dịch giả khác nhau. Bản dịch Hoàng tử bé lần này, xuất bản nhân dịp kỷ niệm 70 năm Hoàng tử bé ra đời, cũng là ấn bản đầu tiên được Gallimard chính thức chuyển nhượng bản quyền tại Việt Nam, hy vọng sẽ góp phần làm phong phú thêm việc dịch và tiếp nhận tác phẩm quan trọng này với các thế hệ độc giả.\r\n\r\nTôi cứ sống cô độc như vậy, chẳng có một ai để chuyện trò thật sự, cho tới một lần gặp nạn ở sa mạc Sahara cách đây sáu năm. Có thứ gì đó bị vỡ trong động cơ máy bay. Và vì ở bên cạnh chẳng có thợ máy cũng như hành khách nào nên một mình tôi sẽ phải cố mà sửa cho bằng được vụ hỏng hóc nan giải này. Với tôi đó thật là một việc sống còn. Tôi chỉ có vừa đủ nước để uống trong tám ngày.\r\n\r\nThế là đêm đầu tiên tôi ngủ trên cát, cách mọi chốn có người ở cả nghìn dặm xa. Tôi cô đơn hơn cả một kẻ đắm tàu sống sót trên bè giữa đại dương. Thế nên các bạn cứ tưởng tượng tôi đã ngạc nhiên làm sao, khi ánh ngày vừa rạng, thì một giọng nói nhỏ nhẹ lạ lùng đã đánh thức tôi. Giọng ấy nói:\r\n“Ông làm ơn… vẽ cho tôi một con cừu!”\r\n- Trích \"Hoàng tử bé\"\r\n', 0, ''),
('Minh Sinh Ra Dau Phai De Buon', 90000, 'minh-sinh-ra-dau-phai-de-buon.jpg', 'minh-sinh-ra-dau-phai-de-buon-2.jpg', 'minh-sinh-ra-dau-phai-de-buon-3.jpg', 'Mình Sinh Ra Đâu Phải Để Buồn\r\n\r\n\"Mình sinh ra đâu phải để buồn\", cuốn sách đánh dấu sự hợp tác ăn ý giữa Hamlet Trương và Iris Cao, \"cặp đôi vàng văn học\" được độc giả trẻ yêu mến sau nhiều tác phẩm trở thành hiện tượng như Thương nhau để đó, Ai rồi cũng khác, Mỉm cười cho qua...\r\n\r\n\"MÌNH SINH RA ĐÂU PHẢI ĐỂ BUỒN\" và thông điệp sống ý nghĩa\r\n\r\nQuyển sách \"Mình sinh ra đâu phải để buồn\" là một món quà động viên chính bạn và cũng là món quà ý nghĩa dành tặng bạn nè, người thân, nó nhắc nhở chúng ta phải yêu thương chính mình, yêu thương cuộc sống mỗi ngày. Nỗi buồn luôn là điều không tránh khỏi trong cuộc đời này, vậy hãy cứ tưới mát nỗi buồn với tác phẩm này, gửi tặng nó cho người bạn cần động viên nhé! Thương chúc những ai cầm trên tay tác phẩm này cũng đều nhận được sự an ủi và niềm vui hân hoan!\r\n\r\n\"Mình sinh ra đâu phải để buồn\" gồm hơn 30 tản văn về cuộc sống, hành trình trải nghiệm của một người trẻ trước những vấp ngã đầu tiên. Ở lứa tuổi chưa phải là người lớn, lại không còn nhỏ bé để được bao bọc, người trẻ dễ rơi vào cảm giác chơi vơi, lạc lõng và không biết mình muốn gì.\r\n\r\nQua những trang sách đầy chia sẻ, cảm thông, Hamlet Trương và Iris Cao êm đềm ủi an người trẻ trên con đường đồng hành đó, vì chính họ cũng đang là những người trẻ gặp nhiều sóng gió trong giai đoạn trưởng thành.\r\n\r\n5 năm qua, hai tác giả trẻ cặm cụi với duy nhất một ước muốn: Chở che cảm xúc cho những người trẻ khác, nỗ lực chứng minh cuộc sống có rất nhiều điều kỳ diệu nếu ta biết quan sát, sẻ chia.\r\n\r\nCon người được sinh ra để tìm thấy hạnh phúc quanh mình, dẫu đôi lúc nỗi buồn che đôi mắt. Cứ tin là hạnh phúc sẽ trở lại, vì mình sinh ra đâu phải để buồn... (Hamlet Trương)\r\n\r\nAnh từng là tất cả sau tất cả. Rốt cuộc cũng có ngày em mất tất cả là anh... Nhưng một sớm mai em thức giấc, chợt nhận ra điều quan trọng nhất là mình có thêm một ngày mới để sống, và vẫn tin vào tình yêu phía trước. Mọi điều khác có chăng cũng chỉ là gia vị cho cuộc đời thêm thú vị. Đúng rồi! Mình sinh ra đâu phải để buồn. (Iris Cao)\r\n\r\nCũng như những cuốn sách trước, \"Mình sinh ra đâu phải để buồn\" mãi luôn là lời nhắc nhở, động viên tinh thần đầy lạc quan, tinh tế bất cứ khi nào bạn cần hoặc bất cứ khi nào bạn muốn tặng lời khuyên đó cho một người bạn thương mến. Vì ngoài kia vốn dĩ đã quá nhiều xáo trộn, mình chọn ở lại cùng nhau tận hưởng thanh âm vui vẻ an lành.\r\n', 0, ''),
('Tuoi Tre Dang Gia Bao Nhieu', 80000, 'tuoi-tre-dang-gia-bao-nhieu.jpg', 'tuoi-tre-dang-gia-bao-nhieu-2.jpg', 'tuoi-tre-dang-gia-bao-nhieu-3.jpg', 'Tuổi Trẻ Đáng Giá Bao Nhiêu\r\n\r\n\"Bạn hối tiếc vì không nắm bắt lấy một cơ hội nào đó, chẳng có ai phải mất ngủ.\r\n\r\nBạn trải qua những ngày tháng nhạt nhẽo với công việc bạn căm ghét, người ta chẳng hề bận lòng.\r\n\r\nBạn có chết mòn nơi xó tường với những ước mơ dang dở, đó không phải là việc của họ.\r\n\r\nSuy cho cùng, quyết định là ở bạn. Muốn có điều gì hay không là tùy bạn.\r\n\r\nNên hãy làm những điều bạn thích. Hãy đi theo tiếng nói trái tim. Hãy sống theo cách bạn cho là mình nên sống.\r\n\r\nVì sau tất cả, chẳng ai quan tâm.\"\r\n\r\nNhận định\r\n\r\n\"Tôi đã đọc quyển sách này một cách thích thú. Có nhiều kiến thức và kinh nghiệm hữu ích, những điều mới mẻ ngay cả với người gần trung niên như tôi.\r\n\r\nTuổi trẻ đáng giá bao nhiêu? được tác giả chia làm 3 phần: HỌC, LÀM, ĐI.\r\n\r\nNhưng tôi thấy cuốn sách còn thể hiện một phần thứ tư nữa, đó là ĐỌC.\r\n\r\nHãy đọc sách, nếu bạn đọc sách một cách bền bỉ, sẽ đến lúc bạn bị thôi thúc không ngừng bởi ý muốn viết nên cuốn sách của riêng mình.\r\n\r\nNếu tôi còn ở tuổi đôi mươi, hẳn là tôi sẽ đọc Tuổi trẻ đáng giá bao nhiêu? nhiều hơn một lần.\"\r\n\r\n(Đặng Nguyễn Đông Vy, tác giả, nhà báo)\r\n', 0, ''),
('Nhung Giac Mo O Hieu Sach Morisaki', 70000, 'nhung-giac-mo-o-hieu-sach-morisaki.jpg', 'nhung-giac-mo-o-hieu-sach-morisaki-2.jpg', 'nhung-giac-mo-o-hieu-sach-morisaki-3.jpg', 'Những Giấc Mơ Ở Hiệu Sách Morisaki\r\n\r\nBị người yêu lừa dối, Takako bỏ việc và rơi vào chuỗi ngày ngủ triền miên để trốn tránh nỗi buồn. Thế rồi, một cuộc điện thoại từ người cậu ruột cả 10 năm trời không gặp đã đánh thức cô khỏi cơn mộng mị. Takako đồng ý đến trông hiệu sách nửa buổi giúp cậu chỉ để làm vừa lòng mẹ. Nhưng thật ngoài tưởng tượng, chờ đợi cô là hiệu sách Morisaki cũ kỹ với thế giới của hàng nghìn cuốn sách chứa trong mình cả thời gian và lịch sử. Sách đã chữa lành vết thương trong lòng cô.\r\n\r\nVà hơn thế nữa, Takako tìm thấy bao nhiêu điều mới mẻ và thú vị mà trước đây cô chưa từng biết đến.Câu chuyện nhẹ nhàng mà sâu lắng, đặc biệt với những ai có sở thích sưu tầm sách cổ.\r\n', 0, ''),
('The Story Of Art', 100000, 'cau-chuyen-nghe-thuat.jpg', 'cau-chuyen-nghe-thuat-2.jpg', 'cau-chuyen-nghe-thuat-3.jpg', '“The Story of Art\" (Câu Chuyện Nghệ Thuật) được in lần đầu năm 1950 và trong 70 năm qua, được dịch ra gần 30 thứ tiếng và hơn tám triệu bản đã được bán ra trên toàn thế giới. Điều đó khiến tác phẩm trở thành cuốn sách nghệ thuật bán chạy nhất mọi thời đại và là tác phẩm nhập môn nghệ thuật thị giác cho vô số thế hệ độc giả.\r\n\r\nTác giả E.H Gombrich (1909-2001) là một trong những nhà sử học nghệ thuật lỗi lạc nhất của nửa sau thế kỷ 20, đối với giới hàn lâm cũng như với tầng lớp công chúng rộng rãi. Những tác phẩm khác mang tính lý thuyết của ông cũng đã trở thành những công trình then chốt đối với các nhà nghiên cứu lịch sử nghệ thuật.\r\n\r\nCâu Chuyện Nghệ Thuật là một tác phẩm kể về lịch sử nghệ thuật châu Âu từ thời cổ đại đến hiện đại, được tác giả khảo sát và đánh giá trong các lĩnh vực khác nhau như hội họa, điêu khắc, kiến trúc… song hành với những chuyển biến và giao thoa của các nền văn hóa, chính trị, và tôn giáo. Nguồn tư liệu phong phú về các tác phẩm đáng chú ý, những tên tuổi tài năng, những trường phái, phong cách đặc sắc trong dòng chảy nghệ thuật.\r\n\r\nĐiều đặc biệt là tác phẩm không chỉ đơn thuần liệt kê đủ mọi tên tuổi cùng những tác phẩm nổi tiếng hay đề tài và các kỹ thuật chuyên môn, mà được Gombrich kể theo một dòng chảy liên kết và tiếp nối không ngừng nghỉ của những nghệ nhân, họa sĩ, và nghệ sĩ.\r\n\r\nVới cái nhìn chân thực từ góc độ phê bình nghệ thuật và cách viết mạch lạc, dễ hiểu, tác giả đã tạo nên một cuốn sách phù hợp cho mọi độc giả yêu thích tìm hiểu về nghệ thuật ở nhiều lứa tuổi khác nhau, với nền tảng kiến thức đa dạng. Câu chuyện Nghệ thuật tiếp tục duy trì thành công của nó ở vị trí là một tác phẩm kinh điển trong danh sách các đầu sách nghệ thuật tuyển chọn.\r\n\r\nTrong bản tiếng Việt này, sách được dàn với số trang tương đương với bản gốc tiếng Anh để đảm bảo được việc tương ứng giữa nội dung và hình ảnh minh họa của ấn bản mới nhất lần 16 và bìa sách được lấy ý tưởng thiết kế từ việc sử dụng bố cục mô phỏng theo tác phẩm của họa sĩ Mondrian mang màu sắc tươi trẻ và bắt mắt, với những ô màu được ghép hình các tác phẩm thể hiện được ba lĩnh vực chính của nghệ thuật được nhắc đến trong cuốn sách là hội họa, kiến trúc và điêu khắc.\r\n\r\nĐặc biệt trong sách có hơn 400 các bức tranh, ảnh minh họa các tác phẩm nghệ thuật, được in màu toàn bộ trên 692 trang, bằng giấy Cmatt120, giúp người yêu nghệ thuật thưởng lãm các tác phẩm được đã mắt nhất.\r\n', 0, ''),
('Dieu Ky Dieu Cua Tiem Tap Hoa NAMIYA (Tái Bản)', 120000, 'dieu-ky-dieu-cua-tiem-tap-hoa-namiya.jpg', 'dieu-ky-dieu-cua-tiem-tap-hoa-namiya-2.jpg', 'dieu-ky-dieu-cua-tiem-tap-hoa-namiya-3.jpg', 'Điều Kỳ Diệu Của Tiệm Tạp Hóa\r\n\r\nMột đêm vội vã lẩn trốn sau phi vụ khoắng đồ nhà người, Atsuya, Shota và Kouhei đã rẽ vào lánh tạm trong một căn nhà hoang bên con dốc vắng người qua lại. Căn nhà có vẻ khi xưa là một tiệm tạp hóa với biển hiệu cũ kỹ bám đầy bồ hóng, khiến người ta khó lòng đọc được trên đó viết gì. Định bụng nghỉ tạm một đêm rồi sáng hôm sau chuồn sớm, cả ba không ngờ chờ đợi cả bọn sẽ là một đêm không ngủ, với bao điều kỳ bí bắt đầu từ một phong thư bất ngờ gửi đến…\r\n\r\nTài kể chuyện hơn người đã giúp Keigo khéo léo thay đổi các mốc dấu thời gian và không gian, chắp nối những câu chuyện tưởng chừng hoàn toàn riêng rẽ thành một kết cấu chặt chẽ, gây bất ngờ từ đầu tới cuối.\r\n', 0, ''),
('Con Chim Xanh Biet Bay Ve', 130000, 'con-chim-xanh-biec-bay-ve-troi.jpg', 'con-chim-xanh-biec-bay-ve-troi-2.jpg', 'con-chim-xanh-biec-bay-ve-troi-3.jpg', 'Con Chim Xanh Biếc Bay Về\r\n\r\nKhông giống như những tác phẩm trước đây lấy bối cảnh vùng quê miền Trung đầy ắp những hoài niệm tuổi thơ dung dị, trong trẻo với các nhân vật ở độ tuổi dậy thì, trong quyển sách mới lần này nhà văn Nguyễn Nhật Ánh lấy bối cảnh chính là Sài Gòn – Thành phố Hồ Chí Minh nơi tác giả sinh sống (như là một sự đền đáp ân tình với mảnh đất miền Nam). Các nhân vật chính trong truyện cũng “lớn” hơn, với những câu chuyện mưu sinh lập nghiệp lắm gian nan thử thách của các sinh viên trẻ đầy hoài bão. Tất nhiên không thể thiếu những câu chuyện tình cảm động, kịch tính và bất ngờ khiến bạn đọc ngẩn ngơ, cười ra nước mắt. Và như trong mọi tác phẩm Nguyễn Nhật Ánh, sự tử tế và tinh thần hướng thượng vẫn là điểm nhấn quan trọng trong quyển sách mới này.\r\n\r\nNhư một cuốn phim “trinh thám tình yêu”, Con chim xanh biếc bay về dẫn bạn đi hết từ bất ngờ này đến tò mò suy đoán khác, để kết thúc bằng một nỗi hân hoan vô bờ sau bao phen hồi hộp nghi kỵ đến khó thở.\r\n\r\nBạn sẽ theo phe sinh viên-nhân viên với những câu thơ dịu dàng và đáo để, hay phe ông chủ với những kỹ năng kinh doanh khởi nghiệp? Và hãy đoán thử, điều gì khiến bạn có thể cảm động đến rưng rưng trong cuộc sống giữa Sài Gòn bộn bề?\r\n\r\nLâu lắm mới có hình ảnh thành phố rộn ràng trong tác phẩm của Nguyễn Nhật Ánh - điều hấp dẫn khác thường của Con chim xanh biếc bay về.\r\n\r\nChính vì thế mà cuốn sách chỉ có một cách đọc thôi: một mạch từ đầu đến cuối!\r\n\r\nĐặc biệt, kèm theo mỗi cuốn sách là 6 postcard với nhiều tranh vẽ của họa sĩ Đỗ Hoàng Tường.\r\n', 0, ''),
('Thien Tai Ben Trai, Ke Dien Ben Phai', 90000, 'thien-tai-ben-trai-ke-dien-ben-phai.jpg', 'thien-tai-ben-trai-ke-dien-ben-phai-2.jpg', 'thien-tai-ben-trai-ke-dien-ben-phai-3.jpg', 'NẾU MỘT NGÀY ANH THẤY TÔI ĐIÊN, THỰC RA CHÍNH LÀ ANH ĐIÊN ĐẤY!\r\n\r\nHỡi những con người đang oằn mình trong cuộc sống, bạn biết gì về thế giới của mình? Là vô vàn thứ lý thuyết được các bậc vĩ nhân kiểm chứng, là luật lệ, là cả nghìn thứ sự thật bọc trong cái lốt hiển nhiên, hay những triết lý cứng nhắc của cuộc đời?\r\n\r\nLại đây, vượt qua thứ nhận thức tẻ nhạt bị đóng kín bằng con mắt trần gian, khai mở toàn bộ suy nghĩ, để dòng máu trong bạn sục sôi trước những điều kỳ vĩ, phá vỡ mọi quy tắc. Thế giới sẽ gọi bạn là kẻ điên, nhưng vậy thì có sao? Ranh giới duy nhất giữa kẻ điên và thiên tài chẳng qua là một sợi chỉ mỏng manh: Thiên tài chứng minh được thế giới của mình, còn kẻ điên chưa kịp làm điều đó. Chọn trở thành một kẻ điên để vẫy vùng giữa nhân gian loạn thế hay khóa hết chúng lại, sống mãi một cuộc đời bình thường khiến bạn cảm thấy hạnh phúc hơn?\r\n\r\nThiên tài bên trái, kẻ điên bên phải là cuốn sách dành cho những người điên rồ, những kẻ gây rối, những người chống đối, những mảnh ghép hình tròn trong những ô vuông không vừa vặn… những người nhìn mọi thứ khác biệt, không quan tâm đến quy tắc. Bạn có thể đồng ý, có thể phản đối, có thể vinh danh hay lăng mạ họ, nhưng điều duy nhất bạn không thể làm là phủ nhận sự tồn tại của họ. Đó là những người luôn tạo ra sự thay đổi trong khi hầu hết con người chỉ sống rập khuôn như một cái máy. Đa số đều nghĩ họ thật điên rồ nhưng nếu nhìn ở góc khác, ta lại thấy họ thiên tài. Bởi chỉ những người đủ điên nghĩ rằng họ có thể thay đổi thế giới mới là những người làm được điều đó.\r\n\r\nChào mừng đến với thế giới của những kẻ điên.\r\n', 0, ''),
('Phai Long Voi Co Don', 60000, 'phai-long-voi-co-don.jpg', 'phai-long-voi-co-don-2.jpg', 'phai-long-voi-co-don-3.jpg', 'Cô đơn ơi, lại đây chơi !\r\n\r\nTừ cổ chí kim, con người ta sinh ra vốn đã một mình, có người bầu bạn thì tốt mà không có cũng chẳng sao.\r\n\r\nAi cũng có thể tự kiếm tiền, tự lo cho bản thân, tự đứng dậy sau những vấp ngã. Buồn thì vui chơi với bạn bè, chán thì đi shopping, rảnh dỗi thì xem dăm ba bộ phim hà biết bao thú vui có thể tự mình tận hưởng, không có người yêu thì đã làm sao?\r\n\r\nNếu cả thế giới cho ta biết có người yêu hạnh phúc thế nào, ta cũng chẳng ngần ngại gì mà cho cả thế giới biết mình cô đơn vui vẻ ra làm sao.\r\n\r\nCô đơn hay có người kề cạnh, cũng chỉ là một trạng thái. Ai cũng có lúc này, lúc kia. Và nếu như bạn đang cô đơn, thì đừng lo, bởi tình yêu luôn khó nói. Một ngày đẹp trời nọ, rất có thể nó sẽ ập vào đời bạn mà chẳng cần lý do.\r\n\r\nTới lúc đó, bạn sẽ có cả hàng trăm việc để giải quyết, lo người yêu giận, nghĩ xem ngày kỷ niệm nên làm gì, đi hẹn hò thì ăn gì, mặc như thế nà Chắc chắn lúc đó, bạn sẽ vô cùng bối rối và vô cùng lo lắng. Nhưng đó là chuyện của tương lai, còn bây giờ, bạn là người vô cùng tự do. Trong lúc đám bạn đang mải mê nghĩ cách dỗ dành người yêu thì bạn có thể đi bất cứ đâu, làm mọi việc mình thích và thả thính bất cứ ai mình muốn. Cô đơn cũng có nhiều điểm tốt đấy thôi !\r\n\r\nVậy nên, thả lỏng và tận hưởng sự cô đơn đi nào. Vì chẳng ai thoát được tình yêu. Cho nên thi thoảng, cô đơn cũng là một phước lành ! Phải lòng với cô đơn chính là một cuốn sách mà ai cũng cần phải có dưới góc nhìn đầy mới mẻ và tươi trẻ của Kulzsc về sự cô đơn.\r\n\r\nXóa tan cái định nghĩa cô đơn là nỗi buồn, Phải lòng với cô đơn là món quà dành tặng cho bất cứ ai vẫn đang một mình. Khi cô đơn, bạn hoàn toàn có thể tập trung để yêu thương chính mình, điều đó không phải tuyệt vời hay sao?\r\n\r\nPhải lòng với cô đơn mất rồi, nên cô đơn à, lại đây chơi! Chỉ là cô đơn thôi có gì đâu mà phải buồn, nhỉ. Vui lên nào vì bên cạnh chúng ta còn có sự cô đơn !\r\n', 0, ''),
('Yeu Nhung Dieu Hoan Hao', 100000, 'yeu-nhung-dieu-khong-hoan-hao.jpg', 'yeu-nhung-dieu-khong-hoan-hao-2.jpg', 'yeu-nhung-dieu-khong-hoan-hao-3.jpg', 'Yêu Những Điều Không Hoàn Hảo\r\n\r\nĐại đức Hae Min sinh ra và lớn lên tại Hàn Quốc. Sau khi hoàn thành bằng Thạc sĩ Tôn giáo học đối chiếu ở Đại học Havard và Tiến sĩ Tôn giáo học ở Đại học Princeton, ông ở lại Mỹ tham gia giảng dạy về tôn giáo ở trường Đại học Hampshire, Massachusetts. Không chỉ dừng lại ở nghiên cứu lý thuyết, mùa xuân năm 2000 ông quyết định xuất gia theo tông phái Tào Khê, một tông phái tiêu biểu của Phật giáo Hàn Quốc. Năm 2015, Đại đức Hae Min trở về Seoul, cùng nhiều chuyên gia mở trường Trị liệu tâm hồn, điều trị miễn phí cho những người gặp bất hạnh trong cuộc sống hay đang mang trong lòng nhiều khổ tâm. Đại đức Haemin là một trong những người rất có ảnh hưởng tới giới trẻ Hàn Quốc, trang Twitter cá nhân (https://twitter.com/haeminsunim) của ông hiện có tới hơn một triệu người theo dõi. Sách cùng tác giả: - Những vỡ lẽ của tuổi trẻ - Yêu lấy những điều không hoàn hảo.\r\n', 0, ''),
('Mot Manh Trang', 100000, 'mot-manh-trang.jpg', 'mot-manh-trang-2.jpg', 'mot-manh-trang-3.jpg', 'Một mảnh trăng - Cuốn sách được hàng vạn độc giả Hàn Quốc đồng cảm và yêu thích!\r\n\r\nTôi muốn nói với tất thảy những “vầng trăng khuyết” trên thế gian này rằng chúng ta tuy là trăng khuyết nhưng vẫn đầy đủ vẻ đẹp. Mong các bạn đừng quá gồng mình để trở thành trăng tròn.\r\n\r\nÁnh trăng rằm tròn trịa cũng chỉ xuất hiện một ngày trong tháng mà thôi. Nó chỉ tồn tại trong thoáng chốc ngắn ngủi, vụt qua rồi biến mất.\r\n\r\nRốt cuộc, tất cả chúng ta đều sống trong một thế giới không hoàn hảo.\r\n\r\nMột mảnh trăng – Cuốn sách an ủi những trái tim tổn thương khi trở thành người lớn.\r\n', 0, ''),
('Ong Gia Va Bien Ca', 160000, 'onggiavabien.jpg', 'onggiavabien2.jpg', 'onggiavabien3.jpg', 'Đây là một tác phẩm lý tưởng, nó thật sự mang ý nghĩa rất lớn đặc biệt là đối với những ai đang muốn bỏ cuộc, đang muốn đầu hàng chính bản thân mình, bạn không thể biết được điều gì đang đợi bạn phía trước, hãy tin tưởng vào con đường bạn đã chọn, tin tưởng vào khả năng của chính mình.\r\n\r\nKhi bắt đầu chán nản hãy suy nghĩ vì sao mình bắt đầu? Trên con đường đến với thành công không có dấu chân của những kẻ bỏ cuộc.', 0, ''),
('Doi Thay Doi Khi Ta Thay Doi', 110000, 'ta_đổi_đời_đổi.jpg', 'ta_đổi_đời_đổi2.jpg', 'ta_đổi_đời_đổi3.jpg', '“Đời thay đổi khi chúng ta thay đổi” đem lại cho độc giả những tình huống vô cùng thực tế, thậm chí là các câu chuyện vừa “nhỏ nhặt” lại vừa “quan trọng” với cách ứng xử khôn ngoan, thú vị và hài hước… Đồng thời, độc giả như bắt gặp chính mình trong đó, có những cạnh tranh, thất bại, và có những tình huống giao tiếp vừa chân thật lại vừa bổ ích.\r\n\r\nThưởng thức bộ sách này của soạn giả Andrew Matthews để học hỏi, giải trí và chắc chắn bạn sẽ lĩnh hội được rất nhiều các bài học rất hấp dẫn và bổ ích.', 0, ''),
('Ty Phu Ban Giay', 190000, 'typhubangiay.jpg', 'typhubangiay2.jpg', 'typhubangiay3.jpg', 'Tỷ Phú Bán Giày – cuốn sách hay nên đọc 2020 – Một cuốn sách bán chạy nhất trên trang Amazon, xếp thứ 1 trong các sách về Dịch vụ khách hàng; xếp thứ 5 trong những cuốn sách hay về Marketing và Bán hàng; và xếp thứ 7 trong những cuốn sách nói về Quản lý.\r\n\r\nCuốn sách là 1 câu chuyện về một công ty thành công, trong ấy, Tony Hseih chia sẻ các bài học marketing khác nhau mà ông đã học được trong cuộc đời, từ một quầy bán nước chanh và cửa hàng bán pizza cho tới LinkExchange, Zappos.\r\n\r\nVới “Tỷ Phú Bán Giày”, bạn sẽ nhận được cảm hứng, hết lòng và cả một chút điên rồ cho những ý tưởng buôn bán mà nghe qua tưởng như vô cùng liều mạng. Nghe thật lý thú đúng không? Nhưng với Zappos, Tony Hsieh đã tạo dựng được 1 nhãn hiệu về “văn hóa công ty” – chìa khóa thành công để theo đuổi một môi trường công sở làm việc năng động và những dịch vụ xuất sắc.', 0, ''),
('Cho Toi Xin Mot Ve Di Tuoi Tho', 130000, 'xinvetuoitho.jpg', 'xinvetuoitho2.jpg', 'xinvetuoitho3.jpg', 'Với cuốn “Cho tôi xin một vé đi tuổi thơ”, của Nguyễn Nhật Ánh đã thổi hồn vào những nhân vật xuyên suốt trong câu chuyện của mình. Từ cậu cu Mùi muốn tập tành làm “nhà cách mạng tí hon”, có trí mường tượng phong phú luôn muốn thay đổi tất cả những điều tất yếu và nhàm chán trong cuộc sống thường ngày đến các triết lí nghe có lúc ngô nghê, đôi khi lại đầy sâu sắc của những đứa trẻ chưa đi hết một phần 8 cuộc đời.\r\n\r\nThông qua các tình huống đầy gây cấn, thú vị và hài hước, tác giả cũng muốn gửi gắm bạn vào quyển sách này những tình cảm, niềm nhung nhớ cho 1 thời tuổi thơ và những câu chuyện đầy sâu sắc, ý nghĩa trong cuộc sống gia đình và bạn bè.\r\n\r\n\r\n \r\nĐọc “Cho tôi xin một vé đi tuổi thơ” để nhặt lại từng kí ức, từng kỉ niệm của 1 thời tuổi thơ đã xa , đọc để trải nghiệm cái cảm giác ôm bụng cười mà trong lòng thấy tâm đắc, rưng rưng vì câu chuyện ấy giống như Bạn và Tôi vậy ', 0, ''),
('999 Buc Thu Gui Chinh Minh', 160000, '999thuguichinhminh.jpg', '999thuguichinhminh2.jpg', '999thuguichinhminh3.jpg', 'Thời gian qua đi không ngoảnh lại, tuổi trẻ trôi qua khó trở về, đó chính là quy luật khắc nghiệt của tạo hoá. Thế nên mỗi chúng ta không nên phí hoài tuổi trẻ, lãng phí thanh xuân.\r\n\r\nHãy sống xứng đáng với tuổi trẻ của mình là thông điệp quý giá mà cuốn sách 999 lá thư gửi cho chính mình đem đến cho các bạn trẻ còn đang chênh vênh trên con đường đời đầy chông gai thử thách.\r\n\r\nDù hiện thực cuộc sống có thế nào, chúng ta đều không nên oán trách người, đừng cứ mãi nghĩ rằng thế giới này nợ bạn hay ai đó phụ lòng bạn.\r\n\r\nTrong cuộc sống, ai cũng sẽ có lúc thuận buồm xuôi gió hoặc những khi phải đương đầu với nghịch cảnh khó khăn.\r\n\r\nVào giây phút khổ sở tuyệt vọng nhất, bạn càng nên học cách điều chỉnh bản thân, khiến mình trở nên xuất sắc hơn. Bởi vì những tháng ngày nhọc nhằn mới chính là thời cơ để bạn trưởng thành hơn!', 0, ''),
('Cuon Theo Chieu Gio', 130000, 'Cuốn Theo Chiều Gió.jpg', 'Cuốn Theo Chiều Gió2.jpg', 'Cuốn Theo Chiều Gió3.jpg', 'Cuốn Theo Chiều Gió là cuốn sách tiểu thuyết tình cảm nên đọc.\r\n\r\nLấy bối cảnh từ cuộc nội chiến cực kỳ khốc liệt giữa Bắc và Nam Mỹ, “Cuốn Theo Chiều Gió” có cốt truyện rõ ràng, tối ưu, dễ hiểu, đã khắc họa một cách tài tình tâm trạng, tính cách và thân phận của nhiều tầng lớp người trong chiến tranh và thời hậu chiến. Nhân vật chính của tiểu thuyết là cô gái Scarlett O’hara cùng với chàng trai Rhett Butler trở thành cặp nhân vật điển hình, thuộc loại thành công nhất trong văn học Hoa Kỳ.\r\n\r\nCuốn Theo Chiều Gió mang sức hấp dẫn mãnh liệt đến người trẻ tại Mỹ cũng như bạn trẻ toàn thế giới vì đây là cuốn tiểu thuyết tình yêu đặc sắc. Lạ kỳ thay, trong chiến tranh và các năm hậu chiến rất gian khổ, tình yêu lại luôn luôn chói ngời, nó trở nên là điểm tựa vững chắc giúp cho con người vượt qua chết chóc, đói khổ và sự hèn hạ…\r\n\r\nKhông chỉ mang tình yêu lứa đôi, Cuốn Theo Chiều Gió không những là quyển sách hay về tình yêu mà còn là bài ca của tình yêu quê hương đất nước, tình tương thân tương ái.\r\n\r\nBa năm sau khi tiểu thuyết Cuốn Theo Chiều Gió có mặt trên thị trường, bộ phim cùng tên dựng theo tác phẩm của Margaret Mitchell được công chiếu đã trở thành sự kiện lớn, thành niềm tự hào của điện ảnh Hoa Kỳ.', 0, ''),
('Bo Gia', 160000, 'bogia.jpg', 'bogia3.jpg', 'bogia.jpg', 'Cuốn sách mang một kết cấu xuất sắc, cốt truyện không thiếu những pha hành động gay cấn, tình tiết bất ngờ và không khí kình địch tới nghẹt thở, Bố già xứng đáng là đỉnh cao trong sự nghiệp văn chương của Mario Puzo tính đến thời điểm hiện tại.', 0, ''),
('Colorful', 180000, 'colorful.jpg', 'colorful2.jpg', 'colorful3.jpg', 'Có một người phạm tội nặng, chết đi không được luân hồi. Nhưng trong lúc linh hồn người này đang mất trí nhớ và trôi nổi vô định về một nơi tối tăm xứng đáng với cậu ta, thì một thiên sứ cánh trắng xuất hiện, giơ tay chặn lại, thông báo rằng cậu vừa trúng phiên xổ số may mắn của thiên đình, nhận được cơ hội tu hành kiêm tái thử thách.\r\n\r\nTheo đó, hồn cậu sẽ quay về trần gian, nhập vào xác một người vừa tự sát, ở trọ nhà người ta, nếm trải nhân tình thế thái và xử lý đống hỗn độn mà họ để lại. Mức độ hỗn độn tương đương với mức độ tội lỗi cậu phạm phải trong kiếp trước.\r\n\r\nColorful men theo những bất an bình thường mà ai cũng có thể gặp phải trong cuộc sống, nhưng một số người lại thấy chúng quá dị thường, quá kinh khủng, dẫn đến khổ tâm dằn vặt và rồi không thể vượt được qua. Để giải phóng những bình thường ấy, Colorful trình chiếu một giải pháp đặc biệt khác thường.\r\n\r\nCuộc đời có muôn vàn nghiệm đúng, người ta tùy ý sống theo cách mình thích, nhưng một khi đã rút lui khỏi nó, thì chẳng còn nghiệm nào cho ta lựa chọn cả.', 0, ''),
('Dai Gia Gatsby', 190000, 'Đại gia Gatsby.jpg', 'Đại gia Gatsby2.jpg', 'Đại gia Gatsby3.jpg', 'The Great Gatsby (F.Scott Fitzgerald) luôn được xem là cuốn tiểu thuyết “phải đọc” với dân nghiền sách trên toàn thế giới. Modern Library xếp The Great Gatsby ở vị trí thứ hai trong danh sách 100 tiểu thuyết hay nhất của thế kỷ 20. Tạp chí Time vinh danh The Great Gatsby là một trong 10 tác phẩm văn học vĩ đại nhất mọi thời đại.\r\n\r\nĐại gia Gatsby nắm bắt vô cùng sâu sắc tinh thần của thế hệ cùng thời Fitzgerald. Đó là những ám ảnh thường trực về tiền bạc, dư dật và hào nhoáng. Bên cạnh đó, là nỗi lo âu trước thói sùng bái vật chất vô độ và sự thiếu vắng đạo đức.\r\n\r\nGatsby – nhân vật chính của câu chuyện, phất lên nhanh chóng, những tưởng sẽ có tất cả: tiền bạc, quyền lực, ái tình. Nhưng rồi ảo tưởng tình yêu đó tan vỡ đau đớn, theo sau là cái chết tức tưởi của Gatsby, để cuối cùng lập tức bị người đời quên lãng.\r\n\r\nLời cảnh báo của nhà văn F.Scott Fitzgerald về cái gọi là “giấc mơ Mỹ” được ví như một tượng đài văn học, một cánh cửa cần mở ra cho những ai quan tâm đến văn học và lịch sử tinh thần nước Mỹ thời hiện đại.\r\n\r\n “Giấc mơ Mỹ” vẫn đang phập phồng, rình rập trong giấc ngủ đêm cũng như ngày của hàng triệu người trên thế giới ngày nay, và ông tin rằng người Việt cũng đang ấp ủ nó, ngày càng nhiều, nhất là trong giới trẻ.', 0, ''),
('Nguoi Giau Co Nhat Thanh Babylon', 230000, 'giaunhatbabylon.jpg', 'giaunhatbabylon2.jpg', 'giaunhatbabylon3.jpg', 'Những trang sách trong cuốn sách Người giàu có nhất thành Babylon sẽ đưa chúng ta trở lại vương quốc Babylon cổ đại, cái nôi nuôi dưỡng những nguyên lý cơ bản về tài chính mà giờ đây con người hiện đại đã kế thừa và vận dụng trên toàn thế giới. Cuốn sách nói về những thành công, những thành quả đạt được của từng cá nhân sống trong thành Babylon cổ đại. Từ đó, giúp mọi người hiểu rõ hơn về vấn đề tài chính và cống hiến các kế sách và phương pháp làm giàu. Những bí quyết này giúp bạn đánh giá đúng giá trị của đồng tiền, và hướng dẫn bạn cách thực hành theo những nguyên lý tài chính.\r\n\r\nĐối với những độc giả không làm trong môi trường kinh doanh, quyển sách sẽ đưa ra những bí quyết giúp bạn gia tăng số tiền trong tài khoản và giải quyết nhanh chóng được những khó khăn về mặt tài chính. Còn đối với doanh nhân, thì những câu chuyện kể về người thương gia giàu có sẽ trở thành những bài học kinh điển và các bạn có thể áp dụng những nguyên lý sáng giá nhất của nó để đem lại thành công trong các chiến lược kinh doanh của mình.', 0, ''),
('Hai So Phan', 160000, 'haisophan.jpg', 'haisophan2.jpg', 'haisophan3.jpg', 'Sau khi đọc xong cuốn sách Hai số phận của tác giả Jeffrey Archer, sẽ giúp chúng ta chắc hẳn sẽ có thêm nhiều suy nghĩ mới đối với số phận của con người, dù được sinh ra và lớn lên trong bất kỳ hoàn cảnh éo le nào, chỉ cần bạn quyết tâm và kiên trì, ắt hẳn thành công một ngày nào đó sẽ đến với bạn cũng như trân trọng tình cảm hiện tại mà mình đang có.\r\n\r\nJeffrey Archer – tác giả của cuốn tiểu thuyết hai số phận – cuốn sách đã đưa ông lên tầm những nhà văn hàng đầu thế giới. ', 0, ''),
('Mat Biec', 123000, 'macbiet.jpg', 'macbiet2.jpg', 'macbiet3.jpg', 'Một tác phẩm được nhiều người bình chọn là hay nhất của nhà văn Nguyễn Nhật Anh.  Xuyên suốt câu chuyện vẫn là những điều vui, buồn lẫn lộn.\r\n\r\nNhững câu chuyện tình yêu đan xen, những tình cảm đơn phương chưa được giãi bày. Có những thứ tình cảm vô cùng đáng giá nhưng lại không được đón nhận hay đền đáp 1 cách xứng đáng.\r\n\r\nCũng bởi, mắt biếc… năm xưa nay đâu (theo lời một bài hát).', 0, ''),
('Ba Oi, minh đi đâu', 200000, 'minhdautheba.jpg', 'minhdautheba2.jpg', 'minhdautheba2.jpg', 'Ba ơi, mình đi đâu? là một câu chuyện buồn nhưng lại không thấm đẫm nước mắt. Cuốn sách khiến người đọc cảm thấy đau nhói mọi nơi song không vùi sâu trong ủy mị.\r\n\r\nBởi đó là cách lựa chọn của Jean-Louis Fournier trong suốt cuộc đời làm cha của mình. Uất hận, than trách cuộc đời, nổi điên lên hay buồn bã… cũng không thể làm khác đi sự hiện diện của hai cậu bé luôn uống thuốc an thần mỗi ngày để yên lặng.\r\n\r\nNhững đứa trẻ mắt nhìn không rõ, tai điếc, chân khoèo, lưng gù, xương yếu. Một đứa chỉ biết nhắc đi nhắc lại một câu hỏi “Ba ơi, mình đi đâu?”. Một đứa suốt ngày nghĩ mình là một động cơ nên cứ kêu “brừm, brừm”… Sống trong thế giới ấy, người cha cần phải làm thế nào?', 0, ''),
('Cuoc Song Khong Gioi Han', 300000, 'songkhonggioihan.jpg', 'songkhonggioihan2.jpg', 'songkhonggioihan3.jpg', 'Cuộc Sống Không Giới Hạn - Nick Vujic- Câu Chuyện Diệu Kỳ Của Chàng Trai Đặc Biệt Nhất Hành Tinh“.\r\n\"Bạn đẹp đẽ và quý giá hơn tất cả những viên kim cương trên thế gian này. Dẫu vậy, chúng ta nên luôn luôn đặt ra cho mình mục tiêu trở thành những con người tốt hơn, toàn thiện hơn, đẩy lùi và loại bỏ những giới hạn bằng cách mơ những giấc mơ lớn lao. Trong hành trình đó, chúng ta luôn cần có những điều chỉnh (bởi vì cuộc đời này không phải lúc nào cũng toàn là màu hồng), nhưng cuộc đời này luôn đáng sống. Tôi đến đây để nói với bạn rằng cho dù bạn đang ở trong hoàn cảnh nào, miễn là bạn còn thở, thì bạn vẫn có thể đóng góp cho cuộc đời này…” \r\n', 0, ''),
('7 Thoi Quen Cua Nguoi Thanh Dat', 150000, '7thoiquenthanhdat.jpg', '7thoiquenthanhdat2.jpg', '7thoiquenthanhdat3.jpg', 'Tác giả Steven Covey đã vẽ nên tấm bản đồ hướng đi cho cuộc sống và đưa nó vào trang sách để giúp người đọc không chỉ hình thành những thói quen sinh hoạt hợp lý mà còn giúp họ trở thành người tốt, sống có ích hơn.\r\n\r\nCâu trích hay nhất trong cuốn sách này là: “gieo mầm suy nghĩ sẽ gặt hái hành vi, gieo mầm hành vi sẽ gặt hái thói quen, gieo mầm thói quen sẽ gặt hái tính cách, gieo mầm tính cách sẽ gặt hái số phận”.', 0, ''),
('Hanh Trinh Ve Phuong Dong', 250000, 'hanhtrinhvephongdong.jpg', 'hanhtrinhvephongdong2.jpg', 'hanhtrinhvephongdong3.jpg', 'Hành trình về phương đông” là một phần trong bộ hồi ký nổi tiếng của giáo sư Blair T. Spalding (1857 – 1953). Cuốn sách kể chuyện một đoàn khoa học gồm các chuyên môn khác nhau Hội Khoa học Hoàng gia Anh (tức Viện Hàn lâm Khoa học) cử sang Ấn Độ nghiên cứu về “huyền học”. Sau hai năm trời lang thang khắp các đền chùa Ấn Độ, chứng kiến nhiều cảnh mê tín dị đoan, thậm chí “làm tiền” du khách, của nhiều pháp sư, đạo sĩ rởm, họ được tiếp xúc với những vị chân tu sống ẩn danh ở thành phố hay trên rặng Tuyết Sơn. Nhờ thế, họ được chứng kiến, hiểu biết đúng đắn về các khoa học cổ xưa và bí truyền của văn hóa Ấn Độ như yoga, thuật chiêm tinh, các phép dưỡng sinh và chữa bệnh, quan niệm về cõi sống và cõi chết.\r\n\r\n“Mọi vật trong vũ trụ đều quân bình tuyệt đối, không dư, không thiếu, từ hạt bụi bé nhỏ đến những dãy thiên hà vĩ đại. Đời người quá ngắn, và luôn bị lôi cuốn vào sinh hoạt quay cuồng. Đâu mấy ai ý thức được sự phung phí hôm nay, dọn đường cho sự đau khổ ngày mai. Tất cả chỉ là những ảo ảnh chập chờn, thế mà người ta cứ coi như thật. Nếu biết thức tỉnh quan sát, ta có thể học hỏi biết bao điều hay. Tiếc rằng khi đắc thời người ta quên đi quá khứ rất nhanh. Chỉ trong đau khổ, nhục nhã ê chề mới chịu học. Có thể đó cũng là lý do luôn luôn có các biến động vô thường, thúc dục con người học hỏi.”\r\n', 0, ''),
('Khong Gia Dinh', 200000, 'Không gia đình.jpg', 'Không gia đình2.jpg', 'Không gia đình3.jpg', 'Tình cảm gia đình vốn thiêng liên và đẹp đẽ song ở nhiều thời điểm, tình cảm ấy lại đến từ những người tưởng như xa lạ và không cùng huyết thống. Giữa một xã hội Pháp với nhiều đớn đau và khắc nghiệt có một câu chuyện về tình người cảm động như thế, đó là Không gia đình.\r\n\r\nCuốn sách được chấp bút bởi nhà văn Hector Malot, ông không chỉ sáng tác tiểu thuyết, truyện ngắn, kịch mà còn được biết đến với vai trò của một luật sư trước khi chuyển hoàn toàn sang con đường văn chương.', 0, ''),
('Ky Nang Di Truoc Dam Me', 120000, 'kynangtrcdame.jpg', 'kynangtrcdame2.jpg', 'kynangtrcdame3.jpg', 'Trong quyển sách Kỹ Năng Đi Trước Đam Mê, Cal Newport lột trần niềm tin từ trước đến nay rằng ta nên “theo đuổi đam mê.”\r\n\r\nNiềm tin sáo rỗng này không những sai sót ở chỗ là những đam mê tồn tại sẵn có thường hiếm hoi và không liên quan gì lắm đến việc hầu hết mọi người cuối cùng cũng yêu thích công việc họ làm, mà nó còn có thể gây nguy hiểm, sinh ra cảm giác lo lắng và hiện tượng nhảy việc liên miên.\r\n\r\nAnh tiết lộ rằng việc đi tìm một nghề nghiệp phù hợp với một đam mê tồn tại sẵn từ trước là không quan trọng. Đam mê đến sau khi bạn chăm chỉ làm việc để trở nên xuất sắc trong những việc có ích, chứ đam mê không đến trước.\r\n\r\nNói cách khác, cách bạn làm việc thì quan trọng hơn nhiều so với công việc bạn làm', 0, ''),
('Loi Hua Cay But Chi', 110000, 'loihuacaybutchi.jpg', 'loihuacaybutchi2.jpg', 'loihuacaybutchi3.jpg', 'Lời hứa về một cây bút chì tái hiện lại cuộc hành trình của Adam Braun. Mỗi chương giải thích một bước rõ ràng mà mỗi người có thể làm để biến những tham vọng lớn nhất của họ thành hiện thực.\r\n\r\nCuốn sách dành cho tuổi 25? Nếu bạn đang tìm kiếm định hướng và mục tiêu cuộc đời, cuốn sách này là dành cho bạn.\r\n\r\nĐược dẫn dắt bởi những câu chuyện và các chia sẻ đầy cảm hứng, cuốn sách sẽ cung cấp cho bạn những công cụ để tạo nên một câu chuyện đáng kể trong cuộc sống của chính bạn.', 0, ''),
('Nghe Thuat Tinh Te Cua Viec Dech Quan Tam', 130000, 'nghethuattinhe.jpg', 'nghethuattinhe2.jpg', 'nghethuattinhe3.jpg', '“Trong cuộc đời mình, tôi đã từng quan tâm về quá nhiều thứ. Đồng thời tôi cũng “đếch” quan tâm tới nhiều người, nhiều điều khác nữa. Và giống như con đường chưa từng được khai phá, chính những điều tôi chẳng thèm quan tâm ấy lại tạo nên sự khác biệt.\r\n\r\nChìa khóa của một cuộc sống tốt đẹp không phải là quan tâm nhiều hơn, mà là quan tâm ít đi, chỉ quan tâm tới điều gì là thật, gần gũi và thực sự quan trọng.\r\n\r\nCuốn này sẽ không dạy bạn cách để đạt tới điều này hay điều nọ, mà là làm thế nào để vứt bớt và buông bỏ… Nó sẽ hướng dẫn bạn cách nhắm mắt lại và tin rằng bạn có thể ngã ngửa ra đằng sau mà vẫn ổn. Nó sẽ dạy bạn: ĐỪNG CỐ”', 0, '');
INSERT INTO `allbook` (`name`, `price`, `pic`, `pic2`, `pic3`, `content`, `likes`, `classify`) VALUES
('Think and grow rich', 200000, 'Think and grow rich.jpg', 'Think and grow rich2.jpg', 'Think and grow rich3.jpg', 'Think And Grow Rich – Nghĩ Giàu Và Làm Giàu với 13 nguyên tắc là cuốn sách tổng hợp đầy đủ nhất những “chỉ dẫn” chỉ ra những nguồn lực bạn phải có để thành công.\r\n\r\nCuốn sách không chỉ hướng dẫn bạn trở nên giàu có về tiền bạc mà còn làm giàu trên tất cả các phương diện khác của cuộc sống.\r\n\r\nNhững kiến thức được chia sẻ trong cuốn sách có thể được coi mang tính kinh điển và trường tồn qua thời gian . Rất nhiều lý thuyết về quản lý nhóm, dịch vụ chăm sóc khách hàng hoàn hảo, những công cụ hữu hình, trí tuệ tập thể đã được đưa ra và bàn tới. ', 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bestseller`
--

DROP TABLE IF EXISTS `bestseller`;
CREATE TABLE IF NOT EXISTS `bestseller` (
  `namebook` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `bestseller`
--

INSERT INTO `bestseller` (`namebook`) VALUES
('Muôn kiếp nhân sinh'),
('Cà Phê Cùng Tony'),
('Chuyện Con Mèo Dạy Hải Âu Bay (Tái Bản 2017)'),
('Khi Lỗi Thuộc Về Những Vì Sao'),
('Đắc Nhân Tâm (Khổ Lớn)'),
('Nhà Giả Kim'),
('Hoàng Tử Bé (Tái Bản 2019)'),
('Mình Sinh Ra Đâu Phải Để Buồn'),
('Tuổi Trẻ Đáng Giá Bao Nhiêu'),
('Những Giấc Mơ Ở Hiệu Sách Morisaki');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `email` varchar(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `pic` varchar(255) NOT NULL,
  `price` float DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`email`, `name`, `pic`, `price`, `amount`) VALUES
('', 'fdsf', 'battre2.jpg', 10000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `email` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `namebook` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `rate` int(11) NOT NULL,
  `content` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`email`, `namebook`, `rate`, `content`) VALUES
('tranthanhson299@gmail.com', 'Muôn kiếp nhân sinh', 5, '5 sao'),
('tranthanhson299@gmail.com', 'Cà Phê Cùng Tony', 4, '4 sao'),
('tranthanhson603@gmail.com', 'Muôn kiếp nhân sinh', 4, '4 sao'),
('tranthanhson299@gmail.com', 'Muôn kiếp nhân sinh', 3, '3 sao'),
('tranthanhson603@gmail.com', 'Cà Phê Cùng Tony', 2, '3 sao'),
('tranthanhson299@gmail.com', 'Cà Phê Cùng Tony', 4, '3 sao'),
('tranthanhson299@gmail.com', 'Chuyện Con Mèo Dạy Hải Âu Bay (Tái Bản 2017)', 5, 'hay'),
('tranthanhson299@gmail.com', 'Cà Phê Cùng Tony', 1, '2 ssao'),
('tts@gmail.com', 'Muôn kiếp nhân sinh', 1, '2 sssao'),
('tranthanhson299@gmail.com', 'Muôn kiếp nhân sinh', 1, '5 sao');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favourite`
--

DROP TABLE IF EXISTS `favourite`;
CREATE TABLE IF NOT EXISTS `favourite` (
  `namebook` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `favourite`
--

INSERT INTO `favourite` (`namebook`) VALUES
('Nhà Giả Kim'),
('Hoàng Tử Bé (Tái Bản 2019)'),
('Mình Sinh Ra Đâu Phải Để Buồn'),
('Tuổi Trẻ Đáng Giá Bao Nhiêu'),
('Những Giấc Mơ Ở Hiệu Sách Morisaki'),
('Điều Kỳ Diệu Của Tiệm Tạp Hóa NAMIYA (Tái Bản)'),
('Cà Phê Cùng Tony'),
('Chuyện Con Mèo Dạy Hải Âu Bay (Tái Bản 2017)'),
('Khi Lỗi Thuộc Về Những Vì Sao'),
('The Story Of Art - Câu Chuyện Nghệ Thuật');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE IF NOT EXISTS `likes` (
  `email` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `likes`
--

INSERT INTO `likes` (`email`, `name`) VALUES
('tranthanhson299@gmail.com', 'Khi Lỗi Thuộc Về Những Vì Sao');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `new`
--

DROP TABLE IF EXISTS `new`;
CREATE TABLE IF NOT EXISTS `new` (
  `namebook` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `new`
--

INSERT INTO `new` (`namebook`) VALUES
('Nhà Giả Kim'),
('Hoàng Tử Bé (Tái Bản 2019)'),
('Mình Sinh Ra Đâu Phải Để Buồn'),
('Tuổi Trẻ Đáng Giá Bao Nhiêu'),
('Những Giấc Mơ Ở Hiệu Sách Morisaki'),
('Điều Kỳ Diệu Của Tiệm Tạp Hóa NAMIYA (Tái Bản)'),
('Cà Phê Cùng Tony'),
('Chuyện Con Mèo Dạy Hải Âu Bay (Tái Bản 2017)'),
('Khi Lỗi Thuộc Về Những Vì Sao'),
('The Story Of Art - Câu Chuyện Nghệ Thuật');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `email` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `sdt` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `address` text COLLATE utf8_vietnamese_ci NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`email`, `name`, `sdt`, `address`, `price`, `status`) VALUES
('tranthanhson299@gmail.com', 'Trần Thanh Sơn', '0123456789', 'abc', 424000, 'Đang giao hàng'),
('tranthanhson603@gmail.com', 'Trần Thanh Sơn', '0829445620', 'abc def', 200000, 'Chờ xử lý'),
('tranthanhson603@gmail.com', 'Trần Thanh Sơn', '0142782', 'abcabc abc cabc abc', 212000, 'Chờ xác nhận'),
('tranthanhson299@gmail.com', 'Trần Thanh Sơn', '0123456789', 'abcabc abc cabc abc', 256000, 'Đang giao hàng'),
('tranthanhson299@gmail.com', 'Trần Thanh Sơn', '0123456789', 'abcabc abc cabc abc', 346000, 'Chờ xử lý'),
('tts@gmail.com', 'Trần Thanh Sơn', '0123456789', 'âksjfdfkdjs', 480000, 'Huỷ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `email` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `likes` text COLLATE utf8_vietnamese_ci NOT NULL,
  `code` text COLLATE utf8_vietnamese_ci,
  `permission` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`email`, `password`, `likes`, `code`, `permission`) VALUES
('tranthanhson299@gmail.com', '1234', 'Muôn kiếp nhân sinh, Con Chim Xanh Biếc Bay Về, Những Giấc Mơ Ở Hiệu Sách Morisaki, ', '', 1),
('tranthanhson603@gmail.com', '123', '', '', 0),
('ngocnhu21042000@gmail.com', '123', '', '50B1C2DC', 0),
('tts@gmail.com', '123', '', '', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
