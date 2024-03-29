USE [QLDulich]
GO
/****** Object:  Table [dbo].[book_tour]    Script Date: 13/08/2019 1:07:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[book_tour](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NULL,
	[name] [nvarchar](100) NOT NULL,
	[email] [nvarchar](100) NULL,
	[phone] [nvarchar](100) NULL,
	[address] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[book_tour_detail]    Script Date: 13/08/2019 1:07:29 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[book_tour_detail](
	[book_tour_id] [int] NOT NULL,
	[tour_id] [int] NOT NULL,
	[quantity] [int] NULL,
	[subtotal] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 13/08/2019 1:07:29 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[detail_comment] [nvarchar](200) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[phone] [nvarchar](11) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 13/08/2019 1:07:29 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[password] [nvarchar](30) NOT NULL,
	[email] [nvarchar](100) NULL,
	[phone] [nvarchar](11) NULL,
	[address] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[event_news]    Script Date: 13/08/2019 1:07:29 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[event_news](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [nvarchar](200) NULL,
	[title] [nvarchar](100) NOT NULL,
	[detail] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hotel]    Script Date: 13/08/2019 1:07:29 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hotel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[detail] [nvarchar](200) NULL,
	[image] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[manager]    Script Date: 13/08/2019 1:07:29 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[manager](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[email] [nvarchar](100) NULL,
	[phone] [nvarchar](11) NULL,
	[username] [nvarchar](30) NOT NULL,
	[password] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[place]    Script Date: 13/08/2019 1:07:29 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[place](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tour]    Script Date: 13/08/2019 1:07:29 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tour](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[price] [int] NULL,
	[start_time] [nvarchar](100) NULL,
	[departure_time] [nvarchar](100) NULL,
	[vehicle_id] [int] NULL,
	[hotel_id] [int] NULL,
	[place_id] [int] NULL,
	[image] [nvarchar](200) NULL,
	[detail] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vehicle]    Script Date: 13/08/2019 1:07:29 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vehicle](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[detail] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[book_tour] ON 

INSERT [dbo].[book_tour] ([id], [customer_id], [name], [email], [phone], [address]) VALUES (1, NULL, N'Nông Hải Hà', N'nonghaiha0410@gmail.com', N'0368521362', N'Hà Giang')
INSERT [dbo].[book_tour] ([id], [customer_id], [name], [email], [phone], [address]) VALUES (2, NULL, N'Nguyễn Duy Long', N'duylong0206@gmail.com', N'012356896', N'Hà Nội')
SET IDENTITY_INSERT [dbo].[book_tour] OFF
INSERT [dbo].[book_tour_detail] ([book_tour_id], [tour_id], [quantity], [subtotal]) VALUES (1, 10, 4, 26956000)
INSERT [dbo].[book_tour_detail] ([book_tour_id], [tour_id], [quantity], [subtotal]) VALUES (2, 40, 6, 77940000)
SET IDENTITY_INSERT [dbo].[customer] ON 

INSERT [dbo].[customer] ([id], [name], [password], [email], [phone], [address]) VALUES (1, N'Nong Hai Ha', N'123456', N'nonghaiha0410@gmail.com', N'0368521362', N'Ha Giang')
SET IDENTITY_INSERT [dbo].[customer] OFF
SET IDENTITY_INSERT [dbo].[event_news] ON 

INSERT [dbo].[event_news] ([id], [image], [title], [detail]) VALUES (4, N'HoaTayBac_468846779.jpg', N'TRẨY HỘI “NGƯỜI ĐẸP” VÙNG CAO', N'Xuân đến, cảnh sắc vùng cao Hà Giang, Sapa, Cao Bằng... rực rỡ như đang bước vào một hội thi “người đẹp” - nhan sắc hoa.


Về thành phố ngắm nhà, đi trung du xem đồi, lên vùng cao chiêm ngưỡng núi. Mỗi nơi có một vẻ đẹp riêng, nhưng nếu chọn lên núi, xin đừng bỏ qua cánh cung Đông - Tây Bắc đẹp như tranh họa đồ, đặc biệt vào độ tết đến xuân về.
  

Hoa khôi của Đào - Mận - Cải

Nếu phải tiến cử “người đẹp” của Hà Giang về dự hội thi hoa cỏ mùa xuân, hãy chọn bộ ba Đào - Mận - Cải. Và không cần phải tạo hình, mà cứ để các nàng hoa này khoe sắc, tỏa hương một cách tự nhiên ngay trên những vách đá, thung sâu hay trước cửa nhà sàn bảng lảng sương khói. Thế nên, khí hậu vùng cao dù có lạnh đến mấy cũng sẽ được sưởi ấm bằng hình ảnh duyên dáng mềm mại, rắc thêm chút son phấn hồng, trắng, vàng của hoa đào, hoa mận, hoa cải… trên những cánh đồng đá bất tận đón xuân về. Và dạo chợ, dù có gặp bạn tình hay không thì chỉ cần thấy một nụ cười, bắt gặp một ánh mắt, ngửi men nồng của chén rượu xuân cũng đủ khiến lòng du khách say bất tận trong cảm giác thăng hoa của trời đất. 



Non nước Cao Bằng

Bức tranh thủy mặc khổng lồ của người họa sĩ thiên nhiên tiếp tục vung nét bút đến Cao Bằng. Nếu có bị trách cứ rằng sao cứ mải mê với Cao Bằng mà quên đường về, thì đây, người xưa chẳng nói “Nàng về nuôi cái cùng con / Để anh đi trẩy nước non Cao Bằng”. Cao Bằng sẽ góp cho cuộc thi “người đẹp vùng cao” chính khung cảnh thiên nhiên kỳ vĩ mà thơ mộng trong mùa xuân.
Ngay từ thị xã đã ngỡ ngàng với địa hình kỳ thú - ba mặt giáp sông, bốn bề núi trụ ôm gọn thị xã xinh xắn vào lòng. Thác Bản Giốc mãi là một vẻ đẹp ấn tượng gây xúc động cho bất kỳ ai có cơ hội đến chiêm ngưỡng. Mùa xuân cũng là mùa khô, thác mang gương mặt hiền dịu nhất, trong xanh nhất và cũng thanh bình mát mắt ngay nơi chân thác. Khách có thể tham quan toàn bộ ba tầng thác bằng mảng tre, ngắm “người đẹp” trổ tài năng tung những dải nước mềm như múa lụa làm ngất ngây lòng người.



Nàng đào của xứ mây

Nàng đào của Sapa thật đúng tiếng lành đồn xa! Người Hà Nội có thú chơi sang, và bây giờ thì người tứ xứ cũng đổ về Sapa ngắm đào, kỳ công mang cho được một cành đào “made in Sapa” về làm đẹp, làm sang nhà ngày Tết. Chính vì thương hiệu đào Sapa vang xa mà bà con dân tộc cũng hào hứng rủ nhau vào vườn nhà hoặc lên rừng chọn chặt cành đào đẹp mang xuống chợ bán trong cái giá lạnh rùng rùng băng tuyết.
Chớm xuân, dọc đường quốc lộ Sapa - Lào Cai đã thấy những thanh niên vùng cao co ro trong áo bông mang hoa đào ra bán lấy tiền tiêu tết, chợ hoa đào họp ngay trong giá lạnh sương mù - nét riêng độc đáo của du lịch Sapa cũng hút du khách tới tham quan, khám phá mỗi khi tết đến, xuân về.



Bích Hương')
SET IDENTITY_INSERT [dbo].[event_news] OFF
SET IDENTITY_INSERT [dbo].[hotel] ON 

INSERT [dbo].[hotel] ([id], [name], [detail], [image]) VALUES (1, N'Lotte Hotel', N'Lotte Hotel 54 Lieu Giai, Cong Vi, Ba Dinh, Ha Noi, Viet Nam', N'~/admin/image/hotel/lotte hotel.jpg')
INSERT [dbo].[hotel] ([id], [name], [detail], [image]) VALUES (2, N'Deawoo hotel', N'Daewoo Hotel 360 Kim Ma, Ngoc Khanh, Ba Dinh, Ha Noi, Viet Nam', N'~/admin/image/hotel/daewoo hotel.jpg')
INSERT [dbo].[hotel] ([id], [name], [detail], [image]) VALUES (3, N'Sofitel Legend Metropole', N'Sofitel Legend Metropole, 15 Ngo Quyen street, Hoan Kiem, Ha Noi, Viet Nam', N'~/admin/image/hotel/sofitel legend metropole.jpg')
INSERT [dbo].[hotel] ([id], [name], [detail], [image]) VALUES (11, N'Nikko', N'84 Tran Nhan Tong, Nguyen Du, Hai Ba Trung, Ha Noi, Viet Nam', N'~/admin/image/hotel/Nikko-Hanoi-Hotel.jpg')
INSERT [dbo].[hotel] ([id], [name], [detail], [image]) VALUES (12, N'Moevenpick Hotel', N'Moevenpick Hotel, 83A Ly Thuong Kiet, Cua Nam, Hoan Kiem, Ha Noi, Viet Nam', N'~/admin/image/hotel/Moevenpick Ha Noi.jpg')
INSERT [dbo].[hotel] ([id], [name], [detail], [image]) VALUES (13, N'Melia', N'Melia, 44 Ly Thuong Kiet, Tran Hung Dao, Ha Noi, Viet Nam', N'~/admin/image/hotel/melia Ha Noi.jpg')
INSERT [dbo].[hotel] ([id], [name], [detail], [image]) VALUES (14, N'Intercontinental Hanoi Westlake', N'Intercontinental Hanoi Westlake, 55 Tu Hoa street, Quang An, Tay Ho, Ha Noi, Viet Nam', N'~/admin/image/hotel/Intercontinental Hanoi Westlake.jpg')
INSERT [dbo].[hotel] ([id], [name], [detail], [image]) VALUES (15, N'Dalat Cadasa Resort', N'Dalat Cadasa Resort, 16 Tran Hung Dao, Ward 10, Da Lat, Lam Dong, Viet Nam', N'~/admin/image/hotel/Dalat Cadasa Resort.jpg')
INSERT [dbo].[hotel] ([id], [name], [detail], [image]) VALUES (16, N'Kings Hotel Dalat', N'Kings Hotel Dalat, 10 Bui Thi Xuan Street, Ward 2, Da Lat, Lam Dong, Viet Nam', N'~/admin/image/hotel/Kings Hotel Dalat.jpg')
INSERT [dbo].[hotel] ([id], [name], [detail], [image]) VALUES (17, N'Vinpearl Luxury Da Nang', N'No 7 Truong Sa Street, Hoa Hai Ward, Ngu Hanh Son District, Da Nang, Viet Nam', N'~/admin/image/hotel/Vinpearl Luxury Da Nang.jpg')
INSERT [dbo].[hotel] ([id], [name], [detail], [image]) VALUES (18, N'Intercontinental DaNang Sun Peninsula Resort', N'Bai Bac, SonTra Peninsula, Danang City, Viet Nam', N'~/admin/image/hotel/Intercontinental DaNang Sun Peninsula Resort.jpg')
INSERT [dbo].[hotel] ([id], [name], [detail], [image]) VALUES (19, N'Furama Resort Da Nang', N'Furama Resort Da Nang, 105 Vo Nguyen Giap, Khue My, Ngu Hanh Son, Da Nang, Viet Nam', N'~/admin/image/hotel/Furama Resort Da Nang.jpg')
INSERT [dbo].[hotel] ([id], [name], [detail], [image]) VALUES (22, N'New World Saigon', N'New World Saigon, 76 Le Lai, Ben Thanh Ward, District 1,Ho Chi Minh, Viet Nam', N'~/admin/image/hotel/khach-san-new-world-saigon.jpg')
INSERT [dbo].[hotel] ([id], [name], [detail], [image]) VALUES (24, N'Majestic Saigon', N'Majestic Saigon, 1 Dong Khoi, District 1, Ho Chi Minh, Viet Nam', N'~/admin/image/hotel/khach-san-majestic-sai-gon.png')
INSERT [dbo].[hotel] ([id], [name], [detail], [image]) VALUES (25, N'Lotte Legend Saigon', N'Lotte Legend Saigon, 2A - 4A Ton Duc Thang Street, Ben Nghe, District 1, Ho Chi Minh city, Viet Nam', N'~/admin/image/hotel/Lotte Legend Saigon.jpg')
INSERT [dbo].[hotel] ([id], [name], [detail], [image]) VALUES (26, N'InterContinental Asiana Saigon', N'InterContinental Asiana Saigon,Corner Hai Ba Trung St. &amp; Le Duan Bl, Ho Chi Minh city, Viet Nam', N'~/admin/image/hotel/InterContinental Asiana Saigon.jpg')
INSERT [dbo].[hotel] ([id], [name], [detail], [image]) VALUES (27, N'Concorde Hotel New York', N'127 East 55th Street, Khu Midtown East, New York, NY 10022, American', N'~/admin/image/hotel/american hotel.jpg')
INSERT [dbo].[hotel] ([id], [name], [detail], [image]) VALUES (28, N'Delta Hotels by Marriott Toronto', N' 75 Lower Simcoe Street, M5J 3A6 Toronto, Canada ', N'~/admin/image/hotel/canada.jpg')
INSERT [dbo].[hotel] ([id], [name], [detail], [image]) VALUES (29, N'Meriton Suites Carter Street ', N'1 Carter Street, Sydney Olympic Park, 2141 Sydney, Australia', N'~/admin/image/hotel/australia.jpg')
INSERT [dbo].[hotel] ([id], [name], [detail], [image]) VALUES (30, N'Pyeongchang Ramada Hotel & Suite', N'107, Omok-gil, Daegwallyeong-myeon, Daegwallyeong-myeon, 25342 Pyeongchang, Korean', N'~/admin/image/hotel/korean.jpg')
INSERT [dbo].[hotel] ([id], [name], [detail], [image]) VALUES (31, N'Green Point Residence Hotel', N' 59 Pradit Manutham Road Lat Phrao Bankok Thailand Greenpointresidence, 10230 Ban Khi Sua, Thailand', N'~/admin/image/hotel/thailand.jpg')
INSERT [dbo].[hotel] ([id], [name], [detail], [image]) VALUES (32, N'Hilton Niseko Village', N'048-1592 Hokkaido, Niseko, Higashiyama Onsen, Japan', N'~/admin/image/hotel/japan.jpg')
INSERT [dbo].[hotel] ([id], [name], [detail], [image]) VALUES (33, N'Cordis, Beijing Capital Airport By Langham Hospitality Group', N'No.1,Yijing Road, Terminal 3, Capital Airport, Shunyi District, 100621 Shunyi, China', N'~/admin/image/hotel/china.jpg')
SET IDENTITY_INSERT [dbo].[hotel] OFF
SET IDENTITY_INSERT [dbo].[manager] ON 

INSERT [dbo].[manager] ([id], [name], [email], [phone], [username], [password]) VALUES (1, N'Nông Hải Hà', N'nonghaiha0410@gmail.com', N'0368521362', N'haiha04', N'04101998Aa')
INSERT [dbo].[manager] ([id], [name], [email], [phone], [username], [password]) VALUES (2, N'Đoàn Mạnh Duy', N'manhduy@gmail.com', N'0123456789', N'manhduy', N'123')
INSERT [dbo].[manager] ([id], [name], [email], [phone], [username], [password]) VALUES (3, N'Nguyễn Đức Duy', N'ducduy@gmail.com', N'0123456789', N'ducduy', N'123')
INSERT [dbo].[manager] ([id], [name], [email], [phone], [username], [password]) VALUES (4, N'Đỗ Công Minh', N'congminh@gmail.com', N'0123456789', N'congminh', N'123')
SET IDENTITY_INSERT [dbo].[manager] OFF
SET IDENTITY_INSERT [dbo].[place] ON 

INSERT [dbo].[place] ([id], [name]) VALUES (1, N'Hà Nội')
INSERT [dbo].[place] ([id], [name]) VALUES (2, N'Hà Giang')
INSERT [dbo].[place] ([id], [name]) VALUES (5, N'Đà Nẵng')
INSERT [dbo].[place] ([id], [name]) VALUES (7, N'TP. Hồ Chí Minh')
INSERT [dbo].[place] ([id], [name]) VALUES (15, N'Nha Trang')
INSERT [dbo].[place] ([id], [name]) VALUES (16, N'Phú Quốc')
INSERT [dbo].[place] ([id], [name]) VALUES (18, N'Hạ Long')
INSERT [dbo].[place] ([id], [name]) VALUES (19, N'Đà Lạt')
INSERT [dbo].[place] ([id], [name]) VALUES (20, N'TP. Thừa Thiên Huế')
INSERT [dbo].[place] ([id], [name]) VALUES (21, N'Sa Pa')
INSERT [dbo].[place] ([id], [name]) VALUES (22, N'American United States')
INSERT [dbo].[place] ([id], [name]) VALUES (23, N'Canada')
INSERT [dbo].[place] ([id], [name]) VALUES (24, N'Australia')
INSERT [dbo].[place] ([id], [name]) VALUES (25, N'Korean')
INSERT [dbo].[place] ([id], [name]) VALUES (26, N'Thailand')
INSERT [dbo].[place] ([id], [name]) VALUES (27, N'Japan')
INSERT [dbo].[place] ([id], [name]) VALUES (28, N'China')
INSERT [dbo].[place] ([id], [name]) VALUES (30, N'Dubai')
SET IDENTITY_INSERT [dbo].[place] OFF
SET IDENTITY_INSERT [dbo].[tour] ON 

INSERT [dbo].[tour] ([id], [name], [price], [start_time], [departure_time], [vehicle_id], [hotel_id], [place_id], [image], [detail]) VALUES (10, N'Tour Đà Nẵng', 6739000, N'4 Ngày 3 Đêm', N'30/4/2019', 9, 17, 5, N'~/admin/image/tour/Lang-Co-Bay_342719669.jpg', N'  Dạo chơi thư giãn tại Phố cổ Hội An cổ kính, thơ mộng. Đặc biệt xem Show “Ký Ức Hội An” - vở diễn thực cảnh ngoài trời với số lượng diễn viên đạt kỷ lục Việt Nam, tái hiện nhịp nhàng sinh động miền ký ức Faifo đa văn hóa
- Đến Cù Lao Chàm đã được UNESCO công nhận là khu dự trữ sinh quyển thế giới.
- Tham quan Di sản Văn hóa Thế giới Kinh Thành Huế - Hoàng cung của 13 vị Vua triều Nguyễn với các công trình tiêu biểu.In chương trình tour 
')
INSERT [dbo].[tour] ([id], [name], [price], [start_time], [departure_time], [vehicle_id], [hotel_id], [place_id], [image], [detail]) VALUES (11, N'TOUR HUẾ - ĐÀ NẴNG- HỘI AN - BÀ NÀ - CẦU VÀNG', 6339000, N'4 Ngày 3 Đêm', N'30/4/2019', 9, 18, 20, N'~/admin/image/tour/Imperial-Royal-Palace Hue.jpg', N'- Đắm mình trong không gian cổ kính của Kinh Thành Huế. 
- Thư thả tản bộ tại Phố cổ với các công trình tiêu biểu: Chùa Cầu Nhật Bản, chùa Ông, hội quán Phúc Kiến, khu phố đèn lồng.
- Dạo bước trên Cầu Vàng tọa lạc tại Vườn Thiên Thai, với thiết kế độc đáo và ấn tượng, đầy mềm mại tựa một dải lụa, được nâng đỡ bởi đôi bàn tay khổng lồ loang lổ rêu phong giữa cảnh sắc nên thơ tuyệt diệu của Bà Nà – Núi Chúa.')
INSERT [dbo].[tour] ([id], [name], [price], [start_time], [departure_time], [vehicle_id], [hotel_id], [place_id], [image], [detail]) VALUES (12, N'DU LỊCH MỘC CHÂU - SƠN LA - ĐIỆN BIÊN - LAI CHÂU - SAPA - LÀO CAI - ĐỀN HÙNG', 8179000, N'5 Ngày 4 Đêm', N'30/4/2019', 9, 1, 21, N'~/admin/image/tour/Catholic-church-Sapa_223497349.jpg', N'- Chinh phục đèo Pha Đin - một trong những đường đèo dài và hiểm trở nhất Việt Nam 
- Chinh phục “Nóc nhà Đông Dương” - đỉnh Fansipan ở độ cao 3,143m.
- Tham quan các di tích: bảo tàng chiến thắng Điện Biên Phủ, đồi A1, Hầm tướng De Castries, Tượng đài chiến thắng Điện Biên Phủ (đồi D1).
- Viếng khu di tích Đền Hùng - một quần thể kiến trúc trang nghiêm trên núi Nghĩa Lĩnh.')
INSERT [dbo].[tour] ([id], [name], [price], [start_time], [departure_time], [vehicle_id], [hotel_id], [place_id], [image], [detail]) VALUES (25, N'DU LỊCH PHÚ QUỐC ', 7999000, N'4 Ngày 3 Đêm', N'30/4/2019', 9, 1, 16, N'~/admin/image/tour/phu-quoc-beach_623480438.jpg', N'- Tham quan di tích nhà tù Phú Quốc, Dinh Cậu, Làng chài cổ Hàm Ninh...
- Viếng chùa Hùng Long - ngôi chùa tín ngưỡng tại địa phương
- Tắm biển Bãi Sao (hoặc bãi Ông Lang) - một trong những bãi biển đẹp nhất tại Phú Quốc')
INSERT [dbo].[tour] ([id], [name], [price], [start_time], [departure_time], [vehicle_id], [hotel_id], [place_id], [image], [detail]) VALUES (26, N'DU LỊCH NHA TRANG', 4179000, N'4 Ngày 3 Đêm', N'30/4/2019', 9, 2, 15, N'~/admin/image/tour/view-on-Nha-Trang.jpg', N'- Chiêm ngưỡng Bãi biển cát trắng Cà Ná - một trong những bãi biển đẹp nổi tiếng của miền Trung
- Tới khu du lịch Hòn Lao - đảo Khỉ, thư giãn, xem xiếc hoặc thử các môn thể thao bãi biển
- Tắm biển Dốc Lết - Một trong những bãi biển êm, đẹp, nổi tiếng của tỉnh Khánh Hòa')
INSERT [dbo].[tour] ([id], [name], [price], [start_time], [departure_time], [vehicle_id], [hotel_id], [place_id], [image], [detail]) VALUES (27, N'DU LỊCH HÀ GIANG', 5419000, N'6 Ngày 5 Đêm', N'30/4/2019', 10, 3, 2, N'~/admin/image/tour/shutterstock_379340137.jpg', N'- Đến Cao nguyên đá Đồng Văn - Công viên địa chất toàn cầu. Thưởng ngoạn cảnh sắc ngoạn mục từ những “vườn đá”, “rừng đá” tai mèo giữa những dãy núi trùng điệp
- Vượt đèo Mã Pí Lèng - một trong “Tứ đại danh đèo” của vùng núi biên viễn phía Bắc')
INSERT [dbo].[tour] ([id], [name], [price], [start_time], [departure_time], [vehicle_id], [hotel_id], [place_id], [image], [detail]) VALUES (30, N'DU LỊCH HÀ NỘI - BÁI ĐÍNH - TRÀNG AN - HẠ LONG', 7579000, N'4 Ngày 4 Đêm', N'10/8/2019', 10, 12, 1, N'~/admin/image/tour/rock-island-trong-mai.jpg', N'- Tham quan dạo quanh, ngắm hồ Hoàn Kiếm, viếng đền Ngọc Sơn. 
- Tham quan Khu du lịch Tràng An - nằm trong quần thể danh thắng được UNESCO công nhận di sản hỗn hợp đầu tiên của Việt Nam và khu vực Đông Nam Á. Đặc biệt, khám phá bối cảnh “Làng thổ dân” trong phim bom tấn Kong. 
- Du ngoạn vịnh Hạ Long - thưởng ngoạn vẻ đẹp kỳ vĩ của hang Ba Hang, các hòn Đỉnh Hương - Trống Mái (Gà Chọi) - Chó Đá. Tham quan động Thiên Cung.')
INSERT [dbo].[tour] ([id], [name], [price], [start_time], [departure_time], [vehicle_id], [hotel_id], [place_id], [image], [detail]) VALUES (31, N'DU LỊCH TP HCM – CẦN THƠ – HÀ TIÊN – CHÂU ĐỐC', 7350000, N'5 Ngày 4 Đêm', N'4/9/2019', 9, 25, 7, N'~/admin/image/tour/Tra-Su-forest_221248357.jpg', N'- Đến Mỹ Tho thường thức trái cây theo mùa, nghe đờn ca tài tử
- Khám phá khu chợ nổi Cái Răng - khu chợ nổi tiếng của vùng đất miền Tây Nam Bộ
- Tham quan Rừng tràm Trà Sư, trải nghiệm xuyên qua những con rạch, lên tháp ngắm toàn cảnh rừng tràm')
INSERT [dbo].[tour] ([id], [name], [price], [start_time], [departure_time], [vehicle_id], [hotel_id], [place_id], [image], [detail]) VALUES (32, N' DU LỊCH MỸ [LOS ANGELES – SAN DIEGO – 1 NGÀY TỰ DO]', 36999000, N'6 Ngày 5 Đêm', N'24/8/2019', 9, 27, 22, N'~/admin/image/tour/Washington-Monument-and-National-Mall_241514698.jpg', N'Tour này có gì hay- Khám phá Bờ Tây nước Mỹ chứa đựng vô vàn thú vị với mức giá siêu tiết kiệm. 
- Đặc biệt, tham quan San Diego - thành phố bên bờ Thái Bình Dương, mang hơi thở văn hóa của người Mexico - thế giới của đồ lưu niệm và món ăn ngon không thể bỏ lỡ.
- Chạm chân đến Đại lộ Hollywood và sống trong bầu không khí nghệ thuật thứ bảy.
- Ghé thăm khu Little Saigon - nơi sinh sống của cộng đồng người Việt
- Thỏa sức mua sắm và kết hợp thăm thân nhân tại Mỹ.')
INSERT [dbo].[tour] ([id], [name], [price], [start_time], [departure_time], [vehicle_id], [hotel_id], [place_id], [image], [detail]) VALUES (34, N'DU LỊCH ÚC [MELBOURNE - SYDNEY] THAM QUAN XỨ SỞ CHUỘT TÚI', 44900000, N'6 Ngày 5 Đêm', N'12/8/2019', 9, 29, 24, N'~/admin/image/tour/Sydney-Opera-House_662769640.jpg', N'Tour này có gì hay- Khám phá vườn thực vật Fitzroy Garden quang cảnh nên thơ với nghệ thuật trồng hoa và làm vườn chuyên nghiệp
- Chiêm ngưỡng thủy cung Melbourne
- Tham quan biểu tượng của Sydney: Nhà hát Sydney Opera nổi tiếng với kiến trúc con sò
- Khám phá di sản thiên nhiên Blue mountain')
INSERT [dbo].[tour] ([id], [name], [price], [start_time], [departure_time], [vehicle_id], [hotel_id], [place_id], [image], [detail]) VALUES (36, N'DU LỊCH CANADA MÙA LÁ ĐỎ [VANCOUVER - VICTORIA - WHISTLER VILLAGE]', 59499150, N'6 Ngày 5 Đêm', N'21/10/2019', 9, 28, 23, N'~/admin/image/tour/Niagara-Falls-Ontario-Canada-sunrise.jpg', N'- Khám phá một Canada năng động và hiện đại vào bậc nhất thế giới với thành phố Vancouver, Victoria đa văn hóa, sắc tộc, nghệ thuật và thanh bình. 
- Thư giãn dạo bước trong không khí trong lành của ở Công viên Stanley, chiêm ngưỡng những thảm hoa rực rỡ khoe sắc được chăm sóc bởi những người làm vườn tài hoa trong vườn Butchart.
- Trải nghiệm đi qua cầu treo Capilano dành cho người đi bộ dài 137m, bắc ngang sông Capilano hay ngắm nhìn ngọn núi hùng vĩ Whistler Blackcomb trên cáp treo tại làng du lịch Whistler')
INSERT [dbo].[tour] ([id], [name], [price], [start_time], [departure_time], [vehicle_id], [hotel_id], [place_id], [image], [detail]) VALUES (37, N'DU LỊCH HÀN QUỐC [SEOUL - EVERLAND - NAMI - THÁP NAMSAN]', 12490000, N'5 Ngày 4 Đêm', N'20/8/2019', 9, 30, 25, N'~/admin/image/tour/Cheonggyecheon-Stream-Park_689415325.jpg', N'- Thưởng ngoạn thiên nhiên tuyệt vời trên đảo Nami xinh đẹp và yên bình
- Chiêm ngưỡng và chụp hình lưu niệm với những khóa tình yêu nổi tiếng tại Tháp truyền hình Namsan 
- Khám phá và vui chơi tại Everland - Top 10 công viên giải trí thu hút nhất thế giới.
- Thỏa thích mua sắm với các sản phẩm chăm sóc sức khỏe và làm đẹp nổi tiếng Hàn Quốc.')
INSERT [dbo].[tour] ([id], [name], [price], [start_time], [departure_time], [vehicle_id], [hotel_id], [place_id], [image], [detail]) VALUES (38, N'DU LỊCH THÁI LAN - XEM VÒNG LOẠI WORLD CUP [VIỆT NAM - THÁI LAN]', 8900000, N'5 Ngày 4 Đêm', N'4/9/2019', 9, 31, 26, N'~/admin/image/tour/Royal-grand-palace-in-Bangkok_354574304.jpg', N'- Đồng hành cùng Đội tuyển Quốc Gia chinh phục giấc mơ World Cup
- Thỏa sức khám phá xứ sở chùa Vàng')
INSERT [dbo].[tour] ([id], [name], [price], [start_time], [departure_time], [vehicle_id], [hotel_id], [place_id], [image], [detail]) VALUES (39, N'DU LỊCH NHẬT BẢN [TOKYO - NÚI PHÚ SỸ]', 19900000, N'5 Ngày 4 Đêm', N'15/8/2019', 9, 32, 27, N'~/admin/image/tour/fuji-mountain-yamanashi-_1105264295.jpg', N'- Khám phá xử sở mặt trời mọc với giá ưu đãi
- Thưởng thức trái cây theo mùa 
- Một ngày thỏa sức mua sắm tại các trung tâm thương mại lớn')
INSERT [dbo].[tour] ([id], [name], [price], [start_time], [departure_time], [vehicle_id], [hotel_id], [place_id], [image], [detail]) VALUES (40, N'DU LỊCH TRUNG QUỐC [ PHƯỢNG HOÀNG CỔ TRẤN - TRƯƠNG GIA GIỚI]', 12990000, N'6 Ngày 5 Đêm', N'23/8/2019', 9, 33, 28, N'~/admin/image/tour/Fenghuang-County_727336819.jpg', N'- Đến với thiên đường du lịch với vô vàn cảnh đẹp thần tiên từ núi non, sông nước hữu tình đến thung lũng nên thơ, khu rừng nguyên sinh hoang dã với rừng đá sa thạch hung vĩ.
- Dạo bộ bên sông Đà Giang
- Ngắm nhìn "bảo tàng sống" - Trấn cổ Phượng Hoàng hơn 1.300 năm tuổi với nhiều thành quách, những dẫy phố,  những căn nhà cổ, gia trang, văn miếu đền chùa')
INSERT [dbo].[tour] ([id], [name], [price], [start_time], [departure_time], [vehicle_id], [hotel_id], [place_id], [image], [detail]) VALUES (41, N' DU LỊCH TRUNG QUỐC [BẮC KINH]', 11200000, N'5 Ngày 4 Đêm', N'16/8/2019', 9, 33, 28, N'~/admin/image/tour/Heaven-in-Beijing_249781048.jpg', N'- Khám phá vẻ đẹp hài hòa giữ nét cổ kính và hiện đại của thành phố hơn 700 năm tuổi - Bắc Kinh
- Thăm Tử Cấm Cung, quảng trường Thiên An Môn, Cung Vương Phủ
- Thưởng thức đặc sản dân gian thú vị - kẹo hồ lô')
INSERT [dbo].[tour] ([id], [name], [price], [start_time], [departure_time], [vehicle_id], [hotel_id], [place_id], [image], [detail]) VALUES (42, N'DU LỊCH TRUNG QUỐC [THƯỢNG HẢI - TÔ CHÂU - HÀNG CHÂU – BẮC KINH]', 17990000, N'6 Ngày 6 Đêm', N'23/8/2019', 9, 1, 1, N'~/admin/image/tour/great-wall-and-mountains_273958775.jpg', N'- Hành trình độc đáo mang đến những trải nghiệm lý thú, cảm nhận sắc thái đa dạng về lịch sử, văn hóa, con người Trung Hoa.
- Thưởng ngoạn nhiều danh lam thắng cảnh và di tích nổi tiếng tại Bắc Kinh: Cố Cung - Tử Cấm Thành, Vạn lý Trường thành, Di Hoà Viên…
- Trải nghiệm tàu hỏa siêu tốc từ thủ đô Bắc Kinh đến thành phố toàn cầu Thượng Hải, khám phá khu Phố Đông, cầu Nam Phố, tháp truyền hình Đông Phương Minh Châu…')
INSERT [dbo].[tour] ([id], [name], [price], [start_time], [departure_time], [vehicle_id], [hotel_id], [place_id], [image], [detail]) VALUES (43, N'DU LỊCH MỸ [SEATTLE - PORTLAND]', 58999000, N'7 Ngày 6 Đêm', N'30/9/2019', 9, 27, 22, N'~/admin/image/tour/Seattle-Pioneer-Square_278502242.jpg', N'- Đặt chân đến Seattle - thành phố của công nghệ, kỹ thuật hiện đại và giáo dục nằm trên vịnh biển tuyệt đẹp vùng Tây Bắc Thái Bình Dương của Hoa Kỳ thuộc bang Washington.
- Khám phá Portland – thành phố lớn nhất bang Oregon với hình ảnh những kiến trúc hiện đại nằm dọc hai bên sông Willamette và những chiếc cầu xinh đẹp, duyên dáng nối liền đôi bờ.
- Đặc biệt, thỏa sức mua sắm với nhiều cửa hàng miễn thuế.')
INSERT [dbo].[tour] ([id], [name], [price], [start_time], [departure_time], [vehicle_id], [hotel_id], [place_id], [image], [detail]) VALUES (44, N'DU LỊCH HÀ NỘI - LÀO CAI - SAPA - HẠ LONG', 8529000, N'5 Ngày 4 Đêm', N'14/8/2019', 10, 3, 1, N'~/admin/image/tour/Ho-Hoan-Kiem-Ha-Noi.jpg', N'- Du ngoạn vịnh Hạ Long - một trong 7 kỳ quan thiên nhiên mới của thế giới 
- Ngắm toàn cảnh Sapa và “Nóc nhà Đông Dương” - đỉnh Fansipan tại sân mây 
- Chinh phục núi Hàm Rồng, thưởng ngoạn vườn lan, vườn hoa ôn đới, vườn đào và khu vườn đá')
INSERT [dbo].[tour] ([id], [name], [price], [start_time], [departure_time], [vehicle_id], [hotel_id], [place_id], [image], [detail]) VALUES (45, N'DU LỊCH NHA TRANG - BÃI NHŨ TIÊN - HÒN LAO - VIỆN HẢI DƯƠNG HỌC', 3679000, N'4 Ngày 3 Đêm', N'26/8/2019', 10, 13, 15, N'~/admin/image/tour/nha-trang.jpg', N'- Tham quan và vui chơi tại khu du lịch Hòn Lao - đảo Khỉ, khu du lịch sinh thái nổi tiếng tại Nha Trang. 
- Tham quan Viện hải dương Nha Trang là kho tàng sinh vật biển quý hiếm nhất của Việt Nam.
- Thư giãn tại trung tâm suối khoáng nóng I resort Nha Trang')
INSERT [dbo].[tour] ([id], [name], [price], [start_time], [departure_time], [vehicle_id], [hotel_id], [place_id], [image], [detail]) VALUES (46, N'DU LỊCH ĐÀ LẠT TRANG TRẠI RAU & HOA - ĐƯỜNG HẦM ĐIÊU KHẮC- LIANG BIANG - CÀ PHÊ MÊ LINH', 3379000, N'4 Ngày 3 Đêm', N'30/8/2019', 10, 15, 19, N'~/admin/image/tour/cafe-dalat_516916252.jpg', N'- Tham quan thác Dambri - ngọn thác hùng vĩ tại cao nguyên Bảo Lộc 
- Tham quan Khu Du Lịch Trang Trại Rau và Hoa, nằm trải rộng cả một thung lũng với bốn bề là rau và hoa đẹp tuyệt vời 
- Viếng Linh Ẩn tự, ngôi chùa với tượng Phật Di Lặc lớn nhất tỉnh Lâm Đồng.')
INSERT [dbo].[tour] ([id], [name], [price], [start_time], [departure_time], [vehicle_id], [hotel_id], [place_id], [image], [detail]) VALUES (47, N'DU LỊCH ĐÀ NẴNG - HỘI AN - KDL BÀ NÀ HILL', 2590000, N'3 Ngày 2 Đêm ', N'24/8/2019', 10, 17, 5, N'~/admin/image/tour/Dragon-River-Bridge_770996074.jpg', N'- Thư thả tản bộ tại Phố cổ với các công trình tiêu biểu: Chùa Cầu Nhật Bản, chùa Ông, hội quán Phúc Kiến, khu phố đèn lồng.
- Vui chơi giải trí tại khu du lịch Bà Nà Hills')
SET IDENTITY_INSERT [dbo].[tour] OFF
SET IDENTITY_INSERT [dbo].[vehicle] ON 

INSERT [dbo].[vehicle] ([id], [name], [detail]) VALUES (9, N'Máy bay', NULL)
INSERT [dbo].[vehicle] ([id], [name], [detail]) VALUES (10, N'Ô tô', NULL)
INSERT [dbo].[vehicle] ([id], [name], [detail]) VALUES (11, N'Tàu hỏa', NULL)
INSERT [dbo].[vehicle] ([id], [name], [detail]) VALUES (12, N'Tàu thủy', NULL)
INSERT [dbo].[vehicle] ([id], [name], [detail]) VALUES (13, N'Xe máy', NULL)
SET IDENTITY_INSERT [dbo].[vehicle] OFF
ALTER TABLE [dbo].[book_tour]  WITH CHECK ADD  CONSTRAINT [FK_idcustomer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([id])
GO
ALTER TABLE [dbo].[book_tour] CHECK CONSTRAINT [FK_idcustomer]
GO
ALTER TABLE [dbo].[book_tour_detail]  WITH CHECK ADD FOREIGN KEY([book_tour_id])
REFERENCES [dbo].[book_tour] ([id])
GO
ALTER TABLE [dbo].[book_tour_detail]  WITH CHECK ADD FOREIGN KEY([tour_id])
REFERENCES [dbo].[tour] ([id])
GO
ALTER TABLE [dbo].[tour]  WITH CHECK ADD  CONSTRAINT [fk_idhotel] FOREIGN KEY([hotel_id])
REFERENCES [dbo].[hotel] ([id])
GO
ALTER TABLE [dbo].[tour] CHECK CONSTRAINT [fk_idhotel]
GO
ALTER TABLE [dbo].[tour]  WITH CHECK ADD  CONSTRAINT [fk_idplace] FOREIGN KEY([place_id])
REFERENCES [dbo].[place] ([id])
GO
ALTER TABLE [dbo].[tour] CHECK CONSTRAINT [fk_idplace]
GO
ALTER TABLE [dbo].[tour]  WITH CHECK ADD  CONSTRAINT [fk_idvehicle] FOREIGN KEY([vehicle_id])
REFERENCES [dbo].[vehicle] ([id])
GO
ALTER TABLE [dbo].[tour] CHECK CONSTRAINT [fk_idvehicle]
GO
