USE [master]
GO
/****** Object:  Database [Otaku no sekai]    Script Date: 19/12/2021 1:09:07 PM ******/
CREATE DATABASE [Otaku no sekai]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Otaku no sekai', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Otaku no sekai.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Otaku no sekai_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Otaku no sekai_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Otaku no sekai] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Otaku no sekai].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Otaku no sekai] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Otaku no sekai] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Otaku no sekai] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Otaku no sekai] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Otaku no sekai] SET ARITHABORT OFF 
GO
ALTER DATABASE [Otaku no sekai] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Otaku no sekai] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Otaku no sekai] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Otaku no sekai] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Otaku no sekai] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Otaku no sekai] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Otaku no sekai] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Otaku no sekai] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Otaku no sekai] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Otaku no sekai] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Otaku no sekai] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Otaku no sekai] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Otaku no sekai] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Otaku no sekai] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Otaku no sekai] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Otaku no sekai] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Otaku no sekai] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Otaku no sekai] SET RECOVERY FULL 
GO
ALTER DATABASE [Otaku no sekai] SET  MULTI_USER 
GO
ALTER DATABASE [Otaku no sekai] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Otaku no sekai] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Otaku no sekai] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Otaku no sekai] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Otaku no sekai] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Otaku no sekai', N'ON'
GO
ALTER DATABASE [Otaku no sekai] SET QUERY_STORE = OFF
GO
USE [Otaku no sekai]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 19/12/2021 1:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Account ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Account ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 19/12/2021 1:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[Author ID] [int] IDENTITY(1,1) NOT NULL,
	[Author Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[Author ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 19/12/2021 1:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Category ID] [int] NOT NULL,
	[Category Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Category ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 19/12/2021 1:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Comment ID] [int] IDENTITY(1,1) NOT NULL,
	[Account ID] [int] NOT NULL,
	[Product ID] [int] NOT NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[Comment ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 19/12/2021 1:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer ID] [int] IDENTITY(1,1) NOT NULL,
	[Account ID] [int] NOT NULL,
	[Customer Name] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Customer ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Information]    Script Date: 19/12/2021 1:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Information](
	[Description] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Novel_Content]    Script Date: 19/12/2021 1:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Novel_Content](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Prodect_Name] [nvarchar](max) NOT NULL,
	[Chapter_Number] [int] NULL,
	[Chapter_Name] [nvarchar](max) NULL,
	[Content] [ntext] NULL,
 CONSTRAINT [PK_Novel_Content] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 19/12/2021 1:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Product ID] [int] IDENTITY(1,1) NOT NULL,
	[Account ID] [int] NOT NULL,
	[Product Name] [nvarchar](max) NOT NULL,
	[Category ID] [int] NOT NULL,
	[Author ID] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Price] [money] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Discount] [int] NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Product ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([Account ID], [Username], [Password], [isSell], [isAdmin], [Status]) VALUES (1, N'TakeiTakashi', N'29663577c9e473d03f619bcb4a828fad', 1, 1, N'1')
INSERT [dbo].[Account] ([Account ID], [Username], [Password], [isSell], [isAdmin], [Status]) VALUES (2, N'Kirito', N'7fc26222b0b6aa39898dee327794c9dd', 1, 0, N'0')
INSERT [dbo].[Account] ([Account ID], [Username], [Password], [isSell], [isAdmin], [Status]) VALUES (3, N'LongVu', N'521194150ab3ab2fb611c6d1ceeff9c4', 0, 0, N'1')
INSERT [dbo].[Account] ([Account ID], [Username], [Password], [isSell], [isAdmin], [Status]) VALUES (5, N'ThuyLun', N'e10adc3949ba59abbe56e057f20f883e', 1, 0, N'1')
INSERT [dbo].[Account] ([Account ID], [Username], [Password], [isSell], [isAdmin], [Status]) VALUES (6, N'DatFit', N'e10adc3949ba59abbe56e057f20f883e', 1, 0, N'1')
INSERT [dbo].[Account] ([Account ID], [Username], [Password], [isSell], [isAdmin], [Status]) VALUES (7, N'HD12012000', N'521194150ab3ab2fb611c6d1ceeff9c4', 0, 0, N'0')
INSERT [dbo].[Account] ([Account ID], [Username], [Password], [isSell], [isAdmin], [Status]) VALUES (8, N'HuongHaiHe', N'fbf4474471bf1cd03066bff3d014b53a', 0, 0, N'1')
INSERT [dbo].[Account] ([Account ID], [Username], [Password], [isSell], [isAdmin], [Status]) VALUES (9, N'Khahatano', N'e10adc3949ba59abbe56e057f20f883e', 0, 0, N'1')
INSERT [dbo].[Account] ([Account ID], [Username], [Password], [isSell], [isAdmin], [Status]) VALUES (10, N'huongngu', N'202cb962ac59075b964b07152d234b70', 0, 0, N'1')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Author] ON 

INSERT [dbo].[Author] ([Author ID], [Author Name], [Description]) VALUES (1, N'Totsuki Yuu', N'')
INSERT [dbo].[Author] ([Author ID], [Author Name], [Description]) VALUES (2, N'Shinden Kanzaki', N'')
INSERT [dbo].[Author] ([Author ID], [Author Name], [Description]) VALUES (3, N'Hiiragi Takumi', N'')
INSERT [dbo].[Author] ([Author ID], [Author Name], [Description]) VALUES (4, N'Wataru Watari', N'')
INSERT [dbo].[Author] ([Author ID], [Author Name], [Description]) VALUES (5, N'Tsuyoshi Fujitaka', N'')
INSERT [dbo].[Author] ([Author ID], [Author Name], [Description]) VALUES (6, N'Shinichi Kimura', N'')
INSERT [dbo].[Author] ([Author ID], [Author Name], [Description]) VALUES (7, N'Ichiei Ishibumi', N'')
INSERT [dbo].[Author] ([Author ID], [Author Name], [Description]) VALUES (8, N'Testuto Uesu', N'')
INSERT [dbo].[Author] ([Author ID], [Author Name], [Description]) VALUES (9, N'', N'')
INSERT [dbo].[Author] ([Author ID], [Author Name], [Description]) VALUES (11, N'1 tác giả nào đó', N'')
INSERT [dbo].[Author] ([Author ID], [Author Name], [Description]) VALUES (12, N'Bạn của Admin', N'')
INSERT [dbo].[Author] ([Author ID], [Author Name], [Description]) VALUES (1010, N'huong', N'')
SET IDENTITY_INSERT [dbo].[Author] OFF
GO
INSERT [dbo].[Category] ([Category ID], [Category Name]) VALUES (1, N'Light novel')
INSERT [dbo].[Category] ([Category ID], [Category Name]) VALUES (2, N'Figure')
INSERT [dbo].[Category] ([Category ID], [Category Name]) VALUES (3, N'Accessories')
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([Comment ID], [Account ID], [Product ID], [Comment]) VALUES (1, 1, 1, N'Mong ra tap moi')
INSERT [dbo].[Comment] ([Comment ID], [Account ID], [Product ID], [Comment]) VALUES (2, 1, 1, N'alo')
INSERT [dbo].[Comment] ([Comment ID], [Account ID], [Product ID], [Comment]) VALUES (3, 1, 1, N'alo')
INSERT [dbo].[Comment] ([Comment ID], [Account ID], [Product ID], [Comment]) VALUES (4, 1, 55, N'1')
INSERT [dbo].[Comment] ([Comment ID], [Account ID], [Product ID], [Comment]) VALUES (5, 1, 55, N'2')
INSERT [dbo].[Comment] ([Comment ID], [Account ID], [Product ID], [Comment]) VALUES (6, 1, 55, N'a')
INSERT [dbo].[Comment] ([Comment ID], [Account ID], [Product ID], [Comment]) VALUES (7, 1, 55, N'dsf')
INSERT [dbo].[Comment] ([Comment ID], [Account ID], [Product ID], [Comment]) VALUES (8, 1, 44, N'fdfgf')
INSERT [dbo].[Comment] ([Comment ID], [Account ID], [Product ID], [Comment]) VALUES (9, 1, 44, N'dfg')
INSERT [dbo].[Comment] ([Comment ID], [Account ID], [Product ID], [Comment]) VALUES (10, 1, 44, N'rtert')
INSERT [dbo].[Comment] ([Comment ID], [Account ID], [Product ID], [Comment]) VALUES (11, 1, 44, N'sdfdsf')
INSERT [dbo].[Comment] ([Comment ID], [Account ID], [Product ID], [Comment]) VALUES (12, 1, 55, N'adasd')
INSERT [dbo].[Comment] ([Comment ID], [Account ID], [Product ID], [Comment]) VALUES (13, 1, 55, N'adasd')
INSERT [dbo].[Comment] ([Comment ID], [Account ID], [Product ID], [Comment]) VALUES (14, 1, 55, N'asdfadsf')
INSERT [dbo].[Comment] ([Comment ID], [Account ID], [Product ID], [Comment]) VALUES (15, 1, 55, N'asdfadsf')
INSERT [dbo].[Comment] ([Comment ID], [Account ID], [Product ID], [Comment]) VALUES (16, 1, 55, N'fasdfaw')
INSERT [dbo].[Comment] ([Comment ID], [Account ID], [Product ID], [Comment]) VALUES (17, 1, 55, N'sdfwef')
INSERT [dbo].[Comment] ([Comment ID], [Account ID], [Product ID], [Comment]) VALUES (18, 1, 55, N'1')
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Customer ID], [Account ID], [Customer Name], [Address], [Phone], [Email]) VALUES (1, 6, N'Nguyễn Quốc Đạt', N'', N'', N'')
INSERT [dbo].[Customer] ([Customer ID], [Account ID], [Customer Name], [Address], [Phone], [Email]) VALUES (2, 2, N'Kirigaza Kazuto', NULL, NULL, NULL)
INSERT [dbo].[Customer] ([Customer ID], [Account ID], [Customer Name], [Address], [Phone], [Email]) VALUES (3, 3, N'Vũ Đình Hoàng Long', NULL, NULL, NULL)
INSERT [dbo].[Customer] ([Customer ID], [Account ID], [Customer Name], [Address], [Phone], [Email]) VALUES (4, 5, N'Chu Thị Thủy', NULL, NULL, NULL)
INSERT [dbo].[Customer] ([Customer ID], [Account ID], [Customer Name], [Address], [Phone], [Email]) VALUES (5, 7, N'Vũ Đình Hoàng Long', N'Hải Dương', N'0906153610', N'watbdragonhoang1201@gmail.com')
INSERT [dbo].[Customer] ([Customer ID], [Account ID], [Customer Name], [Address], [Phone], [Email]) VALUES (6, 8, N'', N'', N'', N'')
INSERT [dbo].[Customer] ([Customer ID], [Account ID], [Customer Name], [Address], [Phone], [Email]) VALUES (7, 9, N'', N'', N'', N'')
INSERT [dbo].[Customer] ([Customer ID], [Account ID], [Customer Name], [Address], [Phone], [Email]) VALUES (15, 10, N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Novel_Content] ON 

INSERT [dbo].[Novel_Content] ([ID], [ProductID], [Prodect_Name], [Chapter_Number], [Chapter_Name], [Content]) VALUES (1, 1, N'Silver Cross and Draculea Tập 1', 0, N'Mở đầu', N'Một bóng đen nhảy múa trong màn đêm sâu thẳm.

Nhảy từ mái nhà này tới mái nhà khác, tòa nhà này tới tòa nhà khác.

Với sự nhanh nhẹn khác thường, những bước chân đầy quyến rũ, đắm chìm trong ánh trăng lộng lẫy và bất kỳ ai nhìn thấy cũng sẽ bị đốn ngã bởi nhan sắc của cô.

Những bước chân nhẹ nhàng khiến người ta có thể hình dung ra vẻ đẹp nữ tính của một cô gái. Và quả thực, đôi chân dài đẹp đẽ ấy bước đi uyển chuyển một cách hoàn hảo.

Màn đêm bao quanh làn da trắng như tuyết của cô như thể càng muốn trau chuốt thêm cho vẻ đẹp tuyệt trần ấy.

Một chiếc váy đen tuyền tuyệt đẹp phủ quanh cơ thể và nổi bật là bộ ngực đầy đặn của cô, thứ mà màn đêm kia không thể nào che đậy.

Và điểm quyến rũ nhất của cô là đôi môi đỏ mọng.

Một thứ đầy lôi cuốn, bất kể là nam hay nữ, không một ai có thể cưỡng lại sự mê hoặc của chúng. Như thi thoảng, đôi môi đó lại làm lộ ra điều bí mật của cô gái.

Một cặp răng nanh sắc bén.

Cặp răng nanh sắc và nhọn lộ ra khỏi đôi môi cô. Dù cho cô có vẻ đẹp quyến rũ, nhưng người ta vẫn có thể cảm thấy có một sự nguy hiểm tiềm tàng.

Sự nguy hiểm- với một vẻ đẹp khiến cho người ta như muốn bị cắn.

Vẻ đẹp trong màn đêm, với sức mạnh và khả năng nhảy từ tòa nhà này tới tòa nhà khác và những chiếc răng nanh.

Dựa vào những truyền thuyết trên thế giới này, sự thật của con người cô được tiết lộ.

Đó là – Vua của bóng đêm.

Đó là – Ma cà rồng.

Với khả năng nhảy vượt xa con người, vậy nên người ta luôn nghĩ rằng họ có một đôi cánh dơi bên mình.

Trong khi thảo luận về những truyền thuyết của ma cà rồng, họ gần như chắc chắn rằng đó là một loài động vật hút máu. Có lẽ vì việc loài dơi gắn liền với màn đêm như hình với bóng, thế nên con người mới hình dung ra những điều như vậy.

Trong thực tế, họ không có cánh, nhưng nếu có, đôi cánh đó chắc chắn là của một con chim săn mồi.

Cô đang cực kỳ khát.

Một cơn khát từ sâu thẳm trong linh hồn cô.

Và có một cách có thể thõa mãn cơn khát đó – chỉ một thứ.

“Thấy ngươi rồi... <3”

Thì thầm một cách quyến rũ và đáng yêu, cô dừng lại.

Đôi mắt cô lóe lên một tia lửa đỏ và chăm chú nhìn vào con mồi.

Ánh mắt cô dán chặt vào một chàng trai trẻ đang bước đi một mình trong con hẻm.

Cậu ta có vẻ cùng tuổi với cô - dẫu cho rất khó nói về tuổi của một ma cà rồng- khoảng 16 hoặc 17 tuổi.

Với một nữ ma cà rồng, đây là một mẻ lớn – một chàng trai cao ráo và ưa nhìn.

Dáng vẻ cao ráo, vẻ ngoài tươm và mái tóc màu nâu rất phù hợp với cậu. Trong con  phố thấp thoáng ánh đèn, rát có khả năng người ta nhận nhầm rằng đó là một cô gái. Mặc dù không đẹp được như cô, da của cậu trắng bóng và mịn màng.

“Hắn ta trông thật ngon...”

Kiếm được một con mồi đắt giá, cô gái không kìm được liếm đôi môi mọng của mình.

Và ngay lập tức, cô nhảy xuống mặt đất.

Như thể choáng ngợp với vẻ đẹp trước mặt mình, chàng trai cứng người lại.

“Đừng có sợ, Con người.”

Đối với con mồi đang sợ hãi trước mặt, cô nhẹ nhàng nở nụ cười ấm áp.

“Ta là Rushella Dahm Dracula. Ta là một ma cà rồng cao quý, là kẻ có dòng máu thuần chủng nhất. Hãy cảm thấy vinh dự khi được chọn bởi ta.”

Chàng trai vẫn không có phản ứng gì.

Không có một chút ngạc nhiên.

Khi một người chạm trán một ma cà rồng vào buổi tối, họ thường sẽ phản ứng như vậy.

“Ta đã không thể làm gì hơn khi nhận thấy mùi máu ngọt ngào của ngươi. Ta đã tới đây vì nó. Ta nghĩ ngươi đã bị chảy máu nhưng có vẻ như ngươi không bị thương gì cả. Tuy vậy mùi hương ngọt ngào đó đã tràn ngập mũi ta rồi – thật thơm, thật ngon.”

Trong khi đang đi dạo trong màn đêm, đột nhiên cô ngửi thấy một mùi vị tuyệt hảo.

Bị thu hút bởi mùi hương đó, cô đã xuất hiện trước mặt cậu ta.

“Nào...tới đây phục vụ ta.”

Cô đặt tay lên vai cậu, để lộ ra cặp nanh sắc nhọn và từ từ hướng về phía cổ cậu ta.

Không cần nhón chân lên cũng chả cần cúi lưng xuống. Một chiều cao hoàn hảo.

Nó khiến cô cảm thấy thú vị hơn nhiều.

Tất cả những gì cần làm lúc này chỉ là thưởng thức.

Rushella đâm qua làn da cậu với những chiếc răng nanh của mình và bắt đầu hút máu, từng giọt từng giọt một.

“.......................!!!!!”

Nó còn vượt xa từ ngon.

Hơi sánh một chút và đầy ắp hương vị tuyệt vời của tuổi trẻ.

Thứ mỹ vị này không chỉ dập tắt cơn khát, nó chắc chắn là bữa chính cho đêm nay.

Chỉ với vài giọt máu và cơn khát của cô đã giảm bớt.

Và chắc chắn đây không phải lần cuối cùng thưởng thức thứ máu cao cấp này.

Theo truyền thuyết về ma cà rồng, sau khi uống máu của một người vài đêm, bạn có thể khiến anh ta trở thành người hầu của mình.

Rushella chìm đắm trong những tưởng tượng ngọt ngào và bỗng nhiên bị lôi về thực tại với một câu nói.

“Tôi bảo.... thế này hơi đau đấy.”

Hả?

Cô đột nhiên rời khỏi người cậu ta.

Và họ nhìn thẳng vào mắt nhau một cách hoàn hảo.

Chàng trai trẻ phía trước Rushella nhìn cô với vẻ không thoải mái, với một tay giữ lấy vết thương trên cổ.

“Đau đau đau-------!!!...Đột nhiên cô làm cái trò gì vậy? Hút không ngừng nghỉ...chắc tôi phải mất tới 500cc máu rồi... Nếu là một người khác chắc chắn họ sẽ gặp rắc rối lớn!”

Cậu nhìn cô với một vẻ lo lắng và đau khổ, sau đó bắt đầu khập khiễng bước đi.

Rushella ngây người nhìn chằm chằm cậu như thể cậu xuất hiện ở đây để chống lại cô, nhưng cô ngay lập tức bình tĩnh lại và chạy tới phía trước với tốc độ kinh người rồi nắm lấy bả vai cậu ta.

“Ngươi, ngươi...nghĩ ta là ai hả? Dám nói mấy lời xấc láo đó với ta..!”

“Ma cà rồng hả? Lâu rồi chưa gặp ai...cô nên cẩn thận hơn đi, nhất là trong khoảng thời gian hỗn loạn này, bám đuôi và bắt bất cứ con mồi nào cũng có thể khiến cô bị tiêu diệt đó.”

“Lũ người hèn kém! Nghe cho rõ đây, kẻ từ khi nhận được "nụ hôn" đó, ngươi phải trở thành nô lệ của ta------"

Trước khi Rushella kết thúc câu cảnh báo về tình trạng hiện tại của chàng trai,

Cậu đã bỏ bàn tay che khỏi cổ mình ra, và không có một vết cắn nào.

Mọi thứ đều đã biến mất.

Thật vậy, dấu vết trên cổ cậu – nụ hôn – hay vết cắn được biết đến như “lễ rửa tội” đã hoàn toàn biến mất.

“K-Không thể nào!”
Những gì diễn ra trước mắt cô thật khó có thể tin được, Rushella lắc lắc đầu và hét lên một cách kinh ngạc.

Đặc điểm thứ #1 của ma cà rồng: “ kẻ bị cắn bởi ma cà rồng cũng sẽ bị biến thành ma cà rồng.”

Tuy nhiên, để hoàn thành sự biến đổi sẽ cần phải hút nhiều máu và trong quá trình biến đổi ấy, cơ thể nạn nhân không thể xóa bỏ dấu vết của nhát cắn.

Nhưng... cơ thể của chàng trai này hoàn toàn không có một vết cắn nào.

“Tại sao..? Ta chắc chắn đã cắn ...và uống máu ngươi.”

“Haha, tôi đoán điều đó vô dụng đối với tôi...”

“Tại sao?! N-Ngươi đã dùng cách gì hả?”

“Nó chỉ là thể chất đặc biệt của cơ thể này. Không cần biết cô uống bao nhiêu máu, tôi sẽ không bao giờ trở thành ma cà rồng.”

Cậu uể oải giải thích một câu gây sốc và tiếp tục tiến thêm một bước về phía trước.

Và Rushella lẽo đẽo bám theo cậu. Cô không thể chấp nhận những điều ấy được.

Đặc điểm thứ #2 của ma cà rồng: “ sau khi bị hút máu, con người không thể thoát  khỏi số phận trở thành một ma cà rồng. Cách duy nhất để chữa khỏi là giết chết kẻ hút máu trước khi sự biến đổi kết thúc.”

Ngoài ra không còn cách nào khác.

“N-Ngươi rốt cuộc là cái loại sinh vật gì thế hả??”

Đối mặt với câu hỏi ấy, chàng trai quay lại và trả lời không mấy thành thật.

“Kujou Hisui.... tôi chỉ là một học sinh trung học bình thường thôi.”')
INSERT [dbo].[Novel_Content] ([ID], [ProductID], [Prodect_Name], [Chapter_Number], [Chapter_Name], [Content]) VALUES (2, 1, N'Silver Cross and Draculea Tập 1', 1, N'Chương 1 - Người không đổ máu', N'Nụ hôn ấy, cùng với máu đã phá hoại ngày đầu tiên ở trường cao trung của Kujou Hisui.

Ngay sau khi kết thúc buổi lễ khai giảng, cậu đã bị một con ma cà rồng tấn công trên đường về.

Có lẽ những học sinh khác đang sum vầy quanh cha mẹ của họ, không biết chừng họ còn  ra ngoài tổ chức một bữa tiệc để kỉ niệm ngày đặc biệt này cũng nên. Nhưng với Hisui, một nam sinh sống một mình, một bữa tiệc như vậy là điều không thể.

Khi cậu đang đi bộ về nhà, trời đã bắt đầu tối đen.

Với cơn gió ban đêm lạnh lẽo quét ngang mặt, Hisui bước vào một công viên gần nhà.

Những tán lá rậm rạp và những cái cây lớn đã chắn mất ánh sáng của mấy cột đèn điện, vậy nên nơi này rất tối, dù có là ban ngày. Và nó còn tối hơn vào ban đêm, tối đến mức chàng trai này không thể nào nhìn rõ ràng ngón tay khi để phía trước mặt.

Thế nhưng vì sao cậu lại chọn con đường này?....Ngay cả Hisui cũng không hiểu được.

Nếu bắt phải giải thích, có lẽ là do cái mùi hương mà cậu đã ngửi thấy.

Khi đi ngang qua công viên, Hisui nhận ra một mùi hoa hồng quyến rũ.

Bị thu hút bởi nó, đến khi nhận ra cậu đã thấy mình bước đi trên con đường chưa từng đặt chân tới.

Và kết quả là — một thảm họa.

Một con ma cà rồng từ trong truyền thuyết xuất hiện trước mặt cậu và trước khi kịp né tránh, cậu đã bị cắn.

Không, quay lại một chút, bị cắn cũng không phải một vấn đề nghiêm trọng.

Dù cái cảm giác tồi tệ khi bị mất máu có ít hay nhiều thì tính mạng cậu cũng sẽ không gặp nguy hiểm.

Nếu cậu là một người bình thường, cậu sẽ phải đối mặt với tình huống tiến thoái lưỡng nan khi phải tạm biệt với cuộc sống con người của mình. Nhưng với Hisui, đó không phải là  thứ khiến cậu bận tâm.

Dù có thể thế chết vì mất quá nhiều máu, nhưng cũng không cần biết cậu bị mất bao nhiêu, cậu sẽ không thể trở thành một ma cà rồng.

Nói cách khác-- vấn đề cậu phải đối mặt là...

"Cái quái gì đang xảy ra vậy? Phép thuật à? Hay trò lừa đảo rẻ tiền của ngươi? Trả lời ta đi, con người!”

Cậu bị tóm gọn bởi một ca nàng rồng ương bướng.

Sau khi đã uống máu xong, cô nhìn chăm chăm và bắt đầu la hét không ngừng từ phía sau lưng cậu.

“Tối rồi đó, cô giữ yên lặng một chút đi được không?”

“Ta sống về đêm!”

“Rõ rồi, dù sao thì cô cũng là một con ma cà rồng...”

Đặc điểm thứ #2 của Ma cà rồng – Họ sẽ bắt đầu hoạt động khi đêm xuống và ẩn mình khi mặt trời ló dạng.

Dựa vào đặc điểm này mà họ được gọi là vua của bóng tối, nhưng với loại cú đêm như Hisui thì nó cực kỳ phiền nhiễu.

"Tại sao ngươi không bị gì sau khi bị ta cắn vậy? Sau khi bị cắn lẽ ra ngươi phải trở thành một nô lệ và nghe lời ta chứ!”

“Tôi không muốn~” Hisui từ chối thẳng thừng.

“Không thể nào...sao ngươi không tuân lệnh của ta!? Rõ ràng ta đã hút máu của ngươi rồi mà!?”

Quả là vậy, đối với ma cà rồng khi gặp trường hợp bất khả thi như thế này, nó giống như cả thế giới đang bị đảo lộn.

Kể cả là thánh thần, quý tộc hay tội phạm sát nhân, chỉ cần họ là con người, khi bị ma cà rồng cắn sẽ bắt đầu bị biến đổi.

Hơn nữa khi bị cắn, ý thức của họ cũng sẽ bị ma cà rồng kiểm soát, khi đó thứ duy nhất họ nghĩ đến chính là lợi ích của chủ nhân họ...nhưng Hisui thậm chí còn không để tâm tới điều đó .

“Ngươi là loại người quái quỷ gì vậy? Đó là thứ ma thuật gì?”

“Tôi chịu, đó cũng chả phải là kỹ năng gì cả, chỉ là cơ thể tự nhiên vậy thôi, tự-nhiên-đó.”

(Mình phải nhắc lại chuyện này bao nhiêu lần chứ...) Mất kiên nhẫn với cô nàng bướng bình này, Hisui bắt đầu càu nhàu.

“Sao tình huống này lại xảy ra chứ? Hơn nữa, ta là MA CÀ RỒNG, ngươi đang được gặp một quý cô ma cà rồng như ta đó! Thế nên lẽ ra ngươi phải giống như...như vậy đó??”

"Ah, sợ quá đi~ Ừ đúng rồi, cô mặc đồ như thể nói Tôi là ma cà rồng đây và tôi cũng chả mong chờ bị tấn công bởi cô đâu.”

“Cái quái.... Không thể tin được là ngươi lại phản ứng như vậy. Mà theo như ngươi nói, đây không phải lần đầu ngươi gặp ma cà rồng?”

“À, tôi từng quen một người, có vậy thôi.”

Hisui cũng không nói gì thêm và lặng lẽ rời đi.

Rushella nhận ra hỏi thêm cũng chả ích gì, thế nên cô im lặng trong vài phút trước khi đặt thêm một câu hỏi.

“Đứng lại, ta sẽ thừa nhận cái cơ thể ngớ ngẩn đó của ngươi. Và ta cũng không quan tâm đến lũ ma cà rồng tầm thường kia nữa; ngươi sẽ không thoát khỏi của một Thuần Huyết như ta được đâu. Thú nhận đi, ngươi đã làm trò gì?”

Hisui đột ngột dừng lại.

Rushella vừa nói ra một điều khiến cậu không thể phớt lờ được.

“Thuần huyết?? Cô đùa hả?”

“Đương nhiên là không? Ta là đỉnh cao của tộc ma cà rồng, mang trong mình dòng máu của Người khai phá, Thuần Huyết-sama hùng mạnh.”

Rushella ưỡn cao ngực trả lời một cách đầy tự hào và Hisui không biết làm gì hơn ngoài chuyển ánh mắt nhìn xuống dưới.

“Trong xã hội này, thứ gì đó như Thuần huyết còn hiếm gặp hơn cả mấy loài động vật sắp tuyệt chủng đấy. Mà cô đến từ đâu? Mới ở trên núi xuống hả?”

“Cách nói chuyện của ngươi hơi xấc xược đấy.”

Khi cô đáp lại, Hisui bắt đầu cảm nhận được một sự nguy hiểm và cậu bắt đầu cảnh giác cao độ.

Đối phương là một ma cà rồng. Và màn đêm thì đen như mực.

Ngoài cơ thể khác thường cậu không còn có năng lực nào khác, vậy nên phản kháng hay chiến thắng cô ta là điều không thể làm được.

Còn cô nàng ma cà rồng kia thì còn đang đeo một cặp đoản kiếm ở hai bên đùi. Với đôi chăn trắng như tuyết dưới lớp tất lưới, từ người cô tỏa ra một không khí nguy hiểm.

Và đối ngược với những thứ đó, cậu chỉ có mỗi chiếc cặp học sinh.

Đương nhiên, bên trong nó cũng không có thứ gì có thể chiến đấu với một ma cà rồng..

Nhận thấy sự bất lợi của mình, Hisui sợ hãi, khuôn mặt cậu tối sầm. Nhưng Rushella đáp lại cậu bằng một nụ cười đầy quyến rũ.

“Đừng lo, ta sẽ không dùng vũ lực làm tổn thương cơ thể ngươi đâu. Ta chỉ muốn ngươi tự nguyện đưa cổ lên cho ta thôi.”

Rushella liếc đôi mắt đen, và đồng tử cô thay đổi sang hình dạng giống như đồng tử của một con mèo.

Rồi đôi mắt cô phát ra một thứ ánh sáng màu đỏ tươi.

Khi nhìn vào chúng, Hisui đã nhận ra điều mà cô gái muốn làm.

Đặc điểm thứ #3 của Ma cà rồng: Ma nhãn.

Những con người yếu đuối sẽ bị hấp dẫn bởi chúng và linh hồn họ sẽ mãi bị giam cầm trong bóng tối.

“Dù đây không phải ý định ban đầu, nhưng nó tao nhã hơn việc đánh ngã ngươi nhiều. Chưa tính đến kẻ có linh hồn cứng cỏi, một tên như ngươi không thể thoát khỏi sự ràng buộc từ mắt ta đâu. Hãy quỳ xuống và dâng cổ của ngươi lên cho ta.”

“.....À này, cả Ma nhãn cũng không ảnh hưởng tới tôi được đâu.”

Hisui gãi đầu và chậm rãi trả lời.

Và như những gì cậu vừa nói, mắt cậu không hề bị thôi miên hay gì hết.

Hàm của Rushella rớt xuống còn mặt thì nghệt ra.

Nhìn vào cô, Hisui không biết làm gì hơn ngoài xin lỗi và cúi thấp ánh nhìn.

“Thế nên....xin lỗi cô.”

“Đừng có xin lỗi! Nó khiến ta điên lên đây, sao lại vậy? Tại sao Ma nhãn lại không có tác dụng?"

“Có thể nói là do cơ thể đặc biệt này. Cô biết là tôi sẽ không thể bị biến đổi mà lại không nghĩ tới trường hợp này sao? Mấy năng lực của ma cà rồng không có tác dụng với tôi."

“Không....Không thể nào.”

Rushella quỵ người xuống vì sốc.

Trước một con người bình thường, vậy mà một nhát cắn của ma cà rồng lại không có tác dụng gì. Điều này khiến cô bắt đầu cảm thấy ngờ vực bản thân.

“ Ta đã thực sự bị đánh bại bởi một con người.”

Khi thấy sự chán nản của Rushella, Hisui nhận ra đây là một cơ hội để trốn thoát.

Nhưng bất hạnh thay, Rushella đã nhanh chóng hồi phục lại khỏi cú sốc.

“Không...Không thể thế được. Có gì đó không ổn. Có lẽ do ta chưa quen.”

“.....? Điều này... sử dụng Ma nhãn là năng lực thứ hai của Ma cà rồng đúng chứ? Một Thuần huyết-sama đã sử dụng nó hàng trăm năm lại có thể chưa quen được á?"

Đối mặt với phân tích của Hisui, Rushella ngoảnh mặt đi hướng khác.

Như thể cố gắng tránh câu hỏi của cậu, mắt cô  nhìn xuống phía một con mèo hoang.

(Giờ thì thử với con mồi này nào)

Cô đưa tay ra để bắt con mèo.

Con mèo đen đó khá mập nhưng lại cực kỳ cảnh giác. Ngay khi Rushella  tiến tới gần, nó chạy vụt đi.

Nhưng dù sao nó cũng chỉ là một con mèo và vì vậy nó không thể thoát khỏi bàn tay của Vua bóng đêm. Sau một hồi rượt đuổi, Rushella đã bắt được con mèo hoang và nâng nó bằng hai tay.

“Tốn thời gian của ta quá...Này, nhìn ta đi.”

Nhưng con mèo ngay lập tức quay mặt đi.

Rushella chỉ còn cách dùng tay giữ cho nó hướng tới cô và ánh sáng màu đỏ tươi từ mắt cô chiếu tới mắt con mèo.

Mặc dù cô còn chưa cần dùng toàn bộ Ma nhã, nhưng toàn thân con mèo đã mềm oặt ra như cọng bún.

“Chẳng phải ngươi nên chào đón chủ nhân sao?”

Nghe được những lời đó, thái độ của nó quay ngoắt 180 độ. Con mèo bắt đầu kêu meo meo một cách đáng yêu và bắt đầu liếm tay cô.

“Rất tốt...Mà chẳng phải nó có tác dụng sao? Có vẻ như ta không có vấn đề gì hết. Được rồi, một lần nữa! Con người, nhìn vào mắt ta đi.”

Cô quay người lại nhưng chẳng có ai trong tầm nhìn của cô.

Chỉ có cơn gió đêm thổi qua cái công viên trống trải.

Rushella há hốc miệng, không biết nói gì hơn.

Chỉ vài giây sau, cô đã nhận ra mình đã bị bỏ lại.

“Hắn-----!!!!"


* * *


“Thoát rồi!”

Hướng mắt lên bầu trời đêm, cuối cùng cậu đã về tới nhà.

Nhà của Hisui là một căn nhà hai tầng với phong cách phương tây, có vẻ quá lớn với một người sống. Bức tường trắng đã ngả màu ố xám xịt theo năm tháng và thời tiết, đem lại cho nó vẻ cổ kính. Vậy nên, có thể hiểu tại sao mấy đứa trẻ hàng xóm lại cho rằng đây là một nơi bị ma ám.

Nếu căn nhà này là của người khác, bản thân Hisui chắc chắn sẽ không muốn tới  đây ngay cả khi đi vào với hàng xóm. Nhưng dù sao đi chăng nữa, đây cũng là nhà của cậu. Mặc dù chuyến dạo đêm không được an bình cho lắm, trong trường  hợp nào cũng được, hãy cứ đi tắm trước đã.

Sau khi đã kì cọ sạch sẽ, Hisui khoan khoái ngâm mình trong bồn tắm,  nhưng cậu vẫn không thể ngừng việc nghĩ về cô gái kỳ lạ kia.

“Ma cà rồng ư....cũng phải lâu lắm rồi mới thấy.”

Cậu lẩm bẩm trong khi nở nụ cười cay đắng.

Ai mà ngờ được trong khu vựa này bạn lại có thể gặp được họ -- nên nói là một nàng ma cà rồng kiểu mẫu, hay có lẽ là lỗi thời...Trong trường hợp này là một ma cà rồng có phong cách cổ điển.

Cậu từng nghĩ rằng mình sẽ không bao giờ gặp lại thứ gì đó như vậy nữa...chứ đừng nói là cậu muốn gặp họ.

Cậu chắc chắn không muốn có quan hệ gì với loài ma cà rồng nữa.

Hisui vô thức đặt tay lên ngực, nơi đó đang đau nhói. Một đường lằn chạy dài ở ngực cậu. Vết sẹo nổi bật trên lồng ngực nhợt nhạt  khiến Hisui thấy khó chịu.

“Không kiếm được người nào khác ư, sao cứ phải hút máu tôi....?”

Hisui cảm thấy hơi tội lỗi. Từ cái nhìn đói khát đó, chắc cô ấy đã bị đói một thời gian dài rồi. Nhưng đó chắc chắn không phải lỗi của cậu.

Nếu là một người thường, họ sẽ biến đổi thành ma cà rồng sau khi bị cắn, hoặc bị mê hoặc bởi Ma nhãn. Tất nhiên với người bình thường, khi lần đầu nhìn thấy ma cà rồng họ sẽ thấy cực kỳ hoảng sợ.

Nhưng ở khía cạnh đó, Hisui lại là người độc nhất vô nhị.

Với sự hiểu biết về ma cà rồng và kinh nghiệm bản thân---thêm điều quan trọng nhất, đó là cơ thể của cậu.

Không bị biến đổi sau khi ma cà rồng cắn và có khả năng vô hiệu hóa các  năng lực của họ, hai điều này giúp cậu không cảm thấy sợ hãi khi đối mặt với ma cà rồng.

Cậu vẫn có thể chết vì mất máu, nhưng những vết thương của cậu dễ dàng liền lại hơn và khả năng tái tạo máu thì đã vượt xa người thường. Ngoài những thứ đó ra thì cậu chẳng khác biệt gì với các chàng trai khác.

Hơn nữa, đến cậu còn chẳng nhận ra điều gì đặc biệt khác ở bản thân mình.

Trừ khi gặp phải ma cà rồng ra thì cậu cũng không thấy mấy thứ đó có gì lợi ích gì cả.

Nhưng giờ đây, mấy vấn đề rắc rối về máu đã biến đi rồi.

Giờ chỉ còn bóng dáng của nàng ma cà rồng xinh đẹp tên Rushella, thứ không thể biến mất trong tâm trí của cậu.

“Cô ta thực sự rất dễ thương.”

Hisui lắc đầu, cố đuổi những thứ liên quan tới cô ta ra khỏi đầu và bước ra ngoài phòng tắm.

Dùng cái khắn để lau đầu, Hisui hướng về phía căn bếp.

Lấy một chai sữa trong tủ lạnh để uống đúng là hoàn hảo, nhưng đột nhiên cậu nghe thấy tiếng đập cửa.

Mặc dù ở đó có chuông điện nhưng người kia vẫn cứ đập cửa liên hồi.

Một linh cảm xấu.

Một linh cảm cực kì xấu.

“Chắc không phải.... đâu nhỉ?”

Với một cảm giác nhộn nhạo, cậu bước dần về phía hành lang.

Nhưng tiếng đập cửa không những không dừng mà còn to hơn cả lúc trước.

“Tới đây, tới đây. Tôi nghe thấy rồi, tôi ra mở cửa ngay đây.”

Hisui trùm khăn tắm trên đầu sau đó mở cửa.

Hé mắt qua khe cửa, cậu thấy một cô gái xinh đẹp đang khoanh tay đứng phía trước cánh cửa.

Rushella đã quay trở lại.  Và cô nhìn chằm chằm cậu đầy giận dữ.

“Thấy ngươi rồi, Con người... dám đã bỏ chạy và trốn thoát khỏi ta. Giờ thì đến lúc ngươi làm người hầu cho ta rồi đó.”

“....Giờ muộn lắm rồi, về nhà từ từ đi nhé.”

Hisui nhắc nhở sau đó đóng cửa lại.

Ngay sau khi cậu vừa ước mình quên hết tất cả mọi thứ đi thì tiếng đập cửa lại vang lên to hơn. E ngại hàng xóm sẽ phàn nàn, chàng trai trẻ đành phải mở cửa ra.

“Cô muốn cái gì? Và sao cô tìm ra nhà tôi?"

“Vì nó chỉ không có tác dụng với ngươi, nhưng Ma nhãn của ta vẫn có thể điều khiển các động vật khác. Vậy nên ta ra lệnh chúng đi tìm nhà ngươi.”

Rushella hừm một tiếng và chỉ ngón tay về phía sau.

Đó là một đám chó hoang theo sau cô đang chờ được ra lệnh.

Hàng chục con chó đã trở thành đầy tớ cho cô và chúng đang quỳ đằng sau cô nàng ma cà rồng này.

Có vẻ như cô quyết định dùng Ma nhãn để thôi miên mấy con thú và dùng chúng để đánh hơi ra nhà của Hisui.

“Quá ấn tượng...Cách dùng năng lực của cô thật đáng ngạc nhiên.”

Hisui thở dài, nhưng lúc đó cậu nhận ra khuôn mặt Rushella dần trở nên đỏ bừng.

“...? Gì vậy?”

“Sao, sao ngươi lại trông như vậy? Mau mặc quần áo vào đi!”

Khi đó Hisui mới để ý.

Cậu vừa mới tắm xong, thế nên cậu để trần và phần dưới chỉ đựơc che bởi mỗi chiếc quần đùi.

Dù nó có thể hơi bất lịch sự chút, nhưng để trần thì cũng không cần sốc như vậy.

Khuôn mặt của Rushella đã trở nên ửng đỏ.

“Này, sao vậy? Cô ngượng hả? Cô mới nhảy cẫng lên vì cái cổ của tôi đó, giờ thì thấy tôi ở trần và.....”

“Đừng nói nữa! Mặc cái gì vào đi.”

“Sao cô không vào nhà mà phàn nàn ấy?”

Hisui mở cửa ra và tránh sang một bên.

Dù chỉ cần cô bước một bước là vào được trong nhà, thế nhưng Rushella không di chuyển.

Như thể bị ép dừng lại bở một sức mạnh vô hình, cô không thể đi tiếp dù đã cố gắng thế nào đi chăng nữa.

“Uh huh... Nói cách khác thì...cô không thể vào nếu không có sự cho phép của tôi.”

Đặc điểm thứ #4 của Ma cà rồng - lần đầu đến nhà của ai đó, nếu chủ nhà không đồng ý cho vào, họ sẽ không thể vào được

Dù mấy điều này nghe hết sức vô lý và không có căn cứ, nhưng đó là sự thật.

Rushella đứng trước cửa mà không thể vào được là bằng chứng rõ ràng nhất.

Không hề có có một  rào cản nào, nhưng bản thân cô lại giữ đúng theo đặc điểm của chủng tộc----nói cách khác, cô bị hạn chế bởi sức mạnh siêu nhiên nào đó và điều này là bằng chứng của một ma cà rồng.

“Đừng có nhìn ta và cười khẩy như thế, Con người. Mau cho phép đi, điều này chỉ có tốt cho ngươi thôi...”

Rushella lạnh lùng đe dọa Hisui với giọng đầy mạnh mẽ, nhưng lúc này cậu mới là người có lợi thế.

“Tôi không thích. Nếu tôi cho phép một lần thôi, chẳng phải cô có thể tự do đi vào sao?”

“Nếu đã như vậy thì ta không còn lựa chọn nào khác. Các ngươi, tặng hắn tí âm nhạc đi nào.”

Rushella búng ngón tay, và đàn chó phía sau cô bắt đầu sủa như điên.

GÂU GÂU GÂU GÂU GÂU GÂU ...!!

Tiếng chó sủa cao độ tràn khắp các khu phố trong bầu trời đêm.

Hisui bịt chặt tai và  kêu lên trong đau khổ.

“Cô làm cái gì vậy! Hàng xóm sẽ sang với một đống lời phàn nàn đấy! Tôi sẽ phải nghe họ kêu ca mãi thôi."

“Ai thèm quan tâm đến ngươi. Ta tuyên bố này, cho đến khi ngươi cho ta vào thì đừng nghĩ có thể bắt chúng dừng lại. Đừng nghĩ nhân loại bé nhỏ như ngươi thông minh hơn ta.”

Dù sao thì Hisui cũng đã trốn thoát một lần, thế nên Rushella cần cứng rắn hơn.

Cuối cùng cậu cũng đầu hàng với tiếng thở dài và trả lời yêu cầu của cô.

“...Được rồi, tôi hiểu rồi. Nhưng trước khi chào đón Ma cà rồng-sama vào nhà, tôi cần chuẩn bị vài thứ, thế nên cô đợi vài phút được không?”

“Đừng nghĩ có thể khóa cửa và trốn trong đó cả đêm. Ngươi sẽ phải nghe chúng sủa đến sáng nếu dám làm thế đấy.”

“Tôi hiểu mà, không lâu đâu. Tôi cần mặc quần áo nữa, đúng không? Giờ cũng hơi lạnh, với lại cô ngượng quá rồi kìa.”

Cô chắc chắn không cảm thấy thoải mái khi thấy Hisui ở trần; Rushella, dù không thấy vui vẻ gì nhưng vẫn gật đầu.

“Vậy chờ tôi chút nhé.”

Hisui đóng cửa lại và biến mất vào trong căn nhà.

Rushella đợi một thời gian ngắn và cuối cùng cánh cửa lại mở ra. Cậu trở lại với một chiếc áo phông màu đen.

“Hừm, phải mặc đồ vào như vậy chứ. Giờ thì như thỏa thuận, mau cho phép ta vào đi!”

“À vâng, làm ơn vào đi.”

Khi những lời này được nói ra, bầu không khí đột nhiên thay đổi. Giống như một nút thắt đã được tháo gỡ, hay một tấm kính bị phá tan.

“Đã xong. Tốt, giờ thì dâng cho ta máu của ngươi nào.”

Với đôi mắt như bùng cháy, Rushella bước qua cánh cửa.

Cô nhìn chăm chăm vào gáy Hisui như muốn nếm lại những dòng máu ngọt ngào...

“...Ế?”

Khi gần như đã chạm tới cổ cậu, cô ngửi thấy một mùi khó chịu.

Mặc dù khứu giác của ma cà rồng không bằng loài chó nhưng nó lại hơn hẳn con người và có thể phân biệt được nguồn gốc của mùi hương.

Đó là một thứ mùi cấm đối với ma cà rồng.

“Ngươi....?”

Lợi dụng Rushella đang phân tâm, Hisui dùng chiếc khăn trong tay bịt mặt cô lại.

Vị đế vương của màn đêm lập tức đổ xuống và bất tỉnh dưới sàn nhà.

Hisui nhìn chằm chằm vào cô và trong tay cậu là một lọ nhựa nhỏ.

Trên nhãn của nó được ghi:

[Bột tỏi đặc biệt]

Điểm yếu thứ #1 của Ma cà rồng – Sợ tỏi.

Dù nó chỉ là một điều cũ kỹ, nhưng nó cực kỳ hiệu quả với Rushella. Cậu đã đổ cả lọ tỏivào chiếc khăn nên tác dụng là cực kỳ cao.

Để an toàn, Hisui chờ đợi vài phút  rồi sau đó mới nhấc chiếc khăn ra khỏi mặt cô.

Cô nàng ma cà rồng xinh đẹp bị đốn ngã với khuôn mặt đầy bột tỏi, trông thực sự rất đáng thương.

Nhưng vẻ đẹp của cô vẫn vậy. Vẻ đẹp chính là vũ khí lớn nhất của cô và Hisui hiểu điều đó.

Nếu tới gần khuôn mặt cô, nó sẽ làm tăng đáng kể năng lực của Ma nhãn.

“Giờ thì...làm gì nữa đây.”

Cách tốt nhất để giải thoát cho một ma cà rồng là dùng cọc gỗ đâm vào tim và sau đó là chặt đứt đầu, nhưng Hisui không có ý định thực hiện cái kế hoạch cực đoan đó.

Bởi vì cậu vẫn chưa sẵn sàng. Kể cả khi cô ấy không phải con người, Hisui vẫn không có khả năng làm điều mất nhân tính như thế. Hơn nữa, Rushella còn có một bộ ngực khủng, nếu dùng cọc gỗ đâm xuyên qua nó thì ---có chút không đáng.

Hoặc cậu cũng có thể để cô nằm đâu đó và khi bình minh tới cô sẽ bị chiêu cháy bởi mặt trời.

Trong khi còn đang phân vân với mấy lựa chọn của mình, cậu nhận ra một thứ ở bên cạnh Rushella – thứ thường gắn liền với tộc ma cà rồng.

Thứ đó sẽ giúp cô tránh được mặt trời ban ngày – một chiếc quan tài.

Nó là một đồ vật khá cũ kỹ, nhưng lại thực sự rất quan trọng với ma cà rồng. Cái tráo đen tuyền được tạo tác tỉ mỉ ở đằng kia được khắc những dòng chữ huyền bí. Có thể coi nó như một tác phẩm nghệ thuật.

Nó có một ổ khóa nặng nề ở mặt bên, nhưng Rushella đã không khóa nó.

“Cô ta thậm chí còn mang cả thứ để ngủ tới...nhưng quan tài có vẻ đã cũ,  rồi cả những gì cô ta đã nói nữa....”

Hisui mở nắp quan tài ra với vẻ ngạc nhiên;  nó được thiết kế rất đẹp, với nệm mút màu đỏ lót bên trong.

Cậu cẩn thận đặt Rushella vào trong quan tài rồi sau đó đóng nắp lại.

“Nên vậy. Mà đi đi, chúng mày nên rời khỏi đây rồi.”

Hisui đuổi lũ chó đi. Khi Rushella ngã xuống, sức mạnh của Ma nhãn cũng biến mất, thế nên lũ chó dần dần bỏ đi hết.

Trước cửa giờ đã trống trơn, Hisui nhẹ nhõm thở dài một hơi.

(Đúng là quỷ ám. Giờ thì đi ngủ trước đã. Rồi sau đó mình sẽ suy nghĩ kĩ lưỡng sau.)

Sau khi kiếm một chỗ tốt để đặt quan tài, cậu ngáp dài và đi về phòng ở tầng trên.

Đối mặt với một ma cà rồng, đó là cái kịch bản mà không ai muốn gặp, một  ký ức mà ta muốn quên đi, nhưng lại không thể quên. Nửa mơ nửa thực.


* * *


Ánh nắng giờ đã ngập tràn mọi nơi.

Hisui thấy mình đang nằm ở dưới đất.

Cái nóng làm da cậu khô đi, hơi ẩm và sức lực như bị bòn rút.

Như thể cậu đang tới gần cái chết--giống như cậu vừa bước một chân qua cánh cổng địa ngục.

Làn da trắng lợt, dần trở nên tím tái như người chết, cậu đang nhanh chóng mất đi   màu hồng của máu.

Trái tim cậu như ngừng đập, máu khó có thể lưu chuyển, nó gần như không hoạt động nữa.

Nhưng ý thức của cậu vẫn còn. Nó giống như cậu đang nhìn bản thân từ một góc độ khác, một thứ kinh nghiệm khi sắp chết. Cậu cố gắng điều khiển cơ thể mình và cố gắng hét lớn lên.

“...NÀY! CẬU KHÔNG THỂ...AHH!”

Quanh đây vang vọng những lời nói đầy ám ảnh của cô.

Với hai cánh tay không thể ngừng siết chặt lấy ngực cậu.

Để làm tim cậu đập lại, để  rồi thắp cháy lên ngọn lửa sinh mệnh cho cậu.

“Thế này ...đủ rồi đó. Thực sự ...đủ rồi đó, ahhh.”

Cậu muốn nói điều đó.

Cậu muốn thoát khỏi bàn tay của cô.

Nhưng cậu không thể làm thế, cơ thể cậu không thể cử động nổi.

Thế nên cô ấy không ngừng lại. Cô đang làm mọi cách để đem sự sống trở về với cậu.

Đằng sau cô là mặt trời đang thiêu đốt, nhưng hay tay cô vẫn đang ấn xuống ngực cậu.

"Dừng lại đi ....nếu cứ như vậy, cô sẽ ...”


* * *


Kujou Hisui mở mắt và hét lên.

"....Ah?"

Cậu nhận ra giấc mơ đó đã kết thúc và nhìn quanh căn phòng quen thuộc của mình.

Đúng vậy, đó là một giấc mơ, một  ký ức từ trong quá khứ.

Nó đã qua rồi ....nhưng vẫn có thứ gì đó đang đè nặng nơi ngực cậu.

Rồi Hisui nhận ra thực sự có một thứ gì đó đang đè lên ngực cậu.

Thứ gì đó tròn tròn, và cực kì mềm mại.

Đâu đó có một mùi hương phả vào mũi cậu. Có lẽ đây cũng là một giấc mơ.

Chuông báo thức vẫn chưa kêu. Vậy thì cứ nằm thêm một chút, Hisui nghĩ vậy. Nhưng đột nhiên, có một cảm giác đau nhói ở dưới cổ và cậu tỉnh dậy.

"Oái!"

Đó là tiếng kêu của việc phía trái cổ cậu vừa bị cắn.

"Đau...!"

Hisui muốn bật dậy và ôm lấy cổ, nhưng có một sức nặng ngăn cản cậu làm việc đó.

“Ngươi tỉnh rồi.”

“Cô---!”

Đó là Rushella, người đang nằm trên người cậu và cắm hàm răng xuyên vào cổ

cậu.
Có một điểm quan trọng cần chỉ ra, cô  trông rất tỉnh táo.

Trên người cô chỉ có duy nhất chiếc khăn tắm quấn quanh, với những giọt nước lăn dài và rơi xuống ngực cậu.

Nhìn hơi nước bốc lên từ cơ thể, có lẽ cô vừa mới tắm xong.

“Sao...sao lại.”

“Ngươi nghĩ tỏi có thể ngăn cản ta sao? Dù tộc ta rất ghét chúng, nhưng ta là một Thuần Huyết, mấy thứ như vậy chỉ có công dụng trong chốc lát thôi.”

“...Ra là tỏi không có nhiều tác dụng với ma cà rồng cấp cao, giờ tôi sẽ thừa nhận điều đó vậy. Nhưng cô tắm sao? Sao cô lại dùng bồn tắm của tôi?”

“Vì ngươi đã chấp nhận ta, nói cách khác mọi thứ trong nhà ngươi ta có toàn quyền sử dụng. Hơn nữa cũng đừng trách ta, ai bảo ngươi phun vào ta đống tỏi kia chứ,  cả quan tài ta cũng tanh mùi tỏi rồi.  Và hơn nữa, nước nóng thực sự rất hữu ích. Ta từng lo sẽ thiếu nước cơ, nhưng giờ thì ổn rồi. Con người đúng là hữu ích mà.”

Nhìn vào khuôn mặt đầy sung sướng của Rushella, Hisui chẳng biết làm gì hơn ngoài nghĩ về cái đặc tính kia của ma cà rồng.

Điểm yếu thứ #2 của ma cà rồng- Sợ thiếu nước.

Vận chuyển và làm sạch nước – một nhu cầu thiết yếu, và cũng trở thành điểm yếu của ma cà rồng.

Nhưng hình như đó chỉ là giới hạn với nước trong tự nhiên, hay nước thánh.

Con người tạo ra nước,  dù chứa clo và khác với nước tự nhiên, nhưng nó cũng không ảnh hưởng gì tới Rushella.

“....Và sau khi tắm thỏa thích xong cô tới hút máu tôi sao.”

“Ồn quá, im đi. Mà ngươi có vẻ khá yếu vào sáng sớm? Vì việc kia sao? Có lẽ khác với người thường, ngươi không thích buổi sáng?"

Hisui phản kháng khá yếu ớt. Thành thực mà nói, giữ nguyên tư thế này cũng không tồi.

‘Quả nhiên là thế, ta từng nghe vài thứ về việc con người khi thiếu máu sẽ trở nên như vậy. Giờ để ta xem máu ngươi chảy như nào nào. Ta có thể cảm nhận dòng máu ngươi khi chạm vào. Bình thường với vài sự điều chỉnh và máu sẽ dễ tiêu thụ.... mà lạ quá, sao hầu hết máu lại dồn hết xuống thân dưới ngươi vậy?”

“Đó là thứ nhạy cảm của đàn ông, đừng có chạm vào....với lại đó là phản ứng bình thường khi trời sáng, tôi nên giải thích sao đây.”

Hisui không thể giải thích rõ ràng, thế nên cậu quay mặt sang hướng khác.

Nhưng ánh mắt của cậu vẫn hướng về phía Rushella.

Nói cách khác, cậu đang nhìn gần hơn vào ngực cô ấy.

Hai thứ trái cây chín mọng đang đè lên ngực cậu.

Hai thứ trắng trẻo nỏi bật lên khỏi cơ thể mảnh mai của cô.

Và cả cái thung lũng khiến người khác mê hồn...

Chính xác thì cái khăn tắm đã bị rớt xuống và cậu có thể thấy hai điểm hồng hồng lồ lộ kia.

“ĐỒ BIẾN THÁI.”

Khuôn mặt Rushella đỏ bừng, cô đột nhiên nhảy khỏi ngực cậu và tát vào má cậu liên tục.

Khuôn mặt Hisui bị đập văng qua hai bên trái phải liên tục.

“Cô làm cái gì vậy? Cô mới là người lộ nó ra cho tôi nhìn nhé. Cái cơ thể co giãn và mềm mại đến vô lí kia mới là thứ đáng bị khiển trách!"

“Ồn quá đi!!”

Khuôn mặt xinh đẹp của Rushella dí sát vào cổ Hisui và những chiếc răng nanh kẹp chặt xuống cổ cậu.

“NÀY! BIẾN ĐI.”

“Giờ ngươi đã thuộc quyền sở hữu của ta, đưa hết máu đây.”

Cứ hút máu trước rồi nói chuyện sau----đó là chiến thuật mới của Rushella đối với cơ thể đặc biệt của Hisui.

Hoàn toàn không để cậu vùng vẫy,  cô cũng không có thời gian để thưởng thức mùi vị, chỉ cần kết thúc với một ngụm.

Đối mặt với Rushella khi nghiêm túc, gương mặt Hisui dần dần đổi màu.

Máu trong người cậu đang mất đi--nếu không làm gì thì chỉ vài giây nữa thôi cậu sẽ bị nguy hiểm, hoặc nửa số máu sẽ biến bị hút hết.

“Tẩu vi thượng sách... version 2!”

Trong khi sắp trở nên nguy hiểm, Hisui đành phải dùng tới cách cuối cùng.

Ngay bên giường là cửa sổ. Cậu đưa tay giật phăng cái rèm sang một bên.

Căn phòng tràn ngập ánh sáng mặt trời.

“Khốn kiếp!"

Rushella kinh hãi thốt lên, đây là lần đầu tiên Hisui thấy cô thực sự sợ hãi.

Cô ngay lập tức rời khỏi người cậu và trốn vào góc phòng, nơi mặt trời không thể chiếu tới được.

Điểm yếu thứ #3 của Ma cà rồng- đối với ma cà rồng, khi bị mặt trời chiếu vào cơ thể, họ sẽ hóa thành tro, cuối cùng dẫn đến bị hủy diệt hoàn toàn. Thời gian tới lúc chết đi sẽ tùy thuộc vào mỗi ma cà rồng, nhưng đó chắc chắn là một điểm yếu chí mạng với họ.

“Cô thực sự sợ nó sao....”

“Chết tiệt, ngươi dám dùng ánh sáng vơi ta sao!”

Rushella đầy tức giận ôm chặt lấy hai vai, chiếc khăn tắm mà cô dùng để che đi cơ thể đã rơi xuống sàn nhà.

Hisui định quay sang hướng khác, nhưng đột nhiên bản tính nam nhi thôi thúc cậu tiếp tục nhìn cô.

Ở giữa tầm mắt cậu là bộ ngực đầy đặn, mềm mại tươi tắn và hai đỉnh núi nhỏ đáng yêu; trong lúc theo sát đường cong cơ thể và tìm kiếm phía dưới thì.. một mảng cỏ nhỏ xanh mượt...

“ĐỪNG CÓ NHÌN TA NỮA.....AHH.”

Rushella nhặt một vật gì đó lên và ném về phía đầu Hisui, vậy nên những hình ảnh đẹp đẽ vừa rồi đã biến mất.

“Cô muốn giết tôi sao-----Này, không phải chứ?”

Nhìn vào cái thứ vừa lao vào đầu cậu, khuôn Hisui trở nên tái xanh.

Đó là cái đồng hồ yêu quý của cậu.

Mặt trước của nó in hình một nắm tay và mũi kim phút đã hoàn toàn bị đánh bay.

“Ồ cái đó hả? Ta không hiểu sao nó cứ kêu không ngừng, thế nên ta đã đập nó một phát. Con người toàn chế tạo ra mấy thứ kỳ lạ.”

“Thứ này rất cần thiết đó!! Và nó đã reo ư?”

Khuôn mặt tái xanh của cậu quay sang chiếc đồng hồ cạnh giường và khi biết được thời gian chính xác, mặt cậu còn tái hơn.

“Điều này thật tệ...kể cả tôi có chạy hết sức cũng không kịp mất...tối qua không ăn gì, mà sáng nay tôi định làm một bữa sáng ra trò đấy.”

Hisui lẩm bẩm sau đó bắt đầu cởi quần áo.

Mặc dù cậu không muốn đạt được cái giải thưởng gì  hay trở thành một học sinh ưu tú, nhưng đi muộn vào ngày đầu tiên vào Cao trung thì khó chấp nhận được.

“Saolại cởi đồ!! Chẳng ..chẳng lẽ nhà ngươi muốn giở trò với ta sao!??”

Rushella nắm chặt tấm khăn tắm để che đi cơ thể mình.

Đương nhiên là Hisui hiểu phản ứng của cô.

“Nếu cô không muốn nhìn thì ra khỏi phòng tôi đi, tôi không còn thời gian rảnh cho cô đâu.”

Thấy Hisui sắp cởi đồ ra, Rushella chỉ còn cách chạy về phía cánh cửa.

Nhưng do tò mò cô vẫn muốn nhìn trộm cậu, có điều trước khi kịp quyết định mắt nên nhắm hay mở thì cậu đã thay đồ xong rồi.

“Ngươi đi đâu vậy!?”

“Tới trường, trường học ấy. Nhưng để tôi nói cho cô nghe này. Cơ thể tôi sẽ không bị ảnh hưởng gì khi cô cắn đâu. Ngay cả khi bị hút sạch máu thì cùng lắm là chết thôi, dù vậy tôi cũng sẽ không bị biến thành ma cà rồng.”

“Thể chất của ngươi rất lạ... nhưng dù vậy ngươi vẫn sợ chết. Thế nên ngươi mới hoảng hốt vào lần trước.”

“Ai cũng vậy thôi. Chẳng có người bình thường nào muốn máu mình bị hút đi cả.”

“Vậy sao?”

Rushella đuổi theo và hỏi, đôi mắt cô lấp lánh ánh đỏ hướng về cậu.

Hisui chuyển hướng nhìn đi và sốt ruột cảnh báo:

“Nếu cô muốn hút máu.. được thôi. Có nhiều hơn một chút cũng được. Nhưng đừng có hút quá nhiều, tôi chết đó, mà điều này chỉ để tốt cho cô thôi.”

“Yêu cầu của ngươi lạ quá. Ngươi đang đe dọa ta đấy à? Ngươi dám dọa một ma cà rồng như ta sao?”

“Đơn giản thì...cô nên thực hiện một cách an toàn. Nếu cô uống quá nhiều tôi sẽ bị muộn mất."

Nghe những lời nghiêm túc của Hisui, Rushella không biết nói gì thêm. Cô lặng lẽ để cậu tới trường.

“Sau hoàng hôn cô nên trở về đi. Tôi sẽ để chìa khóa lại. Sao đó hãy khóa cửa và để chìa khóa vào hộp thư.”

Rushella đứng chết lặng một mình trong vài chục phút đồng hồ. Cô đặt ngón tay lên cằm và suy nghĩ.

“Trường học à...?”


* * *


“Mình là Kujou Hisui từ Trung học Akanishi. Sở thích là..là đọc sách và nấu ăn. Không có năng khiếu gì đặc biệt. Nhưng nếu bạn có thấy gì như vậy thì làm ơn hãy nói với mình.”

Thêm một chút dí dỏm cho phần kết, Hisui kết thúc bài giới thiệu của mình trước khi bước về phía bên phải lớp và trở về chỗ của mình.

Giờ là phần tự giới thiệu bản thân.

Một số người sẽ tận dụng lúc này để giới thiệu bản thân một cách tuyệt vời, sau đó lập tức thu hút sự chú ý của những người khác, nhưng Hisui không phải người như vậy.

Hãy cứ duy trì khoảng cách, chưa cần nói chuyện với ai về thứ này thứ kia, cũng không nên tạo một sai lầm lớn nào, một cuộc sống Cao trung yên bình là lựa chọn tốt nhất.

Tất cả những gì cậu muốn là cuộc sống yên bình này.

Tiếp sau Hisui là một cô gái.

Mặc dù đã đi lên phía trước nhưng cậu quyết định lắng nghe, nhưng vì vậy cô gái lại đứng ở phía bên trái của cậu, thế nên cậu đã nhận được một vài sự chú ý.

“Mình là Sera Reina từ trung học Aishin. Sở thích của mình là đọc sách và làm bánh, đặc biệt là những bài nhạc và điền kinh. Xin hãy quan tâm đến mình.”

Trong khoảnh khắc đó, mắt Hisui và cô gái chạm nhau.

“Xin hãy quan tâm tới mình...”

“Ừm. Mình cũng vậy.”

Hisui trả lời cô gái rụt rè với một nụ cười yếu ớt.

Reina, ngay sau khi giới thiệu bản thân, cô đã bất ngờ được làm đại diện của lớp, cô gái này thiếu chút may mắn.

Điều này thường thấy ở những trường học uy tín, ban cán sự thường được chỉ định bởi giáo viên chủ nhiệm.

Đặc biệt là đại diện lớp thường sẽ được bầu bởi các học sinh khác.

Lớp bầu cho Reina cũng tốt. Cô gái xinh đẹp này trông như thể bước ra từ một bức tranh nhưng dù vậy cô lại không hề tỏ ra kiêu ngạo. Thay vào đó, cô có vẻ là một người dễ gần, giống như cô sẽ làm tốt nhất có thể cho mọi người.Vì thế cô ấy nên làm một lớp trưởng.

“Lớp mình hình như không còn ai khác tới từ trung học Aishin... Mà, điều này cũng dễ hiểu thôi..”

“Aishin, trường công giáo sao? Trường này dành cho mấy nàng tiểu thư học từ cấp tiểu học đến hết các cấp trên. Bình thường họ sẽ tiếp tục học Cao trung ở đó và tất nhiên họ thường sẽ không xuất hiện ở đây đâu.”

“Phải, đúng vậy...nhưng tên trường của Kujou-san hình như cũng rất hiếm thấy?”

“Thật à? Vậy...mình đoán chúng ta có điểm giống nhau rồi.”

Đều chỉ có một mình học tại ngôi trường này, nó như một điểm chung giữa hai người và họ mỉm cười vui vẻ với nhau.

Mặc dù có chút khác biệt, nhưng vào cái ngày đầu tiên đầy bận rộn này, họ đã tìm ra chủ đề để tán gẫu.

Hisui đã có thể thở phào nhẹ nhõm và có vẻ như phần tự giới thiệu bản thân đã sắp kết thúc.

“Được rồi. Tiếp theo sẽ là thời khóa biểu.”

Người phụ nữ với khuôn mặt dài, không rõ bao nhiêu tuổi hô lên.

Người vừa tự giới thiệu, Horie Jyuri, giáo viên chủ nhiệm.

Cô dạy môn lịch sử thế giới, và vì cũng mặc đồng phục, cô khiến mình trông như một học sinh vậy. Dáng người cô thật đáng ngạc nhiên, nhưng mái tóc xoăn rất hợp với khuôn mặt đáng yêu ấy, thế nên có vẻ cô khá nổi tiếng trong đám học sinh nam. Dù vậy cô lại không có cái vẻ đáng sợ mà giáo viên thường có. Thế nên lớp học tràn ngập những cậu chuyện tào lao.

“Được rồi, chiều nay có một cuộc kiểm tra sức khỏe, sau giờ nghỉ trưa hãy thay đồ thể dục, nhóm nữ sẽ tập trung ở lớp thể dục còn nhóm nam thì tập trung dưới sân trường.”

Hisui lắng nghe và càu nhàu vì ngày đầu tiên đã có một cuộc kiểm tra;  và bỗng nhiên có tiếng ai đó gõ cửa.

Mọi người đều tò mò về người vừa đến, cô Jyuri đại diện lớp tới mở cửa và sau đó cô ra ngoài hành lang nói chuyện với người nọ.

“Ah, Hasimoto-sensei, có chuyện gì sao?”

Người đến là một người đàn ông khá trông đứng đắn, đó là người đã xuất hiện trong buổi lễ khai giảng.

Ông nói chuyện gì đó với giáo viên chủ nhiệm và cô thì cứ lắc lắc đầu.

“A? Trong lúc này sao..? Nhưng tôi chưa nghe qua việc này...hơn nữa, ngày hôm qua không thấy...”

“À, đúng là không có, nhưng đây là ý kiến của ngài hiệu trưởng...thế nên, xin lỗi vì làm phiền cô.”

Người quản lý trông có vẻ hơi bối rối.

Jyuri càng trở nên hoang mang hơn, sau đó cô quay trở lại bục giảng.

“Đây là một học sinh mới chuyển tới, đây sẽ là một người bạn mới của các em.”

“Ah? Một người khác ư?”

“Vì thế bạn ấy mới không tới lễ khai giảng?”

“Do thế nên chúng ta đã không gặp được bạn ấy?”

“À, nhưng hình như không ai biết về điều này.”

ĐIều này khiến mọi người đều tò mò và họ bắt đầu thảo luận về cái thông tin đó.

Ngay cả giáo viên cũng tỏ ra hơi nghi ngờ, trên mặt cô ấy đầy vẻ bối rối.

Nhưng cô ấy vẫn tiếp tục.

Cô vỗ tay để mọi người im lặng và giới thiệu người học sinh mới.

“Mời em vào, uhm, tên...Rushella-san.”

Hisui đập mặt vào bàn.

Giáo viên lùi lại vài bước, và cô gái xinh đẹp trong bộ váy tiến vào lớp..

Cô đến trường mà không mặc đồng phục, thay vào đó là một bộ đồ riêng.

Vẻ đẹp rực rỡ đó khiến ngay cả các nữ sinh cũng phải kinh ngạc. Nam sinh thì khỏi nói, cả lũ chết trân ngay tại trận.

“Tên ta là Rushella Dahm Draculea. Hãy quỳ xuống trước mặt ta, con người.”

Rushella tự hào ra lệnh.

Ngoài Hisui, tất cả mọi người đều phản ứng đơ mặt ra mất một lúc. Mà thực ra cả cậu cũng vậy.

“Ah, Rushella-san.., đúng rồi, phải là Draculea-san đúng không?”

Bỏ qua cô giáo viên đang bối rối, Rushella bắt đầu dò xét toàn bộ lớp học.

Hisui không muốn cô tìm thấy nên cậu tránh tầm nhìn của cô, cậu gục xuống bàn vờ như đang ngủ.

KHÔNGPHẢIVIỆCCỦAMÌNHKHÔNGPHẢIVIỆCCỦAMÌNHKHÔNGPHẢIVIỆCCỦAMÌNHKHÔNGPHẢIVIỆCCỦAMÌNHKHÔNGPHẢIVIỆCCỦAMÌNH.

TÔIKHÔNGBIẾTCONMACÀRỒNGĐÓTÔIKHÔNGBIẾTCONMACÀRỒNGĐÓTÔIKHÔNGBIẾTCONMACÀRỒNGĐÓTÔIKHÔNGBIẾTCONMACÀRỒNGĐÓ.

Hisui nặng nhọc lẩm bẩm trong khi tìm cách trốn tránh. Cậu tuyệt vọng như đang đâm đầu vào vào địa ngục vậy.

Nhưng Rushella đã dễ dàng tìm ra cậu, cô nâng cổ cậu lên và đưa cậu trở về với thực tại.

“Thấy ngươi rồi. Thực là khiến ta phí sức quá đi.”

“....Sao cô lại ở đây?”

Đây là cơn ác mộng tệ nhất có thể xảy ra, nhưng cô gái đứng trước cậu lại là sự thực.

“Ta đã đến rồi đây ❤”

Trong vài giây, Hisui cảm thấy mình như già thêm chục tuổi. Nhưng Rushella lại cười rạng rỡ với cậu, nụ cười có thể quyến rũ bất cứ chàng trai nào.


“Cô ấy là bạn gái cậu à?”


Không biết ai vừa phun câu ấy ra, nhưng nó khiến cả lớp dồn hết sự chú ý vào hai người.

“Có chuyện gì vậy? Các cậu đang nhìn gì thế?”

Để tránh Rushella gặp rắc rối bởi các học sinh khác, Hisui nắm lấy tay cô và dẫn cô đến góc lớp.

“Cô làm cái quái gì vậy? Mà sao cô biết tôi ở đây chứ?”

“Ta đã đến một nơi gọi là Phòng quản lý và hỏi ngươi ở đâu. Lúc đầu họ nói cái gì đó mà  “riêng tư cá nhân” hay gì đó mà “không có gì liên quan tới cô”, vậy nên ta đã phải nhìn họ một lát và họ đã nói tất cả.”

“À, sử dụng Ma nhãn, ra vậy.”

“Ngoài ra còn một nơi tên là “Phòng hiệu trưởng”, ta đã đến gặp người đứng đầu của họ và yêu cầu ông ta “hợp tác với ta đi” và sau đó họ biến ta thành “học sinh chuyển trường” như này.”

“Ừm, đúng là Ma nhãn. Nhưng cô thực sự tới trường sao...”

Bởi vì ánh sắng mặt trời là một điểm yếu lớn của ma cà rồng, vậy nên họ không nên ra ngoài vào ban ngày.

Rushella mỉm cười vui vẻ chìa cây ô đang nằm trong tay trái ra.

“Đồ ngốc, ngươi nghĩ tộc của ta chỉ trốn trong bóng tối sao? Cái thứ đặc biệt này được tạo ra cho ma cà rồng, ta có thể dùng để tránh khỏi ánh sáng mặt trời. Nó cũng có thể dùng để che mưa nữa. Đối với mấy chủng tộc căm ghét nước mưa, đây chính là một vật báu đấy.”

“Nếu tôi mà đủ khoẻ thì tôi thề sẽ vặn đôi cái vật báu đấy của cô ngay lập tức....”.

“À, ta mang chìa khóa theo này. Từ giờ chúng ta sẽ ở cùng với nhau, cậu có thể giữ chúng.”

Rushella giơ chùm chìa khóa ban sáng lên.

Như một phản xạ, cậu vươn tay ra, nhưng ngay lập tức nhận ra điều đó có nghĩa là gì và bắt đầu len lén nhìn xung quanh lớp.

Mọi người đang nhìn cậu.

Cảm thấy như đó là trách nhiệm của lớp trưởng, hay có lẽ vì đang ngồi bên cạnh, Reina thu lại can đảm hỏi, ”Kujou-san, cậu và cô ấy...biết nhau à? Nói cách khác là...có lẽ  các cậu đang sống chung"?

“.....Nó không phải mối quan hệ xấu chứ?”

Cậu muốn vờ như không nghe thấy gì, nhưng có vẻ không thành công.

Tất cả mọi người đều đang nhìn vào cậu.

TỆ TỆ TỆ TỆ TỆ TỆ TỆ RỒI!!! THỰC SỰ QUÁ TỒI TỆ RỒI!!!

“Cái quái gì vậy? Người như cậu ta mà quen với cô gái hạng AAA như thế á? Và họ đang sống chung ư?"

“Này này,....đây mới chỉ là cấp ba thôi đấy."

“Tôi cũng thấy khá phấn khích, nhưng xem ra bông hoa này đã có chủ rồi..."

“Chúng ta ngồi đây còn chưa ấm chỗ, vậy mà chuyện đó lại xảy được..."

Đối mặt với  những lời bàn tán kia, Hisui bắt đầu toát mồ hôi hột. Cậu cố vắt cái não tàn để suy nghĩ xem thế quái nào chuyện này lại xảy ra.

Bị mọi người nhìn chằm chằm vào người ---đó là điều mà chẳng mấy ai mong muốn.

Cố gắng không gây lỗi gì, cố gắng để không bị ghét bỏ, cố gắng để không gây thù oán, một cuộc sống bình thường.... đó là ước muốn nhỏ nhoi của cậu.

Và nó đã bị đạp đổ một cách tàn nhẫn.

“Ê này.  Các người đang nhìn cái gì vậy!? À do các người đã bị quyến rũ bởi sắc đẹp của ta, khó trách, đám người khốn khổ...."

Rushella tiếp tục nói nhảm nên Hisui phải bị miệng cô lại.

"Mmmm---!!! (dừng lại,  ngươi đang làm gì vậy?)"

Hisui bơ luôn cô, sau đó cậu  lắp bắp nói với mọi người.

“Xin lỗi, điều này... cô ấy là... uhm, họ hàng của tôi, họ hàng thôi. Tới từ một nơi rất xa, cô ấy từng sống ở nước khác, tôi mới chỉ gặp cô ấy gần đây.... cô ấy tiếp nhận cách giáo dục của hoàng gia, ở đất nước khác một chút... à không, vậy nên cô ấy cư xử khá lạ lùng, mọi người xin hãy bỏ qua cho cô ấy!! Cô ấy là học sinh chuyển trường, đó, cậu thấy đấy, tới từ một đất nước khác nên vấn đề giấy tờ rất rắc rối nên rất mệt mỏi, vậy nên cậu ấy không có thời gian để tham dự lễ khai giảng....có đúng không”?

Hisui liệt kê tất cả các lý do để giải thích, cậu nhìn Rushella và cầu cứu cô xác nhận.

Và tất nhiên là cô không có ý định hợp tác, cô thoát khỏi tay cậu và bắt đầu vặn lại cậu.

“Ngươi nói cái vẹo gì vậy? Ta là một công chúa, vậy mà ngươi dám bảo ta là họ hàng với ngươi s----”

Trước khi Rushella kịp nói xong, Hisui đã tóm lấy má cô và thì thầm bên tai cô.

“Được rồi, được rồi, cô có thể đừng nói gì nữa được không....làm ơn?”

Có lẽ vì khuôn mặt tái nhợt của Hisui, hoặc vì cái nhìn trống rống của cậu, nàng công chúa Rushella trở nên im lặng.

Và sau đó cô gật đầu.

“...Vậy thôi, màn tự giới thiếu của tôi đã kết thúc, xin hãy tiếp tục tiết học.”

“À, tốt....”

Người giáo viên yên lặng nãy giờ cuối cùng cũng đã nhớ ra quyền hạn giáo viên của mình, cô vỗ tay để mọi người chú ý lên bục giảng.

“Được rồi, vậy thì chúng ta học tiếp nào. Rushella-san, em ngồi chỗ trống đằng kia.”

Jyuri chỉ vào một cái ghế ở cách xa chỗ Hisui, nó nằm phía góc trái tường, nhưng Rushella lại không để tâm đến, cô bước dần tới chỗ của Hisui đang ngồi.

“...Sao?”

Cô phớt lờ Reina và nhìn xuống cậu học sinh đeo kính ngồi cạnh Hisui.

“Tránh ra chỗ khác.”

Một mệnh lệnh không thể cưỡng lại.

Và chỉ có những tên ngốc mới nghe theo cái lệnh này, nhưng đôi mắt Rushella rực sáng, và cậu trai đeo kính dứng dậy, khập khiễng đi về phía chiếc ghế trống sau đó ngồi xuống.

“Ngồi xuống. Đó mới là chỗ của ngươi.”

Cô vui vẻ ngồi xuống bênh cạnh và bắt cậu ngồi xuống.

Hisui cảm thấy vô vọng, cậu ngồi xuống sau đó đập đầu vào mặt bàn.

Nếu nhìn lại thì cậu đang ngồi kẹp giữa hai cô nàng xinh đẹp.

Trên thực tế, một ngày bình thường của cậu đã bị phá hủy bởi bộ nanh độc địa của cô nàng ma cà rồng kia, nó làm cậu thấy mình như một con vật  đang nằm trên ban thờ chờ hiến tế.

Các nam bắn ra những ánh nhìn ghen tị và hầu hết bọn họ sẽ sẵn sàng ăn sống Hisui để có thể đổi chỗ cho cậu.  

Chỉ vài giờ sau khi cổng trường mở ra, cuộc sống yên bình của cậu đã vỡ tan, có vẻ như nó sẽ gặp muôn vàn rắc rối.

Với đôi mắt đẫm nước, Hisui ngước nhìn lên trần nhà với trái tim tuyệt vọng.

Tạm biệt, cuộc sống trung học yên bình của tôi.')
INSERT [dbo].[Novel_Content] ([ID], [ProductID], [Prodect_Name], [Chapter_Number], [Chapter_Name], [Content]) VALUES (3, 1, N'Silver Cross and Draculea Tập 1', 2, N'Chương 2 - Sinh vật tạo ra từ đất', N'“Sao ngươi trông khổ sở vậy?”

Rushella cúi đầu một cách đáng yêu và hỏi, nhưng Hisui không trả lời.

Cậu chỉ ngước lên bầu trời, nguyền rủa sự thay đổi bất thường của thế giới này và cả cái cuộc sống của cậu.

Hiện tại đang là giờ nghỉ trưa và cậu đang ở trên sân thượng.

Nó như là biểu tượng của cuộc đời học sinh, với mùi hương ngọt ngào của mùa xuân, nhưng khuôn mặt của Hisui lại đầy bối rối.

Tiết chủ nhiệm ác mộng đã qua, cuối cùng thì Hisui cũng đã kết thức những tiết học buổi sáng. Bởi là ngày đầu tiên đến trường, các bài học được dạy khá cơ bản, chỉ cần biết một vài điều chú ý là xong. Nhưng cái vẻ kiêu ngạo của Rushella với giáo viên đã khiến trái tim cậu bị giày xéo. Và trong khoảng thời gian quý báu này, vô số những câu hỏi về nội quy trường đã khiến cậu chẳng nghỉ ngơi được một chút.

Không chỉ là một học sinh chuyển trường mà cô ấy còn rất xinh đẹp, thế nên cô nổi tiếng với cả học sinh nam và nữ. Nhưng Rushella lại hoàn toàn phớt lờ họ và chỉ nói chuyện với Hisui, do vậy đã có một bầu không khí nguy hiểm đến từ các nam sinh.

Cuối cùng đã tới giờ nghỉ trưa, nhưng.....cô vẫn cứ bám theo cậu.

“Tôi nói này...cô có thể nhân từ một chút không? Cô thù tôi đến mức nào vậy?”

“Cực nhiều. Ta đã hút máu ngươi nhưng ngươi vẫn chưa chịu trở thành người hầu cho ta và còn cái vụ phun tỏi vào ta nữa.”

“Nhưng do cô tấn công tôi trước, đúng không?! Và sao cô lại giả làm học sinh? Cái cuộc sống đó sẽ không ảnh hưởng gì tới tôi chứ?”

Với sự nghi ngờ từ phía Hisui, Rushella chỉ biết ngoảnh mặt đi.

“Chả lẽ.....cô định biến học sinh nơi đây thành con mồi.”

Giọng Hisui trở nên nghiêm trọng.

Trường học có rất nhiều thanh thiếu niên, vì vậy đây là một nơi lý tưởng để cho ma cà rồng đi săn.

Nghe nói ma cà rồng thích hút máu của trinh nữ nhất — và ở đây thì có rất nhiều.

“Nhầm rồi, ta không phải loại người sẽ bỏ dở con mồi trước đó và đi kiếm kẻ khác đâu.”

“Một giọt máu cũng không? Mà sao tôi không cảm thấy biết ơn với mấy cái lý lẽ ấy nhỉ?”

“Không phải nó tốt hơn việc để kệ cái thứ biến đổi nửa vời của ngươi sao?”

“Đó chỉ là thứ lý lẽ ngớ ngẩn của ma cà rồng thôi.”

Hisui thở dài và dựa vào hàng rào sắt.

Sau khi bị cắn bởi ma cà rồng, bình thường chỉ có 2 khả năng – chết hoặc biến đổi thành ma cà rồng.

Cắn chết hoặc biến họ thành kẻ tôi tớ, tất cả đều là quyết định của ma cà rồng. Trong một vài trường hợp hiếm gặp, trong lúc con người đang trong quá trình biến đổi thì chủ nhân biến mất. Trong trường hợp đó, nạn nhân sẽ bị mắc kẹt trong dạng [biến đổi không hoàn toàn] suốt phần đời còn lại của mình .

Với những kẻ như vậy, họ có những đặc tính nhất định của ma cà rồng—họ có bản năng của ma cà rồng và tuổi thọ dài hơn bình thường—và họ sẽ sẽ phải mang trong mình lời nguyền đó cho đến cuối đời.

“Ta sẽ phải cẩn thận khi kiếm con mồi. Nếu muốn biến hắn thành người hầu, ta còn yêu cầu tiêu chuẩn nghiêm ngặt hơn. Và ta sẽ không rời đi cho đến khi hắn ta trở thành người hầu của ta. Đó là nghi thức cổ của một Thuần Huyết.”

“Vậy tại sao cô lại chọn tôi?”

“......”

“Cô có vẻ rất muốn tôi trở thành người hầu, vậy nên cô mới nhắm tới tôi tối qua.”

Hisui vẫn còn hơi bối rối về vụ hôm trước.

Kể từ tối qua, Rushella thực sự rất muốn cậu làm người hầu cho cô ta.

Nhưng cơ thể cậu đã ngăn cản điều đó và kết quả là cô ta vào học trong trường của cậu.

"Vậy...tại sao cô ta lại hứng thú với tôi đến vậy?"

“Ngươi có thấy đáng tự hào không? Ta đã bị ngươi thu hút. Như thể ta bị dính chặt với ngươi vậy. Ta muốn tìm một kẻ trẻ trung và đẹp trai, một kẻ với độ tuổi tương đương ta và phải có dòng máu tuyệt hảo để làm người hầu.”

“Bằng tuổi? Cô đang nói nhăng gì vậy? Không phải cô là một Thuần Huyết sao? Mặc dù bề ngoài không nói lên điều gì nhưng tuổi của ma cà rồng phải hơn tôi nhiều chứ. Mà cô bao nhiêu tuổi rồi?”

Câu hỏi của Hisui khiến Rushella như đông cứng lại.

Có lẽ cô không cảm thấy bị xúc phạm khi bị ai đó hỏi tuổi... nhưng nó lại giống như kiểu nó là một câu hỏi đáng sợ vậy.

“ Sao vậy? Không phải tuổi thọ là thứ mà ma cà rồng tự hào nhất sao?”

“Ta...Ta không biết.”

Đây là lần đầu tiên cô nói với giọng nhỏ như vậy.

Lúc này, trước mặt Hisui chỉ là một cô gái nhỏ đang bối rối.

“Ta đã bao nhiêu tuổi... ta cũng không rõ nữa.”

“Hay vì sống quá lâu nên cô quên rồi? Mà rõ ràng không phải vậy... Thế cô đến từ đâu? Cả người thân và kẻ hầu nữa. Sao cô không đi hỏi họ?”

“Ta.... không có ai như vậy.”

“Ế? Nhưng...”

“Người thân... lẽ ra ta phải có, nhưng ta không thể nhớ ra. Kẻ hầu...ta không có những người như vậy. Ngươi là người đầu tiên bị ta hút máu.”

‘Hả-----?!”

Bối rối toàn tập.

Giờ thì Hisui đã hiểu tại sao cô lại hút máu với cái kỹ thuật tệ như vậy, nhưng giờ thì bí ẩn về cô còn nhiều hơn nữa.

“Nhưng...cô là một Thuần Huyết đúng không? Một công chúa với dòng máu hoàng gia, đứng trên đỉnh của hàng ngàn tên thuộc hạ?”

“Ta đã...... không còn có ký ức nữa.”

“Ế?....”

“Ví như ta sinh ra lúc nào, ở đâu....ta hoàn toàn không biết. Thế nên tuổi của ta...ta cũng không rõ nữa.”

Rushella nắm chặt hai tay, lưng hơi cúi xuống.

Cô nhìn xa xăm, môi cắn chặt.

“Cô ...mất trí nhớ sao?”

“Có lẽ vậy... Vào cái đêm ta gặp ngươi, ta mới thức dậy từ trong quan tài. Ở phía khu rừng gần ngoại thành. Nhưng sao lại ở đó, hay ta ở đó từ khi nào...ta hoàn toàn không biết. Ta chỉ nhớ được tên ta và việc ta là một Thuần huyết, còn những thứ khác...”

“Một vài kỹ năng sinh hoạt bình thường thì vẫn còn, nhưng về bản thân thì lại không, ra vậy. Nhưng mà mấy cái kỹ năng đó... có hơi lỗi thời rồi.”

Cuối cùng Hisui đã hiểu ra.

Thời trang lạ lùng, “phong cách” ma cà rồng đó giờ rất hiếm thấy, thêm cái kỹ năng hút máu dở tệ nữa.

Một sự tồn tại lạ lùng, đến cô còn không thể hiểu nổi bản thân mình.

Có vẻ như Rushella không nói dối; bên cạnh đó, không có gì tốt đẹp khi cho con người biết điểm yếu của cô. Xem ra cô ta thực sự đã mất đi trí nhớ rồi.

“Đến trường học; điều này có nghĩa là cô muốn tìm hiểu về nơi này? Ý tưởng là vậy hả?”

“Đúng. Ta muốn biết thế giới này nó như nào. Nhưng...thế giới nhân loại đã thay đổi rất nhiều. Qua vài ngày quan sát thế giới này khiến ta thực sự bị sốc. Toàn nhà khổng lồ, vô số con người... và nếu nghĩ lại, con người đều làm việc và vui chơi trong ánh sáng ban ngày. Mặc dù nó khiến ta cảm thấy không thoải mái, nhưng rõ ràng con người đã nắm trong tay thế giới này. Nhưng nó thực là lạ.... Quên hết mọi thứ về ma cà rồng, ta không còn cảm thấy sức mạnh của loài quái thú nào nữa. Tại sao lại vậy?”

“Bởi vì thế giới này nó như vậy. Dù có người nghe đến sự tồn tại của ma cà rồng, họ cũng chẳng tin đâu.”

“ Chắc là vậy. Khi ta nói tên mình vào buổi sáng nay, không ai phản ứng lại. Trong lịch sử ma cà rồng tên ta có một vai trò rất quan trọng. Chỉ cần có người hiểu biết chút sẽ nhận ra ngay.”

“Cô nghĩ được đến vậy à... hiểu rồi. Thế nên cô mới cao giọng giới thiệu tên mình. Chỉ để nắm bắt tình hình sao?”

Quan điểm của Hisui đối với cô nàng ma cà rồng lỗi thời này đã cải thiện được một chút.

Dù cảm giác thời gian vẫn còn như ở hàng trăm năm trước, nhưng khả năng thích ứng của cô lại không tồi.

“Điều gì đã xảy ra với thế giới này vậy? Sao tộc của ta lại biến mất? Tại sao nhân loại không biết đến sự tồn tại của ta?”

“Kể cả cô có hỏi vậy thì....tôi chỉ mới 15 tuổi, tôi vẫn cần phải học hỏi nhiều thứ.”

“Nói cho ta nghe mau. Ngươi không hề ngạc nhiên về sự tồn tại của ta, vậy thì ngươi hẳn biết nhiều thứ hơn người thường.”

Cô đã nhìn thấu cậu hoàn toàn, vậy nên Hisui không thể giả khờ thêm được nữa.

“Tôi đã nghe được một chút từ người thân; trong lịch sử, có lẽ vào thời kỳ cách mạng công nghiệp? Trong khoảng thời gian đó, con người đã có nhiều sự thay đổi lớn. Vậy nên thế giới của con người và thế giới của quái vật đã bị lệch khỏi nhau.”

“Làm ơn giải thích dễ hiểu hơn đi. Cái gì là Cách mạng công nghiệp?”

“Vậy là phải giải thích từ đầu hả? Tôi nghĩ cô nên học về lịch sử thế giới đi. Đơn giản hơn thì nó giống như truyền thông không dây ấy. Khi có các trạm phát sóng, sẽ có các chương trình TV. Nhưng không phải tất cả mọi thiết bị đều có thể nhận tín hiệu. Chúng cũng giống như nhân loại và các chủng tộc quái vật đã bị mất vị trí của nhau. Vậy nên họ không thể nhận ra sự hiện diện của nhau. Nhưng bây giờ và sau này họ sẽ lại có mối liên kết và thế giới sẽ lại gắn liền với nhau thành một. Những người nhạy cảm với tần số cao....hay những người có cảm ứng với năng lực siêu nhiên sẽ có khả năng nhận ảnh hưởng từ các thế giới khác một cách dễ dàng.”

“Ta thấy hơi khó hiểu.... vô tuyến cái gì?”

“A, lỗi của tôi.”

Hisui đã nghĩ cách giải thích của mình khá tốt nhưng cô ta lại không thể hiểu những điểm mấu chốt. Chàng trai trẻ lắc lắc đầu và sắp xếp lại từng lời giải thích để nàng công chúa đến từ thế giới kia có thể hiểu rõ hơn.

“Nói cách khác là chủng quái vật không hề biến mất mà do con người không thể cảm nhận sự tồn tại của họ...hay đại loại vậy. Nó giống như là họ đã tách ra thành một thế giới riêng biệt, ngay cả tộc ma cà rồng cũng không thể phát hiện ra các loài khác được.”

“Ngươi nên nói sớm hơn mới phải, cứ lòng và lòng vòng mãi.”

“...Xin lỗi.”

“Hiểu rồi. Nhưng tộc ma cà rồng có điểm đặc biệt. Ma cà rồng chúng ta khác với những chủng tộc khác; Ma cà rồng vẫn phải tồn tại ở thế giới này, họ cần phải sống ở thế giới loài người. Chúng ta vẫn tồn tại. Và sẽ thật phiền phức cho bọn ta nếu sống ở nơi không có con người.”

“Chính xác là vậy. Nó khác với các bóng ma, thứ không có cơ thể riêng và trôi nổi loanh quanh đây đó. Ma cà rồng vẫn tồn tại trên thế giới này. Cô có thể nói họ là kẻ đại diện cho các chủng tộc quái vật. Vì vậy loài người chú ý đến sự tồn tại của họ.”

Trong đôi mắt đen của Hisui xuất hiện chút do dự và Rushella không bỏ lỡ điều đó.

“Ngươi nói cái gì vậy? Có phải ngươi nói loài người đã đuổi loài của ta đi?”

“Ý là vậy đó, có một số loại người đang tồn tại. Họ biết đến bộ mặt thật của thế giới này và coi những chủng tộc quái vật tồn tại trong loài người là kẻ thù của họ. Với lời giới thiệu của cô—Cô nói không ai phản ứng với cái tên của cô ư? Có lẽ một vài người sẽ đoán rằng cô là một ma cà rồng. Cô nên cẩn thận hơn.”

“Ngươi không cần lo. Ta cũng không định che dấu bản thân. Dù con người có định chống đối với ma cà rồng thì nó cũng chẳng có gì quan trọng.”

Rushella ưỡn ngực trả lời.

Câu trả lời giống như những gì Hisui đã dự đoán, cậu chỉ đơn giản nhún vai.

“Đầu tiên ta muốn lấy lại ký ức của mình; vậy thì tốt nhất là ta nên tìm kiếm một vài ma cà rồng khác. Ta muốn hỏi họ vài điều. Có vẻ ngươi biết vài thứ về họ, thế nên hãy giúp ta.”

“Tôi không muốn, cô có thể tự làm điều đó một mình.”

“Nhưng ngươi là người hầu của ta, có nghĩa phải phục tùng ta.”

“Tôi không phải người hầu của cô; tôi cũng chẳng quen biết gì tới loài của cô và tôi cũng chả thích thú gì đâu.”

“Ngươi đúng là cái đồ xấc xược.”

Niềm kiêu hãnh của Rushella đã bị xúc phạm, cô chặc lưỡi và tiến tới gần cậu.

Giờ đang là ban ngày, vậy nên sức mạnh thể chất của cô có thể đã giảm bớt, nhưng Rushella vẫn chắc chắn có thể thắng nếu cô muốn.

Chàng trai đang cố tìm cách đối phó trong khi cô nàng nở một nụ cười.

“Mặc dù đánh bại ngươi đơn giản thôi nhưng ta cảm thấy như mình đã thất bại vậy. Ta muốn ngươi tự mình đầu hàng, quỳ xuống trước mặt ta, rồi ta sẽ nương tay cho.”

“....Với răng nanh và Ma nhãn, không phải cô có thể dễ dàng khuất phục kẻ khác sao?”

“Ta không thích. Không phải chúng vô dụng đối với ngươi sao!? Nhưng chắc chắn sẽ có cách. Ví như...có phải ngươi lo ta sẽ đi kiếm những con mồi khác, đúng chứ? Dù không có can hệ gì tới ngươi, nhưng ngươi vẫn để tâm tới họ.”

“Tất nhiên tôi quan tâm. Nếu ai đó xung quanh tôi chết đi, hoặc không còn là con người....tôi chắc chắn không nhìn điều đó xảy ra đâu. Nếu nó mà xảy ra, tôi... tôi sẽ trở thành một kẻ săn ma cà rồng.”

Để có thể bảo vệ cuộc sống yên bình của mình, Hisui cũng có thể chấp nhận bản thân trở thành một kẻ ác.

Rushella hừ một tiếng rồi đứng dậy.

“Ta không nghĩ ngươi có thể tiêu diệt ta. Nhưng, đừng có phí thời gian nữa. Dù gì ngươi cũng sẽ phải giúp ta thôi.”

“Điều này, tôi vừa nói là...”

“Nếu đồng ý giúp ta, ta sẽ không hút máu bất cứ ai nữa. Ta có thể hứa với ngươi. Nếu ngươi chịu hy sinh bản thân, ta sẽ bảo đảm cho sự an toàn của những người xung quanh. Thế nào?”

“Khốn thật...”

Đây có lẽ là cái cảm giác khi phải đánh đổi bản thân với sinh mạng của người khác.

Dù là ngày đầu tiên tới trường, nhưng tính mạng của người xung quanh đã được đặt trên đôi vai cậu.

“ Thế nào? Quyết định nhanh đi.”

“......Tôi sẽ phục vụ cho cô.”

“Ta chẳng nghe thấy gì cả, nói to lên.”

Như muốn khoe khang đôi tay xinh đẹp của mình, Rushella tiến gần về phía cậu.

“Tôi sẽ giúp cô.”

“Ngươi quên gì đó thì phải?”

“Làm ơn hãy để tôi giúp đỡ người... chủ nhân.”

“Hừm, nói tốt đấy.”

Rõ ràng cậu không mất đi nhân tính nhưng Hisui đột ngột đạt được cái chức vụ còn thấp hơn cả người thường.

“Khốn thật.... không tin được có một ngày mình lại tự nguyền rủa cái cơ thể này.”

“Vậy ngươi sẽ phải làm việc chăm chỉ đấy. Một người hầu có thể hoạt động vào ban ngày rất đáng giá. Và một ngày nào đó ngươi sẽ trở thành một trong số chúng ta thôi. Vậy thì, bắt đầu nhiệm vụ nào.”

“Hả?”

Trong khi cậu còn chưa hiểu chuyện gì, đột nhiên tầm mắt cậu tối sầm và khuôn mặt của Rushella đã tiến sát lại.

Trong khoảnh khắc đó, cậu thấy mình đang nằm trên sàn nhà.

Trên người cậu là Rushella cầm trên tay cây ô đang che đi ánh sáng mặt trời..

“Này...Rushella–sama?”

“Ngươi tới quán cafe để mua bữa trưa đúng không? Vậy thì ta cũng bắt đầu ăn đây.”

Rushella liếm môi sau đó cúi xuống cổ của Hisui.

Chàng trai cố nhúc nhích để tránh đi những hơi thở thơm tho đang từ từ hạ xuống cổ mình.

“Này, dừng lại! Chẳng phải sáng nay cô đã ăn rồi sao?! Thế là đủ rồi đúng không?”

“Trật tự nào, ta thấy không khỏe, vậy thì có vấn đề gì nào? Ta chỉ muốn ăn một chút thôi.”

“Tôi nói là không...!”

Môi Rushella nhích tới từng chút từng chút một trong khi Hisui vẫn đang cố chống cự.

Cả hai vật lộn cho tới khi môi của Rushella đã chạm tới cổ cậu.

“Làm ta tốn sức quá đi..! Được rồi, giờ thì để ta chăm sóc ngươi nào..!”

“Sao nghe giống mấy tên biến thái chuyên đi dụ dỗ con gái nhà lành quá vậy?”

Khi Hisui đang chuẩn bị cho đợt phản kháng cuối cùng, cánh cửa của sân thượng đột nhiên mở ra.

“...Hisui-san?”

Hisui nhận ra giọng nói và cứng đờ người lại.

Trên cầu thang vẫn còn vài người khác.

Trong khi cậu đang cố nhìn xung quanh thì Rushalla vẫn đặt môi trên cổ cậu.

Quanh đó là những học sinh mới và có cả người có quan hệ tốt với cậu– Lớp trưởng Sera Reina.

Trên tay cô là một hộp cơm, có lẽ cô có ý định tới để ăn trưa cùng với cậu.

“Cái này... mình xin lỗi vì đã làm phiền.”
Nghe thấy lời xin lỗi của Reina, Hisui bắt đầu toát mồ hôi.

Cả người cậu đang dính chặt xuống đất bởi Rushella.

Nó trông giống như là hai người đang chuẩn bị có một nụ hôn ngọt ngào.

Ngay cả khi cậu đã đẩy cô nàng ma cà rồng ra khỏi người, nơi cổ cậu vẫn còn dấu vết của "nụ hôn".

“Kh-Khoan, đợi chút-----”

Trước khi Hisui kịp giải thích, đám con gái đã rời đi.

Nhưng bên tai cậu vẫn còn loáng thoáng những lời bình luận của họ.

“H-Hử, họ...thực sự ở chung sao? Có quá sớm để làm chuyện đó không?

“Trông có vẻ như họ không chỉ hôn nhau đâu..”

“Năm học vừa bắt đầu mà họ đã làm chuyện đó...còn giữa ban ngày nữa chứ..”

“Con gái ngoại quốc...bạo dạn thật đấy.”

Mặc dù đó chỉ là những lời thì thầm nhưng có cảm giác đó là những tiếng hét thê lương trong đầu cậu. Và trái tim cậu đau nhói...


* * *


Hisui nhìn lên bầu trời với ánh mắt vô hồn.

Rushella có vẻ đã mất hứng, cô chỉnh lại mái tóc và phủi thẳng bộ đồ đã bị xộc xệch khi giằng co với Hisui; sau đó cô tách ra khỏi người cậu.

“Nhìn lén trong lúc người khác ăn thực bất lịch sự mà. Ngươi có nghĩ vậy không?”

“Cuối cùng tôi cũng hiểu cảm giác của con gái khi bị đè xuống rồi...”

Hisui thầm khóc. Tay cậu buông thõng khiến chiếc túi nhựa đựng đồ ăn cậu mua rơi xuống.

“À đúng rồi, ngươi đã mua gì vậy? Cho ta xem đi.”

“Tùy cô...mà này, sẽ rất tốt nếu cô có thể giúp tôi ăn chúng.”

Sau khi lục lọi cái túi nhựa, cuối cùng Rushella đã chọn hộp sữa dâu tây.

Cô nhìn từ trước ra phía sau cái hộp, cuối cùng cô đã biết cách sử dụng và từ từ nhấm nháp thứ bên trong nó.

“Thứ gì thế này? Là sữa nhưng lại màu hồng và có vị ngọt! Chả lẽ người ta đã cho máu vào sao?”

Không phải vậy, mấy thứ đó vốn như thế mà, không cần phải trộn thêm gì...Hisui thậm chí còn không có sức để thở dài.

Rushella bắt đầu hút sữa và bắt đầu phát ra những âm thanh đáng yêu. Hisui thì ngồi cạnh đó với đôi mắt đẫm lệ.

Một chút thương cảm cuối cùng đã bị cuốn theo chiều gió.

Cậu thực sự muốn kết thúc mấy tiết học buổi chiều.

Mấy lời đồn đại của tụi con gái chắc còn nhanh hơn cả tốc độ ánh sáng nữa.

Mất đi cuộc sống của một học sinh bình thường.

Và giờ đây cậu cậu lại chào đón thêm cái cuộc sống trung học “kỳ lạ”.

Hisui quan sát cô nàng học sinh chuyển trường trong khi Rushella còn đang bận hút sữa.

“Nó ngọt thật đó. Chỉ sau máu thôi....”

“Giết tôi đi.”

Hisui trả lời với hiọng uể oải. Cậu không nhận ra có một người đang lặng lẽ quan sát họ.

Cô ta không không phải một trong số những cô gái khi nãy, cô đứng ở bóng râm của cầu thang chỗ cánh cửa và nhìn chằm chằm vào Hisui.

“Tìm thấy rồi nhé, bé ngoan <3.”


* * *


“Sao ngươi lại tỏ ra kinh khủng vào ngày hôm qua vậy? Dù ngươi có là một tên bất tài vô dụng thì cũng không nên tệ như vậy chứ.”

“Đó chỉ là bài kiểm tra sức khỏe thôi, sao tôi phải dùng hết sức chứ?”

Sau giờ tan học, đứng trước tủ giày, Rushella đang phàn nàn về cái kết quả của Hisui. Kết quả của cậu ở mức bình thường so với hạng tốt nhất.

Nhưng Rushella đã từ chối chấp nhận cái kết quả ấy và liên tục chỉ trích cậu.

“Có vẻ như ngươi đã không ngiêm túc? Ngươi thực không để ý gì hết, đúng không?”

“Không phải mọi người đều vậy sao? Hơn nữa, tôi không đáng bị càu nhàu bởi một người thậm chí không tới kiểm tra.”

Bởi vì buổi kiểm tra thể chất diễn ra ở ngoài trời, vậy nên Rushalle đã sử dụng Ma nhãn để có thể ở trong nhà.

Dù không phải là một giáo viên, cô lại ngồi trên ghế và giữ chiếc ô trong khi cổ vũ cho Hisui.

Thành thực mà nói, điều ấy cực kỳ ngượng ngùng. Và nơi kiểm tra thể chất của nam và nữ sinh khác nhau.

“Sao cô lại tới xem buổi kiểm tra của tôi?”

“Đó là việc rèn luyện bản thân để ngươi có thể bảo vệ ta. Dù cho cái cơ thể lạ lùng kia không thể trở thành một trong số chúng ta, ngươi vẫn có thể hoạt động dưới ánh sáng mặt trời, điều ấy sẽ bảo vệ yếu điểm của ta.”

“Tôi không có thừa năng lượng, mà có cái gì đặc biệt ở buổi kiểm tra ấy hả? Hãy nói thẳng ra đi xem nào.”

“Đừng có quá tự hào về bản thân. Trước kia ngươi cũng khá nghiêm túc đấy, nhưng cũng có gì đặc biệt đâu.”

“Cô đúng là biết cách khiến người khác đau đớn mà, cô thực sự đập tan mấy hàng phòng ngự của tôi rồi.”

“Hào hứng lên đi chứ. Mà ngay cả trong “giờ học”, ngươi cũng cũng chỉ tập trung đôi chút thôi, đúng không? Sao ngươi lại thế?”

“Cũng không có gì to tát đâu. Trong mấy thời điểm nguy cấp sức mạnh của tôi mới phát huy được.”

“Đừng có phun ra mấy câu vô nghĩa ấy. Ngươi là đầy tớ của ta, trong thời điểm cận kề cái chết, ngươi cũng phải hi sinh bản thân vì ta!”

Rushella lại trưng ra cái nhìn "bề trên" một lần nữa và Hisui cũng không muốn tranh luận gì thêm.

Hisui rời mắt khỏi Rushella và mở tủ giày của cậu. Cậu vươn tay ra lấy đôi giày và phát hiện ra một tờ giấy nhỏ.

Một lời nhắn bí ẩn và đầy thú vị.

“Tôi sẽ đợi cậu ở tầng một của tòa nhà thứ hai, trong lớp học bỏ trống.”

Cậu nghĩ ngợi trong giây lát, sau đó rời khỏi chỗ cái tủ và tiến về phía trường học.

“Đợi chút đã, ngươi đi đâu vậy?”

“Tôi có chút việc cần làm. Sao cô không trở về nhà đi?”

“Sao ngươi lại tức giận hả? Đừng có vô lý, ngươi là người hầu của ta, mau đưa ta về cái nơi nghèo hèn ấy.”

“Cô vẫn muốn sống ở nhà tôi à? Nếu cô không thỏa mãn với nó thì cứ kiếm một nơi khác tốt đẹp hơn đi, ma cà rồng-sama.”

Với những lời phàn nàn của Hisui, Rushella không kiếm được lý do nào nữa và trở nên im lặng.

Thấy vậy, Hisui bước tiếp và đi về hướng của căn lớp trống.

Cậu vẫn chưa quen với sơ đồ của trường, vậy nên cậu mất chút thời gian trước khi tới đúng địa điểm.

Hisui mở cửa của căn phòng, nơi đó là một đống hỗn độn của ghế và bàn học.

Có vẻ như nơi này không được sử dụng, vậy nên nó trở thành một căn phòng bỏ hoang và không có một ai ở đây.

Trong lúc Hisui ngắm bầu trời ảm đạm ngoài cửa sổ, cậu bỗng nghe thấy một tiếng nói từ phía sau.

“A, cậu tới rồi.”

“...Có vẻ như tôi không phí thời gian khi tới đây, cô muốn gì?”

Hisui quay lại và đó là một cô gái học cùng lớp cậu.

Cô ta trông cực kỳ quyến rũ, không giống như những cô gái trong cùng độ tuổi. Mái tóc nâu được cột đuôi ngựa và cậu có thể nhớ ra cô ta trong buổi giới thiệu ban sáng.

Nhưng cậu không nhớ tên của cô ta.

“Cậu là...”

“Mei, Sudou Mei.”

“A, ra vậy...”

Trong khi Hisui đang nhớ lại, Mei tiến tới gần hơn, không, nếu nói chính xác hơn thì là một cái ôm mới đúng.

Với cái thứ “phát triển” sánh ngang với Rushella ép sát vào ngực cậu và một nút áo chưa cài, chàng trai trẻ có thể nhìn thấy cái rãnh đầy mê hoặc lộ ra ngoài. Mei cũng ngước đầu lên để nhìn cậu.

“Sao…cậu lại tìm tôi?”

Kiềm chế bản năng của đàn ông đang thôi thúc, Hisui hỏi để bình tĩnh lại.

“... cậu thực sự không hiểu sao?”

Sudou trả lời với một nụ cười ma mị.

Thành thực mà nói, nó quyến rũ theo kiểu cánh cửa địa ngục vậy.

Cô giống giống kiểu người rất "từng trải", và chiếc váy của thì ngắn như quỷ. Thêm cái phong cách không cài nút áo, cô sẽ trở thành số #1 tại ngôi trường này.

“…Tôi thực không hiểu, đây là ngày đầu tiên ở trường, vậy lý do gì khiến cậu gọi tôi tới đây?”

Hisui nâng cao cảnh giác và bắt đầu quan sát xung quanh.

Không có ai khác ở quanh đây.

“Ngoài chúng ta ra không còn ai khác đâu. Cậu kiếm ai à?”

“Người nào đó đang chờ đợi, sẵn sàng nhạo báng sự ngu ngốc của một kẻ nhẹ dạ tin vào cái lời nhắn, rồi tưởng tượng một cách phấn khích và chẳng cảm thấy xấu hổ khi tới đây… khả năng như vậy có thể xảy ra lắm.”

“Gì chứ ? Sau cậu tự dưng nói vậy ? Cậu có vấn đề về lòng tin sao ? Mà cho dù cậu có là tâm điểm ngày hôm nay thì cũng không ai chơi cái trò này vào ngày đầu tiên đâu, đúng không ? ”

“ ..Được rồi, vậy thì ổn thôi. ”

Hisui thở phào nhẹ nhõm.

Khi cậu còn đang đắm chìm trong suy nghĩ, Mei lại tiến tới gần hơn.

“Có gần quá không vậy ?”

“Mình cố ý đấy. Hisui-san...Cậu hình như có hơi lạnh lùng... hơi khó khăn khi người khác muốn tiếp cận. Trong buổi giới thiệu bản thân, mình thấy cậu đã quan sát tất cả mọi người.”

“Cậu thực sự có quyền nói vậy à? Mà gì cơ,đó là lúc cậu bắt đầu để ý tôi hả?”

“Tất nhiên, đẹp trai này, da trắng này, cậu là người tuyệt nhất trong số những nam sinh năm nhất, mà chắc cậu sẽ tuyệt lắm nếu mặc đồ của con gái?”

“Tôi như thế nào cơ???”

Hisui bất giác đưa tay lên sờ sờ vào khuôn mặt.

Thực sự thì cậu chưa từng có cái cảm giác như vậy. Mặc dù ngoại hình cậu còn thu hút cả ma cà rồng, nhưng đó không phải là một thứ đáng để hạnh phúc.

“Đẹp trai ấy…. không ai nói với cậu sao? ”

“Người đã nuôi tôi lớn chỉ nhắc đi nhắc lại với tôi rằng tôi ‘giống như con gái’ và ‘đừng có mà ẻo lảthế’. ”

Hisui lẩm bẩm như nói với bản thân mình, nhưng Mei lại càng trở nên háo hức và đưa khuôn mặt cô tới sát cậu hơn nữa.

Hai người đứng sát lại, họ có thể cảm nhận được hơi thở và đôi môi thì dường như đã suýt chạm vào nhau.

“Tôi nói là….”

“Nếu như cậu không nhận ra mình thu hút dường nào, vậy thì để mình nói cho cậu ngay bây giờ."

Cô nàng yêu mị trước mắt cậu nở nụ cười.

Hisui không kìm được hơi thở và lắc lắc đầu liên tục.

“Cậu nên dừng vở kịch này lại và kiếm người khác đi.”

“A, nghiêm túc vậy? Cuộc sống trung học… tìm kiếm một người bạn trai đáng yêu để trải qua những ngày tháng bên nhau… đó là điều bình thường mà đúng không?”

“Buổi giới thiệu mới ngay lúc sang. Nó có quá lạ lùng không? Không phải nó là tình yêu sét đánh… tất cả những gì tôi phải làm chỉ là đẹp trai sao?”

“Vậy cậu muốn tìm hiểu nhau trước à? Không vấn đề gì, mình sẽ nói với cậu.”

Mei vươn tay ra và quấn lấy cổ của Hisui.

Cô kề sát đôi môi cậu.

“Cậu có gì đó với đứa nhỏ tên Rushella đúng không? Mấy lời đồn từ đám con gái rất đáng sợ đó.”

“Không hề, tôi chả có can hệ gì với cô ta hết.”

Hisui lợi dụng cơ hội này để làm cho rõ rang, nhưng Sudou vẫn có chút hoài nghi.

“Thật sao~? Cô ta rất đáng yêu và còn có cơ thể rất tuyệt vời.?

“Tính cách thì hoàn toàn kinh khủng.”

Và cũng chả phải là người..nhưng cậu không thể nói ra được. Nhìn thẳng cào khuôn mặt của Hisui, Sudou đã có chút tin tưởng hơn.

Vậy nên cô bắt đầu nghiêm túc.

“Vậy thì không có vấn đề gì nếu mình trở thành bạn gái của cậu. Hãy để mình trở thành người yêu cậu đi.”

Giờ đây, đôi môi cô còn gần hơn nữa.

Như thể họ có thể chạm vào nhau, cuối cùng thì Hisui cũng thoát khỏi tay cô.

“Cậu làm gì vậy?”

“Đây là giới hạn của tôi. Đừng có diễn mấy trò hề ấy nữa. Mấy thứ đó… rất kỳ lạ đúng không?!”

Hisui không tỏ ra khó chịu nhưng nó khiến Sudou nhíu mày lại.

“Kỳ lạ ư… là mình sao?”

“À thì đúng vậy. Tôi thực không ghét khi được cậu khen ngợi, và tôi cảm thấy cái cách cậu cư xử rất đáng yêu nhưng đột nhiên bị gọi tới đây bởi cậu, quyến rũ và tỏ tình... không có vấn đề gì khi cậu nghĩ về điều ấy, nó khá kỳ lạ. Nó không khiến tôi sốc, nhưng nó khiến tôi ngạc nhiên…”

Hisui đột ngột im lặng.

Mei cắn môi và tóm lấy một góc bàn.

RẮC!

Mảnh gỗ gãy rời khỏi mép bàn.

Rõ ràng cô không hề dùng chút sức nào – nó như thể cô bẻ gãy một cành cây nhỏ vậy.

Thế nhưng những ngón tay mảnh khảnh đó đã nghiền nát mảnh bàn thành gỗ vụn.

Dù có nhìn thế nào thì, nó hoàn toàn không phải sức mạnh của một nữ sinh trung học bình thường.

Kỳ lạ. Tất cả mọi thứ đều kỳ lạ.

Hisui nhìn chằm chằm cô gái phía trước.

“MÌNH KỲ LẠ CHỖ NÀO! CẬU CÓ CHỖ NÀO KHÔNG HÀI LÒNG HẢ!?”

Khuôn mặt của Mei đầy tức giận và cô nghiến răng ken két.

Hisui bắt đầu sợ hãi và lùi lại phía sau.

“Không, tôi không có nói là không hài lòng gì mà…”

“Vậy sao cậu không làm điều ấy với tôi?!! Rõ ràng cậu đã làm gì đó với con ma cà rồng kia mà!?”

“Cậu----!”

Mei im bặt, sau đó đưa tay lên bịt miệng.

Nhưng đã quá muộn, cậu đã bắt đầu đưa ra câu hỏi.

“Có phải cô đã phát hiện ra trong buổi giới thiệu bản thân..! Cô gọi tôi ra đây để xác nhận điều ấy? Cô rốt cuộc là----”

“Không, không phải mà!”

Vị trí của cô đã bị đảo ngược, Mei lùi lại một vài bước.

Hisui bước về phía trước nhưng vô tình đụng phải cô.

“Á…”

“Cẩn thận!’

Hisui theo phản xạ cố gắng đỡ lấy cô nhưng không kịp.

Mei ngã ngửa và kéo cả cậu xuống theo.

BINH! Hàm của cậu va xuống sàn nhà và mắt cậu hoa cả đi.

Tầm nhìn của cậu tối sầm, nhưng Hisui đã nhanh chóng hồi phục lại.

“Đau quá..”

“Ế?”

Dù cậu vẫn đang mở mắt, nhưng mọi thứ trước mắt cậu đều tối mịt.

Và có thứ gì đó ấm ấm, mềm mềm cọ cọ vào mặt cậu.

Choáng váng, cậu nhận ra những thứ trước mắt mình là gì.

Trước mặt cậu là một mảnh vải hình tam giác.

Đó là một đẳng cấp quá cao so một học sinh năm nhất và được làm bằng loại vải chất lượng cao.

Đó.... chính là pantsu huyền thoại.

Và phần quan trọng nhất đã bị che lại, vậy nên Hisui không thể nhìn thấy gì hơn, nhưng hàng phòng thủ bị thâm nhập một cách tuyệt vời.

(…………!!)

Chàng trai trẻ cuối cùng đã nhận ra mình đang ở chỗ nào.

Cậu đang ở phía dưới của chiếc váy ngắn.

Dù biết rằng đã quá muộn nhưng cậu vẫn cố quay mặt sang hướng khác như một người đàn ông. Có điều dù bên phải hay bên trái thì vẫn là cặp đùi đầy quyến rũ.

“Ế..?”

Trên làn da hồng hào kia nghuệch ngoạc các dòng chữ màu đen.

Nó khác với các hình xăm, nó trông giống như được ẩn dưới làn da.

Hisui cứng người trong giây lát, những dòng chữ đó – hay đúng hơn là đôi chân kia cuối cùng cũng nhúc nhích và rời khỏi tầm mắt của cậu. Cùng lúc đó, ánh sáng chiếu xuống và cơ hội để cậu ngắm nhìn khu vườn của thiếu nữ kết thúc.

“ Á…”

Mei đã đứng dậy. Có vẻ như cô không bị thương khi ngã xuống đất.

Bầu không khí bắt đầu trở nên ngượng ngùng. Dù đó chỉ là một tai nạn nhưng Hisui cũng không biết giải thích ra sao.

Cậu đã chuẩn bị cho một cái tát sẽ xảy đến, nhưng Mei chỉ thì thầm một câu.

“… cậu thấy nó chưa ?”

Cậu chắc chắc đã có một màn mãn nhãn.

Không thể phủ nhận, cậu chỉ còn cách nhìn sang hướng khác và tìm cách rời khỏi nơi này.

“À ừ thì... điều này.... nó.... cũng...."

Trái tim cậu đập thình thình trong khi sợ hãi nhìn Mei, người đang chụm chân của mình lại với nhau và hai bàn tay giữ cho mép chiếc váy thấp xuống, với vẻ cực kỳ xấu hổ, khác hẳn với lúc trước.')
INSERT [dbo].[Novel_Content] ([ID], [ProductID], [Prodect_Name], [Chapter_Number], [Chapter_Name], [Content]) VALUES (4, 1, N'Silver Cross and Draculea Tập 1', 3, N'Chương 3 - Cây thánh giá lãnh đạm', N'Đối mặt với phản ứng tự nhiên của cô, Hisui không thể bào chữa gì và chỉ có thể thú nhận.
“Xin lỗi, tôi không cố ý. Nếu cậu muốn tát....ừm, không sao....Tôi hiểu mà.”
“Cậu đã thấy ... "nó" chưa ?”
Cô lặp lại một lần nữa.Hisui nghiêng đầu đầy bối rối.Rõ ràng trong tình huống đó cậu sẽ nhìn thấy nó.Nhưng Mei dùng một tay để giữ váy, tay còn lại thì che chân phải của mình, vậy nên cậu đã hiểu ý mà cô muốn nói.Cô không hỏi về chiếc quần lót... mà là về những dòng chữ kia.
“À ừ, tôi đã thấy nó...”
“…..”
“Đó là… một hình xăm? Cậu không nên để làn da đẹp đẽ kia có một thứ như vậy. Một hình xăm phải nên đáng yêu đúng chứ ? Với những dòng chữ tiếng Anh và những con số…”
Trong khi nói, Hisui nhớ lại những dòng chữ trong câu hỏi.FC-XX07- giống như là một số hiệu.
“Có lẽ đây là xu hướng thời trang mới chăng? Code à? Hay là số hiệu của máy móc?”
Mặc dù chỉ là lời nói đùa, nhưng khuôn mặt của cô gái giật giật.Cô trả lời với vẻ mặt phức tạp.
“Khi phấn khích....nó sẽ tự dưng xuất hiện. Nói cách khác, nếu không muốn bị như vậy, mình sẽ phải kiềm chế cảm xúc. Kể cả lúc này…nó vẫn còn khó chịu. Đó là thứ không phải của con người.”
“Cậu là…”
Trí óc của Hisui bắt đầu hoạt động.
Phía trước cậu là một cô gái cực kỳ xinh đẹp.
Nhưng có gì đó khác lạ, một thứ gì đó sai lầm.
Cô ấy đã nhận ra bản chất thật của Rushella, cô có những ký tự lạ lùng được khắc ở chân, kết hợp hai thứ lại, ta có thể cảm thấy thứ gì đó không tự nhiên.
“Cậu là gì? Cậu có phải con người không?”
“Thật là thô lỗ, tất nhiên mình là con người, một con người bình thường.”
“....Không đúng. Chưa biết có phải "con người" không, cậu chắc chắn không hề "bình thường".”
Hisui lạnh lùng kết luận.
Mei nhìn cậu với vẻ đầy giận dữ, như thể cô vừa bị buộc tội giết người vậy.
“Có vẻ như cậu sẽ nổi cơn thịnh nộ khi bị nói không phải là con người, vậy nên chắc tôi đoán đúng rồi. Cậu là gì?”
“………”
“Cậu không sợ ánh nắng mặt trời, vậy cậu không phải là một ma cà rồng. Nhưng sức mạnh của cậu lại vượt quá khả năng của một nữ sinh trung học. Còn về mấy số seri kia, tôi có thể đoán không? Cậu là một người máy.”
“Gì vậy, thật bất lịch sự! Ai là người máy? Mình là một con người!....Chỉ là không được sinh ra từ bụng mẹ thôi.”
Mei nổi cơn thịnh nộ và phản bác một cách mau lẹ.
“Vậy thì cậu được tạo ra như thế nào? Nhân bản vô tính sao? Hay là người nhân tạo? Chúng ta không phải ở trong một câu chuyện viễn tưởng đấy chứ?”
“....Có một mẫu vật sống ở đây. Sau 11 tháng ở trong phòng thí nghiệm. ”
“Hả?”
Hisui nhíu mày, sau lời nói của Mei, đột nhiên trang bìa của một tiểu thuyết nổi tiếng xuất hiện trong đầu cậu.
Cậu từng đọc một bản dịch của cuốn sách một lần – và cậu bắt đầu từ từ nhớ lại.
“Mình đoán không thể tiếp tục giấu được nữa. Cậu là một người sắc xảo và cậu đã làm điều ấy với một ma cà rồng, nên mình nghĩ cậu có thể dễ dàng nhìn thấu mình. Đó là lý do khiến mình muốn thắng cậu. Nhưng một ma cà rồng không bao giờ che giấu bản thân mình, đúng không ? Và cô ấy mang theo một cái ô, bất cứ ai biết về truyền thuyết ma cà rồng đều sẽ biết cô ấy là ai. ”
Trông có vẻ như Mei đã từ bỏ việc đánh lừa Hisui, vậy nên cô nói toàn bộ những gì cô nghĩ.
“Hừm, Hisui-san, đã bao giờ cậu nghe tới [Câu chuyện của Frankenstein] chưa ?”
“Ừm. Tôi từng đọc nó trước đây và tôi có thể nhớ một vài chi tiết. ”
Đó là một cuốn tiểu thuết nổi tiếng thế giới.
Thiên tài trẻ tuổi Victor Frankenstein đã khám phá ra bí mật của sự sáng tạo và để chứng minh lý thuyết của mình, ông đã tạo ra "người nhân tạo" đầu tiên.
Tuy nhiên, kế hoạch này đi ngược với mục tiêu tạo ra một con người đẹp đẽ như ban đầu. Tất cả những gì xuất hiện chỉ là một sinh vật ghê tởm.
Và con quái vật đó là Frankenstein.
Nó, cùng với ma cà rồng, đều được coi là những quái vật.
Theo kiến thức của Hisui, giống như ma cà rồng, họ sống ẩn trong xã hội loài người, một loài ‘quái vật’ hiếm hoi.
“Câu chuyện gốc rất nổi tiếng và tôi nghe nói đó là một tiểu thuyết khoa học viễn tưởng. Vậy cậu là…”
“Đúng, thiên tài điên rồ, con quái vật của Victor Frankenstein-----Cậu có thể nói mình là mẫu mới nhất. Và cái dấu ấn đó, như cậu nói đó, là một số seri. Và mình ghét nó. ”
Mei nhìn chằm chằm vào dấu ấn trên đùi phải của mình như thể nó là một vết sẹo xấu xí.
Không có vấn đề về việc cô giống con người như thế nào, chỉ có một số ít người nhận ra cô là người nhân tạo.
“Theo câu chuyện gốc kia thì con quái vật đâu có con cháu nào?”
Hisui bắt đầu nhớ lại nội dung cuốn tiểu thuyết và nói với Mei.
Thứ được tạo ra đó, anh ta rất khác biệt với Victor, có kinh nghiệm từ những sự kiện gắn liền với nhau, cuối cùng anh ta đến tới chỗ người tạo ra anh và mong muốn ông tạo ra một người bầu bạn cho mình – nhưng người sáng tạo từ chối.
Bởi vậy mà hai người đó, cha và con, người tạo ra và thứ được tạo ra, trở nên căm ghét lẫn nhau, và rồi vòng xoáy trả thù ấy đã hủy diệt cả hai bọn họ.
“Đó là sự thật, vật mẫu đầu tiên đã chết một mình. Và Victor vẫn không công bố bí mật của sự sáng tạo. Tuy vậy, ông ta không hủy đi bản ghi chép của mình và những mảnh ghép của họ vẫn còn được lưu lại. Một thiên tài, người đã thừa kế sự điên cuồng của ông ta, tiếp tục nghiên cứu tiếp và cuối cùng sinh ra những người như mình.”
Với một vẻ cực kỳ ghê tởm, Mei giải thích sự thật đằng sau kiệt tác văn họa kia.
Cũng giống như bản gốc, sinh vật xấu xí ghét người đã tạo ra nó, dường như Mei cũng có thứ cảm xúc phức tạp tương tự với thiên tài điên rồ kia.
“Nhưng giờ đây Hisui-kun đã phát hiện ra mình không phải con người, cậu sẽ làm gì?”
Mei đan tay vào nhau và chăm chú quan sát chàng trai.
Dựa vào câu trả lời của Hisui, căn phòng trống này có thể trở thành một chiến trường đẫm máu—nhưng Hisui đã bình tĩnh trả lời.
“Tôi không quan tâm, tôi cũng chẳng có hứng thú gì với Frankenstein cả. ”
“?! Thật… thật sao?”
Mei có chút ngạc nhiên xen lẫn thất vọng. Rõ ràng khả năng quan sát của cậu rất sắc xảo nhưng ý chí để hành động của cậu là bằng không.
“Vậy.... cậu cũng có thể không công khai danh tính của Rushella không? Mặc dù ít ai có thể tin được, nhưng làm thế sẽ khá phiền phức cho cả hai bọn tôi."
“….....”
“Vậy, cậu đúng là người máy à? Nếu đúng thì lẽ ra phải có ốc vít trên thái dương cậu chứ? Với cả vết khâu trên trán nữa...?
“Cậu nghĩ đây là thời đại nào rồi hả? Và nó chỉ có trên phim thôi, phải không? Mặc dù bản chất là một con quái vật, nhưng tôi nhìn giống thật mà, đúng chứ ?”
Để chứng minh tính chân thực của mình, Mei nắm lấy tay Hisui và áp vào mặt cô.
Tim Hisui nảy lên, nhưng bàn tay cậu đã cảm nhận được một cảm giác mềm mại và cậu ngay lập tức phá bỏ định kiến về cô.
“Nó thực sự rất ổn, nhẵn nhụi, hoàn mỹ, không một vết khâu, thực sự là... một khuôn mặt tuyệt vời.”
“Đúng chứ?”
Mei mỉm cười và đưa bàn tay áp lên ngực. Vì hành động này quá tự nhiên, vậy nên Hisui cũng vô thức tận hưởng sự mềm mại của bộ ngực ấy.
“Thật sự… mềm mại và đàn hồi, whoa, cái cảm giác tinh tế này---Khoan, cái..!!”
Lấy lại được cảm giác của mình, Hisui vội rút tay về nhưng đã muộn.
Mei nhìn cậu một cách đắc thắng.
"À há? Dù đó là do mình kéo tay của cậu nhưng không phải cậu đã nắn bóp nó hay sao?”
“Guh.....”
Hisui rụt rè chuyển ánh mắt sang hướng khác, tay cậu vẫn đang khum khum lại như khi còn chạm vào ngực cô ta. Cái cảm giác mềm mại trong lòng bàn tay bám dính lấy não Hisui - dù sao đi nữa thì cậu cũng chưa từng chạm vào bất cứ đối tượng nào khác. Phải nói thật là cậu thực sự muốn chạm vào nó một lần nữa.
“Giờ cậu đã hiểu chưa? Hiện nay chúng tôi không khác người thường là bao. Bên cạnh đó còn có trí tuệ và cảm xúc, sự khác biệt duy nhất là hình dáng mà thôi.”
“Không phải sẽ tốt hơn nếu không có mấy cái số seri đó? Sao chúng lại được khắc dưới da vậy?”
"Đó là lời cảnh báo. bản mẫu đã không kiềm chế được bản thân và sát hại con người. Để không dẫm lại vết xe đổ đó, bọn mình đã bị kiềm chế lại. Nếu không muốn cảnh tượng kinh khủng đó xảy ra, bọn mình phải giữ được lý trí của mình."
“...Rõ rồi. Tôi hoàn toàn hiểu rồi. Tạm biệt.”
Kết thúc lời nói của mình, Hisui cố gắng kết thúc câu chuyện và rời đi.
Nhưng Mei giữ lấy tay cậu.
“… Gì vậy? Không cần phải lo, tôi sẽ không nói cho ai biết đâu.”
“Thật sao? Cậu không cảm thấy mình... là một con quái vật sao?”
“Có gì giống vậy à? Không phải cậu đã nói mình giống con người sao? Tôi cũng thấy vậy đấy. So với mấy cô nàng đi trên đường thì cậu tốt hơn nhiều. Và cũng dễ thương nữa.”
Hisui bày tỏ ý kiến của mình khiến khuôn mặt Mei ửng đỏ.
“Cậu…thấy vậy sao?”
“Ừ.”
“Thực sự là vậy hả?”
“Sao tôi phải nói dối cậu? Thả tôi ra đi. Nếu còn điều gì muốn nói thì cứ nói ra đi.”
“Điều này… thôi được rồi. Đây là một vấn đề khác... Giống như những gì mình đã nói trước đó, là về việc trở thành bạn gái của cậu.”
“Này, cậu đang bắt đầu thẳng thừng đó... vậy, đây là một mối tình hả?”
“À, đúng vậy. Đây là mong muốn đã được gia tộc bọn mình ấp ủ đã lâu. Trong trường hợp có tình cảm với con người, không phải sẽ làm người nhân tạo như mình trở thành con người thực sự sao?”
“Ồ, ra là như vậy… đúng là nếu có quan hệ như vậy sẽ khiến người khác không thể phân biệt được. Tuy là vậy, tình cảm yêu đương bình thường thì sẽ không đủ… nói về điều ấy thì Sudou này, nó cần nhiều hơn thế…”
“Không, nó chỉ là một cách thích hợp thôi, tình cảm vẫn chưa phải mục tiêu cuối cùng, nó chỉ là một bước trung gian?Ở giữa hai quá trình.”
Nghe thấy những lời giải thích kỳ lạ, Hisui chết lặng đi.
Dù cho Hisui không quan tâm họ có là con người hay người nhân tạo, nhưng cậu tò mò về cái mục đích khiến Mei phải vượt bao trở ngại để tới tận học.
“Vậy mục tiêu là gì?”
Mei cười khúc khích trong chốc lát và trả lời.
“Có một đứa con ❤.”
Hể?
Trước khi cậu kịp hiểu chuyện gì vừa xảy ra thì đã quá muộn.
Hisui đã bị đẩy xuống sàn, cả người cậu nằm trên sàn nhà mát lạnh.
Cậu ngẩng đầu lên một cách khó nhọc... Mei đã ngồi trên người cậu.
“Ê này... Sudou-san?”
“Sao~ vậy~?”
Bộ ngực của cô gái đè lên cậu.
Khốn thật.
Gần như giống với vụ ăn trưa, nếu điều này diễn ra --- theo cách nào đi nữa thì cũng thật là tệ.
“C—Cậu nghĩ mình đang làm gì vậy hả ?”
“Không phải mình đã nói rồi sao, TẠO-MỘT-ĐỨA-TRẺ. Như là minh chứng cho tình yêu của chúng ta. Như những gì Victor Frankenstein đã từng nghĩ tới, một người nhân tạo có khả năng sinh sản. Nhưng sẽ vô nghĩa nếu nó không phải là một con người, đúng chứ ? Nếu bọn mình muốn trở thành [con người], thì làm chuyện đó với con người là việc cần thiết mà. Đó là mục tiêu của mình, lý do duy nhất mà mình tồn tại.Vậy hãy nói…”
“Nói cái búa ấy!! Tìm người khác đi, người khác!! Cậu hiểu gì không hả?!”
“Có vấn đề gì đâu, cậu không phải chịu trách nhiệm cho việc này.”
“Nó hoàn toàn không phải là tình yêu!! Để tôi chỉ rõ điểm này, cậu cứ suy nghĩ kiểu đấy thì còn lâu mới trở thành con người!! Ngoài sự hiện diện của cậu ra thì hoàn toàn không có gì chắc chắn cho việc đó cả.”
“Thật phiền phức… mình không muốn nghe về mấy suy nghĩ đó của cậu đâu.”
Hisui cố gắng nghĩ ra biện pháp để thoát ra khỏi mớ hỗn độn này.
Mei tiếp tục đẩy cậu xuống sàn nhà.
Nói chung là tình hình lại một nữa đảo ngược, Hisui đáng thương đang bị bàn tay nhỏ nhắn của một cô gái kiềm chế, cậu không thể nhúc nhích chút nào.
“Chết tiệt---!!!sao cậu lại có thứ sức mạnh này chứ… !?” (ND : tôi có thể nghe thấy tiếng khóc của anh ấy ;)) )
“Cậu thô lỗ quá đấy. Nó là vì tính hung bạo nguyên gốc mà mình có được, những phiên bản mới nhất sẽ có một giới hạn. Cơ bản là có được một nửa sức mạnh của bản gốc. ”
“Có ai trên đời này muốn biết về thứ kiến thức ngớ ngẩn ấy chứ? Thả tôi ra!”
“Không.”
“Cậu… !”
Ngay cả khi đã dùng hết sức sức đề chống trả lại, cậu hoàn toàn không thể thắng được. So với Rushella, Mei mạnh hơn vào ban ngày.
Trên bờ vực đánh mất đời trai, Hisui từ bỏ lòng tự trọng của mình. Khi không thể sử dụng sức mạnh thì chỉ còn một cách duy nhất, kêu gọi sự giúp đỡ.
Hisui mở miệng ra nhưng Mei đã nhận ra ý định của cậu và nhanh chóng hành động.
Tuy vậy, thay vì bịt miệng cậu lại, cô gái nhìn chằm chằm cậu.
Trong giây lát, từ đôi mắt quyến rũ của cô phát ra một thứ ánh sáng.
Không phải huyễn ảo, nó là một thứ có thật, một thứ ánh sáng tự nhiên phát ra từ đôi mắt của cô.
Ánh sáng ngưng tụ thành một chùm sáng và lướt qua mặt của Hisui, nó xuyên qua nền nhà phía bên phải cậu.
"!!!"
Bị tia sáng xẹt ngang qua mặt làm Hisui câm nín.
Hai cái lỗ đẹp tuyệt vời đang tỏa khói trắng trên sàn nhà.
“Cái-------- !?”
“Thoải mái đi nào. Mình sẽ hướng dẫn cho cậu.”
“Dừnggggggg!!!! Chờ đã, cậu vừa mới bắn laze ra hả ? Từ cái đôi mắt kinh khủng kia ? Nó quá khác so với nguyên gốc rồi, đây là vũ khí chiến lược chứ con người nhân tạo cái mòe gì!?”
“Bởi vì sức mạnh của bọn mình bị kiềm chế, năng lượng dư thừa từ quá trình đốt bên trong sẽ được sử dụng thay thế như vũ khí. Nếu nó được dùng với mức năng lượng tối đa, chắc chắn sẽ cần một lượng thời gian nhất định khi sử dụng nó một lần nữa, nhưng với một vài thiết lập tiêu chuẩn thì cậu có thể bắn liên tục luôn ❤”
“Ai cần mấy cái giải thích chết bầm ấy chứ! Tình cảnh quái quỷ gì khi có một nữ sinh trung học với cái cơ thể đầy chức năng cao cấp ấy hả ? Cậu muốn trở thành con người nhưng mà cậu hoàn toàn trái ngược với điều ấy!”
“Cậu thật khó chịu đấy~~ cậu có muốn bị biến thành tro không hả ?”
Mei lại nhìn chằm chằm Hisui một lần nữa.
Bởi vì cái thứ sức mạnh kinh khủng trong đôi mắt hủy diệt kia, nó khiến cậu chỉ còn cách ngậm miệng lại.
Cậu mà cố chống lại thì cái chết sẽ là điểm đến cuối cùng của cậu.
Tuy vậy, nếu cậu không kháng cự lại thì vẫn cứ tồi tệ mà thôi.
“B-bình tĩnh, tôi có điều muốn nói… hạ vũ khí xuống và giữ khoảng cách đi nào. Sẽ rất tốt nếu mối quan hệ giữa chúng ta không trở nên tồi tệ… !”
“Sao cậu lại hành động như một gã người yêu ủ rũ vậy? Đừng có di chuyển… !”
Mei dùng ngón tay nhỏ nhắn của mình cởi cà vạt và cúc áo của Hisui. Cô nhẹ nhàng vuốt ve lồng ngực trắng trẻo của cậu.
Hisui muốn thoát ra nhưng hiện tại điều đó là không thể.
Cử chỉ vuốt ve ấy là những cái chạm nhẹ nhàng, nó làm tâm trí như dịu đi, những ngón tay của Mei nhẹ nhàng lướt qua lại trên làn da mịn màng như một giai điệu.
“Sao.. thế… này…? Không thể tập trung.. chút sức mạnh nào…”
“A…biểu hiện của cậu dễ thương quá. Có vẻ như mình đã mình đã chọn đúng. Đầu tiên để mình nói cho cậu biết, tiêu chuẩn của mình cao lắm đấy. Đó là một tình yêu sét đánh, cậu nên cảm thấy vinh dự đi.”
“Ai...muốn... cái thứ tình yêu sét đánh chết bằm đó chứ?”
Hisui phản đối với giọng yếu ớt, cậu thở hổn hển.
Cơ thể cậu đã mềm oặt đi và có một cảm giác kì quặc dâng lên trong người cậu..
“Cái quái gì, thứ này… Cậu đã làm gì tôi vậy hả!?”
“Mình đã nói rồi mà… mình là phiên bản mới nhất. Với yêu cầu phải tạo ra một đứa trẻ một cách thành công nhất với đối tượng nào đó, mình được trang bị mười ngàn chức năng khác nhau để làm thỏa mãn họ. Một búp bê tình dục hoàn hảo. ”
“Búp bê tình dục?? Không phải nó đã đi quá xa khỏi khái niệm "người nhân tạo" sao!”
“Theo nghĩa nào đó nào đó thì đúng. Mà, Cậu không muốn nằm xuống ư? Được thôi, chuẩn bị đi nào.”
Mei liếm liếm môi và gỡ dây buộc tóc ra.
Tóc cô xõa xuống khuôn mặt của Hisui và tỏa ra mùi thơm quyến rũ.
Hình như mùi hương cơ thể lẫn hơi thở của cô ấy đều là một phần của chức năng thỏa mãn nào đó mà Mei đã nói. Cậu cảm thấy bất lực, thậm chí tinh thần của cậu đã không còn muốn phản kháng lại.
“D-dừng lại.. ”
“Có vẻ cậu vẫn chưa đánh mất lí trí... Nhưng có vẻ cơ thể cậu thì đã tới giới hạn rồi.. !”
Mei đưa lưỡi lướt qua tai của Hisui và ngón tay thì đùa nghịch với ngực của cậu.
Tay còn lại của cô thì vuốt ve khắp nơi trên người cậu, và cuối cùng thì nó bắt đầu mò tới đũng quần. Sau đó, đôi môi cô tiến sát vào Hisui.
Không ổn rồi!
Điều này thực sự không ổn chút nào.
“Hãy tạo cầu nối giữa hai giống loài nào ❤.”
“……”
Hisui thậm chí còn không thể nói ra một câu nào.
Đôi môi gần kề và cả những ngón tay phía dưới nữa, chúng đang tước đi chút sức lực cuối cùng của cậu..
....Tạm biệt, những thứ quý giá hay cái gì gì cũng được của tôi.
“Mau buông tay ra! Ngươi đang làm cái gì vậy ?”
Đột nhiên, một giọng nói giận dữ vang lên. Mei đột ngột đứng dậy và rời khỏi người Hisui.
“Ai vậy!?”
Mei nhìn vào nơi tiếng nói phát ra và thấy Rushella đang đứng khoanh tay đứng đó.
“Đây là một nơi để học tập, đúng không ? Ở nơi này, còn làm những chuyện đó… ! Ai cho phép ngươi động tới người hầu của ta hả !? ”
Rushella chỉ vào Mei và hỏi. Từ biểu hiện trên khuôn mặt, như thể cô sẽ tiến tới và túm lấy Mei bất cứ lúc nào.
Mei chỉ đơn giản hất mái tóc của mình và điềm tĩnh trả lời.
“Buông tay ra ? Có vấn đề gì với chuyện này hả?” [1]
“Dừng cái trò chơi chữ thấy ghê ấy lại đi, được chứ…”
Hisui đứng dậy và không quên vặn lại một câu.
Cậu loạng choạng tách khỏi Mei và dựa lưng vào một bức tường để tránh bị đẩy xuống sàn một lần nữa.
“Ôi trời, ngươi lạnh quá. Mà rõ ràng bây giờ ngươi rất hạnh phúc vì có ta ở đây.”
“Tôi thực sự cảm thấy chán ghét bản thân rồi đây…”
Hisui trả lời cay đắng, lần đầu tiên cậu cảm kích với sự tồn tại của Rushella.
Nhưng vị cứu tinh này không nhận thấy điều đó và quay sang Hisui với vẻ tức giận.
“Ngươi là người hầu của ta, ngươi biết đó, vậy sao ngươi lại dâng mình cho cái đồ giả tạo này hả? Cho ta thấy chút nghị lực đi.”
Tên quái nào là người hầu của cô chứ? Trước khi Hisui kịp vặn lại, Mei đã phản ứng với những lời nói của Rushella.
“Ê, cô có ý gì khi nói giả tạo hả?”
Mei khoanh tay lại và nhìn trừng trừng về phía Rushella.
Rushella đã cố tình chọn những từ nhạy cảm của người nhân tạo.
“Giả là giả. Chả có vấn đề gì về việc làm cách nào ngươi che giấu bản thân để giống như một con người,nhưng đừng có nghĩ rằng ngươi có thể qua mắt một ma cà rồng như ta! Để có thể ngăn chặn mấy kẻ hút máu thấp kém khác, ta có thể phân biệt được đâu là con người trong số những kẻ khác.”
“Nói cách khác, cả hai đều biết danh tính thật của nhau rồi. Cô nên nói với tôi thì hơn.”
Bỏ qua lời phàn nàn của Hisui, ma cà rồng và người nhân tạo đã sẵn sàng cho một trận chiến.
“Toàn mấy từ phách lối… mà lại đi ra từ miệng một con ma cà rồng quá non nớt.”
“Cái gì cơ!?”
Tới lượt Mei phản pháo lại thẳng thừng.
Ma cà rồng và Frankenstein, hai con quái vật kinh khủng đang đối mặt với nhau.
“Cô nói tôi là một thứ giả tạo, nhưng không phải ma cà rồng chỉ là loài muỗi mang trên mình bộ da người thôi sao? Mà không, cô thậm chí còn không bằng con muỗi. Muỗi có thể bị đập bẹp và sau khi đốt chỉ ngứa một chút thôi. Nhưng các người thì tước đi nhân tính của con người. Thật không thể tha thứ được.”
“Đồ khốn..!!”
Sự thù địch này. Không, đây là những tiếng gầm gừ của sự giết chóc.
Đôi mắt Rushella lóe lên ánh sáng đỏ rực khát máu. Và trên hai bàn tay nhỏ nhắn của cô, những chiếc móng tay sắc nhọn như vuốt diều hâu bắt đầu dài ra.
Với ánh hoàng hôn đang tắt dần, tất cả tế bào trong cơ thể Rushella tràn đầy năng lượng.
Nếu cô thực sự điên lên, hậu quả thật khó tưởng tượng.
Để ngôi trường không bị phá huy ngay từ buổi đầu tiên, Hisui không biết làm gì ngoài cố gắng can ngăn.
“Này, dừng lại! Cái viễn cảnh Godzilla vs Gamera[2] này bắt đầu trở nên quá kinh khủng rồi!!!”
“Mình không quan tâm. Mình chả bận tâm tới con ma cà rồng này đâu. Mình chỉ không muốn máu của mình bị hút đi. Cho tới khi mình hoàn toàn trở thành một con người, nó sẽ hoàn toàn phí công nếu mình bị hút máu.”
“Làm như có ai muốn máu của ngươi vậy! Là một Thuần Huyết cao quý, ta sẽ không bao giờ hút máu của kẻ giả tạo như ngươi!”
“… Thuần Huyết? Không đời nào, cô nghiêm túc đấy à?”
Mei cười to tới nỗi vai cũng rung lên.
Khuôn mặt của Rushella trở nên nguy hiểm. Hisui không biết làm gì thì hơn.
“Thuần Huyết là những thực thể tối cao của dòng dõi của ma cà rồng, đứng trên tất cả, đúng chứ? Vậy tại sao một kẻ quan trọng như vậy lại là học sinh ở ngôi trường này hả?”
“Một kẻ còn không được sinh ra đúng nghĩa có quyền nói về ta như vậy sao?”
“Không phải tất cả bọn chúng đều là hóa thạch rồi sao? Cô còn muốn chèo kéo cái gì nữa hả?”
“Im miệng, ta là thật !”
“Vậy hãy chứng minh đi xem nào. Dùng mấy thứ mà bọn tôi đều biết ấy, thế nào?”
Mei nhìn về phía Hisui, cô tiến tới và ôm lấy cánh tay cậu.
Cô không thể đẩy cậu xuống một lần nữa, nhưng dù vậy Hisui vẫn còn cảnh giác.
“Ừm, sao tôi lại ở phe cậu?”
“Ôi trời, sao cậu lạnh lùng vậy… Chúng ta đã tiến tới giai đoạn hai rồi còn gì.”
“Chết tiệt, tôi thậm chí không thể phủ nhận được…”
“Ê này, tránh xa khỏi hắn ra! Hắn là người hầu của ta.”
“Sao hả, cô không phải bạn gái cậu ấy, đúng chứ? Mà thôi, mau mau chứng minh mình là Thuần Huyết đi.”
Mei cười cợt và ấn chặt cánh tay của Hisui vào bộ ngực mình.
Rushella không đáp mà chỉ nắm tay thật chặt lại, cô hướng sự tức giận của mình về phía Hisui.
“Sao ngươi lại bám lấy cô ta hả !?”
“Thực ra thì cô ta bám lấy tôi.”
“Ngươi là của ta,ngươi có biết không hả ? Không phải sáng nay ta đã hút máu ngươi sao ?”
“Đừng có nói về vụ sáng nay như thể đó là một nụ hôn tạm biệt mỗi sáng chứ…”
Hisui càu nhàu, Mei thì nhìn chằm chằm cậu với dôi mắt mở lớn.
“Ế..này cậu, cậu bị hút máu !? Nhưng mình không thấy vết thương nào cả… ”
Mei đã hy vọng có con với một con người thuần chủng. Cô đã rất ngạc nhiên.
Hisui, người đang đã bị cắn bởi Rushella không hề có dấu hiệu nào về việc trở thành một ma cà rồng.
Và đương nhiên là không có dấu ấn nguyền rủa trên cổ cậu.
“Có phải cậu bị cắn ở chỗ nào đó bị che mất không? Nhưng mà hầu hết ma cà rồng chọn ở…”
“Ở cổ. Những vị trí khác mùi vị chả ra gì cả. Hơn nữa nó cỏ thể ảnh hưởng tới quá trình ma cà rồng hóa, nó sẽ khiến nạn nhân trở thành một xác sống, vậy nên họ không bao giờ hút máu ở chỗ nào khác ngoài cổ. ”
“Vậy thì, có phải cậu đã hoàn toàn trở thành một ma cà rồng?”
“Nhìn tôi giống vậy lắm à ?”
Giọng của Hisui tỏ ra cậu chưa bao giờ mất đi bản chất con người của mình.
Nghe vậy, Mei nhớ lại buổi giới thiệu của cậu vào ngày hôm trước.
Trong quá trình Ma cà đồng hóa, nạn nhân sẽ có xu hướng tránh xa ánh nắng mặt trời, nhưng Hisui không tỏ ra như vậy.
Nhưng rõ ràng Rushella đã nói cô ấy hút máu của cậu.
“…Chuyện gì đang xảy ra vậy ? ”
“Hắn là một tên quái dị. Cho dù có bị ta hút máu đi chăng nữa, hắn cũng không trở thành người hầu của ta!”
Rushella nói một cách đầy giận dữ. Ôm lấy cánh tay Hisui, Mei ngạc nhiên nhìn chằm chằm vào "tên quái dị" mà nàng ma cà rồng kia nhắc tới.
“Không thể nào… Thật vậy sao? Rõ ràng...nhát cắn của ma cà rồng là « lời nguyền » và « độc địa » cao nhất… Một nhát cắn thôi, dù là thánh thần hay tội nhân đều có kết thúc như nhau thôi, có phải không ? ”
“Tôi chỉ là một con người bình thường thôi.”
Hisui lãnh đạm tuyên bố. Mei thì trở nên hứng thú hơn nữa, đôi mắt cô trở nên nồng nhiệt.
Rushella đã trở nên thiếu kiên nhẫn với hai kẻ đang ôm ấp nhau kia. Cô xua tay và gầm gừ.
“Đến lúc cô rời khỏi đây rồi. Cậu ta là người hầu của tôi. ”
“Gì vậy ? Cậu ấy đâu có trở thành một ma cà rồng, đúng không ? ”
“Im- miệng ~ ! Đó chỉ là chuyện sớm muộn thôi !! Mau đi đi !! ”
Mei phớt lờ sự phản đối của Rushella và ngọt ngào thì thầm vào tai Hisui.
“Này, cho mình xem chỗ bị cắn đi. Mình muốn xem nó như thế nào. ”
“Đây. Nếu là tôi thì sẽ chả có vết thương nào ở đó đâu. Nhìn xem.”
Hisui không đề phòng gì và nghiêng cổ ra cho Mei nhìn.
Cô lập tức kề đôi môi của mình tới gần vùng cổ trắng nhợt nhạt.
Một nụ hôn.
Không giống nụ hôn của ma cà rồng, đôi môi quyến rũ và ngọt ngào của cô nhẹ nhàng chạm vào cổ của Hisui.
“Này..Cậu làm gì vậy !? ”
“Khử trùng, chỉ là khử trùng thôi. Không phải cảm giác ấy tốt hơn với một con ma cà rồng sao ?”
“À, đúng.. .”
Nhớ lại cảm giác mềm mại trên cổ, Hisui nhìn lên trần nhà.
Điều này khiến Rushella tức giận đến đỉnh điểm.
"Ngươi làm cái gì thế ? Thử nghĩ khi ngươi làm điều đó với cái loại phụ nữ ấy...! Đồ không biết xấu hổ!”
“Này, thậm chí còn không có một vết gì nhé… Cô không cần phải giận dữ như vậy chứ...?”
“Ngươi là cái loại đàn ông dễ dàng đưa cổ của mình cho kẻ khác sao? Dạng người nào người cũng chấp nhận hết được à?”
“Cô có ngừng ngay cái kiểu diễn tả đó đi được không ? Cô làm như tôi là cái loại trai bao đầu đường xó chợ vậy! Mà tại sao tôi phải ưu tiên cô chứ ? Rõ ràng trình độ hút máu của cô rất vụng về.”
Đấy mặt với mấy lời lẽ vô lý của Rushella, Hisui nói toàn bộ những gì mình không vừa lòng ra.
Mei thì càng đổ thêm dầu vào lửa.
“Ế, gì cơ, con nhỏ này hút máu vụng về lắm hả ? Không phải vết cắn của ma cà rồng đi kèm với khoái cảm sao? Nhất là khi hút máu của người khác giới. ”
“Bởi vì có thể chất khác biệt, tôi nghĩ mấy cái khoái cảm ấy không còn nữa… Dù sao thì nó cũng rất đau. ”
Nghe những lời cằn nhằn của Hisui-----
Rushella bất ngờ để lộ cảm xúc của mình
Những giọt nước mắt của cô lấp lánh nơi khóe mắt, nhưng Hisui và Mei không để ý thấy.
“Wow ! Tôi không biết là trên đời có thể tồn tại một con ma cà rồng vô dụng đến thế đấy. Nói đi, cả việc hút máu cũng vụng về như vậy thì sự tồn tại này có giá trị gì hả ? Cứ mặc kệ cô nàng Thuần huyết không bằng rác rưởi đó đi. Mà thực sự thì nó chỉ ngang cấp con muỗi thôi. ”
“Này, cậu hơi nặng lời đó…”
Hisui mới nói được nửa chừng thì nhận được một cú đám nhẹ.
“… Đồ tồi.”
Vào thời điểm cậu cảm thấy thì Rushella đã đứng trước mặt.
Mắt cô đã đẫm nước mắt.
“Ah…”
Hisui không có cơ hội để mở lời. Những nắm đấm nhỏ nhắn bắt đầu đánh vào người cậu như mưa.
“Đồ tồi đồ tồi đồ tồi đồ tồi!!!”
“Này này, dừng lại đi!”
Rushella lúc này cứ như một đứa bé đang giận dỗi.
Thể chất của ma cà rồng mạnh hơn con người rất nhiều, nếu cô thực sự muốn đánh thì Hisui đã nát bét ra rồi.
“ĐỒ TỒI!!!”
Rushella giơ cái ô của mình lên và đánh một cú cuối cùng vào Hisui. Sau đó cô chạy ra khỏi căn phòng mà không ngoái đầu lại.
“Ê này…!”
Hisui đã bước một bước nhưng có một giọng nói ngăn cản cậu.
“Đừng đi. Cậu định làm gì khi bắt kịp cô ấy ? ”
Mei lạnh lùng hỏi.
Không phải những lời nhẫn tâm, giọng nói cô đầy vẻ hợp lý.
“Cậu không trở thành người hầu của cô ấy đúng chứ ? Cậu chỉ bị cô ta hút máu mà thôi. Một nạn nhân. Cậu dường như cũng không bị Ma nhãn khống chế. Mà cậu cũng chẳng yêu cô ta nữa. ”
“…Tất nhiên là không. ”
“Vậy thì hãy để cô ta một mình đi. Điều ấy sẽ tốt cho cả hai người.”
Giọng nói của Mei có vẻ như rất từng trải.
Đó có lẽ không phải thứ kinh nghiệm cá nhân, nhưng đó là những bài học được rút ra từ chủng tộc của cô.
“Mối quan hệ giữa người và những kẻ không phải người chả khi nào yên ả đâu. Trường hợp tộc mình cũng vậy. Với sự tồn tại của những kẻ không được gọi là người, cậu nên biết về những gì mà sinh vật của Frankenstein đã phải trải qua, đúng chứ ? ”
“…”
Ngay cả giữa chủng loài của mình, con người cũng không thể tránh khỏi sự thiên vị và phân biệt đối xử.
Vậy hãy cứ để yên khi có những chủng tộc khác ngoài con người đi.
“Cô ta chỉ coi cậu như đồ ăn thôi. Đừng có để những giọt nước mắt đó đánh lừa. ”
“Tôi biết…”
“Vậy….hãy đến… với mình nhé ~”
Mei cầm lấy bàn tay Hisui và bắt đầu mân mê.
Nhưng cậu chỉ thẳng thừng hất tay cô ra rồi đi về phía cánh cửa.
Phía sau cậu vẫn là giọng nói ương bướng của Mei.
“Mình vẫn chưa bỏ cuộc đâu. Mình bây giờ còn thấy thích thú hơn nữa ấy. Mình sẽ biến cậu thành của mình và chỉ của mình mà thôi. ”
Phớt lờ những tuyên bố của cô gái, Hisui vô cảm rời đi.
Khi Hisui bước ra khỏi cổng trường thì mặt trời đã lặn.
Có lẽ cậu nên phấn chấn hơn vì sắp tới thứ Bảy, một ngày được nghỉ, nhưng bước chân cậu nặng nề không thể tả.
Cô nàng ma cà rồng kia đã vứt lại cơn thịnh nộ và bỏ đi – đó là tất cả những gì đã xảy ra.
“Thật mệt mỏi…”
Hisui thều thào và bước đi tập tễnh.
Trong tay cậu là chiếc cặp và cái ô mà Rushella đã bỏ lại.
Mặc dù trời đã xế chiều và cô ấy sẽ không cần đến cái ô đó, nhưng nó vẫn là thứ mà cô luôn mang bên mình.
Để nó lại thì cũng chẳng sao cả, nhưng vì lý do nào đó mà Hisui đã cầm nó theo khi rời khỏi lớp.
Nếu ý nghĩ trả lại đồ không xảy đến với cậu thì cậu cũng chả muốn làm điều này. Dù vậy cậu lại không biết cô nàng kia đang ở đâu.
Nếu thử đoán mò, thì chắc hẳn cô ta sẽ quay lại ngôi nhà của cậu.
Từ khi họ chia tay trong vụ cãi lộn vớ vẩn kia, Hisui cũng không còn chắc chắn cô ấy sẽ quay lại nhà mình. Nhưng chiếc quan tài của cô vẫn ở đó, vậy nên cô ấy sẽ phải quay lại ít nhất là để lấy đồ.
Dù cho ma cà rồng không nhất thiết phải ngủ trong quan tài, nhưng nó sẽ che chắn họ khỏi ánh sáng mặt trời và những thế lực thần bí khác, vậy nên quan tài là một vật cần thiết cho họ. Đặc biệt là những ma cà rồng cấp cao, họ rất tỉ mỉ và yêu thích những chiếc quan tài được làm riêng của họ. Và cái của Rushella cũng vậy.
Nếu cô ấy muốn rời khỏi chỗ Hisui, cô ấy chắc hẳn sẽ phải mang chiếc quan tài theo.
Đến khi cậu về tới nhà, rất có thể cô đã bỏ rồi đi.
Nghĩ về việc họ đường ai nấy đi sau khi mới gặp nhau vài ngày làm Hisui bất giác nhăn nhó.
Sao cậu lại phải tốn trí lực vì một cô gái phiền phức và ngạo mạn chứ?
Đột nhiên tới cắn cậu, rồi tự gọi mình là chủ nhân của cậu.
Đuổi theo cậu tới tận nhà, đuổi theo cậu tới tận trường… toàn những thứ rắc rối khó có thể so sánh nổi.
Kể cả cái cách hút máu vụng về đó… Và thứ khó chịu nhất là, cô ấy đã khiến cậu một lần nữa phải nhận thấy cái thể chất kỳ lạ của mình.
Ngay từ đầu cậu đã muốn quên béng nó đi rồi.
Tất cả những gì cậu mong ước chỉ là vứt nó vào một xó xỉnh nào đó trong đàu rồi sống cuộc sống bình thường như bao người khác.
“Thật là khó chịu mà…”
Hisui lẩm bẩm một mình. Cậu chợt cảm thấy những giọt nước lạnh rơi xuống khuôn mặt.
“Trời mưa ư…?”
Hisui ngước nhìn bầu trời. Những giọt mưa che kín bầu trời và rơi càng lúc càng nặng hạt.
Bản tin thời tiết không nhắc tới là sẽ có mưa. Những người đi đường đều tỏ ra khó chịu với rắc rối bất ngờ này. Họ dùng túi xách và những tờ tạp chí để che tạm lên đầu trong khi nhanh chóng chạy vào trú dưới các mái hiên.
Nhìn theo họ, Hisui đột nhiên nhớ tới chiếc ô trong tay mình.
Rushella đã từng nhắc tới việc cô dùng nó không chỉ để che nắng mà còn để che mưa nữa - rằng đó đúng là một vật hộ thân tiện lợi.
Điều đó nhắc cậu nhớ rằng nước tự nhiên như nước mưa có thể gây hại cho ma cà rồng.
Và giờ thì cô nàng đó không cầm theo ô.
Cơn mưa đột ngột cũng chả thèm quan tâm tới ai mà cứ rào rào đổ xuống và cũng không có dấu hiệu dừng lại.
Nếu nghiêm túc thì những lo lắng này có lẽ là một phần cảm xúc đang bị cường điệu hóa của cậu.
Cho dù Rushella có đang ở ngoài trời thì cậu cũng chẳng biết đâu được.
Cho dù Rushella có gặp rắc rối vì để quên cái ô thì cậu cũng chẳng biết làm gì được.
Kể cả nếu cậu có lặn lội đi tìm và đưa chiếc ô cho cô ấy, chắc chắn Rushella cũng sẽ nói với cậu vài câu khó nghe.
Nhưng kể cả như vậy....
Hisui chạy đi không chút do dự.
Con đường trơn ướt khiến cậu suýt trượt ngã mấy lần. Tầm nhìn của cậu bị che khuất bởi làn nước trút xuống như thác đổ. Sức chịu đựng của cậu đã dần cạn kiệt cùng với cơ thể ướt sũng.
Nhưng Hisui không chịu dừng lại. Cậu chạy thẳng một mạch về nhà.
Cuối cùng, khi đứng trước cánh cổng, Hisui mới gục xuống thở hổn hển đầy khổ sở. Dùng chút hơi sức cuối cùng, cậu mở cửa và bước vào khu vườn phía trước lối vào.
“Cô…!”
Cậu đã rất lo lắng cho Rushella, nhưng tình trạng của cô còn tệ hơn cả những gì Hisui có thể tưởng tượng.
Nước tự nhiên thực sự là điểm yếu của ma cà rồng.
Cơ thể nhỏ nhắn ướt đẫm của cô gái đang đổ gục trên nền đất.
“Này! Cô không sao chứ!?”
HIsui ôm cô trong tay và lắc lắc nhưng cô không có phản ứng nào.
Mắt Rushella nhắm chặt, bờ môi tím tái, cơ thể thì run rẩy. Toàn thân cô lạnh toát và cứng đờ. Ngay cả làn da trắng trẻo cũng đã chuyển màu xanh tím tái.
Mặc dù nước mưa không đủ để gây tử vong cho một ma cà rồng như nước thánh, bị dầm mưa liên tục trong thời gian dài cũng có thể gây tổn thương nghiêm trọng đến họ.
Cơ thể Rushella hiện tại như một cái xác vậy. Tim cô chỉ còn đập rất yếu ớt.
“Cô làm cái gì ở đây vậy hả!?”
Cậu có thể dễ dàng đoán được chuyện gì đã xảy ra.
Cơn mưa đến bất chợt trong khi Rushella không cầm theo ô. Bị dòng nước xối xả tấn công, cô đã suy yếu và ngất xỉu tại chỗ.
Tuy nhiên, bình thường thì một ma cà rồng không thể sơ suất như vậy được. Lẽ ra họ phải cực kì cảnh giác với những điểm yếu của mình.
Hisui chặc lưỡi, bế Rushella lên và bước vào nhà.
Mặc dù cũng đã ướt đẫm, nhưng cậu có thể cảm thấy cơ thể của Rushella còn lạnh hơn cậu nhiều, như thể cô ấy sắp chạm tới điểm đóng băng của nước vậy.
Nó có cảm giác như --- đang ôm một xác chết.
“Đừng... có chết!!”
Những lời này khiến bàn tay Rushella khẽ giật giật, nhưng Hisui không hay biết.
Cậu thậm chí còn không nhận ra mình đã dùng từ ‘chết’ thay vì ‘bị phá hủy’.
* * *
“...?”
Rushella tỉnh dậy và cảm thấy xung quanh mình thật ấm áp.
Dư âm của cái lạnh thấu xương vẫn còn đó, nhưng ít nhất nó đã biến mất phần nào.
“Đây là…?”
“Cô tỉnh rồi à?”
“Ngươi…!”
Ý thức của cô vẫn còn chút mơ hồ, nhưng Rushella gượng ngồi dậy từ trên sofa.
Ngay khi cô ngồi dậy, Hisui, người đang ở bên cạnh cô vội cuống cuồng quay mặt sang hướng khác.
Cô nàng ma cà rồng cảm thấy có gì đó là lạ và nhìn xuống---
“Á..”
Rushella đang hoàn toàn không mặc gì cả.
Có một tấm chăn đang phủ lên người cô, nhưng nó đã tuột xuống khi cô ngồi dậy, và bộ ngực đầy đặn quyến rũ lộ ra ngoài.
“Ng-Ngươi…!”
“Tôi không có nhìn mà!”
Hisui nói trong khi cố gắng quay mặt của mình đi. Cậu cũng đã đoán trước phản ứng của cô sẽ như vậy.
Rushella vung vẩy tay một cách tức giận trước khi nhận ra làm thế chỉ khiến cơ thể mình lộ ra nhiều hơn nữa. Cô đỏ bừng mặt và kéo tấm chăn lên che ngực.
“...Giờ thì ổn rồi, ngươi có thể nhìn sang đây.”
Nghe tiếng gọi của Rushella, Hisui quay mặt lại
Cậu đang mặc bộ đồ ngủ thường ngày của mình, chiếc áo phông và quần đùi. Cậu cũng đã đi tắm để làm ấm cơ thể ướt nhẹp của mình khi trước.
Rushella quan sát xung quanh như để xác nhận lại tình hình.
Đây là phòng khách của Hisui. Máy điều hòa đang phả ra những luồng gió ấm. Dù trước đó nhiệt độ như thể giữa mùa đông, nhưng giờ đây căn phòng ngập tràn trong nhiệt độ dễ chịu.
“Sao…ta lại khỏa thân như này?”
Hisui cố gắng tránh ánh mắt cô trong khi lắp bắp:
“Cái này... Nếu cô mặc quần áo ướt thì sẽ bị nhiễm lạnh, đúng chứ? Nhân tiện thì tôi đã nhắm mắt lại khi cởi đồ cho cô. Sau đó tất cả những gì tôi làm chỉ là lau khô người cô thôi. Tôi dùng một chiếc khăn nên không cảm thấy gì hết đâu.”
“…Thật sao?”
“Tôi không có đồi bại tới mức động chạm linh tinh tới một cô gái bất tỉnh đâu.”
“Chỉ lần này thôi…ta sẽ tin ngươi."
“Cám ơn.”
Cả hai người dường như đang lâm vào cảnh không biết nói gì hơn.
"Ngươi đã giúp ta làm ấm người à?"
“…Ừ. Nhưng không giống trong phim theo kiểu hai người trần truồng ôm nhau đâu. Nếu tôi mà làm điều đó chắc cô sẽ giết tôi mất. Bên cạnh đó, tôi cũng không có ấm lắm, làm vậy chỉ khiến cô lạnh thêm thôi.”
“Ta hiểu rồi..”
Bình thường thì dù cậu có giải thích đến mức nào đi chăng nữa, Rushella vẫn sẽ tấn công cậu… nhưng lúc này cô lại tỏ ra hiền lành một cách bất thường.
Nhìn theo một cách nào đó, trước mắt cậu không còn là cô nàng ma cà rồng hùng mạnh và ương bướng lúc sáng nữa. Chỉ có một cô gái yếu ớt đang bối rối.
“Ah, cô để quên thứ này.”
Hisui đưa chiếc ô cho Rushella.
Cô nhận lấy và cúi đầu nhìn chằm chằm vào nó.
“Đó không phải đồ cần thiết của ma cà rồng sao? Sao cô lại vứt nó lung tung thế?”
“Bởi vì…”
Rushella mím chặt môi.
Thậm chí còn chẳng có lí do gì cụ thể cả. Cô chỉ đơn giản là giận dỗi mọt cách trẻ con và vứt chiếc ô ở lại mà quên khuấy mất.
“Sao cô lại đứng dưới mưa vậy? Dù không có ô thì vẫn có thể kiếm chỗ trú mà.”
“Tại... trời mưa bất ngờ quá. Mà ta không còn chỗ nào để đi cả...."
Rushella nói bằng giọng lí nhí.
“Lúc đó ngươi đã tức giận, nên... ta... cảm thấy sợ.”
“.....”
Có vẻ như cô đã ngất trong cơn mưa do đã phải chịu đựng quá nhiều vấn đề.
Vụ cãi nhau với Hisui đã khiến cô không còn tâm trí đâu mà tìm chỗ trú, và đến lúc nhận ra thì đã quá muộn.
“...Sao cũng được, mặc kệ nó đi. Đây.”
Hisui cúi đầu tới và chỉ vào cổ.
Thấy Rushella ngẩn người không hiểu gì cả. cậu đành phải nói thê,..
“Nhanh lên, mau uống đi.”
“...Tại sao? Chả phải ngươi cảm thấy không thoải mái khi ta hút máu sao?”
“Dù sao thì khi cô gái kia ấn tôi xuống đất trong phòng học....cô đã cứu tôi mà.”
Cậu nghĩ rằng ít nhất mình cũng nên nói lời cám ơn.
“ Dù là ma cà rồng thì cũng sẽ hồi phục rất chậm khi bị thương với những điểm yếu kia mà. Sau khi ướt sũng bởi nước mưa, uống máu là cách tốt nhất để cô hồi phục nhanh hơn. Cô nên biết rõ điều ấy hơn tôi chứ?”
Những lời này của Hisui không có chút khó chịu hay phàn nàn nào nhưng Rushella vẫn bất động. Cô cụp mắt xuống và ngoảnh đi chỗ khác.
"Giờ cô không thỏa mãn với máu của tôi nữa sao?"
"....Dù sao thì… ta hút máu rất vụng về có đúng không?"
Rushella úp mặt vào tấm chăn và nói lí nhí một cách thất vọng.
Hisui không nhìn thấy được vẻ mặt, nhưng từ giọng nói thì hình như cô sắp khóc đến nơi.
"Nói đi. Có phải như vậy không?"
Hisui thở dài. Có vẻ như cậu đã vô tình đụng chạm tới cô.
"...Giờ đâu phải lúc để ý tới những điều đó chứ?"
"....."
Rushella im lặng và nhìn chằm chằm vào Hisui bằng đôi mắt ươn ướt.
Dường như câu nói khi trước đã động đến nỗi đau nào đó của cô.
"Vụng về à, cũng đúng thôi. Cô chưa từng hút máu ai khác trước đây đúng không? Ít nhất là từ lúc bị mất trí nhớ. Nếu vậy thì không sao, cô sẽ sớm cải thiện được việc đó thôi. Này, vui lên chút đi? Không phải cô là Thuần Huyết-sama đầy cao quý à?"
"Ngươi thực sự tin điều đó sao? Rằng ta là một Thuần Huyết?"
"....."
"Kể cả nếu như ta tự gọi mình là Thuần Huyết...Ta cũng không thể chứng minh được. Nếu ta có thể liên lạc được với gia đình hay người hầu, họ có thể giúp ta gì đó, nhưng ta chỉ có một mình thôi... Ta không thể chứng minh được cái gì hết."
Rusella tự dằn vặt bản thân mình.
Cô không thuộc về nơi nào trên thế giới này. Một ma cà rồng cô độc.
Cô chỉ mới thức dậy tối qua, và thậm chí còn chưa nhìn thấy ai như mình cả.
Cô độc -- tất cả những gì cô biết về bản thân chỉ là một ma cà rồng, một Thuần Huyết.
Và giờ thì ngay cả điều đó cô cũng không chứng minh được.
"Nhân tiện thì--Thuần Huyết chính xác là thứ gì vậy? Ta chỉ biết cái tên đó, nhưng chưa bao giờ thực sự hiểu về khái niệm cũng như sự tồn tại này..."
"Con người như tôi cũng vậy thôi. Ngay cả trong số những ma cà rồng thì những kẻ có thể hiểu về nó chỉ đếm trên đầu ngón tay- không, có lẽ không phải vậy. Kẻ duy nhất có thể hiểu tường tận về Thuần Huyết chỉ có thể là một Thuần Huyết."
Chính xác thì khi nói về bí mật lớn nhất trong truyền thuyết ma cà rồng, không thứ gì có thể sánh bằng Thuần Huyết.
Đối với ma cà rồng, kẻ có thể hút máu họ chính là "chủ nhân". Và những chủ nhân đó lại được tạo ra bởi những "chủ nhân" khác.
Cứ theo cái kiểu quan hệ dây mơ rễ má đó, kẻ đứng trên cùng của vòng lặp vô tận ấy chính là "Thuần Huyết". Dòng máu thuần chủng. Những ma cà rồng nguyên thủy đầu tiên.')
INSERT [dbo].[Novel_Content] ([ID], [ProductID], [Prodect_Name], [Chapter_Number], [Chapter_Name], [Content]) VALUES (5, 1, N'Silver Cross and Draculea Tập 1', 4, N'Chương 4 - Vật tế', N'Hút máu và giao phối là hai phương pháp để sinh ra những thế hệ ma cà rồng mới.
Ma cà rồng không tồn tại độc lập mà thay vào đó là những thế hệ dòng tộc quy mô lớn qua hai phương pháp sinh sản kia.
Có vô số những đầy tớ và con cháu, vậy nên sự tồn tại của một ‘chủ nhân’ đầu tiên hay ‘tổ tiên’ là điều hoàn toàn hiển nhiên.
Vậy thì, những Thuần Huyết đó tới từ đâu?
Chưa có một lời giải thích rõ ràng nào cho câu hỏi ấy.
"Ta rốt cuộc là ai? Tại sao lại...."
Những giọt lệ rơi ra từ khóe mắt của Rushella.
Hisui im lặng một lát rồi hờ hững nói.
"Máu."
"......?"
Nghe những lời khó hiểu của đó, Rushella ngẩng lên một cách bối rối.
"Thứ giúp người ta nhận ra đâu là một Thuần Huyết----đó chính là máu. Ma cà rồng tìm kiếm máu như một thứ thực phẩm thượng hạng, nhưng con người không có cảm giác như vậy khi uống máu. Nó chỉ là thứ chất lỏng bình thường thôi. Nhưng máu của một Thuần Huyết lại rất khác biệt. Cho dù là con người hay ma cà rồng cũng sẽ bị dòng máu của Thuần Huyết hấp dẫn. Thứ máu đó có hương thơm của hoa hồng, hấp dẫn con người nếm thử nó...Thứ mùi vị đó được cho rằng có thể làm cho trái tim và linh hồn tan chảy. Nói vậy thôi, tôi không có hứng thú uống nó đâu."
"Ý ngươi là..."
"Hơn nữa, khi một giọt máu của Thần Huyết chảy xuống, giọt máu đó sẽ tạo ra một vết đen với hình dạng nhất định. Hoàn toàn vượt ra ngoài quy luật của tự nhiên. Tôi cũng chỉ biết vậy thôi."
"...."
Hisui nói một cách lạnh nhạt trong khi Rushella lắng nghe với vẻ bình tĩnh.
Sau khi ngẫm nghĩ một lúc, cô quả quyết cầm lấy thanh đoản kiếm của mình đang đặt trên bàn.
Hisui ngay lập tức bắt lấy cổ tay cô và hạ giọng đầy nguy hiểm.
"Đừng có làm gì liều lĩnh..."
"Nhưng mà..."
"Dù cô có là một Thuần Huyết hay không cũng chẳng có vấn đề gì với tôi cả. Cô là cô, thế thôi. Nếu như cô cứ muốn bị ám ảnh bởi nó, tôi cũng chả quan tâm, nhưng hãy để nó đấy cho tới khi cơ thể cô hồi phục."
"...."
"Được rồi, mau uống máu đi. Nếu cô cứ chần chừ như vậy tôi sẽ đổi ý đấy."
Bị thôi thúc, Rushella tiến lại phía Hisui.
Nguyên gốc thì "hôn" chỉ là cái tên tượng trưng của hành động này thôi, nhưng tư thế của họ lúc bấy giờ thực sự giống như đang hôn nhau thật.
Trong cố gắng kiểm soát cơ thể vẫn còn đang run rẩy, Rushella chậm chạp quàng tay qua cổ của Hisui. Bộ ngực đầy đặn của cô ấn vào ngực của Hisui, nhịp đập trái tim của họ như hòa vào thành một.
Không giống như cái cách thô bạo và ép buộc như trước, đôi môi của Rushella chạm vào cổ Hisui một cách nhẹ nhàng nhất có thể.
Cô cắn nhẹ.
Không hề sử dụng răng cắm xuống như bản năng, cô cắn nhẹ như thể là một con thú cưng đang chơi đùa với chủ nhân của mình. Với dòng máu nhỏ chảy ra từ vết thương, Rushella không hút mạnh mà cô liếm nó một cách nhẹ nhàng. Cả với những giọt máu tươi rỉ ra nơi khóe miệng, cô cũng liếm sạch bằng đầu lưỡi của mình. Để ngăn máu không làm bẩn xung quanh cổ, cô dùng lưỡi mình nhẹ nhàng chăm sóc làn da của cậu cẩn thận.
"Hmm...."
Máu buồn khiến Hisui hơi cựa quậy.
Lúc này cậu không cảm thấy đau đớn gì cả.
Mặc dù còn xa mới có thể gọi nó là khoái cảm, nhưng ít nhất đã khá hơn trước rất nhiều. Nếu phải so sánh thì nó giống như là mút vết thương ở đầu ngón tay vậy.
Khoảng thời gian hút máu cũng không quá lâu. Rushella nhanh chóng dừng lại và rời khỏi người của Hisui.
Một chút nước miếng vẫn còn dính lại, tạo thành một vệt bàng bạc giữa khóe môi cô và cổ cậu.
"Thế là đủ sao? Chả phải cô mới uống có một ít?"
"Ừm..."
Rushella gật đầu và ngượng ngùng kéo tấm chăn lên, cô trở lại chiếc sofa.
Thấy cô đã hồi phục, Hisui đứng dậy.
"Nếu như cô đã có thể di chuyển thì đi tắm đi, nó sẽ ấm hơn."
"Ế..."
"Đống đồ uớt của cô chưa khô đâu. Nếu giờ cô thấy không vừa lòng thì hãy mặc tạm quần áo của tôi. Ở trên tầng hai, căn phòng phía bên phải, quần áo ở trong tủ ấy."
Nói xong, Hisui bước về phía căn bếp gần phòng khách.
Rushella sửng sốt nhìn chằm chằm vào bóng lưng cậu. Sau khi quan sát giây lát, cô loạng choạng đứng dậy.
Khoảng một giờ sau, Hisui đặt bữa tối lên một chiếc bàn thấp.
Từ tối hôm trước, cậu không có một bữa ăn đúng nghĩa nào vậy nên Hisui quyết định làm một bữa tiệc thịnh soạn tối nay.
Trên bàn ăn là hai đĩa mý Ý, một bát salad lớn và súp rau củ.
Và cả những chiếc đĩa nhỏ để ăn nữa---một bàn tiệc dành cho hai người.
Ngay trước khi hoàn thành bước chuẩn bị, Hisui nghe thấy ai đó bước tới phòng khách.
Rushella đã tắm xong.
"Ồ, cô tắm xong rồi...Này, sao cô lại mặc thứ đó hả!?"
Cô nàng Rushella xinh đẹp mới bước ra từ phòng tắm -- và trên người cô không có gì ngoài chiếc áo sơ mi trắng của cậu.
Cô không mặc đồ lót và chiếc áo sơ mi thì quá rộng. Ngực cô gần như có thể lộ ra bất cứ lúc nào. Ngay cả hai cái đỉnh nhọn nhọn kia cũng đã hằn lên mặt vải.
Ai cũng có thể tình cờ thấy được cặp đùi thon nhỏ của cô nếu không cẩn thận… Hisui cố gắng hướng ánh mắt ra khỏi cái vùng nguy hiểm ấy.
"Đó không phải là đồng phục của tôi sao? Tôi nhớ là đã treo nó lên móc để mặc vào thứ hai..."
"Ngươi bảo ta kiếm thứ gì đó để mặc còn gì. Có mỗi nó là vừa đủ che phía dưới thôi. Vậy nên ta thấy nó ổn."
Rushella nói với vẻ hài lòng hoàn toàn không có chút nao núng.
“Rồi rồi, cô muốn gì chả được… Giờ thì ngồi xuống đi. Tôi lỡ làm hơi nhiều chút... Mặc dù đúng là rất đói nhưng chắc chắn một mình tôi không thể ngốn hết chỗ này đâu.
Sau đó Hisui chỉ về phía chiếc bàn đầy thức ăn, Rushella đã nhận ra điều đó.
Với vẻ cảnh giác, cô nhìn sang Hisui để xác nhận.
“Ta có thể không...?”
“Không phải tôi mới nói tôi làm quá nhiều sao? Thư giãn đi, tôi không cho tỏi vào đâu. Mà thực sự thì tôi cũng không ăn tỏi trước kia. Lâu rồi cũng không ăn ớt hay hạt tiêu nữa.”
“....Mà, làm sao ngươi mua được những thứ này trong khi cả ngày hôm qua bị vướng vào vụ rắc rối với ta?”
“Tôi mua nó từ đợt giảm giá mấy hôm trước. Sau cùng thì… kẻ phiền phức nào đó cũng không còn ở trong ngôi nhà này.”
“…..?”
Rushella không hiểu chính xác thì cậu đang nói về ai, nhưng cô quyết định ngồi xuống mà không hỏi gì thêm
Nhìn Hisui chắp tay và nói "Itadakimasu", cô lúng túng một lát rồi bắt chước.
“Itada...kimasu….”
Và bữa ăn được bắt đầu.
Rushella dùng dĩa cuộn tròn sợi mì và nhìn chằm chằm vào nó như quan sát sinh vật lạ một lát trước khi thận trọng đưa vào miệng.
“…Ngon quá~”
“Cám ơn.”
Hisui nói với vẻ cảm kích.
Rushella mỉm cười và bắt đầu ăn ngấu nghiến.
Khi thức ăn trên bàn đã gần hết, Rushella lên tiếng như thể cô vừa nhớ ra điều gì đó.
“…Này.”
“Hm?”
“Ngươi có thể kể thêm về bản thân mình với ta được không?"
"Huh?"
Hisui buông bát súp xuống và nghiêng đầu thắc mắc.
“Sau khi quan sát thế giới cả ngày hôm nay…Ta đã hiểu được chút ít. Rất có thể loài của ta đã giảm xuống chỉ còn vài cá thể trong thế giới này. Kể cả họ có sống sót thì họ vẫn lẩn trốn đâu đó trong bóng tối. Vậy nên con người không biết gì về sự tồn tại của bọn ta. Nhưng ngươi lại khác, ngươi biết rất nhiều, đặc biệt là về Thuần Huyết… người bình thường sẽ không biết nhiều như vậy, đúng chứ?"
“…….”
“Ngươi nói đã từng quen một ma cà rồng đúng không? Người đó kể cho ngươi à?"
Rushella nhìn chăm chú vào Hisui.
Hisui lại đưa bát súp lên miệng. Cậu muốn đánh vờ như không nghe thấy và trống lảng sang chuyện khác, nhưng đôi mắt long lanh của cô cứ dán chặt vào cậu như mắt mèo con. Chịu thua ánh nhìn năn nỉ đó, cậu bỏ cái bát ra và thở dài.
“Thay vì nói là người quen.... tôi nghĩ gọi đó là gia đình thì đúng hơn.”
“...Tại sao ngươi lại giấu điều đó?”
“Tôi không có lừa cô. Hiểu theo cách nào đó thì cũng là người quen, phải không? Nếu tôi nói với cô điều ấy, cô sẽ làm ầm lên và hỏi vặn cho xem. Vậy nên tôi đành phải trả lời nước đôi."
"Đồ ranh mãnh.... Nhưng ý ngươi là sao khi nói gia đình?"
"Không phải ruột thịt đâu. Cô có thể gọi đó là mẹ nuôi cũng được, cơ mà tôi ghét phải thừa nhận điều này."
Hisui ngước lên trần nhà như thể đang hồi tưởng lại điều gì đó.
Một điều gì đó rất đau đớn.
“Học sinh như cậu thường sống chung với cha mẹ phải không? Gia đình cậu...."
“Chết rồi. Tôi thậm chí không nhớ nổi khuôn mặt của họ. Tất cả những gì tôi biết là mình được cứu bởi một ma cà rồng, trước khi tôi đủ lớn để hiểu cô talàm vậy vì lí do gì."
“L-Là phụ nữ sao?”
“…Tại sao giới tính là thứ mà cô quan tâm nhất vậy ?”
Hisui ngạc nhiên hỏi.
Rushella có vẻ bị mếch lòng và cô tiếp tục nhấn mạnh vào vấn đề này.
“Bỏ đi!! Đó là một phụ nữ phải không ?”
“Ừ, đúng vậy.”
“Cô ta như thế nào ? Có đẹp hơn ta không ?”
“Biết chết liền. "Đẹp" là một khái niệm rất mơ hồ: với người này thì thế này, với người kia lại thế nọ.... Nhưng theo tôi thì cô ấy có vẻ nhiều tuổi hơn cô----Tính theo vẻ bề ngoài."
“Già hơn hả? Tuyệt, vậy đó là chiến thắng của ta rồi!"
“...Ai mà biết. Bên cạnh đó ma cà rồng có khái niệm về tuổi tác bề ngoài sao? Cơ mà đến giờ tôi vẫn không hiểu vì sao mình được cứu. Có lẽ cô ấy muốn vỗ béo tôi để lấy máu chăng? Dám thế lắm.”
Cuối cùng thì Hisui cũng kết luận đó chỉ là mối quan hệ ma cà rồng và thức ăn.
Rushella vẫn có chút hoài nghi và nhìn chằm chằm Hisui khi cô hỏi tiếp:
“Người phụ nữ đó…. chuyện gì đã xảy ra?”
“Cũng chết nốt rồi.”
Không chút thương cảm.
Cậu trả lời một cách lạnh lùng..
Rushella im bặt, cô cảm thấy hơi có lỗi khi nhắc đến chủ đề này và không biết nói gì hơn. Hisui lại tiếp tục bữa ăn của mình mà không tỏ ra chút bối rối.
Mặc dù cậu không tỏ ra buồn bã hay đau đớn khi nói câu vừa rồi, Rushella vẫn cảm thấy có gì đó trong giọng của cậu
Chết - thuật ngữ này chỉ giành cho những sinh vật sống có sinh mạng.
Chết không phải khái niệm dành cho ma cà rồng.
Số phận của họ không phải chết------mà là bị phá hủy.
Còn về lý do, đó là bởi vì họ vốn đã chết.
Ít nhất thì dựa trên khái niệm ‘sống’ của con người, họ là những kẻ tồn tại ở thế giới khác.
Tuy nhiên, cậu đã dùng từ ‘chết’ để tả về người đã nuôi dạy mình.
Về cơ bản thì, điều đó có nghĩa rằng đối với cậu…cô ta là một con người.
“Cô ta... giống ma cà rồng ở điều gì ? ”
“Một người kỳ lạ. Mặc dù coi Nhật Bản như căn cứ của mình nhưng cô ấy vẫn cứ chạy đi chạy lại khắc nơi trên thế giới. Bởi vì tôi luôn đi cùng cô ấy, tôi chưa bao giờ đi học đúng nghĩa cho tới khi vào sơ trung. Ngôi nhà này cũng là của cô ấy. À, còn một điều…”
“Điều gì cơ?”
“Cô ấy là một Thuần Huyết.”
“CÁI GÌ!!!!?”
Khuôn mặt Rushella cứng lại vì sốc.
Vào cuộc gặp gỡ đầu tiên, cô đã nhận ra Hisui không hề bối rối khi nhìn thấy ma cà rồng. Cái thái độ bình tĩnh đến đáng ngờ đó đã khiến cô phải tự hỏi rằng có khi nào đây không phải con người không. Nhưng có nằm mơ Rushella cũng không nghĩ cậu sống cùng với một ma cà rồng Thuần Huyết.
“Đó là những gì cô ấy đã nói. Tôi không biết gì đặc biệt khác cả. Bởi vì tôi sống với cô ấy, tôi không còn cách nào khác ngoài tìm hiểu kiến thức về ma cà rồng. Nhưng cá nhân tôi, tôi chỉ là một học sinh bình thường mà thôi.”
“Ngươi vẫn đang rất khỏe dù cho đã bị ta hút máu. Đối với ta điều này không bình thường chút nào đâu."
“Ừ, nhưng chỉ khi tôi bị hút máu mà thôi. Khi không bị chảy máu, tôi không có gì khác với người thường cả. Thể trạng của tôi chỉ hoạt động khi bị ma cà rồng cắn. Tôi không muốn nói thêm về nó. Mà khi quan sát xã hội này, cô có nhớ ra chút gì không ?”
“Không có…”
Rushella lắc đầu buồn bã. Những ký ức cốt lõi về bản thân vẫn còn rất mập mờ.
“Tuy thế ta đã có vài kết quả rồi. Đầu tiên ta đã quyết định tìm hiểu thêm về thế giới con người. Điều này chắc chắn sẽ có quan hệ mật thiết về nguồn gốc của ta.”
“Rồi…ổn thôi.”
“Vậy thì…ta cũng sẽ đi học !”
Rushella lấy lại vẻ kiêu hãnh thường lệ và dõng dạc tuyên bố.
“Ế!??? ”
Nhìn dáng vẻ kiêu ngạo Rushella, mặt Hisui khẽ giật giật. Cậu bắt đầu cảm thấy thà cô cứ nằm lăn quay trên ghế sofa còn tốt hơn.
“Ê này, cái quái gì vậy hả, thứ Hai này cô cũng sẽ tới trường sao?”
“Tất nhiên rồi. Hơn nữa, là một người hầu, ngươi sẽ phải phục vụ bên cạnh ta !”
“Tôi từ chối!! Cô nghĩ mình quan trọng lắm sao? ”
“Ừ, ta làThuần Huyết vĩ đại của tộc ma cà rồng! Nếu ta không quan trọng thì ai có thể quan trọng được đây!!”
Rushella tự hào ưỡn bộ ngực khổng lồ của mình ra.
(Cô ta vẫn chẳng thay đổi gì cả!!! Tại sao mình lại đi cứu con nhỏ chết tiệt này chứ?!!)
Hisui thầm hối hận. Qua khóe mắt, cậu thấy Rushella đứng dậy và quay ra chỗ phòng khác. Cô nhanh chóng quay lại với một bao tải đủ lớn để nhét cả một người vào trong đó.
“Cái gì thế ?”
“Ta đã để nó trong quan tài.”
Rushella trả lời một cách không liên quan và dốc thứ trong bao ra sàn nhà.
Ánh vàng rực rỡ lóe lên.
Cùng với những tiếng kim loại leng keng, chúng rơi rải rác trên sàn.
“Cái này là...!!”
Hisui nhặt một thứ lên để nhìn cho rõ. Không thể tin được, đó là những đồng tiền vàng có kích thước gần bằng đồng 500 yên. Phía trên nó được khắc hình một khuôn mặt trông khá lạ, và có trời mới biết thứ này thuộc thời đại nào.
Khỏi nói cũng biết, những đồng xu này không phải được mạ vàng - chúng là từ vàng nguyên chất.
Hơn năm trăm đồng tiền vàng lăn lóc trên sàn, ngay lập tức chúng khiến ngôi nhà tràn ngập bởi ánh vàng kim lộng lẫy.
Khung cảnh trong căn phòng giống như khi ta mở chiếc hòm đầy châu báu trong những câu truyện cổ tích.
“Cái gì thế này?!! Cô định tích góp của cải lại để đi ngủ đông à?”
“Dù ta cũng không rõ giá trị của chúng, nhưng chắc phải rất lớn đúng không?”
“Tất nhiên, đống này đều là vàng thật đó má trẻ!!! Nó mà còn không có giá trị gì thì chắc tôi nên chuyển qua ăn mày quá!"
“ Ta hiểu rồi. Vậy thì, uhm, xem nào... Nói sao nhỉ...?”
Rushella lén liếc nhìn phản ứng của Hisui.
“... Cái này được tính là ‘thuê’ có đúng không ?”
“Hử ?”
Hisui ngớ người..
Rushella ngượng ngịu nghịch nghịch ngón tay và ngước nhìn cậu.
“Ừm…nếu ta tới trường thì cần phải có địa chỉ. Sẽ rất phiền phức nếu tìm một ngôi nhà khác....bên cạnh đó, ngươi là người hầu của ta, vậy nên ở bên ta là một nghĩa vụ không cần đòi hỏi!! Đúng vậy, ngươi nên quỳ xuống và cầu xin ta đi!! Nhanh lên và cầu xin để được ở bên cạnh ta đi.”
“Cô đang nói cái xàm ba láp gì vậy!?”
Mặt Hisui nhăn nhó.
Cậu thực sự không nên cứu Rushella. Ngay lúc này, cậu đang phải cố chống lại thôi thúc muốn xách con nhỏ phiền nhiễu này quẳng ra khỏi cửa - tất nhiên là nếu đủ sức.
Nhưng Rushella cầm một nắm tiền vàng và đưa cho Hisui.
“Nhiêu đây vẫn chưa đủ sao..? ”
“Cô…”
“Ta …không ở lại đây được sao… ?”
Giống như khi cô nói về việc mất trí nhớ, giọng Rushella đầy tuyệt vọng và mơ hồ.
Như thể cô sắp sửa tan biến vào hư vô bất cứ lúc nào.
Hisui gãi gãi đầu và cầm một đồng xu trên tay Rushella lên.
“Tôi sẽ coi nó như một bùa cầu may vậy. ”
Nói xong, Hisui đứng dậy dọn dẹp bàn ăn và những đồ dùng khác vào bếp.
“Đợi đã, cậu----”
“Dù sao thì đây cũng không phải là nhà của tôi. Nó thuộc về dòng tộc của cô.”
“……”
“Bình thường mà... kể cả nếu có ma cà rồng nào đó khác sống ở đây thì tôi cũng không phản đối đâu.”
"C-Cảm ơn!"
Rushella bật cười hạnh phúc. Sự băn khoăn trên gương mặt cô lập tức bay biến không dấu vết.
Dù đang quay lưng lại với cô, Hisui vẫn cảm nhận được sự thay đổi ấy. Cậu thở dài và nói:
“Phòng phía trong của tầng hai, cứ tự nhiên. Nó có rèm cửa dày, thế nên cô không cần lo lắng về vụ ánh sáng mặt trời. Hơn nữa nó cũng là phòng ngủ rộng nhất. ”
“Rõ!”
Rushella háo hức chạy ngay lên tầng như thể muốn xem căn phòng đó ngay lập tức.
Hisui cười một mình và bắt đầu rửa bát.
* * *
Trời đã về đêm.
Bước xuống những bậc thang cũ kĩ, Hisui đi vào tầng hầm của căn nhà.
Căn hầm được bố trí rất rộng rãi, về cơ bản nó có diện tích của toàn bộ mặt sàn và còn được mở rộng ra.
Hầm được xây bằng đá với một thư viện, hầm rượu, nhà kho chứa thực phẩm và dùng những chân nến kiểu cổ để chiếu sáng, nó tạo ra một bầu không khí như trong thời trung cổ - hay nói cách khác, một phong cách của ma cà rồng nguyên bản.
Rushella đã ngủ trong căn phòng trên tầng. Ban đầu cậu định cho cô ở trong tầng hầm vì cô không thích chỗ sáng.
Nhưng Hisui đã không làm điều đó.
Bởi vì trong tầng hầm này có một thứ không cho phép ma cà rồng có thể tồn tại.
Đâm nghiêng xuống mặt đất, thứ này cùng với ánh sáng mặt trời là điểm chí mạng của ma cà rồng - một cây thánh giá.
Nó có kích thước đủ lớn để đóng đinh một người lên trên.
Ánh sáng lấp lánh trên bề mặt của nó giống như bạc nguyên chất vậy. Một dáng vẻ cổ xưa và không có lấy một vết xước.
Các cạnh của cây thánh giá được mài sắc như dao. Bốn cạnh của nó trông giống như những chiếc "móc" trên đầu của một cây lao móc.
Ở trung tâm của cây thánh giá được trang trí bằng đá quý màu đỏ thẫm. Quấn quanh nó là những dòng biểu tượng giáo điều.
Mặc dù có phong cách khác với thánh giá thường thấy trong nhà thờ nhưng vẻ thiêng liêng toát ra từ nó không hề bị ảnh hưởng.
Những cây thánh giá bình thường được dùng như những ký hiệu hay đồ trang trí, chúng không tạo ra mối nguy hiểm nào cho ma cà rồng.
Nhưng cây thánh giá này là một thánh vật thực sự.
Một cây thánh giá để tiêu diệt cái ác và thanh tẩy thế giới.
Và đặc biệt, nó là----ngôi mộ của chủ nhân căn nhà này.
Hisui nhìn vào cây thánh giá, đôi mắt cậu có chút lưỡng lự cùng nỗi buồn khó tả. Cậu lẩm bẩm một cách bực tức.
“Này…chả lẽ ngôi nhà sẽ bị nguyền rủa bởi bất cứ thứ gì sao? Một cô nàng ma cà rồng kỳ lạ đã chuyển tới đó, cô có biết không ? Đây cũng là trò đùa của cô nữa à? Mà cô ta còn đang ngủ trong phòng của cô nữa đấy. ”
Cây thánh giá bạc không có phản ứng gì hết.
Ngay từ đầu nó đã chẳng thể nói năng gì được.
“...Cô đã chết, nhưng lại có người khác đến. Rõ ràng tôi không muốn có quan hệ gì với cô nữa, nhưng cuối cùng tôi lại buộc phải xuống dưới này.”
Cây thánh giá vẫn im lặng.
Không có một âm thanh nào cả.
Hisui cúi xuống và nhìn chằm chằm vào viên đá màu đỏ sẫm trên cây thánh giá bạc.
“Làm ơn, nói gì đó với tôi đi..... Mirakula.”
Cây thánh giá không trả lời.
Cái bia mộ chỉ đơn giản gạt bỏ sự sống bằng cách im lặng.
Người chết không thể sống lại.
Không cần biết có nhắc lại bao nhiêu lần, những câu hỏi của cậu chỉ đơn giản vang vọng trong không gian trống rỗng này.
Dù cho Hisui có biết đó là điều vô ích, dù là từ trước hay bây giờ, nhưng cuối cùng chẳng có gì thay đổi cả.
* * *
“Guh....…”
Buổi sáng hôm sau, dù không có những tiếng chuông báo thức phiền phức nhưng Hisui vẫn không thể tận hưởng việc thức dậy một cách tự nhiên và thoải mái được.
Sau ngày đi học đầu tiên đầy giông bão, ngay lập tức thứ Bảy đã tới.
Trong lúc đang lên kế hoạch chuẩn bị cho sự khởi đầu của cuộc sống học sinh trong tuần tới bằng những ngày nghỉ ngơi hợp lý thì cậu đột nhiên cảm thấy đau nhói trên cổ.
Cậu mở mắt ra… nàng ma cà rồng đang nhóp nhép hút máu cậu với tư thế giống như ngày hôm qua.
“Cô đang làm gì thế … Rushella-san !?”
“Còn phải hỏi sao? Uhm, nếm những giọt máu đầu tiên vào buổi sáng sau khi đã tắm xong đúng là một hương vị hoàn hảo.”
Rushella tự hào tuyên bố. Cơ thể của cô vẫn còn ấm và ẩm ướt.
Và trên làn da mịn màng của cô không có gì hết ngoài một chiếc khăn tắm quấn quanh người.
Không khác một li so với hôm trước. Hoàn toàn không.
“Lại tắm?? Không phải tối qua cô đã tắm rồi sao?? Cô là Shizuka[1] chắc??”
“Im đi, ta đi tắm trước thì máu sẽ ngon hơn.”
“Sao cô phải đi tắm để khiến máu của người khác ngon hơn vậy hả!? Không phải phương thức với mục tiêu đảo lộn hết rồi sao!? Mà còn nữa, nó đau lắm, cô ra chỗ khác đi!”
“Ngươi đang nói gì với chủ nhân của mình vậy hả ? Ta trả tiền rồi nhé!”
“ Nhật Bản không có hệ thống bán máu! Bên cạnh đó, cô đã sai lầm khi nghĩ có thể mua máu của tôi với một xu như vậy rồi, máu tôi không rẻ vậy đâu!!”
“Ồn ào quá đi, mà sao chả được, ai thèm quan tâm chứ!?”
Rushella ấn mạnh Hisui đang vùng vẫy xuống giường
Rồi, như một lẽ đương nhiên, cậu quờ tay phải chiếc khăn tắm. Nó tuột xuống và để lộ cảnh sắc thần tiên phía dưosi.
“Kyaaa!! Đ-đừng có nhìn! Tên biến thái---!!”
“Này nhá, đừng có mà tỏ ra vô tội như thế!”
Cái cảnh này đã trở nên quá quen thuộc với cả hai, giống như một phần nhịp sống vậy.
Ma cà rồng và con người. Chủ nhân và đầy tớ.
Đó cách mà bức màn đầy hoa hồng trong vở kịch về cuộc sống của Hisui và Rushella đã mở ra.
“Hi-kun, thế có nghĩa là ngày nào anh cũng chơi mấy trò hư hỏng với cô nàng Thuần Huyết bị mất trí nhớ đó đúng không?”
“Thế quái nào mà cô lại kết luận thành ra như thế được hả? Tôi chỉ để cho cô ấy hút máu thôi. Và điều đó cũng chả có gì kì diệu như cô tưởng tượng đâu.”
“Thế thì chúng ta làm "chuyện đó" đi? Về đứa con của chúng ta ấy, anh đã sẵn sàng cho nó chưa?”
“Làm ơn bỏ cái ý tưởng đó ra khỏi đầu ít nhất là năm phút được không? Xin cô đấy, chẳng lẽ cô không có lấy nổi một câu bình thường à??”
Sau khi hết tiết, Hisui đang nằm bẹp trên bàn học.
Tính từ hôm cuối tuần cũng đã vài ngày trôi qua. Rushella bắt đầu chính thức đi học. Hisui vẫn tiếp tục bị cả lớp thù địch ra mặt và chỉ bắt chuyện đuợc với mỗi Mei.
Hôm nay cũng vậy, Hisui cố gắng dò hỏi ý kiến cô về gốc gác của Rushella nhưng xem ra Frankenstein cũng không biết gì nhiều về ma cà rồng.
“…Cô ấy chui từ chỗ nào ra không biết?”
Cả dịp cuối tuần vừa rồi, Hisui đã cố gắng tìm hiểu nguồn gốc nguồn gốc của Rushella nhưng vẫn chưa có gì sáng tỏ.
Cậu đã đi đến khu rừng mà Rushella thức giấc. Có lẽ vì nơi này không có người ở nên khả năng bị ai đó bắt gặp không cao. Hisui cũng tìm được nơi đặt chiếc quan tài và những dấu vết còn sót lại nhưng cũng không kết luận được gì về thời gian chiếc quan tài được đặt ở đó.
Hisui còn đem đồng vàng mà Rushella đưa đi kiểm tra ở một cửa tiệm đồ cổ nhưng ngoài một điều chắc chắn đó là một đồng vàng thật, cũng không kết luận được gì về thời gian, địa điểm, quốc gia mà đồng vàng ấy được đúc ra. Theo như chủ tiệm đồ cổ, đồng vàng này được đúc khá đơn giản nhưng có lẽ chưa bao giờ được lưu thông trong lịch sử.
“Và ngày cuối tuần trôi qua như vậy đấy. Chết tiệt, tôi đã vứt ngày nghỉ quý giá của mình vào sọt rác rồi.”
“Nhưng anh yêu, chẳng phải anh cũng rất vui vẻ đi dạo với cô ta sao. Khi mà cô nàng thử quần áo, anh lại còn khen nó hợp với cô ta nữa chứ. Tệ hơn nữa là anh cũng dắt cô ta vào cả cửa hàng đồ lót”
“Không phải như thế! Chỉ là cô ấy buộc tôi phải sắm cho một vài bộ quần áo và đồ dùng hàng ngày thôi. Dù đã mua cho cô ấy rồi nhưng ngày nào cô ấy cũng lôi áo sơ mi của tôi ra mặc….. Mà khoan! Cái đó bỏ sang một bên, làm thế quái nào mà cô lại biết được những chuyện này???"
“Em chỉ đi mua đồ rồi tình cờ bắt gặp thôi. Rồi em tiện đường nên rình theo. Tehehehe.....”
“Tiện đường cái búa ấy!!! Đừng có nói đến việc theo dõi đời tư người khác một cách tỉnh bơ như thế!!!"
“Đừng coi thường em. Từ tổ tiên cho đến nhiều đời truyền lại, rình mò là truyền thống của người nhân tạo rồi. Từ lúc sinh ra, để báo thù kẻ đã tạo ra mình, cụ tổ đã coi nó như vũ khí tối thượng của mình. Cứ nghĩ nếu áp dụng vào tình cảm giữa hai đứa mình, chắc anh cũng đoán được kết quả rồi chứ?”
Hisui chả muốn nghĩ tới viễn cảnh đó chút nào.
Theo như cuốn tiểu thuyết về Frankenstein, mặc dù đã trốn đến tận Bắc Cực, nhà khoa học vẫn bị bám theo bởi con quái vật của mình.
“…Tôi thấy thế này là quá nhiều để gọi là một "nữ sinh trung học bình thường" rồi."”.
“Hể.... Ý anh là em còn thiếu sót chỗ nào phải không?”
Mei áp sát mặt mình vào Hisui.
Hai nút áo trên đã bị mở ra nên đập vào mắt cậu không gì khác ngoài bộ ngực căng tròn và mép áo ngực màu hồng nhạt của Mei.
Nguy hiểm nhất là vẻ đẹp lộng lẫy của cô nàng thậm chí có thể làm đối thủ với Rushella.
Chỉ một chút nữa thôi, nếu Mei cứ làm tới như vậy, Hisui có lẽ không còn dám khẳng định mình sẽ không thể theo nguyện vọng “sinh con” cho cô nàng.
Cậu vội quay khuôn mặt đỏ lên vì ngượng của mình đi chỗ khác. Cùng lúc đó, một vị cứu tinh không mời mà đến xuất hiện.
“Nhanh về nhà thôi, Hisui ……. Khoan đã, tại sao cô lại ngồi đây??!”
Thoáng thấy Mei, cô nàng ma cà rồng Rushella nhăn mặt và tiến lại.
Cô đang mặc bộ đồng phục vừa mới may cuối tuần trước. Không mang dù trong tay, Rushella chẳng khác gì một nữ sinh trung học bình thường.
“Tôi ở đâu hình như không liên quan tới cô. Khi nào tôi xong việc với Hi-kun, tôi sẽ đi”.
“Hi-kun là cái khỉ gì thế”
“Hisui. Vì anh ấy là Hisui nên tôi sẽ gọi là Hi-kun? Một ngày nào đó, tôi sẽ gọi anh ấy là Hii-hii?”
“KHÔNG BAO GIỜ!!!”
Mặc cho Hisui ra sức chống cự cái biệt danh nực cười vừa mới được đặt, nhưng dường như Mei không có ý định rút nó lại. Trường hợp tệ nhất à cậu sẽ bị cái tên đó ám đến cuối đời.
Mei nở một nụ cười đắc thắng và bước tới sát sạt Rushella.
“Hehe, dù cô có ăn mặc thế nào cũng vậy thôi. Một ma cà rồng nên ngoan ngoãn tu sữa trong quan tài và chờ đêm xuống đi.”.
“Con búp bê nhà ngươi cũng vậy. Tốt nhất là ngươi nên bớt lời và yên phận làm vật trang trí đi” .
Hai người nhìn thẳng vào nhau, và một trận chiến sinh tử có thể nổ ra bất cứ lúc nào.
Nhưng trái với dự đoán, cả hai chỉ “hừm” một tiếng rồi bước qua nhau.
Mei đi thẳng tới lối ra. Cô quay đầu lại và cảnh báo:
“Anh nên cẩn thận đi Hi-kun. Dù cho thể chất của anh vẫn còn là một bí ẩn với mọi người, nhưng nếu anh cứ luẩn quẩn bên cô nàng ma cà rồng đó, kết cục của anh cũng sẽ như chúng thôi.”
“Chắc thế.”
Cậu học sinh vốn được nuôi dưỡng bởi Ma cà rồng thẫn thờ đáp lại ,trông theo dáng Mei khuất dần sau cánh cửa.
Rushella đùng đùng bước tới trước mặt, chặn tầm nhìn của cậu.
“Sao thế?”
“Cậu .. thích loại con gái đó à?”
Từ hồi tuần trước, cô đã bắt đầu xưng "tôi-cậu" thay vì gọi xách mé "ta-ngươi" như trước, mặc dù Hisui cũng không biết cậu có cảm thấy khá hơn không. Bản tính kiêu ngạo của cô vẫn chẳng giảm xuống chút nào.
“Ai mà yêu nổi một người đè mình ra giữa sàn nhà…. Cô ấy chỉ muốn cơ thể tôi thôi. Và tôi thì chắc chắn chẳng phải một gã cuồng chịch, thế nên câu trả lời là không.”
“Thế thì tốt….. Về nhà thôi”
Rushella gật đầu, mặt không dấu được vẻ sung sướng. Cô vòng ra phía sau và đẩy đẩy lưng Hisui.
Một lát sau, hai người đã ra khỏi cổng trường.
“Nhân tiện, cậu có tham gia vào "câu nhạc bộ"[1] nào chưa?"
Rushella hỏi điều đó vì cô vừa tham dự buổi giới thiệu câu lạc bộ. Buổi giới thiệu này là do anh chị khóa trên tổ chức để thu hút học sinh mới.
Hisui vốn chẳng quan tâm đến những chuyện đó. Thế nên cậu chán chường trả lời:
“Không. Nếu có thể, tôi tham gia câu lạc bộ về nhà.
“Cái gì thế? Tôi chưa hề nghe ai nhắc tới nó?”
“Cô sẽ biết ngay thôi”.
Rushella đã dần quen với lối suy nghĩ hiện đại nên càng ngày càng khó lừa cô ấy.
Mặc dù điểm số có hơi ì ạch nhưng bắt kịp mọi người có lẽ chỉ là việc thời gian.
“Giáo viên bảo vài ngày tới sẽ có một buổi thực tế để tham quan các “câu nhạc bộ”. Cậu có định đi không?”.
“Tôi chả quan tâm. Eh, mà nói vậy nghĩa là cô muốn đi xem hả?”
“Tôi chỉ muốn xem qua thôi…. Mấy tên tham gia chúng có vẻ phởn. Tôi hơi tò mò một chút... Chắc thế.”
Mặc dù cố làm ra vẻ thờ ơ nhưng xem ra cô nàng khá tò mò và hứng thú với hoạt động ngoại khóa kiểu này.
Cho dù thế nào đi nữa, giờ Rushella không phải lo về nơi ăn chốn ở, vậy nên cô tỏ ra thích thú với mọi thứ có thể khám phá. Có điều với một ma cà rồng mà nói, tham gia vào câu lạc bộ nào đó thì hơi...
“Nhưng mà cô là…..”
“Biết rồi. Không tham gia hoạt động vận động ngoài trời chứ gì. À, cả hoạt động thể thao nữa. Tôi không ngốc đến vậy đâu.”
Con người và ma cà rồng khác xa nhau về mặt thể chất nên sẽ là một sự bất công to tổ chảng nếu Rushella tham gia vào câu lạc bộ thể thao nào đó. Chưa kể đến việc cô không thể tự do chạy dưới ánh mặt trời trừ khi muốn biến thành thịt cháy.
“Uhm… một câu lạc bộ truyền thống thì sao. Muốn đi xem không?”
“OK~”
Rushella không dấu được vẻ sung sướng. Cô ôm chặt lấy tay Hisui.
“N-Này, cô làm gì thế?”
“Huh? Hộ tống chủ nhân chả phải việc của cậu sao?”
“Uhm, nhưng mà giờ đã tan học rồi, nếu cô đang định đi đâu thì để mai được không?”
“Muu~ Thế cũng được.”
Mặc dù nói vậy nhưng Rushella không hề buông tay ra.
“...Này, Rushella-san”
“Sao?”
“Nói thế nào nhỉ….Cô làm thế này có hơi....”
Cả người cô ấy đang cọ xát vào Hisui. Chỉ bộ ngực thôi. Ngực, ngực, ngực hay cái gì đó mềm mềm.
“Gì thế? Chẳng phải khi nam nữ đi chung họ phải đi kiểu này sao. Nhìn những người xung quanh đi?”
Những cặp đôi xung quanh lọt vào tầm mắt Rushella. Nơi này cũng khá xa trường và gần ga tàu điện nên nhiều cặp tình tứ cũng không lạ.
Hisui thực lòng muốn khai thật cho Rushella nhưng lại sợ cô nàng nổi cơn nên thôi. Dù sao thì cô chủ kiêu căng ngạo mạn này cũng rất dễ xấu hổ trước đám đông.
Ở nhà Rushella chỉ toàn mặc độc cái áo sơ mi và quấn khắn tắm. Và nếu chỉ lỡ mồm phun ra cái ý nghĩ đó thôi, cô nàng chắc chắn sẽ đỏ bừng mặt và sẵn sàng nện Hisui để giải tỏa.
Tốt nhất là ngậm mồm lại, và tay trong tay thế này. Chả sao cả.
“Ah, tôi phải đi mua đồ. Sữa hết rồi thì phải.”
“Uhm, mua cả thịt nữa. À, nhớ mua thêm rượu vang đỏ nhé.”
“Không, rượu càng không.”
“Cậu có bị sao không hả? Tôi biết cậu nấu ăn cũng không tệ nhưng mà nó quá đạm bạc. Tôi muốn ăn cái gì tươi sống một chút!”
Tóm lại thì với một ma cà rồng như cô nàng, thịt rõ ràng phải là món chính, thậm chí còn phải không được quá chín. Mà cũng có vẻ vì thích máu, Rushella rất khoái những món từ bơ và đồ ngọt.
Ngoài ra, rượu vang đỏ là một trong những món khoái khẩu của cô. Hisui rõ ràng không thể đáp ứng điều đó và dùng nước cam ép để thay thế.
“Hôm nay chúng ta sẽ ăn cá nướng. Tốt nhất là nên có chút củ cải băm nhỏ.”
“Và sau đó đưa cổ để ta hút máu. Sáng nay bụng ta rỗng tuếch rồi.”
“Đó là do cô ngủ muộn. Dù sao thì ơn chúa, chứ nó đau vl ra.”
“Dâng máu cho ta là nghĩa vụ của nhà ngươi. Dù có là ta đi nữa thì cũng không có gì đảm bảo an toàn khi cơn khát máu trào lên. Ai biết khi đó ta có tấn công mọi người không”
“Rồi, rồi… tôi hiểu rổi cô chủ”
Hisui hiểu hơn bất kỳ ai, rằng ma cà rồng là một loài như vậy.
Rushella cũng bỏ tay cậu ra và ngúng nguẩy:
“Ngươi chỉ cần ngoan ngoãn để ta hút máu là đủ rồi.”
“Nhưng mà nói thật, chuyện đó lúc nào cũng làm tôi mệt mỏi. Bao nhiêu lần hút máu rồi cơ mà cô chả khá lên tý nào---”
"!!!"
Hisui đưa tay bịt miệng, nhưng cậu đã lỡ nói ra điều không nên nói. Cậu hối hận nhìn Rushella đang cắn chặt môi.
Mặc dù thật sự là cô ấy rất vụng về, Hisui đã dặn lòng không bao giờ được phép đề cập đến điều đó...
“Về nhà thôi…”
“Uhm...”
“Khi nào ta lấy lại ký ức…”
Rushella bỏ dở câu nói với giọng giận dỗi rồi bất thần bỏ chạy.
“Này, khoan đã…”
Trước khi Hisui kịp nghĩ đến việc đuổi theo, bóng dáng cô đã mất hút sau biển người.
Tuy vậy, Hisui vẫn chạy theo .Cậu rẽ vào một con hẻm vắng.
Ngay khi cậu vừa dừng lại và nhìn quanh để tìm dấu vết của Rushella, một chiếc xe sang trọng màu đen đã đỗ cái "xịch" ở ngay sau lưng Hisui.
Một gã đàn ông cao to bước ra.
“Cậu là Hisui Kujou?”
Hắn mặc một bộ đồ đen từ người đến chân, cứ như một gã mafia bước ra từ trong mấy phim hành động. Trên tay mang theo một cái vali bọc da thuộc. Trừ khuôn mặt ra, cả người hắn cứ như bị nhuộm đen vậy.
Với khuôn mặt khá điển trai, con người tầm ba mươi này toát ra vẻ cứng rắn và nghiêm nghị. Nhưng mái tóc được vuốt phẳng và ép chặt về một bên tạo cảm giác hơi thiếu phong cách.
“Đúng, có chuyện gì vậy?”
“Xin vui lòng đi với chúng tôi.”
“Tại sao?”
Hisui thận trọng hỏi lại, nhưng câu trả lời cậu nhận được là---
“Chúng tôi sẽ giải thích sau.”
Gã đàn ông lạnh lùng tung một cú đấm vào giữa bụng Hisui.
“Hự---!!”
Cậu gập người lại vì đau, và thêm một cú chặt bàn tay vào gáy khiến Hisui gục xuống. Cậu bất tỉnh ngay lập tức. Gã đàn ông khéo léo nhấc bổng cậu lên và quẳng vào trong xe.
Chiếc xe màu đen đó đến rồi đi trong chớp nhoáng, không để lại một dấu vết.
Thế nhưng vẫn có một người mục kích từ đầu đến cuối cảnh tượng đó.
“…Hey, mấy người xong việc chưa vậy?! Lũ bắt cóc!?”
Vài tiếng sau vụ việc, Hisui tức giận hét lên.
Cậu đang kẹt trong một căn phòng kín bưng, tối như nũ hút.
Trong phòng có một cái bàn, một chồng sách và một đống giấy tờ. Có lẽ đây là một văn phòng ở đâu đó.
Trước mắt cậu có lẽ là vị trí của tay quản lý. Thế nhưng cái người đang ngồi chống cằm ở đó lại trông chẳng hợp chút nào với căn phòng này.
“Vụ bắt cóc có vẻ hơi quá đáng phải không, Kujou Hisui-san?”
Giọng nói từ trên bàn nghe cực kì trẻ trung và dễ thương.
Chủ nhân của giọng nói ấy là một cô gái nhỏ nhắn .
Cô bé tầm mười hai mười ba tuổi, đeo một cặp kính nửa gọng. Cái áo sơ mi có diềm xếp duyên dáng tạo cảm giác của một nữ đồng trinh. Khuôn mặt của cô bé quả thật đẹp như búp bê.
“Dùng bạo lực đánh ngất tôi giữa ban ngày ban mặt rồi không nói không rằng quẳng tôi vào đây..... Hẳn là HƠI quá đáng nhỉ?”
“Còn tôi thấy rằng chúng tôi đang hết sức để bảo vệ cậu”
“Ồ thế à, sao tôi không biết nhỉ? Bỏ đi, toàn bộ vụ lằng nhằng này là sao đây? Một trò chơi ngớ ngẩn nào đó à?"
Hisui hiển nhiên là đang rất tức giận.
Trước khi bị quẳng vào căn phòng này, cậu đã trải qua hàng loạt những cuộc kiểm tra vô lý.
Đầu tiên là bị lấy mẫu máu, sau đó đầu cậu lại bì dìm xuống một cái chậu nước làm bằng bạc. Tiếp đến là phải nhai tỏi sống và cuối cùng là bị ấn một cây thánh giá vào giữa trán.
Khi mà lòng kiên nhẫn đang đi đến giới hạn thì người ta mang đến cho cậu một bịch máu.
“Muốn uống gì không?”
Và giờ thì còn bị hỏi như thế nữa.
Rõ ràng, Hisui chả còn tâm trạng nào để uống và cậu lắc đầu một cách ngạc nhiên. Người đứng trước mặt cậu từ từ rót vào một cái cốc thủy tinh như thể muốn nói “cứ tự nhiên”.
“Không. Tôi nói rồi, tôi không khát”.
...Ngay khi vừa từ chối, chàng trai ngay lập tức hối hận vì tiếp sau đó là một chuỗi thử nghiệm vô nghĩa nữa. Sau cùng thì cậu bị tống vào phòng này. Tuy vậy nhưng hai tay cậu vẫn bị trói và Hisui hoàn toàn không cảm thấy thoải mái chút nào.
“Chuyện khỉ gì thế này… Các vị đang tính kiểm tra tôi về cái gì thế hả?”
“Cậu chưa nhận ra hả? Chỉ là một bài kiểm tra nhỏ. Xem cậu là người hay ma cà rồng thôi.”
Cô gái lạnh lùng đáp, mắt vẫn không rời khỏi tập tài liệu trên tay.')
INSERT [dbo].[Novel_Content] ([ID], [ProductID], [Prodect_Name], [Chapter_Number], [Chapter_Name], [Content]) VALUES (6, 1, N'Silver Cross and Draculea Tập 1', 5, N'Chương 5 - Nụ hôn bất ngờ', N'“May mắn thay, cậu đã vượt qua bài kiểm tra. Cậu hoàn toàn là người.”
“Tôi chả hiểu cô đang nói chuyện gì.”
Hisui vẫn không hề hạ giọng. Cô gái nheo mắt một cách không hài lòng.
“Kishida.”
Đứng cạnh cô, người đàn ông gật đầu. Hắn bước về phía Hisui, đưa cho cậu một tấm danh thiếp.
Chính gã này là thủ phạm khiến cậu bị đưa đến đây. Hisui chỉ vừa kịp nhận ra rồi đưa mắt lên tấm danh thiếp.
"...Metropolitan Police Department Supernatural Investigations Section Special Consultant[2]... Kariya Eruru... cái gì thế này?”.
“Thì nó đã rõ ràng rồi đấy. Nói một cách đơn giản, chúng tôi không quản lí người bình thường. Nhưng với kiến thức và mục đích của mình, tôi hoạt động như một chuyên gia. Chuyên môn của tôi là mà cà rồng. Rất vui được gặp cậu.”
Eruru nói với vẻ mặt lạnh như tiền.
Đối lập với cái bề ngoài đáng yêu, hành động của cô ta lại chả đáng yêu tí nào.
“Có vẻ như tôi đã đọc qua cái cục khỉ gió này trong vài tờ báo hay truyền thuyết đô thị nào đó… như là một đội chuyên giải quyết những hiện tượng siêu nhiên.”
“Đó đơn thuần là phần việc của cảnh sát. Công việc chính của chúng tôi là nghiên cứu, điều tra những vụ việc do những thế lực siêu nhiên gây ra và xử lí thủ phạm. Ngay khi nhận bài kiểm tra, lẽ ra cậu phải biết là vì sao mình bị nghi ngờ chứ? Đừng giả bộ nữa, Kujou-san”.
Eruru trông như một con búp bê Pháp. Vừa nói, đôi mắt to tròn của cô ghim chặt vào Hisui.
Dựa vào cái tên cố vấn đặc biệt này, tuổi tác cũng như những gì cô ta nói, Eruru có vẻ không phải là nhân viên chính thức của cảnh sát. Nhưng cái nhìn sắc lạnh đó rõ ràng không phù hợp với một kẻ thẩm vấn nghiệp dư.
“...Tôi cũng từng nghe về một cục điều tra đặc biệt của cảnh sát chuyên xử lí những vụ việc không giải thích được bằng khoa học. Uhm, MPD cũng có những văn phòng ẩn hay những phòng họp ngầm. Cô thuộc vào những tổ chức này phải không? Một bộ phận của MPD?”
“Đúng hơn là một phân nhánh bí mật. Rất nhiều quốc gia trên thế giới không thể công khai sự tồn tại của những thế lực siêu nhiên. Tuy nhiên những thế lực đó vẫn tồn tại. Sự tồn tại của những loài đó thực sự là một cuộc khủng hoảng với nhiều quốc gia. Với ma cà rồng thậm chí còn hơn thế nữa. Sự việc tồi tệ kéo dài sẽ dễ dàng gây ảnh hưởng đến đời sống của nhiều thường dân. Chính vì thế, chúng phải được giám sát ngay khi được phát hiện. Nếu có nạn nhân, họ sẽ ngay lập tức được cách ly và bảo vệ. Ví dụ như cậu chẳng hạn”
“Tôi hiểu rồi… có vẻ như các người đã phát hiện ra Rushella. Tôi không nghĩ là có thể giấu cô ấy mãi nhưng qua thật việc lần này bại lộ nhanh bất thường”
“À, đó là do một cộng tác viên thông báo cho chúng tôi. Do đặc thù công việc, chúng tôi có một hệ thống cộng tác viên ở khắp mọi nơi.”
“…”
Hisui cảm thấy những giọt hôi lạnh chảy trên khuôn mặt.
Cậu cũng lờ mờ đoán được cái tên "cộng tác viên" chết dẫm này là ai, nhưng muốn hỏi lại cho chắc.
“…Cộng tác viên là ai thế?”
“Sudou Mei.”
“Con nhỏ hớt lẻo chết tiệt!"
Hisui cảm giác rã rời khắp cơ thể.
Giờ cậu chẳng biết phải tin tưởng ai nữa.
Eruru vẫn đều đều nói tiếp nhưng như thể chửi xéo cậu.
“Sao cậu phải ngạc nhiên như thế, đồ ngốc? Bảo vệ thường dân khỏi những loài quái vật là phận sự của chúng tôi. Được cung cấp thông tin bởi một loài không phải con người cũng dễ hiểu, đúng không?”
“Uh, hoàn toàn hợp lý. Nhưng cộng tác viên nghĩa là gì thế?”.
“Chính xác như những gì nó diễn tả. Những người đó muốn trở thành con người, vì thế họ muốn sinh con đẻ cái. Ma cà rồng lại khác. Lẽ tự nhiên là chúng tôi ủng hộ suy nghĩ của Mei. Để họ có thể sống cuộc sống của con người, chúng tôi đã cấp chứng minh cũng như giấy khai sinh cho họ. Và để đáp lại, họ sẽ hỗ trợ chúng tôi. Thắc mắc gì nữa không?”
“....Tôi chả muốn nói gì thêm vào lúc này nữa.”
“Sao cậu phải chán nản vậy? Cô ấy chỉ làm những việc cần làm vì con người thôi. Một người nhân tạo còn có phần “con người” hơn cậu. Cậu không cảm thấy xấu hổ hay sao?”
Từ ngữ thật quá tàn nhẫn.
Như bị xát muối vào vết thương, Hisui thẫn thờ thốt ra những gì cậu vừa nhận ra:
“Thế có nghĩa là vì báo cáo của Mei Sudou mà tôi bị nghi ngờ là một nạn nhân và đang luẩn quẩn bên một ma cà rồng?”
“Chính xác. Tuy nhiên để phân biệt một người bình thường và một ma cà rồng hay một người đang trong quá trình biến đổi là khá khó khăn nên một cuộc kiểm tra là cần thiêt”
“Thế à? Tôi thấy điều này chả có gì phức tạp cả.”
“Hiển nhiên là một kẻ với hiểu biết nửa vời như cậu sẽ nghĩ như vậy. Ma cà rồng thích nghi rất tốt với xã hội loài người. Cá nhân tôi nghĩ rằng một người bình thường cũng biết ma cà rồng sợ ánh sáng. Nhưng thời thế nay khác rồi. Với những tác nhân đặc biết kháng lại với ánh sáng mặt trời, việc tung tăng dưới ánh nắng giờ là chuyện trong tầm tay của nhiều ma cà rồng.”
“Nhưng những phương pháp đó không hoàn toàn hoàn hảo. Sau khi sử dụng những tác nhân đó, da họ sẽ sáng bóng lên và xuất hiện nhiều vệt lốm đốm. Dù có là một phương pháp cao cấp thì dù không thể nhìn thấy bằng mắt thường, những dấu vết đó cũng dễ dàng bị phát hiện nếu tiếp xúc trực tiếp. Hơn nữa nó chỉ dùng được tối đa là 1 ngày. Chưa nói đến việc quá phụ thuộc vào những tác nhân đó khá nguy hiểm, riêng việc chuẩn bị chúng thôi đã rất phiền toái rồi. Vượt qua nhược điểm ánh sáng đối với ma cà rồng vẫn còn là một giấc mơ. Nếu họ muốn đi lại dưới ánh nắng, một chiếc ô là phương án khả thi nhất.”
“....Trời đất, cậu am hiểu nhiều hơn tôi tưởng đấy.”
Nét mặt của Eruru thay đổi. Và chỉ khi đó Hisui mới nhận ra là mình đã hơi lắm lời.
Kiến thức về lĩnh vực này của Hisui rất phong phú, nhưng nếu để ai đó biết được thì thật sự không phải chuyện gì đáng mừng. Chính vì vậy cậu luôn tránh để người khác biết được điều này.
“Tôi chỉ tình cờ nghe được chúng thôi. Nhưng mà không phải cuộc kiểm tra này quá phiền phức sao, kiểm tra mẫu máu là quá đủ rồi.”
“Những thủ tục đó sẽ giúp kết quả thu được chính xác hơn. Kiểm tra mẫu máu chỉ cho biết tình trạng của cậu thôi.. Một khi bị cắn bởi một ma cà rồng, toàn bộ dung tích máu của người đó sẽ giảm dần và sự cân bằng ban đầu sẽ bị phá vỡ.”
“Thế sao không so sánh máu của tôi với một ma cà rồng, như thế chưa rõ ràng sao?”
“Im mồm đi, đồ nghiệp dư ngu xuẩn. Máu của ma cà rồng và máu của người đang trong quá trình biến đổi là hoàn toàn tương đồng. Nếu buộc phải phân biệt chúng, chỉ những phương thức bí ẩn mới làm nổi”
Eruru “hứ” một tiếng rõ to như chế giễu Hisui.
Và dĩ nhiên nãy giờ Hisui cũng đang giả ngốc để thử cô nàng.
(Họ hiểu bản chất của ma cà rồng cơ bản vượt qua mọi hiểu biết của khoa học. Rắc rối quá…. Có lẽ đây là chuyên gia thật sự.)
Hisui không giấu được một tiếng thở dài và cố gắng chuyển chủ đề.
“... Uhm, nhưng cuối cùng thì bài kiểm tra đó đã chứng minh cho thân phận con người của tôi đúng không”
“Chính xác. Cậu hoàn toàn vô sự. Tuy nhiên luẩn quẩn bên một ma cà rồng thì không "vô sự" tí nào.”
Eruru nhấn mạnh một cách tức giận. Giọng điệu của cô ta làm Hisui nhận ra mục đích thật sự của vụ bắt cóc này.
Eruru muốn loại bỏ Rushella
“Nếu tôi có bất cứ biểu hiện gì của một ma cà rồng, các người sẽ làm gì cô ấy?”
“Xóa sổ. Chỉ đơn giản như thế thôi.”
Eruru đáp lại với giọng như muốn hét lên Sao ngươi vẫn còn thốt ra những câu hỏi ngu xuẩn như thế chứ?!
Đằng sau khuôn mặt và cặp kính đáng yêu ấy thực sự là một đôi mắt thù hận và lạnh lùng.
“Cướp đi bản tính con người, một hiểm họa ghê tởm. Chúng là ma cà rồng. Chúng đã bị loại bỏ bởi những vị thần nơi thiên đường. Tiêu diệt chúng là vì lợi ích của chúng ta. Nếu cậu bị cắn nhưng chưa hoàn toàn chuyển hóa thành ma cà rồng, đó là phương thức duy nhất để cậu giữ lại phần “con người” cho bản thân mình.”
“.. Và ngược lại nếu tôi đã hoàn toàn trở thành 1 ma cà rồng, giết cô ấy đồng nghĩa tôi cũng chết nhỉ?”
Đặc điểm thứ #5 của ma cà rồng: Một khi tiêu diệt 1 ma cà rồng, nô lệ của chúng cũng sẽ biến mất do một dây chuyền các phản ma thuật gây ra. Nói nôm na nghĩa là một ma cà rồng chết kéo theo những người bị chúng biến thành nô lệ chết theo.
“Thì sao? Thà chết đi vì nhân loại còn hơn để cái thứ tai ương đó sống sót. Tiêu diệt con đầu đàn và hàng loạt con khác chết theo. Nhìn lại thì ít ra ma cà rồng cũng có một vài đặc tính tốt đẹp.”
Eruru khẳng định quan điểm của cô ta một lần nữa.
Nếu Hisui là ma cà rồng thì cô ta sẵn sàng giết cậu ngay lúc này.
Vì vẫn là người, Hisui vẫn không sao.
Giả như cậu đang trong quá trình thành ma cà rồng, Eruru chắc chắn sẽ giúp cậu.
Nhưng ma cà rồng thì chắc chắn không được tha thứ.
Lí lẽ của cô ta quá đơn giản cho nên quan điểm của Eruru không có cách nào phản bác được.
“Nhưng không phải việc của cảnh sát là điều tra và bắt giữ tội phạm sao? Tử hình một người mà không qua bất cứ phiên tòa nào lẽ ra không nằm trong quyền hạn đó chứ?”
“Cậu chỉ nói đúng với trường hợp của con người. Nhưng chúng tôi lại khác. Ngoài ra chúng tôi chỉ là một nhánh nhỏ của sở cảnh sát hỗ trợ việc điều tra. Tùy thời điểm, nếu số lượng nạn nhân gia tăng, chúng tôi sẽ trở thành phân ban của MPD. Nếu thấy cần thiết, chúng tôi hoàn toàn có thể đổi cấp trên và hành động. Tất cả chỉ là hình thức thôi.”
Chống cự bằng lý lẽ là vô ích, chúng tôi hoạt động ngoài vòng pháp luật và được sự phê chuẩn của các quốc gia… đó là những gì cô ta muốn truyền tải.
Cả người Eruru toát ra sát khí đáng sợ, và Hisui chẳng thể làm gì hơn ngoài thở dài.
“...Tôi hiểu rồi. Nhưng vẫn còn vài điều khó hiểu. Tôi có thể đang trong quá trình chuyển thành ma cà rồng, thế nên cô kiểm tra chứng điều đó. Nhưng cô nàng kia lại là 1 ma cà rồng. Sao cô không tiêu diệt cô ấy luôn? Rõ ràng các người đâu thiếu gì vũ khí đặc dụng cho ma cà rồng, đúng không?”
Câu hỏi của Hisui không khỏi khiến cô nheo mắt lại. Thậm chí cả gã mặt sắt Kishida cũng cũng hơi cau mày.
“Tôi cứ tưởng cậu chỉ là một tên ngốc bị mê hoặc bởi con ma cà rồng đó, nhưng hóa ra cậu vẫn giữ được bộ não.”
“Cô thực sự lắm lời đấy. Thế trả lời tôi đi?”
“....Dù có là ma cà rồng đi nữa, nếu không hại người thì hình phạt cho chúng sẽ hoãn lại…. do một vài tên thiếu não tin vào điều đó. Tuy nhiên những tên đó theo tôi hoặc không bị điều khiển thì cũng bị cắn mất rồi”
“Cái đó gọi là những tay bảo thủ và độc quyền đúng không? Xem ra nội bộ các người cũng không đoàn kết lắm. Nói tóm lại, muốn trừ khử một ma cà rồng, cần có đẩy đủ bằng chứng và những thủ tục cần thiết, đúng chứ?”
Hisui chỉ vào chính mình.
Eruru nhăn nhó gật đầu.
Nếu bây giờ Hisui có dấu hiệu chuyển hóa, Rushella sẽ bị khai tử.
Nhưng cậu lại là người 100%.
Đó chắc chắn là một điều gì đó đáng để ăn mừng với cậu, nhưng đồng thời làm Eruru mất đi một lý do hợp pháp để tiêu diệt Rushella, thế nên hiển nhiên là cô ta không lấy gì làm sung sướng.
“Thế thì đến lúc tôi được thả ra rồi chứ. Tôi hoàn toàn là con người “
“Chỉ bây giờ thôi. Một câu hỏi cuối cùng, sao cậu lại luẩn quẩn bên cạnh thứ của nợ đó?”
“Cô ta tự tiện sống ở nhà tôi.”
“… Tôi thật sự không hiểu. Con người và ma cà rồng không có gì hơn ngoài quan hệ bị hút máu và hút máu. Rõ ràng cậu không bị điều khiển bới Ma nhãn. Hay là cậu bị mê hoặc bởi sắc đẹp của con yêu nữ đó?”
"Đếu. Cô ấy chỉ coi tôi như một nô lệ thôi. Thật sự, cô ấy chả biết gì về thế giới loài người và tôi phải đóng vai trò chân chạy vặt cho cô ấy. Tôi về được chưa đấy?”
Hisui giấu nhẹm điều quan trọng nhất và giục Eruru trả tự do cho cậu.
Có vẻ như Mei chưa tiết lộ bí mật về thể chất của Hisui cho phía Eruru. Nếu giờ lại lỡ mồm lỡ miệng, không có gì đảm bảo là cậu không bị lôi ra phẩu thuật hay thí nghiệm. Tốt nhất là nên biết thân biết phận mà lấp liếm nó đi.
“Hiểu rồi. Hóa ra cô ta chỉ để một tên cặn bã không đáng để hút máu làm đồ chơi bên mình. Cậu mới thật đáng thương làm sao.”
Kết thúc cuộc nói chuyện như vậy, Eruru cũng không thèm tỏ vẻ thông cảm.
Rõ là cây muốn lặng mà gió chẳng ngừng, Hisui không thể không xỉa xói cô ta vài câu:
“Vâng, đúng thế, cuộc sống của học sinh cao trung rõ ràng là khó khăn rồi. Một cô bé trung học làm sao hiểu được. À mà bé thế này chắc gì đã lên trung học, chắc là tiểu học thì đúng hơn. Nghĩ lại thì học sinh tiểu học ngày nay phát triển thật đấy nh-------”
Trước khi kịp nói hết câu, Hisui thấy mắt tầm nhìn của mình quay một góc 90 độ.
Trán cậu nện không thương tiếc xuống sàn nhà.
Một đôi bốt tàn nhẫn dẫm mạnh lên đầu cậu. Và cậu được xỉ vả vô cùng nhiệt tình từ “cô bé” cậu vừa chọc ghẹo lúc nãy:
“Nhà ngươi vừa nói cái gì, đồ cặn bã? Thì ra ngươi cũng chỉ có cái vỏ "con người" bên ngoài. Đồ rác rưởi, đồ mất nết khốn khiếp....”
“Ê, này---Guh!”
Eruru tiếp tục dẫm lên đầu Hisui.
Hisui chỉ có thể nhớ đến lúc cậu đang nói giữa chừng và cô ta tiến về phía cậu.
Sau đó không nhớ đuợc gì khác.
Nhận một cú quét chân tuyệt đẹp, cậu nhanh chóng mất thằng bằng… hay cái gì đại loại thế. Đòn thế nhanh gọn và tự nhiên đến đó không còn gì đọng lại trong tiềm thức.
Thứ thực tế nghiệt ngã và rõ ràng nhất là cậu bị đập nằm chỏng gọng trên sàn nhà.
Thật là một tư thế thảm hại.
“Cô vừa làm gì thế…?”
“Ta ở một đẳng cấp khác hẳn ngươi. Chỉ có cái não bộ của loài rác rưởi ngươi mới dám lớn tiếng ta và ngươi ngang tuổi nhau."
“Vô lý. Rõ ràng cô chỉ đáng tầm học sinh trung học---Guwaah!!”
Hisui tức giận buột miệng để nhận thêm một cú đạp nữa. Dính chặt vào mặt sàn, cậu chẳng thể nói gì hơn.
“Làm ơn bé bé cái miệng đần độn đó một chút. Ta đã tốt nghiệp đại học, và ngươi nên biết chưa đủ tuổi thì làm sao được MPD mời về được.”
Eruru vừa nói vừa nhấn mạnh chân xuống Hisui.
Bị hút máu bởi ma cà rồng, suýt mất “zin” bởi một con nhỏ người nhân tạo, giờ lại ăn hành của một bé loli.
Xem ra thần may mắn không mỉm cười với main chính nhà ta.
Mà lại toàn gặp rắc rối bởi phụ nữ, thật đen đủi làm sao.
“Sự xui xẻo này còn kéo dài bao lâu nữa chứ?”
“Chuỗi ngày vật vờ và lười biếng của ngươi chả ích gì với an ninh quốc gia cả”
“Nói thế mà nghe được hả? Là một công dân gương mẫu không hề trốn một xu tiền thuế, ít nhất tôi không muốn phải nằm mãi dưới đế giày vị đại diện pháp luật nào đó đâu.”
Có lẽ hơi động lòng bởi Hisui, Eruru nhấc chân lên.
Cậu ngẩng đầu dậy một cách khó khăn. Có lẽ định mệnh đã trêu ngươi nhưng từ góc nhìn của cậu, một mảnh vải trăng trắng lọt vào mắt Hisui.
“Ah, màu trắng”
“Chết đi.”
Eruru biến sắc và nhanh chóng đạp thẳng vào mặt Hisui.
“Ặc!!---Khỉ thật, đây là vô tình thôi mà!!"
“Câm miệng. Những gã háo sắc thối tha như ngươi là thứ làm ta kinh tởm nhất.”
“Rồi, tôi xin lỗi. Hình như có thứ gì chảy ra từ mũi tôi…. Đệt, máu mũi...”
Mặc dù không đau lắm nhưng cậu vẫn chảy máu mũi.
Một tay cậu che mũi nơi máu bắt đầu nhỏ giọt lên sàn.
“Đó là do ngươi cả thôi..”
Chắc là từ lúc Hisui chảy máu, Eruru có chút hoảng hồn. Cô lẩm bẩm rồi quay phắt đi.
“Chán thật, chỉ vì cô mà tôi như thằng hề cuồng pantsu xịt máu mũi vì thỏa mãn ấy. Này anh kia, có khăn tay không?”
Hisui nhờ Kishida giúp đỡ nhưng hệt như Eruru, tay này ngoảng mặt đi và làm như vô can.
“Guh... Đồ máu lạnh…”
“Nhanh nhanh và ngừng chảy máu đi được không?”
Eruru hét lên và quẳng một cái khăn về phía Hisui. Hisui nhặt nó lên và lau sạch tay và máu còn vương trên mũi.
“Ngừng chảy chưa?”
“Gần rồi.”
Mặc dù khá nhiều máu bị chảy nhưng quá trình cầm máu lại diễn ra rất nhanh. Điều đó là do thể chất đặc biệt của Hisui, điều mà Eruru không biết. Cô ta mở rộng cửa để gió đêm tràn vào phòng.
“Mùi máu mới tanh tưởi làm sao… Ước gì ngươi là 1 con ma cà rồng để ta có thể giết ngươi đi.”
“Đừng có nói với giọng điệu đáng sợ như vậy.”
“Dù sao thì buổi điều tra hôm nay đến đây là kết thúc. Ngươi có thể về nhà.”
“Huh?”
“Ta phải nhắc ngươi điều này: ngươi có thể bị con ma cà rồng đó xực bất cứ lúc nào. Ngươi có thực sự muốn quay về như thế không? Nếu muốn, bọn ta có thể bảo vệ ngươi cho đến khi diệt được con ma cà rồng đó. Dù sao đi nữa, sớm muộn ngươi của nằm gọn dưới cặp răng nanh của ả thôi.”
Eruru nói với vẻ mặt đầy tự tin.
Đôi mắt sắc lẹm ấy nhìn Hisui với cái nhìn có đôi chút thương cảm như với 1 chú cún nằm chung lồng với con mãnh thú đang rỗng bụng.
Tuy nhiên...
“Ờ, thế à. Tạm biệt. Tôi về nhà đây”
Hisui nói với giọng tỉnh bơ.
“....Tại sao?”
“Có ai cần lí do để về nhà không?”
“Ngươi thực sự tin tưởng mình sẽ an toàn… Hay con ả kia hứa sẽ không hút máu ngươi?”
“Kệ tôi. Có vấn đề gì không?”
“Ngớ ngẩn đến mức khó chịu. Ta đến phát bệnh vì cứ phải đôi co với ngươi… Sao cũng được, lần sau gặp lại, có lẽ ngươi cũng không phải con người nữa rồi. Vì thế cho nên đừng oán trách nếu ngươi trở thành mục tiêu của bọn ta.”
Dù cho lạnh lùng như vậy, nghe như vẫn còn chút thương cảm trong giọng nói của Eruru.
“Chắc vậy.”
Kishida đi trước dẫn đường và Hisui rời khỏi căn phòng.
Mãi đến khi ra ngoài và nhìn lại tòa nhà, Hisui mới tin những điều Eruru nói về tổ chức của cô ấy.
Tòa nhà cậu vừa mới bước ra là sở cảnh sát gần đây nhất: Sở cảnh sát Seidou.
“Mấy người đúng là cảnh sát thật…….. có lẽ thế giới này sắp tận thế rồi cũng nên.”
“Tôi sẽ chở cậu về.”
Kishida đề nghị. Hisui miễn cưỡng chui vào ghế trước của chiếc ô tô.
“Cô ta thực sự rất căm ghét ma cà rồng… ông có biết lí do không?”
“Tôi không biết cụ thể lắm… có lẽ người nhà cô ấy là nạn nhân? Tuy nhiên cho dù là thế nào đi chăng nữa, sếp của tôi luôn luôn hết mình vì nhiệm vụ”
Gã đàn ông có vẻ ít nói này bỗng dưng trả lời Hisui.
Chiếc xe tiếp tục lao nhanh giữa bầu trời đêm. Cậu lại hỏi:
“Bộ phận của mấy người có thuê ma cà rồng không?”
“....Sao cậu lại hỏi như thế?”
“Chỉ tò mò thôi. Vì mấy người cũng thuê cái của nợ của Frankenstein mà. Và các người khá am tường về ma cà rồng. Dĩ độc trị độc cũng là chuyện thường thấy. Ngoài ra, có vẻ như cũng có những ma cà rồng không bị tấn công dù cho có bị phát hiện…”
“Tinh tế đấy anh bạn. Tuy nhiên, bọn chúng vẫn quá nguy hiểm mặc dù đôi khi chúng cũng khá giống con người. Một vài người trong chúng thỏa mãn với những bịch máu đông lạnh, một số còn tình nguyện giúp bọn tôi nữa. Nhưng theo lệnh của Kariya sama, chúng đều bị tiêu diệt.”
“Tàn bạo vờ lờ.”
Hisui khẽ nhún vai. Kishida cũng dừng xe lại, xem đồng hồ rồi nói:
“Xin lỗi, tôi còn chút công chuyện. Tôi thả cậu ở đoạn này nhé.”
“Chắc rồi. Nếu cô nàng ma cà rồng kia thấy tôi với mấy người, tôi sẽ có chuyện mất”
“Tôi chỉ muốn nói điều này… xin hãy hỗ trợ chúng tôi. Tôi sẽ để lại địa chỉ liên lạc. Cậu có thể cho Kariya-sama là người quá câu nệ và thận trọng. Tuy nhiên cô ấy thực sự lo cho sự an toàn của cậu.”
“Dù là vậy đi nữa, cô ta chả đáng yêu tí nào.”
Hisui khẽ càu nhàu và trong theo chiếc xe của Kishida mất dạng trong đêm.
Bầu trời bây giờ đã tối đen. Nơi này cũng khá gần nhà cậu.
(Không biết Rushella đang làm gì nhỉ...)
Cậu thoáng nghĩ sẽ gọi điện cho cô nàng nhưng tiếc thay Rushella không có điện thoại.
Khi đi mua áo quần vào cuối tuần, Hisui đã đề nghị. Nhưng Rushella chỉ thốt lên: “ Cái gì thế này. Con người thực sự dùng những đồ vật kỳ lạ này sao.” Rồi bỏ đi.
Mà thôi, dù sao chắc cô nàng cũng về nhà từ lâu rồi.
Một khi về nhà, thể nào cô ấy cũng thét làm cơm tối.
Nghĩ đến bao nhiêu xui xẻo cứ lớp lớp bao quanh, Hisui đột nhiên thở dài. Đúng lúc đó, một giọng nữ phát ngay sau lưng cậu.
“Eh, Kujou-kun?”
“Reina?”
Quay đầu lại, Kujou nhìn thấy lớp trưởng vẫn đang trong bộ đồng phục. Cô ấy chưa về nhà.
“Cậu có ổn không?”
“Huh?”
“L-Lúc ở Nichoume cậu bị bắt cóc phải không??”
“!! Cậu thấy à?”
Hisui chỉ muốn đập đầu vào tường. Reina thực sự đã mục kích vụ "bắt cóc" đầy lố bịch đó.
“Tớ thấy vào ban nãy. Khi đầu tớ cứ tưởng là do mình tự tưởng tượng ra hoặc do nhận nhầm người…. thế nên tớ không dám gọi cảnh sát… Xin lỗi cậu. Thật sự tớ đã rất lo lắng. Mặc dù cậu đã đưa tớ số điện thoại nhưng tớ gọi mãi mà không được…”
“À à, chỉ là, là thế này. Đó là một người quen cho tớ đi nhờ xe thôi. Có lẽ ông ấy đang bận tuy nhiên cứ ép buộc mãi… Nói qua nói lại thế nào ông ấy vứt tọt tớ vào trong xe. Đúng thật là…”
“Thật hả?”
“Thật chứ. Tớ không đùa mà.”
“May thật…”
Ánh mắt của Hisui đảo lia lịa lúc nói chuyện nhưng xem ra Reina cũng không tỏ vẻ nghi ngờ. Thật là một cô bé ngây thơ trong sáng mà.
Có vẻ như nhà của hai người cùng đường nên họ sánh bước bên nhau.
“Kujou kun, hôm nay… tiết tiếng Anh, cảm ơn cậu nhé.”
“Tớ có làm gì sao?”
“Umm, hôm nay tớ bất ngờ bị hỏi bài, nếu không có cậu nhắc thì ………..”
“Uh nhỉ, đúng rồi”
Thật là một chuyện nhỏ nhặt mà đến cả người thực hiện cũng chả buồn để tâm. Thế mà Reina vẫn nhớ kĩ. Chỉ mỗi việc ghi nhớ hành động tốt của ai đó thôi cũng đã tốt rồi, thậm chí còn cảm ơn một cách đầy lịch sự. Quả thật Reina là một cô gái đoan trang và cao cả.
“Môn tớ tệ nhất là Tiếng Anh, vì thế tớ hơi ghen tỵ với cậu đấy. Làm thế nào mà cậu có thể trả lời trôi chảy thế, thậm chí phát âm của cậu không thua gì người bản xứ.”
“Ừ, tớ chỉ tốt mỗi môn đó thôi. Từ nhỏ tớ thường xuyên du lịch cùng với gia đình nên vốn tiếng Anh của tớ cũng không tệ lắm.”
“Oh, thế ra cậu vừa từ nước ngoài trở về hả? Ah, giống như Rushella-san phải không?”
“Ừ.”
Ngay ngày đầu tiên đi học, Hisui đã vẽ nên một câu chuyện tưởng tượng rằng Rushella là dân tại ngoại lâu năm vì thế chưa quen với phong tục ở Nhật… Chính vì thế nên mới dẫn đến câu hỏi trớ trêu này.
Dù thế nào đi nữa, dựa vào cách hành xử của Rushella, có lẽ cô ấy từng sống ở châu Âu, quê hương của loài ma cà rồng nhưng cụ thể thế nào thì vẫn là một dấu hỏi to đùng.
“Dù cô ấy có đôi chút kỳ lạ nhưng thật ra cô ấy rất gần gũi cậu. Tớ thấy hai người thường xuyên ăn trưa cùng nhau....”
“Uh, cũng kiểu kiểu thế.”
Thật ra, những việc đó chỉ để Hisui giám sát Rushella khỏi những trò ngổ ngáo của cô nàng. Nhưng dưới ánh mắt của lũ bạn trong lớp, họ là một cặp rất tình củm.
“Tuy thế nhưng tớ thấy Rushella không muốn giao tiếp với bất kỳ ai khác. Tớ luôn cảm thật khó khăn để bắt chuyện cùng cậu ấy.”
Rushella đúng là không muốn gần gũi với những nữ sinh khác. Cho dù Reina cùng nhiều bạn nữ khác cô gắng làm quen và nói chuyện nhưng xem ra Rushella hoàn toàn lãnh đạm với họ. Vẩn vơ nghĩ trong đầu, Hisui bỗng nghĩ đến Mei. Cô nàng cũng là một sinh vật đặc biệt, thế mà chuyện giao tiếp, ứng xử của cô ta còn hơn hẳn người bình thường. Dù cho mục tiêu tối thượng của Mei là “làm mẹ” nhưng cô nàng vẫn phải giao tiếp thân thiện với các bạn nữ khác, vì mục đích trở thành một con người của chính mình. Dù không thật sự quá thân thiết với ai nhưng nữ sinh nhân tạo ấy bao giờ cũng nở nụ cười.
“Rushella-san.. thi thoảng lại có cảm giác mang tâm sự gì đó. Có chuyện gì với cô ấy hả?”
“Chắc vì cô ấy phải xa nhà….. Có lẽ cô ấy gặp chút rắc rối.”
Và cô ấy thực sự đang gặp rắc rối. Một ma cà rồng mất đi trí nhớ, một mình tồn tại bơ vơ, cô đơn và yếu đuối. Rõ ràng cô gái ấy ấy cần một bờ vai, hay đúng hơn là cần một nô lệ sẵn sàng hi sinh vì mình. Tiếc thay, cô ấy lại chọn nhầm một sinh vật không thể nào trở thành ma cà rồng dù có bị hút máu thế nào đi chăng nữa. Càng đáng tiếc hơn khi mà bị trói buộc bởi luật lệ của giống loài, cô không được tìm bất cứ nô lệ nào khác. Thật đáng hận và đáng thương biết bao.”
Trong khi chìm trong suy nghĩ, Hisui không kịp nhận ra Reina đã biến mất tự khi nào.
1 bóng đen nuốt chửng lấy cô.
“Eh?”
Hisui phát hiện ra sự bất thường và tiến về phía cô.
Nhưng đã quá muộn. Reina ngập trong một màn đen dày đặc. Lớp lớp những con chim từ đâu bay đến chắn mất tầm nhìn của Hisui.
Chắc chắn, chắn chắn có một ma cà rồng đang hiện diện gần đây.
Dùng chim thay cho dơi, thật khó tin.
Nếu ma cà rồng nào cũng xài được chim thế này, có lẽ loài dơi sẽ trở thành hàng vứt đi mất.
“Tránh ra!!”
Hisui vung mạnh cặp sách của mình để xua đám chim. Chúng ngay lập tức tản ra, trả lại tầm nhìn cho cậu.
Tuy nhiên mọi thứ đã quá muộn. Mùi máu tanh tưởi xộc thẳng vào mũi cậu. Ánh đèn đường vẽ lên những vệt sáng tối đan xen như làm cho Reina chìm sâu trong bóng đêm.
Một bóng đen giữ chặt Reina từ đằng sau. Dù cho Reina đã chắn mất tầm nhìn của Hisui, nhưng không còn nghi ngờ gì nữa.
Chắc chắn đó là con ma cà rồng.
Hắn đã xong bữa tối của mình và để lại trên người Reina hai vết răng.
“Ngươi…”
Hisui sấn ngay đến. Con mắt đỏ rực của kẻ vừa hút máu kia trừng trừng chĩa vào phía cậu. Đó chỉ có thể là “Ma nhãn” của kột ma cà rồng. Nhưng vô ích. Do thế chất phi thường của mình, Hisui không hề bị ảnh hưởng. Thoáng chút bất ngờ, Hisui chợt khựng lại nhưng rồi nhanh chóng chạy vọt tới trước.
Cũng lúc đó, cái bóng đen đó biến mất vào trong bóng đêm mà không để chút dấu vết nào.
Hisui điên cuồng bổ nhào đến và đón lấy Reina vừa bị thả rơi xuống mặt đất. May thay cậu đã kịp, và cô không bị đập đầu xuống đất. Cô nữ sinh nằm gục vào lòng Hisui.
“Hey, Reina! Cậu có sao không?!”
Reina không trả lời nổi. Vết thương ngoài da chỉ có 2 vết răng ở cổ nhưng toàn cơ thể cô tái nhợt hẳn đi do mất nhiều máu. Với lượng lớn như vậy, quá trình ma cà rồng hóa hẳn nhiên là đã bắt đầu.
Người con gái hiền hậu duyên dáng thường mỉm cười nơi cuối lớp sắp sửa biến thành một thực thể sống xa lạ. Nó chắc chắn sẽ đến trong phút chốc nữa thôi.
Khởi đầu trung học của cô ấy và của chính Hisui nữa đang phủ dần lớp màng màu đỏ.
Hisui cảm thấy một suy nghĩ bất an đang bùng lên dữ dội trong tim cậu.
Nghiến chặt răng mình, Hisui không rời mắt khỏi bóng hình thân thuộc đang lơ lửng trước tầm nhìn cậu.
“Cô..”
Rushella đang đứng ngay đó.
Tay phải cô đang nắm một con dao thấm đẫm máu.
Một dòng chất lỏng đỏ tươi rỉ ra từ khóe miệng cô ấy.
Ngay cả hơi thở của Rushella cũng dồn dập bất thường.
(Không.... chẳng lẽ....?)
Hisui không nói nổi. Hay đúng hơn là sợ phải nói ra.
Rushella đứng lặng đi, khuôn mặt đờ ra không chút xúc cảm.
Trong khoảnh khắc im lặng ngắn ngủi ấy, Reina đột nhiên chìa tay ra một cách yếu ớt. Cánh tay ấy rõ là đang run rẩy những vẫn chỉ thẳng về phía Rushella.
“Sao vậy” – Hisui hỏi
“Cô ấy….” – ngừng lại như đi lấy hơi, Reina tiếp tục- “.... cô ấy.... cắn cổ tớ.”.
Dứt lời, Reina bất tỉnh. Cánh tay xinh xắn bấy yếu ấy nặng nề buông phịch xuống nền nhà, cứ như thể cô vừa trút hơi thở cuối cùng vậy.
Hisui chỉ im lặng nhìn Rushella.
Reina nói những gì, rõ ràng Rushella cũng nghe được.
Hisui muốn biết Rushella sẽ phản ứng như thế nào.
Nhưng cô gái chỉ quay đi, hai tay bưng chặt miệng.
“Này..”
Rushella bỏ lại tiếng gọi đó, rời đi ngay chỉ trong khoảnh khắc.
Chỉ còn lại cơ thể người bạn cùng lớp đè nặng lên đôi tay Hisui.
Đầu óc cậu quay mòng mòng với những suy nghĩ mà cậu ước là nó đừng bao giờ tồn tại.
Thứ duy nhất cậu làm được lúc này là gọi cho Kishida, người mà vừa mới đây đã đưa cậu địa chỉ liên lạc. Chốc sau, Kishida đã tới hiện trường và nhanh chóng dàn xếp để đưa Reina vào viện. Riêng Hisui bị giữ lại vì tận mắt chứng kiến sự việc từ A đến Z.
Sau khi xong việc, cậu trở về nhà. Trời lúc này cũng đã tảng sáng.
Do không ngủ cả đêm, cậu loạng choạng bước vào trong. Giờ cũng đã vào học rồi, Rushella lại không có ở nhà.
Mặc dù có nhiều điều muốn hỏi nhưng đầu óc cậu đã quá mệt mỏi. Hisui ngã xuống giường, không ngừng tự hỏi:
“Tại sao....?"
Cũng khó nói đó là cậu lẩm bẩm hay nói mê sảng trong giấc mơ, nhưng chắc chắn sau đó Hisui đã chìm vào giấc ngủ.
"Tại sao mình lại phải cởi đồ ra cơ chứ...?"
Rushella càu nhàu khi bị săm soi bởi những ánh mắt xung quanh.
Sau bữa trưa, cô đến phòng y tế cùng với những nữ sinh khác trong lớp. Hôm nay là ngày kiểm tra sức khỏe.
Trước đó là tiết thể dục, vì vậy tất cả đều mặc đồng phục thể thao. Tuy nhiên họ cần phải cởi đồ ra khi khám sức khỏe, vì vậy trên người những nữ sinh lúc này chỉ còn bộ đồ lót. Như một hệ quả của việc đó, tất cả mọi người đột nhiên đặc biệt quan tâm tới việc chọn đồ lót ngày hôm nay. 
Và thế là với những mảnh vải nhỏ nhắn đó đã biến phòng y tế trở thành một cảnh tượng đầy màu sắc.
Mặc dù mục đích chính của cuộc kiểm tra sức khỏe này là đo chiều cao, cân nặng và một số tình trạng cơ thể khác như thị lực, nhưng tất cả các cô gái chỉ quan tâm tới duy nhất một thứ: số đo ba vòng.
Và đặc biệt là ở đây họ tự đo cho nhau.
Tập hợp thành những nhóm nhỏ, các cô gái vừa dùng thước dây đo ngực và hông cho bạn bè vừa cười khúc khích.
"Guh... Lũ con người này đang vui vẻ cái quái gì vậy?"
"Ara ara, cô thực sự không biết cách đo à? Hay là to quá không đo được?"
Một ai đó đột nhiên xuất hiện đằng sau Rushella và kéo chiếc áo phông thể dục của cô lên.
Và thế là hai quả bưởi bự chảng dưới lớp áo lót viền ren bật hẳn ra ngoài.
"Cái----"
"Wow, chết tiệt, của cô thực sự còn lớn hơn tôi tưởng nữa!!! Xem ra là chúng ta hòa nhau....Eh?? Không thể nào, cô dẫn trước sao??"
Bàn tay của cô gái phía sau bắt đầu sờ soạng và nắn bóp bộ ngực cô nàng ma cà rồng một cách mạnh bạo. Rushella đỏ bừng mặt và hét lên giận dữ:
"D-Dừng lại! C-Con nhỏ dâm đãng chết tiệt.....!!!"
"Đây không lẽ là thứ đã vượt qua F-cup và tiến gần tới G-cup huyền thoại sao....?!! Không, hình như nó còn vượt quá cả G-cup rồi."
Sudou Mei mỉm cười một cách ghen tị với "tình địch" của mình. Cô đã lột bộ quần áo thể dục ra và trên người chỉ có mỗi đồ lót, nhưng khuôn mặt thì chẳng có vẻ gì là ngại ngần cả. Chưa kể đến việc cái thứ cô đang mặc quá sức thiếu vải - khiến người ta tự hỏi mặc nó có ý nghĩa gì không nữa. So với một nữ sinh năm nhất, bộ đồ này đơn giản là quá sức không đứng đắn.
"Bỏ ra mau, cái con bitch này!!! Cô nghĩ mình đang làm cái quỷ gì vậy hả?!!" 
"Làm gì á?" Mei nghiêng đầu một cách ngây thơ vô số tội, "Tôi chỉ muốn giúp cô đo ngực thôi mà? Nhìn này, áo ngực của cô hơi bị quá chật đấy. Mà, vì đây là do Hi-kun chọn nên chắc cũng chẳng có gì lạ khi nó không vừa cả."
"Đ-Đó là vì.... Bởi vì tôi không biết chọn thế nào cho vừa cả.... Chỉ là tôi thấy nó dễ thương nên.....Guh."
"Haa~ Thật là lãng phí một ngày mua sắm mà. Cô chỉ cần đơn giản là nhờ nhân viên cửa hàng đo cỡ giùm thôi mà. Rõ ràng cô thiếu những kiến thức cơ bản của một đứa con gái bình thường, đồ đần độn ạ."
"I-Im đi!!! D-Dù sao đi nữa, có ai nhờ cô giúp đâu cơ chứ!! Biến ra chỗ khác!!"
"Hể ~ Nếu cô mặc áo ngực quá chật thì lâu dần nó sẽ ảnh hưởng tới vóc dáng đấy, biết chứ? Nếu cô vẫn khăng khăng muốn mặc mấy thứ ngớ ngẩn và làm bộ ngực mình bị xẹp lép lại thì ổn thôi, kệ cô. Hoặc cô muốn giữ cái gu thời trang cổ lỗ sĩ như hôm đầu tới lớp?"
"Ư...."
Mei nói đúng. Rushella rất muốn cãi lại, nhưng cô không biết phải làm thế nào cả. Mặc dù bị mất trí nhớ, sau khi quan sát vài ngày ở đây, cô có thể nói rằng kinh nghiệm của Mei trong cuộc sống hiện đại so với mình là một trời một vực.
"Hi-kun thật là tội nghiệp mà, vớ phải một con nhỏ dị hợm cứng đầu không biết gì về làm đẹp cả..... Không chừng tiêu chuẩn phụ nữ của anh ấy cũng sẽ bị méo mó đi mất~"
"Grrrr....."
Việc Mei cố tình nhắc đến tên Hisui đã trở thành đòn chốt hạ. Và biểu hiện của Rushella thay đổi ngay lập tức.
"Mà ~ Tôi thì đo xong rồi, nên nếu cô thấy phiền thì tôi cũng sẵn lòng đi ngay... Thấy sao nào?"
Mei mỉm cười một cách điềm tĩnh nhìn Rushella đấu tranh với ý nghĩ phải nhờ tình địch giúp đỡ.
"......Giúp tôi đo.... được không?"
"Rồi, tốt tốt. Phải ngoan ngoãn như thế chứ ~ Được rồi, làm nhanh gọn nhé?"
Một cách đầy chuyên nghiệm và thành thạo, Mei dùng sợi thước dây để đo cơ thể của Rushella.
"Để xem... đúng như dự đoán, ngực cô vượt quá cả cỡ 90cm rồi. Eo thì là.... Cái--!!! Thậm chí còn nhỏ hơn của mình nữa!!!"
"Gì thế?"
"K-Không có gì. Mông.... aha, chỗ này tôi to hơn này. Tôi đoán mình nên vui.... Này, Hi-kun thích ngực hơn hay mông hơn? Tôi nghĩ là mông, nhỉ? Chỗ đó là vị trí chính để "xếp hình" mà?" (trans: nô nô, vếu is the rule, bitch :V)
"Chịu. Tại sao tôi lại phải biết sở thích của cậu ta chứ?"
"Ể ~ À đúng rồi, cô biết tại sao Hi-kun lại nghỉ học hôm nay không? Cả lớp trưởng cũng vắng mặt nữa......"
"... Tôi không biết. Tối qua cậu ta cũng không về nhà."
"Hmmmm...... Anh ấy thấy không khỏe sao? Hay là do cô hút máu anh ấy mỗi ngày vậy?"
"K-Không phải mà!"
Rushella cúi gằm mặt. Dù sao đi nữa, cô cũng biết rằng mất máu gây hại cho sức khỏe rất nhiều, cho dù có thể chất đặc biệt như Hisui đi nữa.
"...Tôi đâu có uống quá nhiều mỗi lần đâu. Cậu ấy cũng bảo là không sao mà?"
"Nhưng mà ngày nào cũng uống, phải không? Hi-kun vốn rất dễ dãi, anh ấy không phải loại người sẽ phàn nàn kể cả khi cô có làm anh ấy kiệt sức đâu."
"T-Tên cứng đầu đó mà dễ dãi cái gì chứ....."
Rushella cố gắng phản đối một cách yếu ớt, nhưng giọng cô nhỏ một cách bất thường. 
Cô biết rõ Hisui sẽ để yên cho mình hút máu mặc dù cậu có càu nhàu tới cỡ nào.
"....Ổn thôi, sao cũng được. Ok, tôi đo xong cho cô rồi. Giờ thì đổi phòng với mấy đứa con trai rồi kiểm tra cơ thể...... Cô giúp tôi được không? Dù sao thì sẽ khá phiền nếu để con người kiểm tra....."
"Ờ há, cơ thể cô vốn dĩ không phải người mà nhỉ."
"Vụ răng miệng thì không sao, nhưng có lẽ tôi sẽ gặp rắc rối nếu để họ khám mắt và nội khoa. Cô cũng vậy đấy, cái bộ răng dài ngoằng đó không thể không gây chú ý được đâu."
"Ừ, bình thường khi không hút máu thì nó co ngắn lại nhưng vẫn khá dài so với với răng người.... Không sao! Ma nhãn quyền năng sẽ giải quyết nhanh gọn vụ này!"
"Cô có thể tiện thôi miên họ luôn lúc tôi làm kiểm tra sức khỏe không? Uhm.... có lẽ để cảm ơn tôi sẽ giúp cô kiểm tra răng miệng nhỉ? Mặc dù có thể dùng Ma nhãn, nhưng vẫn tốt hơn nếu nó được chăm sóc đàng hoàng đúng không?"
Cô gái nhân tạo đột nhiên nhũn nhặn một cách đáng ngờ, nhưng Rushella hoàn toàn không nhận ra vẻ ngấm ngầm thích thú của cô. Nàng ma cà rồng vênh mặt lên một cách tự hào:
"Hah, có vẻ như cô cuối cùng cũng biết phải làm gì để thể hiện sự kính trọng với một Thuần Huyết cao quý nhỉ? Tốt, tôi cho phép cô được nhận vinh dự đó."
"...Vâng vâng. Vậy, tôi sẽ giúp cô làm sạch răng nhé? Những chiếc răng đáng tự hào của một ma cà rồng hùng mạnh nên được tỏa sáng bóng bẩy, phải chứ?"
Mei cười dịu dàng và rót đầy cái cốc nhựa trong phòng y tế bằng một thứ chất lỏng màu trắng chẳng biết lấy từ đâu ra. Sau đó, cô khuấy nhẹ nó bằng chiếc đũa dùng một lần.
"Vệ sinh răng... tức là đánh răng á? Ah, đó là nước súc miệng phải không? Nó sẽ làm sạch răng à?"
"Được rồi, há miệng ra nào?~"
"Ok."
Rushella mở rộng miệng không chút nghi ngờ.
"Yo~"
Mei lập tức ụp thẳng cái cốc vào miệng cô.
Chất lỏng đặc sánh trong cốc được đổ vào, và do quá nhanh nên nó thậm chí còn văng lên mặt Rushella.
"Mmm!! (Đây là cái gì vậy!?!)"
"Thư giãn đi, nó vô hại mà ~ Thứ này sẽ tẩy đi các chất bẩn trên bề mặt răng, và chỉ mấy phút là răng cô sẽ sáng bóng nhưu gương cho xem. Nè nè, cắn chặt đi? Ngậm chặt~"
"Mmmm..... (Thật không vậy...? Thứ này đắng quá... lại còn dinh dính nữa.)"
Rushella có cảm giác chất lỏng sền sệt đó đang đặc lại trong miệng. Nó tạo cảm giác tương tự như "kẹo cao su" mà cô đã thử gần đây. Cô thực sự không thích thứ kẹo dinh dính đó chút nào, nhưng cái của nợ này còn có vị tồi tệ hơn.
"Tốt... Ổn rồi, không sao. Giờ thì há miệng ra nào. Chậm thôi."
"Khụ!"
Rushella ho mạnh và nhổ ra một cục cao su màu trắng đục. 
Mei thở dài và cẩn thận nhặt nó bỏ vào một chiếc túi nhựa trong suốt như thể đó là một vật chứng tội phạm.
"....Xong chưa vậy? Vụ răng miệng ấy?"
Cô nàng ma cà rồng lau lau miệng, nhưng vẫn có những vệt trăng trắng dính đầy trên mặt cô. Lưỡi cô cũng đang mang màu trắng đục của thứ chất lỏng kì lạ kia. Gương mặt kiều diễm nhăn lại một cách khó chịu.
Mei mỉm cười và đưa cô một túi khăn giấy: "Ừ, xong rồi. Ahaha.... Trắng bóng, nhỉ? Ok rồi. Đi súc miệng đi. Nhớ giúp tôi vụ kiểm tra nội khoa nhé? ❤"
"Tôi biết rồi.... Uuuhh, đắng quá. Con người đúng là toàn sáng chế ra mấy thứ ngớ ngẩn....."
Rushella mặc lại quần áo rồi chạy ra khỏi phòng y tế để ra toilet súc miệng.
Sau khi chắc chắn cô đã rời đi, Mei đưa chiếc túi nhựa lên xem xét và mỉm cười đắc thắng.
"Nhiệm vụ.... hoàn thành ❤"')
INSERT [dbo].[Novel_Content] ([ID], [ProductID], [Prodect_Name], [Chapter_Number], [Chapter_Name], [Content]) VALUES (7, 1, N'Silver Cross and Draculea Tập 1', 6, N'Chương 6 - Anti-Vampire', N'"....Là như vậy đó. Em đã hoàn thành xuất sắc, phải không?~"
"Ờ, cảm ơn vì đã nỗ lực, Cộng Tác Viên-san."
Sau giờ nghỉ trưa, Hisui và Mei ngồi nói chuyện. 
"Nè nè, sao anh lại nói một cách hậm hực như thế chứ~? Em chỉ làm việc của mình thôi, nhắc lại, là làm việc đó. Tất cả những gì em làm là báo với cảnh sát rằng có một ma cà rồng đã xâm nhập vào trường mình. Lẽ ra em phải được khen vì hành vi tự giác của mình chứ, phải không?"
"Khen ấy hả? Nhờ ơn cô mà tôi bị lôi vào đủ thứ phiền toái vl ra...."
Hisui vẫn cảm thấy thật sự không thể bỏ qua được những gì đã xảy ra trong cuộc "kiểm tra" ngày hôm qua. Cộng thêm việc thức trắng đêm đã khiến tâm trạng cậu tụt xuống mức tồi tệ nhất có thể.
"Ủa, có vấn đề gì sao? Ít nhất anh có thể chắc chắn rằng mình là con người mà?"
"Tôi LÀ con người và tôi biết điều đó, ok? Tôi không có nhu cầu phải chứng minh làm cái mòe gì cả. Cho dù có bị hút máu thì tôi cũng không ảnh hưởng gì hết. Mà cô chưa bép xép gì về cái thể chất kì quặc đó của tôi đấy chứ?"
Hisui hỏi lại để chắc chắn, và Mei lắc lắc đầu.
"Không không. Bên cạnh nữa, em vẫn thấy khả năng đó đúng là khó tin thật.... Làm thế nào anh có thể vẫn bình an vô sự được sau khi bị ma cà rồng cắn cơ chứ?"
"Ừm, thực ra hì tôi vẫn bị mất máu do đó không thể nói là bình thường được.... Mà, dù sao cũng cảm ơn vì đã giữ bí mật. Nếu cô tiết lộ chuyện này ra có lẽ tôi sẽ bị lũ khoa học gia nào đó đem ra mổ xẻ mất. Nếu là con nhỏ Eruru kia thì dám thế lắm, phong cách làm việc của cô ta là như thế mà. Ai mà biết được chuyện gì xảy ra sau đó cơ chứ."
Hisui lầm bầm. Cậu vẫn chưa quên được cách đối xử bất công mà cô gái điều tra viên tự xưng đó đã làm với mình.
Tất cả chỉ vì cậu đã đã đứng về phía Rushella. Khi còn là con người mà đã vậy, Hisui chắc chắn mình sẽ bị hạ sát không thương tiếc nếu cậu biến thành ma cà rồng.
"Ah~ cũng đúng. Cô bé dễ thương đó thực sự tàn nhẫn với những sinh vật không phải người, đặc biệt là ma cà rồng. May mà cô ấy không ác cảm với em~"
"....Rốt cuộc là vì sao chứ?"
Hisui nhớ lại những nghi ngờ của mình ngày hôm trước và lẩm bẩm. Mặc dù cậu không biết khả năng của Eruru tới mức nào, cái thái độ ngạo mạn bất thường đó cùng với sự khinh bỉ cực hạn với ma cà rồng là rất kì lạ. Không chỉ dừng lại ở ghét bỏ do khác biệt giống loài nữa, đó gần như là một sự cuồng tín rồi.
"Nhưng bù lại cô ấy làm việc rất chuyên nghiệp. Nếu anh lo lắng cho lớp trưởng, không phải sẽ rất ổn nếu giao cho họ xử lí sao?"
"...Thực sự mà nói thì tôi vẫn chưa thể tin tưởng mấy người đó được."
Hisui nói một cách không hài lòng.
Cậu nhờ Mei vụ này hôm nay là do buộc phải chấp nhận yêu cầu của Eruru tối qua. Là nhân chứng duy nhất, cậu đã được đưa đến đồn cảnh sát để lấy lời khai.
"....Nói thẳng ra nhé, chúng tôi buộc phải coi con ma cà rồng đang sống với cậu là nghi phạm chính trong vụ này. Trước khi nạn nhân ngất đi, cô ấy đã nói đích xác tên hung thủ là "Rushella", cậu không phủ nhận chứ?"
"Không. Tôi có nghe thấy câu đó."
Hisui quyết định không giấu diếm. Bằng cách nào đó cảnh sát đã biết được việc này, giả vờ cũng chẳng ích gì hết.
"Vậy thì tốt, chúng ta đều chơi bài ngửa với nhau. Cậu đã nhận ra mình ngu ngốc tới mức nào chưa? Nguyên việc cậu để con ma cà rồng đó chạy đi mà không tìm cách ngăn lại đã đủ để quy một phần trách nhiệm rồi."
".....Nói thẳng ra đi. Cô muốn tôi làm gì?"
"Hỗ trợ điều tra. Để có thẩm quyền tiêu diệt con ma cà rồng đó, điều đầu tiên chúng tôi cần là bằng chứng. Cụ thể là bằng chứng chứng minh cô ta đã tấn công con người."
"Vậy tôi phải làm gì? Tìm bằng chứng.... kiểu như dấu vân tay á?"
"Đúng một nửa. Tôi cần cậu thu thập dấu răng của con ma cà rồng đó."
"Quắc? Cái hợi gì thế?"
"Giống như con người, ma cà rồng cũng có đặc điểm nhận dạng riêng, đó là răng. Không có hai con ma cà rồng nào có răng giống hệt nhau cả. Nếu vết cắn trên cổ nạn nhân khớp với dấu răng mà cậu lấy được, chúng tôi có thể kết luận kẻ sống cùng cậu chính là hung thủ. Vậy thôi."
Sau khi giải thích ngắn gọn, cô ta cho phép Hisui về nhà.
Cậu nhanh chóng liên lạc với Mei và nhờ cô thực hiện vụ này. Và mọi thứ đã xảy ra đúng như kế hoạch.
"Nhưng mà em hơi bất ngờ đấy, Hi-kun. Anh thực hiện việc này mà không phản đối chút nào - chẳng lẽ anh thực sự tin tưởng cô ta đến thế sao?"
"......"
"Nếu phải nói cảm giác thì, ngay từ lúc gặp lần đầu em đã thấy cô ta là một kẻ kì quặc rồi. Một Thuần Huyết chẳng bao giờ đi quang quác khắp nơi "Ta là Thuần Huyết, ta là Thuần Huyết" như thế đâu. Lúc em nói chuyện này với Kishida-san, ông ta đã bật cười đấy! Anh tin được không, đến cái gã mặt đơ đó cũng phải cười, vậy là đủ thấy vụ này ngớ ngẩn thế nào rồi."
"....Không quan tâm lắm nhưng nói vậy là cô đã báo thân thế của Rushella cho bọn họ rồi hả?"
"Ừ. Eruru-chan hi vọng những cộng tác viên sẽ cung cấp tối đã thông tin có thể. Mà anh cũng đừng lo, em nghĩ với cô ấy thì ma cà rồng nào cũng đáng ghét cả nên thông tin đó chả có gì quan trọng đâu."
"Tôi hiểu rồi."
Hisui săm soi bức ảnh mà cậu đã yêu cầu như tài liệu để điều tra. Mei rướn người qua vai cậu và nhòm vào bức ảnh. Cô cau mày.
"Woa..... đây là vết thương trên cổ lớp trưởng sao? Trông khiếp quá...."
"Tôi đã nhìn qua nhiều nạn nhân của ma cà rồng trước đây.... Nhưng chưa bao giờ có vết thương nghiêm trọng thế này cả. Qúa trình biến đổi của cô ấy nhanh hơn bình thường rất nhiều. Nếu như thông tin của mấy người bên MPD là đúng thì Reina đã mất một lượng máu lớn đến kì lạ chỉ trong một cú cắn."
"Điều đó hiếm lắm sao?"
"Có những tiêu chuẩn nhất định để biến một con người thành ma cà rồng. Máu chiếm khoảng 8% khối lượng của một con người. Lớp trưởng khá mảnh mai nên tôi đoán cô ấy nặng không quá 50kg, nghĩa là sẽ có khoảng 4 lít máu. Uống gần 4 lít trong một lần cắn là rất khó kể cả với một ma cà rồng. Khi một ma cà rồng muốn biến ai đó thành người hầu, chúng sẽ hút máu thành nhiều lần, không phải vì quy tắc hay gì mà bởi vì uống cùng một lúc là rất khó."
"Anh nói đúng.... Mà khoan, như vậy nghĩa là cần hút hết máu của một người để biến người đó thành ma cà rồng sao? Nhưng cơ thể người có thể tự bổ sung máu mỗi ngày, vậy làm sao có thể chia nhỏ thành nhiều lần được?"
"Ý tôi không phải thế khi nói "toàn bộ máu". Nói cho chính xác thì, ma cà rồng rút "linh hồn" của một người để biến người đó thành nô lệ. Hút máu chỉ là một nghi thức cho việc đó thôi. Tưởng tượng đơn giản thì, nó giống như thanh HP trong mấy game RPG vậy. Thanh HP đó là tổng số máu cần thiết để biến người thành ma cà rồng. Nếu như một người có 4 lít máu, thì tất cả những gì cần thiết để cô ấy biến đổi là bị hút 4 lít máu bởi một ma cà rồng, không quan trọng một lần hay nhiều lần. Là vậy đó."
Những điều mà Hisui đưa ra khá thuyết phục. Cậu rõ ràng nắm trong tay kiến thức về ma cà rồng nhiều hơn hẳn Mei.
"Thế nhưng tên này có gì đó rất lạ.... Từ vết thương há hoác cộng với lượng máu mất đi rất lớn, có thể đoán rằng hắn ta đang cực kì khát. Có điều nếu vậy thì Reina đã không còn giọt máu nào rồi. Bên cạnh đó, nếu tên ma cà rồng này không nhắm đến việc "biến đổi" mà chỉ đi săn đơn thuần, sẽ có nhiều nạn nhân hơn mới phải. Vậy mà tôi không hề bị tấn công cho dù đang đứng ngay đó. Thế nên....."
"Thế nên?"
"Đây chỉ là phỏng đoán của tôi, nhưng dường như kẻ này có âm mưu gì đó. Hắn cố tình hút một lượng máu lớn đến bất thường, nhưng lại dừng lại ngay trước khi con mồi biến thành một ma cà rồng. Tại sao hắn không lấn thêm chút nữa? Chắc chắn không phải vì tôi đã xua lũ quạ đi rồi."
".....Theo như em thấy thì, từ cách mà anh nói------có phải anh đang cố gắng minh oan cho Rushella?"
"Cái cách mà kẻ kia hút máu rất khác so với cô ấy, đó là sự thật. Đích thân tôi đã từng trải nghiệm việc đó rồi."
"Nhưng còn lời nói của lớp trưởng thì sao? Ngay cả khi chưa so sánh vết răng, không phải đó đã là một bằng chứng rồi sao?"
"....Có lẽ."
Hisui lẩm bẩm một cách thẫn thờ. Mei nhún vai:
"Ok... sao cũng được. Kết quả phân tích dấu răng này sẽ nói rõ tất cả. Chắc không mất hơn một ngày đâu."
"À phải rồi, thứ cô dùng để lấy dấu răng là do Eruru cung cấp phải không?"
"Ừm. Đó là một phiên bản cải tiến của khuôn răng mà các nha sĩ sử dụng. Nó dùng một loại nhựa khô siêu nhanh thay cho sáp dẻo. Chắc khoảng nửa tiếng nữa thứ này sẽ cứng lại hoàn toàn thôi."
"....Hiểu rồi."
Hisui nhắm mắt lại và suy nghĩ một lúc, sau đó đề nghị:
"Để tôi mang nó đi cho. Bọn họ vẫn ở sở cảnh sát phải không?"
"Eh... Tại sao vậy?"
"Tôi có một việc cần phải xác nhận lại. Trước khi trời tối."
"Anh định đi bây giờ sao? Thế còn buổi học chiều?"
"Tôi đã xin nghỉ cả ngày hôm nay rồi mà. Sensei thậm chí còn không biết tôi đang ở trường nữa kia... Cứ ở lại đây đi. Tạm biệt." 
Cầm lấy chiếc túi nhựa, Hisui lẻn ra khỏi trường mà không để ai phát hiện.
* * *
"Cậu đến đây làm cái gì?"
Đó là câu đầu tiên của Eruru khi thấy mặt cậu.
Đương nhiên, Hisui cũng không mong chờ một thái độ tiếp đón thân thiện hay kiểu kiểu thế.
"Tôi mang thứ cô yêu cầu tới đây."
Cậu rút chiếc túi nhựa ra và trả lời. Ánh hoàng hôn cuối ngày chiếu qua cửa sổ và hắt hai cái bóng dài của họ trên mặt đất.
"Nếu vậy cậu chỉ cần đợi ở dưới sảnh. Tại sao phải gọi tôi ra tận đây làm gì?"
Thật vậy. Sau khi nhờ viên cảnh sát ở tầng trệt thông báo lại cho Eruru, Hisui đã bỏ ra ngoài đợi ở một băng ghế gần đó.
"Ờ thì... Tôi muốn ra ngoài thôi. Ở trong đó bí lắm, với cả nó gợi lại vài kí ức không nên nhớ...."
"Chả ai hỏi ý kiến cậu cả. Đưa cái đó đây và về nhanh đi."
Eruru đưa tay ra để cầm lấy chiếc túi đựng mẫu răng. Nhưng Hisui lờ cô đi và rút cái túi về.
"Tôi sẽ đưa, nhưng phải có một điều kiện."
"Điều kiện gì? Đừng bảo cậu đòi tiền công đấy nhé? Đồ không biết xấu hỏ----"
"Tôi có thể thăm cô ấy không?"
"...?"
"Lớp trưởng được cách li trong đó, phải không?"
Hisui hất đầu về phía tòa nhà màu trắng ngay cạnh sở cảnh sát.
Đó là một trong số ít những bệnh viện lớn trong khu này. Được xây dựng ở vị trí đó, nó có lẽ không ít thì nhiều cũng liên quan mật thiết tới cảnh sát.
"....Cậu có vẻ khá tinh ý đấy nhỉ?"
"Nghĩ một chút là ra thôi mà. Vậy, câu trả lời của cô là gì? Tôi là người quen của lớp trưởng, tới thăm cũng đâu có hại gì cả, đúng không?"
".....Thôi được rồi. Đi theo tôi."
Hisui đi theo Eruru và bước vào tòa nhà bệnh viện Đa khoa Seidou. Hai người bước qua một trạm kiểm soát có gắn máy quét võng mạc và xuống tầng hầm.
Nạn nhân bị cắn bởi ma cà rồng sẽ có một số đặc tính của chúng cho dù đã bị biến đổi hay chưa. Một trong số đó là chứng sợ ánh sáng - có lẽ vì thế mà Reine được giữ dưới lòng đất.
Tầng hầm cũng giống như cơ sở phía trên mặt đất, tường quét sơn trắng tạo cảm giác khá sạch sẽ cũng như trống trải. Nhưng bởi vì xây dưới lòng đất, có một cảm giác chật chội kì lạ toát ra từ các bức tường.
Đây không phải nơi điều trị, nó là nơi giam giữ.
"Chúng ta đến nơi rồi."
Eruru dừng bước.
Họ đang ở trong một căn phòng bệnh với những trang thiết bị y tế hiện đại. Những máy móc hỗ trợ sự sống, máy thở oxi, máy hỗ trợ trao đổi chất nhân tạo và đặc biệt là bình truyền máu được nối vào cơ thể cô gái nằm trên giường với những ống dẫn chằng chịt.
Bất kì ai nhìn vào đây cũng sẽ nói nó chỉ là phòng bệnh. Nhưng nếu nhìn kĩ, người ta có thể thấy chân tay cô gái bị khóa chặt vào thành giường. Như đã nói, nó không phải nơi điều trị, mà là giam giữ.
Cô gái với khuôn mặt nhợt nhạt như xác chết chính là Reina.
Khi Hisui lại gần, cô đột nhiên mở mắt.
"Kujou-kun....?"
"Chào cậu."
Hisui đưa tay lên.
Reina nhìn cậu với đôi mắt trống rỗng, rồi ngơ ngác ngó ra xung quanh. Dường như cô vẫn chưa rõ tình hình hiện tại.
Trạng thái của Reina lúc này cũng tương tự như hầu hết các nạn nhân bị cắn bởi ma cà rồng - ý thức của họ rất mơ hồ. Đây có lẽ không phải lần đầu tiên cô tỉnh lại, nhưng kí ức thì vẫn dừng ở đêm hôm đó.
"Cậu cảm thấy thế nào?"
Hisui hỏi giống như một bác sĩ đang kiểm tra bệnh nhân của mình. Đáp lại, Reina trả lời bằng một giọng khàn khàn.
"Mình không biết..... Nó giống như là, khát nước....."
"Tớ mua cho cậu ít nước trái cây nhé?"
Hisui tiếp tục nói một câu điển hình khi thăm bệnh và tiến đến gần giường bệnh hơn nữa.
Reina lúc này gần như có thể chạm vào cổ cậu mà không cần vươn tay lên.
"Cậu muốn uống gì?"
"......."
Đôi mắt Reina lóe lên ánh sáng sắc lạnh màu đỏ thẫm ngay khi nghe thấy câu hỏi của cậu.
Đôi môi khô nẻ của cô khẽ tách ra, để lộ bốn chiếc răng nanh trắng bóng.
....Và nhọn hoắt như những lưỡi dao găm.
"Tớ, muốn uống......"
Reina cúi đầu về phía trước.
Hisui vẫn đứng yên. Cậu không có ý định di chuyển.
"Tránh ra!!!"
Trước khi Reina kịp làm bất cứ điều gì, Eruru đã giận dữ hét lên và nhanh tay túm lấy Hisui, lôi cậu ra khỏi giường bệnh.
Ánh sáng đỏ rực trong mắt Reina nhạt dần rồi từ từ biến mất. Cô lim dim rồi lịm đi, gục xuống gối như thể bị đánh thuốc mê.
"Cậu bị điên à?!! Cậu thực sự muốn cô ấy uống máy mình hả?!!"
Eruru điên tiết chĩa khẩu súng ngắn trong tay phải vào trán Hisui không chút do dự.
Không giống như loại súng tiêu chuẩn của cảnh sát như S&W M3913 hay SIG Sauger P230JP, khẩu súng này có thiết kế tao nhã hơn nhiều, và trên hết nó làm hoàn toàn bằng bạc nguyên chất.
Với những họa tiết thánh giá và cánh thiên thần bằng bạc bao phủ nòng súng, rõ ràng đã có một số tùy chỉnh về mặt kĩ thuật. Họng súng trông như có thể bắn ra laze thay vì đạn. So với một vũ khí để tấn công người, nó trông phức tạp một cách kì quặc.
"Cái đó.... cô lấy nó ra từ chỗ khỉ nào vậy?"
"Súng thánh, [Argentum]. Nó vốn dĩ được dùng để xử lí lũ ma cà rồng, nhưng không có nghĩa là vô hại với người thường đâu. Và có vẻ cậu muốn xơi vài viên đạn chì thay cho đạn bạc nhỉ?"
Thấy Eruru tức giận siết chặt ngón tay trên cò súng, mặt Hisui biến sắc và cậu vội vã giơ hai tay lên vẻ đầu hàng.
"Đ-Đợi đã, tôi chỉ hỏi cô ấy có khát không thôi mà?! Mà, ngay cả khi lớp trưởng uống máu tôi thì cũng đâu có gì xảy ra chứ? Cô ấy còn chưa hoàn tất quá trình biến đổi, vết cắn đó không thể nào biến người ta thành ma cà rồng được đúng không?"
Cốp.
Báng súng nện thẳng vào trán Hisui ngay khi cậu buột miệng. Có vẻ khẩu súng này còn được cấu tạo để cận chiến nên trọng lượng của nó lớn đến bất thường.
Cậu trai trẻ ôm đầu và kêu oai oái.
"Cô làm cái gì thế hả?! Nhỡ nó táng tôi vỡ sọ thì sao?"
"Vỡ sọ càng tốt, cho rảnh nợ. Cậu xứng đáng với điều đó. Cậu có nghĩ đến việc cô gái này sẽ cảm thấy như thế nào khi cô ấy nhớ lại việc mình đã hút máu người khác không hả?!"
"........."
"Biến thành ma cà rồng không phải là tất cả mọi thứ xảy đến cho người bị cắn. Quan trọng hơn cả là phẩm giá con người của họ bị tổn hại nghiêm trọng! Đừng tưởng có thể hành động bừa bãi chỉ với mớ kiến thức nửa vời chết tiệt đó!!"
Giận dữ đay nghiến Hisui, Eruru chỉ vào Reina đã ngủ lại.
Đặc điểm thứ #6 của ma cà rồng: Sau khi bị cắn, nạn nhân sẽ bắt đầu quá trình biến đổi thành một ma cà rồng. Tốc độ của quá trình này diễn ra phụ thuộc vào lượng máu bị lấy đi, tuy nhiên sẽ không thể nếu như nạn nhân chết vì mất máu. Sau khi biến đổi hoàn tất, nạn nhân sẽ biến thành một ma cà rồng và tuyệt đối trung thành với chủ nhân của họ.
Việc giam giữ Reina lại thế này không chỉ để bảo vệ cô ấy, mà còn là để ngăn cô trở nên nguy hiểm.
"Tôi chấp nhận đưa cậu tới đây để cho cậu thấy cô ấy đang lâm vào cảnh tồi tệ thế nào. Không cần biết cậu nghĩ gì, nhìn đi, đây là bản chất của ma cà rồng. Chúng hút máu và gây tổn hại cho những người vô tội. Ngay cả một tên não rỗng cũng có thể hiểu được điều đó, phải không hả?!"
Hisui không thể phản bác.
Cậu chỉ biết im lặng và hướng ánh mắt về phía tủ đầu giường. Đó có lẽ là nơi cất đồ dùng cá nhân của Reina.
"Cái này là..... của cô ấy?"
Hisui cầm lên một sợi dây chuyền lấp lánh, ở đầu gắn một cây thánh giá nhỏ bằng bạc. Tuy thiết kế đơn giản, nhưng nó thực sự toát ra vẻ cao quý. Ngay cả caaujc ũng có thể cảm nhận được điều này.
".....Đúng vậy. Nạn nhân là con trong một gia đình Công giáo sùng đạo. Cô ấy cũng đã học ở trường Công giáo hồi sơ trung và đến nhà thờ mỗi chủ nhật. Cha mẹ cô gái này không thể về nhà thường xuyên do họ làm việc trong giáo hội."
"Một gia đình ngoan đạo...... Thế nhưng Chúa đã không bảo vệ cô ấy."
"Nếu nạn nhân đang đeo thánh giá trên cổ vào lúc đó.... có lẽ nó cũng đã ngăn cản con ma cà rồng được phần nào. Có lẽ cô ấy đã được rửa tội. Nhưng việc biến đổi thì không, đó là cách mà thế giới này hoạt động. Cho dù là một vị Thánh hay kẻ tội đồ, một khi bị cắn họ sẽ mất đi nhân tính và trở thành quái vật. Căn bệnh quái đản này bình đẳng với bất cứ ai."
"Hiểu."
Hisui đột nhiên bước tới và nhéo vào má Eruru.
Cô nàng đeo kính giật bắn mình và nhảy lui lại tới một mét:
"C-Cậu làm cái gì vậy hả?"
"Trả đũa lại cú lúc nãy thôi."
"Cậu là con nít hả?"
"Eruru, tôi có một câu hỏi."
"Hm?"
"Đối với cô, ma cà rồng là gì?"
"?? Tôi chưa nói đủ sao? Bọn chúng là ác quỷ. Tất cả bọn chúng đều đáng bị tiêu diệt."
"Một câu hỏi nữa, nếu đó không phải những ma cà rồng được tạo ra do bị cắn thì sao? Một trong số những kẻ "nguyên bản"..... không, nếu là một Thuần Huyết thì sao? Cô có coi đó như một chủng tộc bình đẳng với con người không?"
"Tất cả đều như nhau. Là ma cà rồng thuần chủng chỉ khiến chúng nguy hiểm hơn. Nếu một kẻ như thế xuất hiện, chúng tôi sẽ nâng cao cảnh giác và tiêu diệt chúng triệt để. Tận diệt chúng. Tuy nhiên trong thời đại này thì những sự tồn tại như thế là không thể. Những con ma cà rồng nguyên bản chỉ còn một hai tên, và Thuần Huyết thì chắc chắn đã tuyệt chủng."
".....Tôi hiểu rồi, cảm ơn vì đã trả lời. Của cô đây."
Hisui ném mẫu dấu răng bằng nhựa dẻo về phái Eruru.
"Tốt, cảm ơn. Kết quả phân tích sẽ có sớm thôi. Cậu có thể về nhà và suy nghĩ lại hành động của mình đi."
Hisui không trả lời. Cậu nhìn vào bàn tay vừa nhéo má Eruru một cách chăm chú.
"Tốt nhất là cậu nên hiểu trước khi quá muộn. Ma cà rồng sống cùng cậu không phải con người, đó là một con quái vật hút máu. Rời xa khỏi cô ta đi. Hoặc tôi sẽ ép buộc cậu làm điều đó khi giết cô ta."
"Cảm ơn, tôi sẽ suy nghĩ. Mà, cô dẫn tôi ra ngoài được không? Đường ở đây loằng ngoằng quá, tôi không nhớ lối ra ở đâu nữa."
"Vẫn rắc rối tới phút cuối cùng huh.... Sao cũng được, đi thôi."
Eruru thở dài. Cô đứng dậy và dẫn Hisui ra khỏi bệnh viện.
* * * 
"Đã thu thập được vật chứng, mang nó đi phân tích ngay lập tức."
Sau khi Hisui đã rời đi, Eruru cho gọi Kishida tới và giao mẫu răng cho ông ta.
"Rõ. Tôi sẽ báo cáo ngay khi có kết quả giám định."
"Hiểu rồi. Nhân tiện, báo việc này lên cấp trên và triệu tập đội chuyên chống ma cà rồng cùng trang bị đặc dụng. Bắt giữ là không cần thiết, chỉ cần chuẩn bị để giết cô ta ngay lập tức. Mọi chuyện sẽ kết thúc vào tối này."
Kishida cau mày khó hiểu:
"Nhưng chúng ta vẫn chưa thực hiện phân tích....."
"Mấy thứ thủ tục rườm rà đó bỏ qua một bên, chuyện quan trọng là tiêu diệt mục tiêu. Còn về mấy tên cấp trên..... không sao, đây cũng là một cơ hội thuận tiện để làm mấy tên khoa học gia suốt ngày đòi nghiên cứu ma cà rồng im miệng lại. Chúng sẽ có cái xác để làm gì thì làm. Kết quả phân tích không còn quan trọng nữa. Vậy nên nhanh lên và đi chuẩn bị đi, tôi không muốn mất thế chủ động."
Cô gái đưa ra mệnh lệnh tàn nhẫn.
Im lặng một lát, viên thuộc cấp trung thành không hỏi gì nữa và cúi đầu:
"Đã rõ. Tôi sẽ gửi thứ này cho phòng giám định và đi chuẩn bị lực lượng tấn công."
Sau câu nói đó, Kishida rời đi. 
Eruru thở dài, cô quay lại bàn làm việc và ngồi thụp xuống. Đây cũng chính là văn phòng nơi thẩm vấn Hisui ngày hôm trước.
Mọi việc đến giờ đều diễn ra đúng như kế hoạch. Tất cả những gì cô cần làm chỉ là chờ đợi.
"....!!?"
Eruru gục người xuống, đột nhiên lên cơn ho và khó thở. Cô điên cuồng bịt miệng lại và kéo mạnh ngăn bàn ra. Giữa đống giấy tờ là một chiếc lọ thủy tinh nhỏ đầy những viên thuốc màu trắng.
Thở hổn hển và run rẩy, Eruru đổ vài viên thuốc ra tay và dốc vào miệng. 
Sau khi nhai và nuốt chửng mấy viên thuốc trong cơn hoảng loạn, những cơn ho cuối cùng cũng chấm dứt. Cô gái thở phào và đổ gục xuống mặt bàn. Khuôn mặt dễ thương của cô ướt đẫm mồ hôi, và tràn ngập sự đau đớn.
"Ma cà rồng....."
Cắn chặt môi, Eruru siết nắm tay lại và lẩm bẩm như một lời nguyền.
"Tất cả các ngươi...... Ta sẽ giết tất cả các ngươi....... Lũ quái vật khốn kiếp....!!!"
* * *
Sau chuyến thăm Reina, Hisui trở về nhà và bắt gặp Rushella đang đứng trước cửa.
Nhìn thế nào cũng có thể nói là cô nàng ma cà rồng đang chờ cậu một cách sốt ruột.
Hai người họ đã không gặp nhau suốt ngày hôm nay. Sau khi đứng nhìn nhau im thin thít một hồi, Rushella quyết định lên tiếng trước.
".....Cậu về muộn đấy. Rốt cuộc cậu đã đi đâu thế hả?"
"Hmm...... Giải quyết việc riêng, chắc thế?"
"Đừng bảo cậu lén lén lút lút đi lại với con nhỏ nhân tạo đó đấy nhé?!"
"Cô đang thực sự hành động như một ông bố nào đó cấm con gái mình về nhà sau năm giờ chiều ấy. Làm ơn đi, tôi không cần một Mirakula thứ hai đâu------"
Ngay sau khi nói ra câu đó, Hisui mới nhận ra mình đã lỡ nói quá nhiều.
Nhưng đã quá muộn để giả vờ chưa từng nói gì cả. Rushella săm săm bước tới và vung vẩy tay:
"Mirakula là ai?!"
"Đừng có nhìn tôi như kiểu một bà vợ nghi chồng ngoại tình chỉ vì ông ta biết tên cô gái khác thế chứ!"
"Dừng cái trò so sánh ngớ ngẩn đó lại đi! Trả lời tôi, Mirakula là ai?"
"........"
"Có phải..... người phụ nữ đã nuôi cậu ở đây không?"
Hisui chợt nhận ra Rushella đã bỏ vẻ mặt đe dọa và đang nhìn cậu một cách lo lắng. Không muốn trêu chọc cô thêm nữa, cậu quyết định dừng tranh cãi.
"....Ừ. Tôi không biết họ cô ấy là gì, nhưng tên thì là Mirakula."
"Cô ta với cậu là....."
"Đại loại thì như kiểu mẹ nuôi vậy. Nhưng cô ấy đã quá lớn tuổi để có thể làm mẹ tôi - về cơ bản thì, chả ai muốn gọi một mụ phù thủy già vài trăm tuổi là "mẹ" cả. Nhưng Mirakula sẽ điên tiết lên nếu tôi không gọi bả là "Onee-sama", thế nên coi đó là chị gái tôi cũng được."
Hisui nói một cách bực dọc, nhưng đồng thời cậu cũng thấy đau nhói ở nơi nào đó.
Chăm sóc cậu như một người mẹ. Già hơn tuổi của một bà ngoại. Nhưng bề ngoài trông giống như một người chị gái. Mirakula là một ma cà rồng như vậy đó.
Hisui không biết nên gọi mối quan hệ của họ là cái gì nữa. Vì thế cậu luôn dùng một từ khi nói về cô gái đã khuất.
Cô ấy là gia đình của tôi.
Nhìn thấy vẻ mặt của cậu, Rushella im lặng một lát rồi hạ giọng.
"......Thôi được rồi, vào đi. Và nhanh nhanh làm bữa tối cho tôi. Cả ngày nay tôi chả ăn gì rồi."
"Đây đây.... mà sao cô phải quan trọng hóa vấn đề trong khi thực sự cô còn chả cần ăn cơ chứ?"
Đưa ra một câu đùa nhạt nhẽo, Hisui cố gắng gạt những kí ức kia ra khỏi đầu và vào nhà.
Cậu thay bộ đồ mặc trong nhà, đeo tạp dề và đi về phía bếp. Thực đơn tối nay là cơm với canh miso, cá nướng và rau muối - một bữa ăn khá truyền thống của Nhật. Nửa tiếng sau, hai người họ đã ngồi ăn tối ở phòng khách.
Cách đây mấy ngày Rushella vẫn còn đánh vật với đôi đũa, nhưng giờ cô có thể sử dụng nó ngon lành.
Họ bắt đầu ăn trong im lặng, nhưng chẳng bao lâu sau đó cô nàng ma cà rồng không chịu được cái không khí nặng nề chết người này. Cô nói bằng giọng lí nhí:
"Cậu.... đang muốn hỏi gì đó phải không?"
"Huh?"
"Cứ nói đi. Tôi sẽ trả lời mà."
Hisui buông đũa xuống. Sau một hồi suy nghĩ, cậu quyết định hỏi câu mà cậu vẫn day dứt từ tối qua.
"Cô.... đã hút máu lớp trưởng khi đó sao?"
".....Tôi không biết."
Trái với dự đoán của cậu, Rushella lắc lắc đầu một cách mơ hồ và trả lời khá ngập ngừng. Câu trả lời đó dĩ nhiên chẳng đi đến đâu cả.
"Không biết? Ý cô là gì khi nói "không biết"?"
"Cả ngày hôm qua tôi không uống máu, nên đúng là có hơi khát...... Nhưng lẽ ra tôi phải kiềm chế được chứ....?"
"Lẽ ra? Cô thậm chí không biết là mình có------"
"Tôi không biết..... Nhưng lạ lắm, lúc này tôi không thấy khát..... Liệu có phải vì tôi đã hút máu lớp trưởng tối qua không?"
"Thậm chí cô còn không nhớ mình có ăn hay chưa ấy hả....?"
Hisui dừng lại giữa chừng. Cậu nhận ra Rushella đang cố nói điều gì.
Kí ức.
Thứ này chưa bao giờ rõ ràng với cô ấy.
Ngay từ đầu, Rushella còn không biết mình là ai.
"Như những gì tôi nhớ thì..... Lúc đó tôi nghe thấy tiếng hét. Theo bản năng, tôi biết rằng một ai đó đang bị tấn công bởi đồng loại, và quyết định chạy tới để xem xét. Nhưng nghĩ lại thì cũng không thể chắc chắn được...."
"Ngay cả khi trí nhớ không tốt lắm thì cô cũng phải nhớ được mấy chuyện vừa xảy ra hôm quá chứ?"
".....Tôi không biết..... Nhưng lúc đó tôi thực sự đã thấy khát. Ít nhất là lúc cô gái đó ngã trên mặt đất.... Mùi máu đã thu hút tôi. Tôi đã nghĩ đến việc hút máu, và nếu cậu không tới.... có lẽ tôi đã tấn công cô ấy rồi."
"......."
"Thực sự..... nhiều khi tôi sợ lắm."
"Sợ...?"
"Tôi sợ khi cơn khát máu vượt quá giới hạn...... tôi sợ mình sẽ biến thành một người khác. Nếu như một ngày nào đó cơn khát đó không còn thảo mãn với cậu nữa, tôi.... tôi.... có thể sẽ tấn công người khác. Cái cảm giác đó..... đáng sợ lắm......."
Khát máu.
Đặc tính, nhưng đồng thời cũng là một lời nguyền. Lời nguyền mà không một ma cà rồng nào có thể tránh khỏi.
Một khi cơn khát đạt đến giới hạn cực điểm, họ sẽ mất đi toàn bộ khả năng suy nghĩ và hoàn toàn trở thành một con thú. Một con dã thú không quan tâm đến điều gì khác ngoài hút máu.
"Thứ đó... nó luôn ám ảnh tôi. Điều gì sẽ xảy ra nếu tôi không hút máu suốt một thời gian dài? Tôi sẽ biến thành một người khác..... không, còn không thể gọi là người nữa. Tôi sẽ chỉ là một con quỷ. Một con quỷ chỉ biết hút máu. Con nhỏ Mei đó nói đúng, tôi..... thậm chí còn không bằng một con muỗi nữa."
"......."
"Tôi đã nghĩ về điều này rất nhiều trước đây..... Tại sao tôi lại bị mất trí nhớ? Có lẽ, chỉ là có lẽ..... Có khi nào tôi đã làm gì đó trong quá khứ không? Có lẽ trong cơn khát máu.... tôi đã đánh mất lí trí. Trở thành một con thú. Và sau đó......."
Đó là tất cả.
Nỗi sợ hãi bản năng của một ma cà rồng cùng những kí ức mơ hồ, hai gánh nặng này đè nặng lên đôi vai nhỏ bé của Rushella và ám ảnh cô hằng đêm.
"Vì thế.... tôi xin lỗi. Tôi không thể nói chắc điều gì được. Có lẽ tôi đã tấn công lớp trưởng..... có lẽ....."
Giọng Rushella ngày càng nhỏ lại. Cô ôm lấy hai vai mình và co nhỏ người lại.
Bỏ cái vẻ kiêu ngạo bình thường sang một bên, trước mặt Hisui lúc này chỉ là một cô gái yếu đuối đang sợ hãi. Không phải vị đế vương cai trị màn đêm từ thời xa xưa.
".....Tôi tin cô."
"H-Hả?"
"Nhưng mà, có chút khó hiểu. Lúc đó.... đúng là môi cô dính máu thật, nhưng tại sao thanh đoản kiếm của cô cũng có máu? Nếu thực sự đã tấn công Reina, cô đâu cần phải dùng vũ khí làm gì, đúng không? Chỉ cần dùng tay không cũng đủ để khống chế cô ấy rồi, chưa kể tới Ma nhãn nữa. Vậy thì tại sao?"
"K-Không có gì.... Tôi không muốn nói."
Cô nàng ma cà rồng đột nhiên lắp bắp và quay mặt đi chỗ khác.
"Sao vậy? Chuyện này có liên quan đến việc cô vô tội hay không đấy."
"........."
Rushella vẫn cố gắng lảng tránh ánh mắt Hisui. Nhưng cậu kiên nhẫn nhìn chằm chằm vào cô.
Sau khoảng năm phút như thế, cuối cùng Rushella cũng chịu mở miệng. Cô nói lí nhí.
"T-Tôi đã tập luyện....."
"Huh?"
".....Tôi đã cố tập hút máu." 
"HỂ???????!!!!!!"
Hisui mở to mắt một cách ngạc nhiên. Rushella lập tức cúi mặt xuống, và hai má cô đỏ bừng.
"Đ-Đó là tại cậu, tại cậu nói rằng tôi hút máu quá vụng về, nên..... Nên tôi đã tới cửa hàng thịt để mua một miếng thịt chứa tương đối nhiều máu và....."
"Sau đó cô dùng kiếm để cắt thịt thành miếng vừa cỡ và cắn...... Ý cô là vậy phải không?"
Rushella vẫn không ngẩng mặt lên, nhưng cô khẽ gật gật đầu. Đôi tai xinh xắn đã biến thành màu đỏ lựng.
Nhưng Hisui không thể để ý đến những chi tiết đó. Vì cậu đang ôm bụng và cố gắng nhịn cười.
"Phụt--- Cô đùa đấy hả? Luyện tập hút máu? Ma cà rồng tập hút máu sao? Này này, tôi cá chắc vụ này chưa từng có trong lịch sử đâu đấy!!! Và cô dùng thịt ở cửa hàng để thay cho cái cổ của tôi.... thịt lợn hay thịt bò vậy? Hóa ra đó là lí do có máu dính ở lưỡi kiếm hả? Nghĩ đến việc cô đem thanh kiếm sang choảnh đó ra xắt thịt------Ôi trời ạ, chết cười mất!!"
"Đ-Đ-Đồ xấu xa!!! Ai cho cậu cười nhạo tôi thế hả?!!! C-Chính vì vậy mà tôi mới không muốn nói----Uwahhhh!!!! Đồ ngốc!!!"
Rushella nhắm tịt mắt lại và hét lên, cô nhào tới đánh tới tấp vào lưng Hisui đang ôm bụng cười lăn lộn. Nhìn mặt cô như thể sắp phát khóc tới nơi.
"Fuhahahaha!!! X-Xin lỗi, nhưng chỉ là.... Aaa, vậy mà làm tôi lo lắng cả ngày hôm nay chứ, ngớ ngẩn thật đấy....."
"I-Im đi!!!"
Rushella ngồi sụp xuống và ôm đầu. Sau một lát, Hisui cuối cùng cũng ngừng cười được và hỏi lại:
"Ok ok, nghỉ chút nào.... Trời ạ, đau bụng quá. Mà, tại sao tự dưng cô lại nổi hứng "luyện tập" thế?"
"Tôi đã nói rồi mà! Là do cậu bảo tôi vụng về!"
Rushella càu nhàu. Cô vẫn tránh không nhìn vào mắt Hisui.
"Ừm, thực ra....."
"Tôi không thể không hút máu cậu được, nhưng..... Ít nhất tôi không muốn cậu bị đau khi tôi uống. Với cả tôi muốn kiểm soát lượng máu mà mình hút nữa......"
Hisui gãi đầu ngượng nghịu. Cô nàng này thực sự thật thà và tử tế hơn cậu nghĩ.
"Vậy còn cậu thì sao?"
Đến lượt Rushella đặt câu hỏi.
Hisui đã nghĩ gì về cô?
"Cậu có nghĩ.... rằng tôi sẽ phá vỡ lời hứa và hút máu người khác không?"
"......"
Rushella thì thầm và cúi sát mặt vào Hisui.
Cậu không biết nên trả lời thế nào cả.
Ngay khi Hisui chuẩn bị tìm cách để lảng sang chuyện khác, từ ngoài cổng vọng vào tiếng nhiều xe và tiếng bước chân.
"Gì đây? Khách vào giờ này ư?"
".....Cô đợi ở đây. Không được ra ngoài kia, nghe chưa?"
Trong thoáng chốc, mặt Hisui tối sầm lại. Bỏ Rushella vẫn còn đang ngơ ngác ở phòng khác, cậu bước về phía cửa ra vào.
Một đội đặc công mặc đồng phục đang đứng đầy ở ngoài vườn.
Với lớp quần áo bảo hộ dày và đặc biệt là phần giáp cổ bọc thép, rõ ràng họ đã được chuẩn bị kĩ lưỡng để chống lại ma cà rồng.
Đỗ trước sân là một chiếc xe bọc thép cỡ lớn trang bị súng máy hạng nặng. Những chiếc đèn pha cơ động được lắp đặt nhanh chóng xung quanh căn nhà, thắp sáng như giữa ban ngày. Rõ ràng họ sẽ không để cho bất kì một ngõ ngách nào có thể dùng làm chỗ trốn.
"Chào buổi tối, Kujou-san."
Lãnh đạo của đội quân hùng hậu này tiến đến dưới hình dạng một cô bé dễ thương đeo kính nửa gọng - Eruru. Gã lầm lì Kishida vẫn đứng ngay cạnh cô như hình với bóng, giống hệt khi họ gặp Hisui lần đầu tiên.
"Mấy người lại làm trò quỷ gì đây? Tắt đèn đi, tối rồi đấy. Hàng xóm sẽ lại kêu ca với tôi vào ngày mai mất."
"Chúng tôi đã có kết quả phân tích. Cậu vui lòng giao kẻ đó ra đây được chứ?"
".....Đã có rồi sao?"
"Đúng. Tôi đã hoàn tất những thủ tục thích hợp trước khi đến đây. Tôi có thể cưỡng chế khám xét nhà của cậu cho dù có được cho phép hay không, vì thế đừng để chúng tôi dùng vũ lực. Đây là lời cảnh báo đầu tiên và cuối cùng, Kujou Hisui. Giao con ma cà rồng đó ra đây ngay lập tức."
Nhìn vẻ mặt của Eruru cũng đủ thấy cô không chấp nhận lời phản đối.
Nếu tỏ thái độ chống cự, Hisui chắc chắn sẽ bị khống chế bởi những tên cảnh sát cao to phía sau cô. Không dám hành động khinh suất, cậu siết chặt nắm tay và cố gắng nghĩ các đối phó.
Bầu không khí tràn ngập sự căng thẳng.
Giữa lúc đó, sự yên lặng bị phá vỡ bởi một giọng nói phía sau Hisui.
"Hả, mấy người này là ai vậy? Oy, giải thích gì đó đi chứ?"
"Đồ ngốc!"
Hisui muốn đập đầu vào tường. Rushella đã phớt lờ lời cảnh báo của cậu và lanh chanh ra ngoài này.
Đã quá muộn để đẩy cô vào trong. Các đơn vị chiến đấu quanh căn nhà ngay lập tức vào trạng thái sẵn sàng hạ gục "kẻ thù" trước mặt họ bất cứ lúc nào.
"Oh, có vẻ như tôi có thể tiết kiệm thời gian rồi nhỉ?"
"Huh? Ê, người hầu, con nhóc này là ai vậy? Tại sao nó lại lảm nhảm mấy thứ khó hiểu thế?"
"Làm ơn đừng khiến tình hình tồi tệ hơn nữa coi!?"
Nhưng Eruru chỉ mỉm cười khô khốc:
"Ok, không sao. Lời lẽ của một con ma cà rồng bẩn thỉu chẳng đáng để ta quan tâm. Nghe đây, nếu ngoan ngoãn để ta chặt đầu và đóng cọc xuyên tim, ít nhất ngươi sẽ có một cái chết nhẹ nhàng nhanh chóng."
"Cái----ngươi..!!!"
Nhận ra sát khí rõ ràng từ phái xung quanh, Rushella cuối cùng cũng hiểu mình đang ở trong tình cảnh nào.
"....Nhắc lại cái coi, con người, ngươi định làm gì cơ?"
"Giết ngươi. Có vấn đề gì sao?"
"Mạnh miệng đấy. Ta cũng muốn xem ngươi có thể làm được gì, nhưng chẳng phải ngươi chẳng có lí do nào để tấn công hay sao?"
"Lí do hả? Nguyên việc ngươi là một ma cà rồng cũng đủ để lãnh án tử hình rồi. Nhưng nếu muốn rõ ràng thì, được thôi. Người đứng bên cạnh ngươi đã cho bọn ta bằng chứng chứng minh ngươi tấn công một con người vào tối qua."
"Cái gì?!"
Rushella thốt lên kinh ngạc và quay sang Hisui. Nhưng cậu phướt lờ cô và nhìn chăm chăm vào Eruru.
"Hmm.... ta chưa từng nghĩ ngươi sẽ dám tấn công một cô gái giữa ban ngày ban mặt như thế. Ngươi thực sự là con ma cà rồng háu đói nhất dạo gần đây đấy."
"Hisui, không lẽ cô ta đang nói về lớp trưởng....... Không thể nào! T-Tôi không làm chuyện đó----!!!"
"Ngươi vẫn phủ nhận sao? Khó coi thật đấy. Nhưng mà dấu răng của ngươi hoàn toàn khớp với vết cắn trên cô nạn nhân - chính anh chàng này đã giúp bọn ta có được nó."
"Dấu răng.... của tôi? Hisui, cậu------"
Rushella mở to mắt và nhớ lại việc làm của Mei trong lúc kiểm tra sức khỏe ban sáng.
Hóa ra mục đích của chuyện đó là như vậy. Và sau tất cả..... đó lại là kế hoạch của Hisui.
"....Nghĩa là, cậu vẫn nghi ngờ tôi sao?!"
Cô cắn chặt môi trong khi nói một cách ấm ức. Nước dâng đầy lên trong mắt Rushella.
Nhưng Hisui vẫn không nói gì cả. 
"Ngươi có thể lảm nhảm những điều đó ở dưới địa ngục. Nếu một người bị hút máu thì lẽ tự nhiên là phải nghi ngờ ma cà rồng thôi. Cảm ơn vì đã hợp tác, Kujou-san. Giờ thì phần còn lại của việc xử lí con quỷ này cứ giao cho chúng tôi."
Eruru, Kishida và những cảnh sát tiến lại gần. Nhưng Hisui đột nhiên di chuyển.
Cậu đứng chắn giữa Rushella và những người kia như để che chở cho cô.
"Gì nữa đây?"
"Trước khi làm việc của mấy người, hãy để tôi xác nhận lại một số thứ đã. Ngay từ đầu, tại sao cô lại coi Rushella là nghi phạm?"
Hisui chỉ tay vào cô nàng ma cà rồng đứng phía sau. 
Nhìn vẻ mặt nghiêm trọng của cậu, Eruru không thể không thở dài.
"Bởi vì cô ta là một ma cà rồng, tất nhiên? Ngay từ khi nạn nhân xuất hiện thì điều này đã rõ ràng rồi, không phải sao?"
"Còn có những ma cà rồng khác ngoài cô ấy."
"Vậy còn lời khai của nạn nhân?"
"Đó mới là điểm tôi thấy nghi ngờ nhất đấy. Reina đã bị cắn, làm thế nào mà cô có thể tin cô ấy một cách chắc chắn như thế?"
"Thì sao-----Ah!?"
Eruru nghiến răng. Cô nhận ra lập luận của mình đã có lỗ hổng.
Đúng vậy. Nạn nhân bị ma cà rồng cắn không đáng tin.
Lí do là vì----
"Một khi bị cắn, nạn nhân sẽ tuyệt đối trung thành với ma cà rồng đã cắn họ - chủ nhân của họ. Chuyện ai đó tấn công những người đang cố bảo vệ họ sau khi bị cắn chẳng phải là điều gì quá xa lạ nữa. Chính vì thế mà lớp trưởng mới bị giữ trong tầng hầm, phải không? Nếu vậy, tại sao cô lại tin là Reina sẽ nói thật trong khi không tin rằng cô ấy sẽ không tấn công người khác? Ma cà rồng luôn bảo vệ chủ nhân của mình, họ không thể nào không thực hiện những mệnh lệnh được giao. Nếu tôi nói rằng kẻ tấn công đã buộc lớp trưởng khai như vậy, cô có lí do gì để phản bác không?"
"........"
Những đặc công bắt đầu xì xào. Họ đều sở hữu kiến thức kha khá về ma cà rồng, do đó họ hiểu được những điều mà Hisui đang nói. Và họ biết nó đúng.
Trước những ánh mắt nghi ngờ của cấp dưới, Eruru vẫn hết sức bình tĩnh.
"Đúng như cậu nói, hoàn toàn có khả năng xảy ra chuyện này. Tuy nhiên, không phải lúc nào mệnh lệnh cũng là tuyệt đối với người bị cắn. Nó còn phụ thuộc vào nhiều yếu tố------"
"Ví dụ như tốc độ biến đổi và sức mạnh tinh thần của nạn nhân, tôi nói không sao chứ? Reina đã ngấp nghé chuyển đổi hoàn toàn thành một ma cà rồng rồi, và cô ấy chỉ là một nữ sinh trung học bình thường không có gì đặc biệt. Cho dù có nhìn thế nào đi nữa, cô ấy rõ ràng không có đủ khả năng để chống lại một mệnh lệnh từ tên chủ nhân. Chính cô là người đã đưa tôi tới bệnh viện để kiểm tra tình trạng cô ấy đấy nhé? Đừng bảo phái các vị không biết điều này chứ?"
Lập luận của Hisui tiếp tục giáng một đòn nữa, thậm chí còn mạnh hơn.
Giơ tay ra hiệu cho những đặc công đang ồn ào, Eruru đưa ra con át chủ bài cuối cùng.
"Kể cả cậu có nói như vậy, dấu răng của cô ta khớp với vết cắn. Đó là bằng chứng không thể chối cãi. Nếu như dấu vân tay của con người vẫn có xác suất một phần triệu trùng lặp, thì không có bất cứ hai ma cà rồng nào có răng giống nhau cả. Điều này là chắc chắn!"
"Cô nói thật à?"
"Tất nhiên! Cậu đang thực sự phiền phức đấy?! Có lí do gì để cậu bảo vệ con quái vật này chứ?"
"Nói dối."
Hisui lạnh lùng phủ nhận câu nói của Eruru một cách tự tin.
"Chuyện đó là không thể. Tôi chắc chắn dấu răng đó không thể khớp với vết cắn trên cổ Reina được."
"Cậu đang nói cái quái gì------"
"Đúng là tôi đã nghi ngờ Rushella vào lúc đó. Giống cô thôi."
Hisui thờ ơ chỉ vào Rushella đang đứng phía sau.
Thật vậy, ngay khi nhìn thấy việc xảy ra tối hôm đó, cậu đã nghi ngờ cô chính là hung thủ.
Tuy nhiên-----
"Tôi cũng nghi ngờ cả mấy người nữa, Ban Cố vấn Cục điều tra Hiện tượng siêu nhiên..... phải không nhỉ?"
Eruru giật mình khi thấy ánh mắt sắc lẹm của Hisui, nhưng cô vẫn không hề nao núng:
"Cậu đang nói cái thứ vô nghĩa gì vậy? Chúng tôi là cảnh sát chính quy đấy."
"Ờ há, vậy ra các vị cảnh sát đây thiếu chuyên nghiệp tới dễ dàng tin lời khai của một nạn nhân có thể đang bị điều khiển sao? Gấp rút tìm kiếm bằng chứng để buộc tội Rushella.... ngay từ đầu tôi đã cảm thấy mấy người có ý định ép chết cô ấy bằng bất cứ giá nào rồi. Mà, vì chưa chắc chắn liệu có phải mình đang lo xa quá không nên tôi đã làm một số giả mạo nho nhỏ."
"Giả mạo!? Không lẽ...!?"
"Ờ. Xin lỗi nhưng trước khi miếng nhựa dẻo đó kịp cứng lại hoàn toàn..... Tôi đã lén bóp méo nó đôi chút rồi. Vì thế hình dạng dấu răng trên đó không còn nguyên vẹn như ban đầu đâu."
Cái cười khẩy lạnh lùng của Hisui Eruru đứng chết lặng, không nói nên lời.
Lí do "tiêu diệt ma cà rồng vì nó tấn công con người" đang bắt đầu sụp đổ.
"Giờ, vui lòng trả lời tôi làm thế nào mà một mẫu răng bị bóp méo lại có thể khớp vừa vặn với vết cắn của Rushella được không?~"
"Cậu------!!!!"
Eruru nghiến răng ken két.
Gã nam sinh mà cô tưởng là ngốc nghếch đã chơi lại cô một vố quá đau. Thực sự cậu nguy hiểm hơn nhiều so với những gì Eruru từng nghĩ.
Tận dụng lợi thế của mình, Hisui tiếp tục chèn ép:
"Thật lạ quá ~ Tại sao lại như thế nhỉ? Câu trả lời rất đơn giản, chắc tôi cũng chả cần phải nói nữa đúng không?"
"......"
"Là vậy đó. Ngay từ đầu cô đã có ý định vu cáo để giết Rushella rồi."
Eruru siết chặt nắm tay.')
INSERT [dbo].[Novel_Content] ([ID], [ProductID], [Prodect_Name], [Chapter_Number], [Chapter_Name], [Content]) VALUES (8, 1, N'Silver Cross and Draculea Tập 1', 7, N'Chương kết', N'Lập luận của Hisui đã khiến đội đặc công của MPD rơi vào trạng thái lúng túng nghiêm trọng. Theo nguyên tắc, họ không được phép tấn công trong trường hợp này. 
Những người lính không biết làm gì khác ngoài việc nhìn chằm chằm vào cấp trên đang cứng họng của họ để tìm câu trả lời.
"Cậu.... thực sự tin tưởng tôi sao?"
Rushella - người im lặng suốt nãy giờ khẽ hỏi với vẻ biết ơn. 
Hisui gãi gãi đầu: ".....Thực ra lúc đầu tôi cũng có chút nghi nghi, nhưng mà cái cách hút máu tàn bạo đó không thể là cô được..... Mà, giờ thì chúng ta sẽ làm gì đây, Điều tra viên-san?"
Cậu quay trở lại tông giọng đều đều khi nãy và nhìn chằm chằm vào Eruru. Cô gái đeo kính mặt biến sắc, không biết nên trả lời thế nào.
Nhưng mục tiêu của Hisui không phải là cô.
"Được rồi, vậy ai là kẻ đã hút máu của Reina? Tôi đoán là mình biết đấy, và [ai đó] khác cũng vậy..... Ông có gì để giải thích về việc đã không báo cáo cụ thể không?"
Hisui nhìn về phía------Kishida.
Tất cả mọi người ở đó cũng nhìn theo một cách ngạc nhiên.
Bị ánh mắt của tất cả chiếu vào, người đàn ông chỉ đơn giản là lẩm bẩm một cách chán chường.
"Thật là một tên nhóc phiền toái."
"Ah---!!!"
Người đầu tiên nhận ra mối nguy hiểm là Eruru.
Viên trợ lí trung thành luôn theo cô như hình với bóng đột nhiên biến mất.
Không, không phải biến mất------mà là di chuyển quá nhanh tới mức không kịp để ý. Quá nhanh so với tốc độ của một con người có thể đạt tới.
Chính xác,
Tốc độ này khiến người ta nghĩ đến một thứ duy nhất - ma cà rồng.
"Mày có thể tự trách bản thân đã nhúng mũi quá sâu vào chuyện này."
Kishida cười dữ dội, đôi mắt hắn lóe lên ánh sáng màu đỏ máu và hàm răng trắng ởn nhe ra.
Kéo mạnh tay Hisui, hắn cắm phập bốn chiếc răng nanh nhọn hoắt vào cổ cậu.
"Ông...!!!"
Cơn đau bùng lên từ cần cổ Hisui. Cậu có thể cảm thấy rõ máu mình đang bị rút ra khỏi cơ thể với tốc độ đáng sợ. 
Cái cách hút máu tàn bạo này nhắc cậu nhớ tới vụ tấn công nhằm vào Reina tối hôm trước. 
Không còn nghi ngờ gì nữa, kẻ này chính là hung thủ thực sự.
"Đúng là một thằng nhóc thông minh, nhưng vai trò của mày đến đây là hết rồi. Giúp ta câu giờ lũ đần độn này nhé?"
"Tên khốn, bỏ cậu ấy ra!!!"
Trước cả khi những người xung quanh kịp phản ứng, Rushella gầm lên và lao về phía Kishida.
Nhưng chuyện này hoàn toàn nằm trong dự tính của hắn.
Mỉm cười một cách bình tĩnh, Kishida nhấc đầu khỏi cổ Hisui. Hàm răng hắn nghiến lại và xé toạc da thịt trên cổ cậu.
Nắm ngang người cậu trai đầy máu, Kishida quẳng cậu về phía Rushella.
"N-Này!! Hisui!! Cố lên!!"
Cô vội vã bắt lấy Hisui. Đôi mắt Rushella ngân ngấn nước khi hét lớn tên cậu.
Tận dụng cơ hội này, Kishida rút chốt trái lựu đạn đeo trên thắt lưng và quẳng nó về phía Rushella.
Quả lựu đạn xì khói nhưng không phát nổ. 
Có điều rõ ràng đó không phải lựu đạn thường.
"Đây là---!!!"
Ngay lập tức, khứu giác của Rushella tê liệt. Cảm giác gần giống lúc cô bị Hisui bịt tỏi vào mũi hồi trước. Thế nhưng, mức độ của nó hoàn toàn khác hẳn so với khi đó.
Lựu đạn hơi cay chống bạo động - phiên bản đặc chế dùng cho ma cà rồng.
"Tên khốn....."
Rushella thậm chí không còn đủ sức để nói. Cô khuỵu chân xuống và bất tỉnh.
Đã đeo chiếc mặt nạ phòng hộ từ trước, Kishida không bị ảnh hưởng bởi quả lựu đạn. Hắn cười khẩy và túm ngang lưng Rushella rồi phóng vụt đi.
Dễ dàng nhảy qua bức tường cao vút, bóng dáng Kishida biến mất trong màn đêm như một ảo ảnh.
"Mau đuổi theo hắn!!!"
Eruru lập tức hét lớn ra lệnh. Phân nửa số đặc công tản ra để truy đuổi gã ma cà rồng, phần còn lại lao lên chiếc xe bọc thép.
Trong phút chốc, chỉ còn lại Hisui và Eruru ở lại.
"N-Này! Cậu còn sống không?!"
Cô vội vàng chạy tới và đỡ cậu lên. Eruru cố gắng giúp sơ cứu, nhưng ở đây không có đồ cứu thương. Tất cả những gì cô có thể làm là dùng chiếc khăn tay để cầm máu trong vô vọng.
Nhìn thấy vết thương nơi cổ, cô không thể không nhăn mặt và quay đi trong sợ hãi.
Một vết thủng há toác xé toàn cổ họng Hisui.
Động mạch cảnh đã bị cắn đứt hoàn toàn khiến máy phun ra như suối. Một phần da thịt của cậu đã hoàn toàn bị nhai nát. Với người bình thường mà nói, không chết ngay lúc đó đã là một kì tích.
Nhưng Hisui mở mắt ra và cố gắng đứng dậy.
"Cái----"
"Chết tiệt, gã khốn đó..... Rushella còn từ tốn hơn so với tên phàm ăn đó...... Trời ạ, mình phải mất tới 2 lít máu chứ ít đâu? Mà, thôi kệ, Chưa mất hết máu là may rồi."
Trước cảnh tượng khó tin đó, Eruru trợn mắt trừng trừng như thể nhìn ma. Cô hoảng hốt kêu lớn:
"N-Này! Cậu đang nói cái gì thế hả?! Nếu lúc này mà còn cố gắng cử động thì-------"
Rõ ràng Hisui đã mất quá nhiều máu, vượt qua lượng gây tử vong cho một con người. Từ góc nhìn của Eruru, cậu dường như đang gặp vấn đề về thần kinh di choáng vì mất máu.
Nhưng cô còn sững sờ hơn nữa khi Hisui mỉm cười và vạch cổ ra:
"Không thể nào------"
Vết thương khủng khiếp đã biến mất.
Cũng không hẳn là biến mất hoàn toàn, nhưng trước con mắt mở to của Eruru, máu bắt đầu ngừng chảy và rút lại vào trong vết thủng. Da thịt tái tạo lại từ miệng vết thương và đóng kín nó như thể chưa từng có gì xảy ra.
Mặc dù tốc độ hồi phục không quá nhanh, nhưng trên cần cổ bị cắn rách toạc lộ cả xương khi nãy chỉ còn lại một vết bầm hơi rỉ máu. Không còn bất cứ dấu vết nào của "nụ hôn" ma cà rồng.
"Tại sao....!? Tại sao lại có thể như vậy!? Không lẽ cậu là ma cà rồng.... không, chắc chắn không phải! Một sinh vật không phải người chưa từng được biết đến sao? Nhưng---"
"Tôi chỉ là một con người bình thường thôi. Ừm, ngoại trừ cái thể chất quái gở ngăn tôi biến thành ma cà rồng sau khi bị cắn thì hoàn toàn bình thường."
Hisui nhỏ nhẹ nói. Cậu đã chắc chắn Kishida là hung thủ và Eruru không liên quan gì đến vụ này, vì thế không việc gì phải đề phòng nữa.
"Sao có thể..... Cậu không bị biến thành ma cà rồng? Không thể nào.....!!"
Chứng kiến cảnh tượng đi ngược lại với quy tắc thông thường của thế giới, Eruru lắc đầu liên tục và cố gắng phủ nhận.
Nhưng cuộc kiểm tra hôm trước đã chứng tỏ điều Hisui vừa nói. Không chỉ không phải ma cà rồng, cậu hoàn toàn là một con người.
Trong vài phút, não cô tạm thời không thể theo kịp diễn biến đang xảy ra.
"....Mà, đúng là tình hình có chút không ngờ thật. Tôi cứ nghĩ cô là đầu sỏ toàn bộ vụ này cơ."
"Tất nhiên là không phải rồi!! Đ-Đó là vì ban đầu tôi tin chắc hung thủ là con ma cà rồng đó....."
"Hmm.... Người thực hiện phân tích cũng là gã Kishida đó à?"
"Ừ.... Tôi đã giao cho hắn việc mang mẫu tới phòng giám định và lấy kết quả, nhưng có vẻ hắn đã......"
Eruru cắn môi.
Hiện thực lúc này quá tàn khốc để có thể chấp nhận.
Cô đã đưa ra quyết định sai lầm trước toàn bộ cấp dưới. Trong mắt Hisui lúc này, cô chỉ là một con nhỏ ngớ ngẩn không hơn không kém. Chưa hết, trợ lí đáng tin cậy nhất của cô lại phản bội và hóa ra là con ma cà rồng mà cô cần phải tiêu diệt.
Hisui cũng hiểu cảm giác của Eruru, nhưng hiện tại cậu không có thời gian hỏi thăm.
"Này, cô có biết tại sao gã Kishida đó lại bắt cóc Rushella không? Nếu muốn bắt con tin và chạy trốn, tôi mới là lựa chọn tốt hơn chứ? Cả vụ tấn công lớp trưởng hôm qua cũng rất lạ nữa. Hắn dường như muốn sống ẩn mình, vậy tại sao lại tấn công con người một cách lộ liễu như thế?"
"Tôi không biết gì hết!! Làm thế quái nào tôi hiểu được cách nghĩ của bọn ma cà rồng chứ?!!"
Eruru hét lên một cách yếu ớt. Cơ thể nhỏ nhắn của cô run rẩy.
"Chết tiệt, tôi đúng là đã quá chủ quan mà..... Nghĩ lại mới thấy có rất nhiều dấu hiệu kì lạ ở hắn....."
Kishida luôn cố ý cho Eruru nhìn thấy mình ở dưới nắng để loại bỏ mọi nghi ngờ, nhưng không phải hắn miễn dịch hoàn toàn trước ánh mặt trời. Cái thói quen luôn đúng giờ chính là để hắn luôn nắm giữ thế chủ động bằng cách sử dụng các biện pháp phòng chống từ trước. Ngoài ra, Kishida luôn đeo găng tay để tránh Eruru có thể nhận ra khi tiếp xúc da với hắn.
"Có vẻ hắn đã khá cảnh giác..... Nhưng tại sao gã này lại cố tình xâm nhập vào một tổ chức bất lợi nhất với ma cà rồng như vậy?"
Đây là điều mà Hisui nghi ngờ nhất về Kishida.
Cứ cho là hắn ta dùng cái lập luận "nơi nguy hiểm nhất là nơi an toàn nhất" đi, nhưng việc ở trong một tổ chức chuyên xử lí quái vật là quá nguy hiểm. Kể cả có tinh thần thép cũng không thể chịu được việc phải đề cao cảnh giác 24/24 chẳng vì điều gì cả.
Thế nhưng hắn vẫn làm vậy. Thậm chí còn hạ mình làm thuộc cấp cho Eruru - vốn dĩ ma cà rồng có lòng kiêu hãnh cao khủng khiếp.
"Cái gã đó...... tôi đoán hắn đã giấu đi gì đó trong báo cáo của Mei."
"Là sao? Đúng là báo cáo của Sudou-san được huyển qua hắn trước khi nộp cho tôi nhưng......"
"Vậy cô có những thông tin gì về Rushella?"
"Không có gì đặc biệt cho lắm...... một ma cà rồng trà trộn vào trường cao trung. Chỉ vậy thôi."
"Biết ngay mà."
Hisui thở dài.
Cậu đã đoán đúng.
Thấy vậy, Eruru hỏi lại một cách khó hiểu:
"Cậu đang nói về cái gì vậy....? Báo cáo đó có chỗ nào đáng ngờ sai? Ý tôi là, ma cà rồng trà trộn vào xã hội con người đâu phải là việc gì đó hiếm lắm?"
"Ừ, đúng vậy. Nhưng phần quan trọng nhất đã bị giấu nhẹm đi: cô nàng rắc rối đó tự xưng mình là một Thuần Huyết."
"Cái gì cơ?!!"
(Ma cà rồng Thuần Huyết-------một sinh vật như thế đang ở đây ư?!!)
"Không thể nào..... ma cà rồng đó, không thể tin được, làm thế nào mà...... Trong báo cáo của Sudou-san không hề có gì như vậy....!"
"Hiển nhiên rồi, vì nó chưa bao giờ được nói cho cô cả. Mei cũng bảo tôi rằng cô ấy đã đưa báo cáo cho Kishida. Hắn chắc hẳn là đã giấu nhẹm nó đi trước khi báo cáo lại cho cô. Đó cũng là một trong những lí do khiến tôi không thể tin tưởng mấy người hoàn toàn. Rõ ràng Thuần Huyết là một mối nguy hiểm rất lớn, thế nhưng biện pháp đối phó của bọn cô lại rất bình thường. Chưa cần biết cô có tin vào điều đó không thì lẽ ra cũng phải hỏi lại để xác nhận."
"Vậy nghĩa là..... mục tiêu của Kishida..... ngay từ đầu đã là cô ta!?"
"Nhiều khả năng là như vậy. Ở bên cạnh cô sẽ giúp hắn thu thâp thông tin một cách dễ dàng hơn. Có lẽ hắn đã nhắm đến việc truy tìm Thuần Huyết ngay từ khi gia nhập MPD rồi. Hút máu lớp trưởng vào tối qua để đổ tội cho Rushella, sau đó lợi dụng nhân viên của MPD để bắt giữ cô ấy.  Với vị trí của mình, Kishida hoàn toàn có thể đánh lừa cô bằng một báo cáo giả rằng mục tiêu đã bị xử tử rồi đem Rushella giam giữ riêng ở một nơi khác.... Có điều lí do tại sao hắn muốn cô ấy vẫn chưa thể hiểu nổi...."
"Lúc này thì lí do không còn quan trọng nữa! Chết tiệt, một ma cà rồng Thuần Huyết sống ngay trong khu vực này mà không ai biết.... Tình hình quá sức nguy cấp rồi, tôi phải liên lạc gấp với trụ sở chính để xin tăng viện--------Không, trước hết phải điều chỉnh lại quân lực và trang thiết bị...!!!"
Eruru gạt Hisui sang một bên và rút di động ra để gọi cho cơ quan đầu não của MPD.
Lúc này Kishida bị bỏ qua - suy nghĩ duy nhất của cô lúc này là tìm cách để tiêu diệt Thuần Huyết Rushella.
Sau mọi chuyện, trái tim cô lại trở về điểm khởi đầu của nó.
"Này này, tôi đã chứng minh được cô ấy vô tội cơ mà?! Tại sao cô vẫn còn muốn giết Rushella chứ?"
Hisui cau mày và túm lấy tay Eruru, nhưng cô gạt ra:
"Nếu cô ta thực sự là một Thuần Huyết, vậy thì chắc chắn con ma cà rồng đó đã hút máu của hàng ngàn người rồi!!! Vậy vẫn chưa đủ để kết tội sao?!"
"Cô thì có quyền gì mà nói cô ấy chứ hả?! Tự nhìn lại bản thân mình đi!!"
Hisui tức giận đưa ra con bài cuối cùng của mình. Cậu giơ cánh tay trái ngang mặt Eruru.
Cánh tay vừa mới lau vết thương trên cổ và vẫn còn đang dính máu.
"...!!"
Eruru mở to mắt, cô vội vã quay mặt đi và bịt miệng lại. Cơ thể nhỏ nhắn run lên từng chập vì cơn ho dữ dội.
"Cô sợ máu hả?"
"T-Tất nhiên là không! Chỉ là m-một căn bệnh thôi. Tôi có thể xử lí nó ngay lập tức....."
Run rất đưa tay vào túi và rút ra một cái lọ, cô mở nắp và dốc ra vài viên thuốc.
Nhưng trước khi Eruru kịp tống mấy viên thuốc vào miệng, Hisui đã ngăn cô lại và hất văng chúng xuống đất.
"Bỏ ra! Cậu đang làm cái quái----"
"Dừng việc này lại đi. Uống thứ đó không phải việc tốt đẹp gì đâu."
"Cậu nói cái gì vậy...? Đây chỉ là thuốc bình thường......"
"Ờ, hẳn là bình thường. Tôi không biết người ta bán thuốc cắt cơn thèm máu ở mấy cửa hiệu ''bình thường'' đấy."
Khuôn mặt Eruru biến sắc ngay lập tức. 
"C-Cậu đang lảm nhảm gì thế hả?! Cậu đang ngụ ý tôi là một ma cà rồng phải không!? Cho dù có là trò đùa chăng nữa thì nó cũng đi quá xa rồi đấy!!"
"Không, cô không bị ảnh hưởng bởi ánh sáng. Tôi đã kiểm tra hồi chiều rồi."
Eruru giật mình. Cô chợt sực nhớ lại lúc Hisui đến sở cảnh sát.
[Ờ thì... Tôi muốn ra ngoài thôi. Ở trong đó bí lắm, với cả nó gợi lại vài kí ức không nên nhớ....]
Tại sao cậu phải cố tình đợi cô ở bên ngoài?
Câu trả lời là để xác nhận. Xác nhận xem Eruru có bị ảnh hưởng bởi ánh nắng mặt trời hay không.
"Cậu.... nghi ngờ tôi là ma cà rồng từ lúc đó?!"
"Yup. Cái cách mà cô tỏ ra khinh bỉ ma cà rồng không giống người thường. Nó khiến tôi nhớ đến kiểu như cực nam châm giống nhau thì đẩy nhau hơn. Tuy vậy vẫn có khả năng cô đã sử dụng một số biện pháp phòng hộ để ngăn ác dụng của ánh sáng, vì vậy tôi đã tìm cách kiểm tra..... Nhưng kết quả là không."
"!!?"
Eruru giật mình và đưa tay chạm lên má, đúng chỗ bị Hisui nhéo lúc chiều.
Cô đã nghĩ rằng đó chỉ đơn giản là hành động trả thù rất đỗi trẻ con, nhưng đến bây giờ Eruru mới nhận ra ý nghĩa thực sự đằng sau.
Cách duy nhất để kiểm tra xem ma cà rồng có sử dụng các tác nhân phòng chống ánh sáng hay không là tiếp xúc trực tiếp qua da. Và bằng động tác đó, Hisui đã khẳng định được điều cậu muốn biết.
"Cậu..... Cậu bắt đầu nghi ngờ tôi từ bao giờ?!"
"Từ lần đầu tiên gặp nhau. Sức mạnh của cô hoàn toàn không thể nào khớp với cơ thể nhỏ nhắn đó. Ngoài ra thì, cô đã quay đi khi tôi bị chảy máu mũi, phải không? Một chuyên gia chống ma cà rồng lại sợ máu sao? Tôi không nghĩ vậy - cô không sợ máu, cô sợ sẽ không kiềm chế được khi nhìn thấy máu. Tiện thể thì gã Kishida cũng tỏ ra lảng tránh nên tôi nghi ngờ cả hắn nữa. Hành động mở cửa sổ ra cho bay bớt mùi máu cũng rất đáng ngờ - làm thế nào mà cô có thể ngửi thấy mùi máu cực nhẹ như vậy?"
"......."
Toàn bộ chuyến thăm Reina chỉ là cái cớ.
Mục đích thực sự là để xác nhận danh tính của Eruru.
"...Tch, đồ quỷ quyệt, cậu giỏi hơn tôi nghĩ đấy..... Nhưng vậy là cậu cũng đã xác nhận tôi không phải ma cà rồng rồi chứ?"
"Ừ. Cô không sợ ánh sáng, và thậm chí còn sử dụng ngon lành một khẩu súng bạc gắn hình thánh giá nữa."
Hisui thừa nhận
Nhưng giọng cậu không hề dịu đi chút nào.
"Cô là một Bán quỷDhampir, phải không?"
Bằng một giọng nói không chút cảm xúc, cậu kết luận danh tính thực sự của Eruru.
Cô gái nhỏ nhắn mặt biến sắc. Đôi mắt đằng sau cặp kính nửa gọng tràn ngập sự sợ hãi.
Bán quỷ - con lai giữa người và ma cà rồng.
Sinh ra trên ranh giới giữa ngày và đêm, ánh sáng và bóng tối, thừa hưởng dòng máu của hai chủng tộc.
Mang cơ thể với những đặc điểm kép của cả con người và ma cà rồng.
Nếu khéo léo, họ có thể đóng giả con người gần như một cách hoàn hảo, nhưng đối với một người quá mức am hiểu về ma cà rồng như Hisui thì mọi sự che giấu đều vô dụng.
Eruru ôm lấy vai mình trong sợ hãi. Toàn thân cô run lên bần bật.
(Trông cứ như người nghiện đang cai thuốc vậy.....)
Hisui nhìn cô và nghĩ thầm. Eruru vươn bàn tay run rẩy ra và cố gắng lấy lại lọ thuốc từ Hisui, nhưng vô ích.
"Không phải tôi đã nói là dừng việc này lại sao?"
Eruru cúi đầu và cắn chặt môi.
Cơn khát máu của ma cà rồng là một trong số những đặc tính mà bán quỷ thừa hưởng.
Không giống như ma cà rồng, họ không có khả năng biến con người thành nô lệ sau khi cắn. Nạn nhân của họ hoàn toàn không bị gì khác ngoài mất máu. Nhưng không có nghĩa là họ không cần uống máu.
"Cả ma cà rồng và bán quỷ đều không thể chống lại cơn khát máu. Thiếu máu không gây tử vong, nhưng sức mạnh của họ sẽ giảm đi. Và khi giảm đến một giới hạn nào đó thì--------chắc cô biết chuyện gì sẽ xảy ra rồi chứ? Không lí trí. Không nhân tính. Chỉ có cơn khát máu vô hạn."
"......"
"Thứ thuốc này chỉ có khả năng kiềm chế cơn thèm máu, nó không thay thế máu được đâu. Nếu cô thực sự quan tâm đến sự an toàn của những người xung quanh thì nên thay đổi cách thức đi. Càng cố gắng kiềm chế cơn khát, thì khi điên lên sẽ càng nguy hiểm mà thôi. Vậy nên....."
"VẬY THÌ SAO CHỨ?! CẬU ĐANG BẢO TÔI HÚT MÁU NGƯỜI KHÁC SAO?! BẢO TÔI LÀM CÁI VIỆC MAN RỢ ĐÓ SAO?!!"
Eruru ngẩng đầu lên, đôi mắt cô ầng ậc nước.
Cô tiếp tục gào lên tuyệt vọng:
"Cậu thì biết cái gì mà nói chứ!? Dừng việc này lại?! Cậu biết tôi sẽ buộc phải tấn công con người nếu không dùng thứ thuốc này, vậy mà cậu bảo dừng lại sao?! Hút máu người khác là bình thường à?! Đừng có đùa!!"
Tiếng gào như thổi tung là phổi của cô gái nhỏ bé.
Những cảm xúc tối tăm ở sâu trong trái tim đang trào lên qua từng lời nói và dòng nước mắt của Eruru.
"Cái đặc tính khốn nạn này, cái định mệnh khốn nạn này..... một mình tôi chịu là đủ rồi! Vì thế tôi mới cần phải tận diệt lũ ma cà rồng đó....!!"
Lí do là như vậy.
Cô tuyệt vọng theo đuổi công việc loại trừ ma cà rồng khỏi thế giới là do mối hận thù trong tim, đồng thời cũng là để ngăn những sinh vật giống mình được tạo ra.
Nhưng Hisui không nói gì cả. Cậu lặng lẽ chạm ngón tay mình vào môi Eruru.
Những ngón tay vẫn còn dính máu.
Và vài giọt chất lỏng đỏ tươi nhỏ vào trong miệng cô gái, làm dịu đi cơn khát đang giằng xé.
"C-Cậu....!!"
"Cô chính ra cũng tốt phết nhỉ?"
"C-C-Cậu đang nói cái quái gì------"
"Thì đó, khi tôi bị gã kia hút máu, cô đã lập tức chạy lại xem xét tình trạng của tôi thay vì tập trung vào việc tìm kiếm hắn... Mà vậy cũng không ổn đâu. Mục đích chính của Kishida khi tấn công tôi là để giữ chân cô lại cơ mà? Lẽ ra cô phải suy xét thấu đáo hơn chứ?"
"Đ-Đó là...."
"Cũng giống như lớp trưởng, phải không? Cho dù có đáng ghét tới đâu, cô vẫn muốn tin rằng nạn nhân bị cắn vẫn là người, và muốn giúp họ. Ah, phải rồi."
Eruru định nói gì đó, nhưng Hisui chợt quay đi và rút điện thoại ra. Cậu bấm số và đưa lên tai:
"Alo, ừ, là tôi đây. Cô qua nhà tôi được không? Đang ở đâu vậy? Cửa hàng tiện lợi chỗ Nichoume? Tuyệt, vậy qua ngay nhé. Cô nàng phiền nhiễu đó mới bị bắt cóc..... Gì cơ? Bận á? Này, để tôi nói cho cô biết, Rushella dính vào vụ nguy hiểm này là do cô cả đó biết không hả?! Rồi rồi, tôi sẽ giải thích sau. Cảm ơn."
Hisui cúp máy. Sau đó cậu quay lại với Eruru và hạ giọng.
"....Tôi được nuôi lớn bởi một ma cà rồng. Và người đã giết cả gia đình tôi cũng chính là cô ấy."
"Hả??!!"
Vì Eruru đã tiết lộ thân phận của mình (thực chất là bị đào ra), nên cậu cảm thấy mình cũng nên nói gì đó cho công bằng.
Tuy nhiên cái giọng đều đều vô cảm đó hoàn toàn không hợp với sự việc khủng khiếp trong câu nói của Hisui.
"Tôi không nhớ rõ lắm, nhưng dường như cha mẹ muốn giết tôi. Họ định thực hiện một vụ tự sát tập thể cùng với đứa con lúc đó còn chưa thể hiểu được chuyện gì đang xảy ra. Đúng lúc đó, một ma cà rồng tình cờ xuất hiện, giết chết hai người họ và nuôi tôi lớn lên cho đến gần chục năm sau. Chuyện là như vậy đó. Thế, cô nghĩ tôi nên làm gì với điều này? Căm thù kẻ đã giết gia đình mình? Hay cảm ơn người đã trở thành gia đình mình? Nói đi, là một con người, tôi phải làm gì?"
Eruru không trả lời.
Cô đơn giản là không thể trả lời được.
"Hài hước thật..... ma cà rồng đó cuối cùng đã chết trong lúc cứu tôi lần nữa. Chấp nhận bị biến thành tro bụi để cho tôi được sống."
Kí ức trong quá khứ hiện lên trước mắt Hisui như một thước phim.
Chịu đựng sự thiêu đốt của ánh mặt trời dữ dội, ma cà rồng trong hình dạng một cô gái xinh đẹp cố gắng ấn mạnh lên ngực cậu bé để làm tim đập lại.
"Người đó không chỉ cứu tôi, mà còn rất nhiều người khác nữa. Nhưng đến cuối cùng, không ai cứu được cô ấy cả."
"........"
"Tất cả những người được cứu đều căm ghét ma cà rồng. Họ chửi rủa cô ấy, rằng cô ấy là quái vật và đáng phải chết. Rồi họ ném đá vào cô ấy. Này, theo cô thì bên nào đúng?"
Erủu câm lặng. Cô ra hiệu Hisui đừng hỏi nữa.
Cô không muốn nghe những câu hỏi như thế này.
Thế nhưng cậu vẫn tiếp tục nói.
"Tôi nên làm gì đây? Là một con người, tôi có nên làm theo họ và nguyền rủa ma cà rồng đã nuôi nấng tôi? Là một con người, tôi nên làm theo đạo đức họ dạy và nói lời cảm ơn? Cho dù là quái vật hay gì đi nữa, cô ấy đã cứu tôi, phải không? Một lời cảm ơn là không xứng đáng sao?"
"......"
"Trước khi ma cà rồng đó ra đi, cô ấy đã biến tôi thành cái loại kì quặc này. Nếu không làm vậy, tôi chắc chắn sẽ chết. Và kể từ đó, tôi miễn dịch với mọi cú cắn của ma cà rồng. Vậy bây giờ.... tôi là gì?"
"......"
"Con người biến thành ma cà rồng sau khi bị cắn bởi ma cà rồng. Suy ngược lại, một con người không biến thành ma cà rồng sau khi bị cắn sẽ không được coi là con người nữa. Nếu vậy thì, tôi là gì? Quái vật? Hay thậm chí là thứ gì đó còn tệ hơn quái vật?"
Eruru quay mặt đi và cố gắng lảng tránh ánh mắt của Hisui.
".....Tôi không biết. Nhưng vậy nghĩa là.... cậu muốn cứu cô gái đó? Cứu một ma cà rồng Thuần Huyết, kẻ thù của cả nhân loại?"
"Đúng."
"Cậu chắc chứ?"
"Cô gái đó sẵn sàng đứng chờ dưới cơn mưa tới ngất xỉu mà không hề hút máu ai để hồi sức. Cô gái đó sẵn sàng giữ lời hứa không tấn công ai bằng mọi giá cho dù cô ấy là một ma cà rồng sống bằng việc uống máu."
"....."
"Vì tôi mà cô gái đó cố gắng luyện tập kĩ thuật hút máu một cách ngây thơ. Cho dù đang bị bao vây, cô ấy vẫn cố cứu tôi khi gặp nguy hiểm...... Vậy nói đi, tôi nên làm gì đây?"
Giọng nói vẫn cực kì bình tĩnh.
Nhưng Eruru có thể cảm nhận trong đó là một sự nôn nóng đang gào thét.
"Cô gái đó đã hứa với tôi, rằng trước khi tìm ra được mình là ai, cô ấy sẽ không hút máu bất cứ người nào ngoài tôi cả. Và tôi cũng có lời hứa của riêng mình. Từ giờ đến lúc đó.... tôi là người hầu của cô ấy. Và giờ thì tôi phải đi cứu chủ nhân của mình. Vậy thôi."
Quẳng lại những lời đó, Hisui bước vào trong nhà.
Khi Eruru còn đang bần thần nhìn theo bóng lưang cậu, thì một giọng nói quen thuộc vang lên từ phía sau cô.
"Chào buổi tối ~ Ah, hình như không khí ở đây hơi trầm thì phải. Có chuyện gì hay ho vừa xảy ra sao?"
Cô gái nhân tạo Sudou Mei trong bộ đồng phục bước qua cánh cổng vào tiến vào khu vườn.
"Sudou-san.... sao cô lại ở đây?"
"Hi-kun gọi tôi tới. Vậy.... ai bị bắt thế, cô nàng Rushella à?"
"Cô định giúp cậu ta thật sao....? Tôi nhắc trước là việc này không nằm trong biên chế, đó hoàn toàn là quyết định của Kujou Hisui. Không có bất kì phần thưởng nào đâu."
"Biết rồi ~ Ổn thôi mà, tôi tự nguyện tham gia vụ này. Ai có thể từ chối được yêu cầu của chàng trai dễ thương đó chứ?~"
Mặc dù đột nhiên bị gọi tới đây giữa đêm hôm, Mei trông chẳng có vẻ gì là khó chịu.
Eruru hỏi lại một cách bối rối:
"Tại sao....? Không phải cô ghét ma cà rồng sao?"
"Tôi không thích bọn chúng. Và đặc biệt là con nhỏ đó - cô ta là tình địch của tôi."
"Tôi không hiểu..... Cả hai người, đặc biệt là Kujou Hisui. Cậu ta sẵn sàng đi xa dến vậy chỉ để cứu một ma cà rồng sao?"
"Yup. Nhưng đừng hiểu lầm: nếu Rushella thực sự đã tấn công và hút máu lớp trưởng..... anh ấy sẽ tự tay tiêu diệt cô ta."
"...!?"
"Đó là cách mà anh ấy chịu trách nhiệm cho sai lầm của mình. Nhưng sâu trong tim Hi-kun vẫn tin vào sự vô tội của Rushella, chính vì thế nên anh ấy mới cố gắng điều tra vụ này và tìm kiếm sự thật đằng sau nó. Nhưng đồng thời anh ấy cũng lo lắng cho lớp trưởng nữa. Ma cà rồng và con người - chỉ một bên là đủ, nhưng Hi-kun lại chọn con đường khó khăn nhất và cố đứng về cả hai phía. Anh ấy đã sống như vậy và sẽ tiếp tục sống như vậy. Nếu Rushella từ bỏ nhân tính và tấn công con người, anh ấy chắc chắn sẽ tự tay kết liễu cô ta."
"Rốt cuộc thì cậu ta là ai....?"
"Chỉ là một con người bình thường. Nhưng Hi-kun coi tất cả đều bình đẳng với nhau cho dù là chủng tộc nào đi nữa. Sau khi biết được danh tính thật của tôi, không có bất cứ điều gì thay đổi cả. Mặc dù tôi khá tự tin về ngoại hình của mình, nhưng gần như bất cứ ai cũng sẽ bỏ chạy và xa lánh nếu biết tôi chỉ là một con quái vật nhân tạo, phải không? Nhưng Hi-kun không làm vậy. Anh ấy tiếp tục cư xử bình thường như chưa từng có chuyện gì xảy ra."
Mei nói với vẻ mặt tự hào.
Ban đầu, Hisui chỉ là mục tiêu cho sứ mệnh "có một đứa con" của dòng tộc Frankenstein, nhưng đến khi nhận ra thì, Mei nhận ra mình đã phải lòng cậu.
Nếu như gặp được những con người như thế này, có lẽ bản gốc đã không cần phải đuổi theo kẻ sáng tạo đến cuối đời và có thể sống một cuộc sống hạnh phúc thay vào đó.
".....Tôi không hiểu được."
Eruru lẩm bẩm. Trước khi cô có thể nói gì thêm, có tiếng bước chân vọng lại từ phái sau.
Đó là Hisui.
Khoảnh khắc cậu lọt vào tầm nhìn, Eruru chợt cảm thấy tức ngực và chóng mặt. Hai tai cô ù đi.
"Tốt hơn là cô không nên nhìn nó. Cho dù có là bán quỷ đi nữa thì thứ này vẫn có thể gây tử vong đấy."
Thứ mà Hisui mang theo chính là nguyên nhân gây ra cơn sốc của Eruru - không, chính xác thì nó có thể khiến cho bất cứ ma cà rồng nào nhìn thấy phải choáng váng.
Một cây thánh giá khổng lồ.
Cậu đã rút nó ra khỏi nền đất ở tầng hầm, và mang nó lên đây với những sợi xích bạc quấn trên lưng.
"Đó là thứ gì.....?"
Cẩn thận không nhìn vào cây thánh giá dài bằng chiều cao của Hisui, Eruru hỏi một cách sợ hãi:
"Thập tự thánh kiếm, [Tzara Blade]. Có khả năng khống chế ma cà rồng chỉ bằng sự hiện diện của nó, và đọ sắc bén thì hơn bất cứ lưỡi kiếm nào. Nhược điểm duy nhất là trọng lượng quá lớn.... thứ này phải nặng đến 30kg ấy."
"T-Tzara Blade? Tôi đã từng đọc về nó nhưng...... Có thật đây là vũ khí không vậy? Thứ này còn ghê gớm hơn tôi tưởng nữa. Ngay cả người bình thường cũng có thể cảm thấy thánh lực tỏa ra từ nó."
"Một vị Thánh từng bị đóng đinh vào cây thánh giá này trong quá khứ trước khi chế tác. Thứ mang [biểu tượng của cái chết] đã được tái tạo thành [biểu tượng của sự cứu rỗi]. Đây là thánh vật cổ nhất còn sót lại từ thời kì đó. Được rèn bằng bạc nguyên chất trước khi chế tác lại thành thanh kiếm, cho dù xét trên phương diện của một biểu tượng tôn giáo hay vũ khí chống ma cà rồng, nó đều thuộc vào hàng cao nhất. Thực sự thì, tôi khá chắc là mấy người ở tòa thánh Vatican sẽ cố sống cố chết đòi lại thứ này nếu biết đến sự tồn tại của nó."
"Làm thế nào mà một thứ như vậy lại nằm trong tay của cậu được chứ?!!"
"Tôi nhận nó lại từ người đã nuôi tôi."
Hisui chỉ giải thích ngắn gọn như vậy.
Quay về phía Mei, cậu cười gượng gạo:
"Etou.... cô cầm hộ tôi thứ này đươc không? Nặng ghê quá..."
"Cái gì...!! Này, anh đang làm mất vẻ ngầu của mình chỉ sau hai phút đấy! Và anh nỡ lòng nào đối xử với em như phu khuân vác thế chứ?!"
"Thôi mà ~ Giúp tôi đi, tôi biết cô thừa sức ấy chứ? Tôi vừa bị hút máu lúc nãy và bây giờ vẫn còn thấy hơi chóng mặt này."
"Mồ.... Thôi được rồi, nhưng anh phải đi chơi với em một ngày coi như trả công đấy, được không? Đi chơi qua đêm luôn ấy~"
"Tôi không dám mạo hiểm đời trai của mình như thế đâu. Dừng vụ đó lại vào cuối giờ chiều đi."
"Nnnnn~~ Thôi được rồi....."
Mei ngừng ngúng nguẩy và miễn cưỡng cầm lấy thanh Tzara Blade. Với một cử động nhẹ nhàng, cô nhấc bổng nó lên chỉ bằng một tay.
Hisui xoa xoa vai,  và hai người bắt đầu đi khỏi khu vườn.
"N-Này, chờ đã! Hai người đình đi cứu ma cà rồng đó thật sao? Cậu còn không biết cô ta đang ở đâu cơ mà?"
"Cô đã cấp cho Mei một số công cụ tiêu chuẩn của điều tra viên, đúng chứ? Xin lỗi vì hơi táy máy nhưng tôi đã lén lấy một con chip phát tín hiệu và cài nó lên người Rushella mấy hôm trước. Bỏ vụ ma cà rồng sang một bên, nguyên việc để cô nàng rắc rối kia chạy lung tung ngoài đường đã đủ tệ lắm rồi."
Một lần nữa, Hisui khiến Eruru bất ngờ bởi khả năng tính trước mọi chuyện của cậu.
Nhẹ nhàng vẫy tay chào, cậu bước tiếp cùng với Mei.... nhưng lại bị cô gái đeo kính túm tay giữ lại lần nữa.
"Hey, chúng ta đang rất vội cậu biết không hả?"
"Cô bị gì thế? Tất nhiên là tôi biết, tôi đang cố gắng giải quyết xong vụ này để vào nhà ngủ mà!"
"Trong tình huống như thế này mà cậu vẫn muốn cuốc bộ như mấy tên ngốc hả? Làm ơn động não một tí đi, tôi sẽ cho gọi một chiếc xe tới đây ngay."
Vì lí do nào đó, Eruru đã lấy lại vẻ đáng tin cậy khi trước.
Đẩy chiếc kính gần như tuột xuống khi nãy lên bằng lòng bàn tay, ánh nhìn tự tin lại một lần nữa lấp lánh trong mắt cô:
"Từ giờ đến lúc đó, chúng ta hãy bàn kế hoạch để giải quyết vụ này."
')
INSERT [dbo].[Novel_Content] ([ID], [ProductID], [Prodect_Name], [Chapter_Number], [Chapter_Name], [Content]) VALUES (9, 2, N'Silver Cross and Draculea Tập 2', 0, N'Mở đầu', NULL)
INSERT [dbo].[Novel_Content] ([ID], [ProductID], [Prodect_Name], [Chapter_Number], [Chapter_Name], [Content]) VALUES (10, 2, N'Silver Cross and Draculea Tập 2', 1, N'Chương 1 - Cuộc họp của quái vật', NULL)
INSERT [dbo].[Novel_Content] ([ID], [ProductID], [Prodect_Name], [Chapter_Number], [Chapter_Name], [Content]) VALUES (11, 2, N'Silver Cross and Draculea Tập 2', 2, N'Chương 2 - Công thức của phù thủy', NULL)
INSERT [dbo].[Novel_Content] ([ID], [ProductID], [Prodect_Name], [Chapter_Number], [Chapter_Name], [Content]) VALUES (12, 2, N'Silver Cross and Draculea Tập 2', 3, N'Chương 3 - Săn lùng phù thủy', NULL)
INSERT [dbo].[Novel_Content] ([ID], [ProductID], [Prodect_Name], [Chapter_Number], [Chapter_Name], [Content]) VALUES (13, 2, N'Silver Cross and Draculea Tập 2', 4, N'Chương 4 - Trại huấn luyện mùa xuân', NULL)
INSERT [dbo].[Novel_Content] ([ID], [ProductID], [Prodect_Name], [Chapter_Number], [Chapter_Name], [Content]) VALUES (14, 2, N'Silver Cross and Draculea Tập 2', 5, N'Chương 5 - Máu cậu là của tôi', NULL)
INSERT [dbo].[Novel_Content] ([ID], [ProductID], [Prodect_Name], [Chapter_Number], [Chapter_Name], [Content]) VALUES (15, 2, N'Silver Cross and Draculea Tập 2', 6, N'Chương 6 - Ma cà rồng và phù thủy', NULL)
INSERT [dbo].[Novel_Content] ([ID], [ProductID], [Prodect_Name], [Chapter_Number], [Chapter_Name], [Content]) VALUES (16, 2, N'Silver Cross and Draculea Tập 2', 7, N'Chương kết', NULL)
INSERT [dbo].[Novel_Content] ([ID], [ProductID], [Prodect_Name], [Chapter_Number], [Chapter_Name], [Content]) VALUES (17, 3, N'Silver Cross and Draculea Tập 3', 0, N'Mở đầu', NULL)
INSERT [dbo].[Novel_Content] ([ID], [ProductID], [Prodect_Name], [Chapter_Number], [Chapter_Name], [Content]) VALUES (18, 3, N'Silver Cross and Draculea Tập 3', 1, N'Chương 1 - Quan tài nơi đáy biển', NULL)
INSERT [dbo].[Novel_Content] ([ID], [ProductID], [Prodect_Name], [Chapter_Number], [Chapter_Name], [Content]) VALUES (19, 3, N'Silver Cross and Draculea Tập 3', 2, N'Chương 2 - Touko-san', NULL)
INSERT [dbo].[Novel_Content] ([ID], [ProductID], [Prodect_Name], [Chapter_Number], [Chapter_Name], [Content]) VALUES (20, 3, N'Silver Cross and Draculea Tập 3', 3, N'Chương 3 - Trại huấn luyện mùa hè', NULL)
INSERT [dbo].[Novel_Content] ([ID], [ProductID], [Prodect_Name], [Chapter_Number], [Chapter_Name], [Content]) VALUES (21, 3, N'Silver Cross and Draculea Tập 3', 4, N'Chương 4 - Ác mộng lúc bình minh', NULL)
INSERT [dbo].[Novel_Content] ([ID], [ProductID], [Prodect_Name], [Chapter_Number], [Chapter_Name], [Content]) VALUES (22, 3, N'Silver Cross and Draculea Tập 3', 5, N'Chương 5 - Thức tỉnh từ lòng vực', NULL)
INSERT [dbo].[Novel_Content] ([ID], [ProductID], [Prodect_Name], [Chapter_Number], [Chapter_Name], [Content]) VALUES (23, 3, N'Silver Cross and Draculea Tập 3', 6, N'Chương 6 - Con quái vật mạnh nhất', NULL)
INSERT [dbo].[Novel_Content] ([ID], [ProductID], [Prodect_Name], [Chapter_Number], [Chapter_Name], [Content]) VALUES (24, 3, N'Silver Cross and Draculea Tập 3', 7, N'Chương kết', NULL)
SET IDENTITY_INSERT [dbo].[Novel_Content] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (1, 2, N'Silver Cross and Draculea Tập 1', 1, 1, N'Sống chung với một ma cà rồng ư?
“Không thể nào… Sao ngươi lại không nghe theo lời ta hả!? Rõ ràng là ta đã hút máu ngươi rồi cơ mà, tại sao chứ!?”
Vào ngày đầu tiên khi vừa lên Cao Trung, Kujou Hisui, một cậu học sinh muốn có “một cuộc sống hoàn toàn bình thường”, đã bị tấn công bởi một nữ ma cà rồng bị mất trí nhớ, Rushella Dahm Draculea. Cô rất tò mò khi thấy rằng tất cả những năng lực của mình đều không có tác dụng với Hisui. Bởi vậy, cô không chỉ tìm về nhà Hisui và sống luôn tại đó, mà còn cùng cậu tới trường học-
Hisui không còn cách nào khác ngoài việc đồng ý giúp Rushella lấy lại trí nhớ của mình. Nhưng rắc rối này chưa qua, rắc rối khác đã lại đến. Với màn “tấn công” của Sudou Mei, một nữ sinh đầy bí ẩn và bị một cô gái từ Cục Điều tra Hiện tượng Siêu nhiên bắt cóc vì có dính líu đến Rushella, cuộc sống bình thường của Hisui đã hoàn toàn đảo lộn-
Câu chuyện hài hước, lãng mạn cùng với những hiện tượng siêu nhiên đầy bí ẩn trong cuộc sống học sinh của Hisui chính thức bắt đầu!', N'Draculea_v01_cover.jpg', 120000.0000, N'Admin tự dịch', 10, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (2, 2, N'Silver Cross and Draculea Tập 2', 1, 1, N'', N'Draculea_v02_cover.jpg', 92000.0000, N'', 35, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (3, 2, N'Silver Cross and Draculea Tập 3', 1, 1, N'', N'Draculea_v03_cover.PNG', 100000.0000, N'', 7, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (4, 2, N'Silver Cross and Draculea Tập 4', 1, 1, N'', N'Draculea_v04_cover.jpg', 98000.0000, N'', 36, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (5, 2, N'Silver Cross and Draculea Tập 5', 1, 1, N'', N'Draculea_v05_cover.png', 120000.0000, N'', 39, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (6, 1, N'Black Bullet Tập 1', 1, 2, N'Thế giới đã kết thúc. Tương lai - nơi diễn ra trận chiến khủng khiếp chống lại một loại virus ký sinh mang tên "Gastrea" ... và thất bại. Nhân loại bị dồn vào chân tường và sống trong tuyệt vọng. Rentaro và Enju đối mặt với nguy hiểm thường xuyên trong công việc của họ với tư cách là một nhóm chuyên gia chống Gastrea được gọi là "nhân viên an ninh dân sự". Như thể cuộc chiến chống lại sự lãng quên hàng ngày là không đủ, họ sẽ sớm đối mặt với mối đe dọa có thể phá hủy toàn bộ Tokyo ...', N'Black Bullet Ep 01.jpeg', 116000.0000, N'Kẻ tự xưng là Thần', 18, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (7, 1, N'Black Bullet Tập 2', 1, 2, N'Sau khi Rentaro Satomi đánh bại Gastrea Giai đoạn Năm, Khu vực Tokyo trở lại trạng thái bình thường khó chịu. Khi người lãnh đạo đầy tham vọng của Khu vực Osaka, Sougen Saitake, yêu cầu một chuyến thăm với Lady Seitenshi, cô ấy cần một vệ sĩ mới - và cô ấy nên chọn ai ngoài người anh hùng mới của thành phố, Rentaro. Tuy nhiên, những thế lực đen tối đang âm mưu chống lại Lady Seitenshi, và nguồn gốc của họ gần quê hương hơn bất cứ ai dám tưởng tượng. Rentaro và Enju sẽ phải đối đầu với một loại mối đe dọa mới để bảo vệ nền hòa bình mong manh mà họ đã giành được - nhưng làm thế nào để bạn chiến đấu với kẻ thù mà bạn thậm chí không thể nhìn thấy?', N'Black Bullet Ep 02.jpeg', 108000.0000, N'Chống lại tên bắn tỉa', 23, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (8, 1, N'Black Bullet Tập 3', 1, 2, N'Rentaro, Enju, Kisara và tay bắn tỉa đáng sợ Tina - ngay khi họ nghĩ rằng tương lai có vẻ ít chắc chắn hơn một chút, họ phải đối mặt với một khám phá khủng khiếp: Một trong những tảng đá nguyên khối khổng lồ bảo vệ Khu vực Tokyo khỏi sự xâm lược của Gastrea quái dị đang trên bờ vực sụp đổ, đặt cuộc sống của mỗi con người trong thành phố vào nguy cơ diệt vong! Có cách nào để cứu lấy Khu vực Tokyo không? Và ngay cả khi có, Rentaro, Enju, Kisara và Tina sẽ ra sao?', N'Black Bullet Ep 03.jpeg', 87000.0000, N'Sự hủy diệt bởi lửa', 39, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (9, 1, N'Black Bullet Tập 4', 1, 2, N'Một trong những Monoliths khổng lồ bảo vệ Khu vực Tokyo khỏi những sinh vật Gastrea siêu mạnh do virus đã bị tiêu diệt. Và đúng theo lịch trình, Gastrea Aldebaran của Giai đoạn thứ tư dẫn đầu một đội quân xâm lược của quái vật vào thành phố. Các lực lượng tự vệ tinh nhuệ được cử đến để đối mặt với chúng, và những âm thanh khủng khiếp của chiến tranh vang vọng khắp một chiến trường mới được rửa tội - nhưng ngay sau đó một sự im lặng căng thẳng ập xuống. Điều gì đang hiện ra trước mắt Rentaro và những người bạn của cậu ấy? Bộ phim kinh dị trong tương lai gần về sự sống sót sau khải huyền vẫn tiếp tục!', N'Black Bullet Ep 04.jpeg', 96000.0000, N'Sự báo thù của ta', 5, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (10, 1, N'Black Bullet Tập 5', 1, 2, N'Khi sự hỗn loạn của Trận chiến Kanto thứ ba lắng xuống, hòa bình cuối cùng cũng trở lại với Cơ quan An ninh Dân sự Tendo, và Rentaro, Kisara, Enju và Tina đang tận dụng tối đa sự yên tĩnh. Nhưng khi một người bạn cũ từ thời thơ ấu của Rentaro xuất hiện trở lại, những ngày tươi sáng của họ bỗng chốc trở nên u tối - và Rentaro thấy mình bị cầm tù vì một vụ giết người vô nghĩa. Anh ta lên kế hoạch trốn thoát trong tuyệt vọng, nhưng kẻ thù của anh ta tiếp tục đến, và chúng giống như chưa từng giao chiến với cậu trước đây...', N'Black Bullet Ep 05.jpeg', 242000.0000, N'Rentaro Satomi, Kẻ đào tẩu', 41, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (11, 1, N'Black Bullet Tập 6', 1, 2, N'Rentaro vẫn là một kẻ chạy trốn, trốn tránh pháp luật vì tội giết người mà anh ta không thực hiện. Anh ta và Hotaru bị bầm tím, chảy máu và hầu như không nói được gì, nhưng họ cũng tuyệt vọng không kém khi khám phá ra danh tính của kẻ giết người của Suibara. Tuy nhiên, Giám đốc Cảnh sát Hitsuma vẫn chưa từ bỏ việc theo đuổi Rentaro! Với cuộc hôn nhân sắp xảy ra của Hitsuma với Kisara đau lòng đang tiến ngày càng gần, liệu Rentaro có xóa tên của mình và giải cứu cô ấy kịp thời? Và việc cứu Kisara có ý nghĩa gì đối với tương lai của họ?', N'Black Bullet Ep 06.jpeg', 186000.0000, N'Purgatory Strider', 27, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (12, 1, N'Black Bullet Tập 7', 1, 2, N'Sảnh lễ tân của Cung điện Akasaka là nơi tổ chức hội nghị thượng đỉnh chào đón các nhà lãnh đạo của 5 khu vực chính phủ của Nhật Bản. Seitenshi, người dẫn chương trình và là người đứng đầu Khu vực Tokyo, chào đón những người tương đương của cô đến từ Osaka, Sendai, Hakata và Hokkaido, và rất ít người sẵn sàng lắng nghe những nỗ lực của cô trong việc môi giới hòa bình.
Hội nghị rơi vào hỗn loạn, Seitenshi sốc vì có người tiết lộ bí mật quốc gia. Bụi phóng xạ sớm đưa hai Khu vực đi đến con đường chiến tranh toàn diện với nhau - ngay khi Seitenshi biến mất khỏi cung điện!', N'Black Bullet Ep 07.jpeg', 296000.0000, N'Viên đạn đã thay đổi thế giới', 7, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (13, 2, N'Absolute Duo Tập 1', 1, 3, N'Tại Học viện Koryo, học sinh chiến đấu với vũ khí được rèn từ linh hồn của họ. Kokonoe Tor, tuy nhiên, là một Bất thường. Anh ấy không có vũ khí - anh ấy có khiên! Để có được sức mạnh mà anh ta tìm kiếm - và do đó làm sáng tỏ sự thật về quá khứ bi thảm của mình - anh ta phải thành lập Duo với một học sinh khác. Nhưng trước tiên, anh ta phải tìm cách ở chung phòng với một cô gái, võ sĩ duyên dáng Julie Sigtuna, và không chết vì hoàn toàn khó xử.', N'Absolute Duo vol.01.jpg', 279000.0000, N'', 25, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (14, 2, N'Absolute Duo Tập 2', 1, 3, N'Các học sinh của Học viện Koryo chỉ mới thành lập Bộ đôi của họ - bao gồm Tor và Julie tóc bạc - nhưng cuộc chiến đầu tiên với Blazes của họ đã nhanh chóng đến gần. Tor và Julie đang ở đỉnh cao trong trò chơi của họ, nhưng người bạn Miyabi của họ vẫn còn một chặng đường dài phía trước. Liệu cô ấy có sẵn sàng khi trận chiến bắt đầu?', N'Absolute Duo vol.02.jpg', 232000.0000, N'', 42, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (15, 2, N'Absolute Duo Tập 3', 1, 3, N'Tor đã biết được bí mật đen tối của Học viện Koryo: vũ khí Blaze, được hình thành từ chính linh hồn của học sinh, có thể dùng để giết người. Liệu Tor, một Irregular có Blaze biểu hiện như một lá chắn bảo vệ, có những gì cần thiết để kết liễu cuộc sống? Hơn nữa, liệu anh ta có trung thành với đối tác Julie của mình khi một cô gái tóc vàng xinh đẹp khác xuất hiện để cố gắng cướp anh ta đi? Cô gái xinh đẹp Lilith Bristol đã đến từ Anh và cô ấy chỉ có một mục tiêu duy nhất: Lấy Tor làm đồng đội của mình, tuy nhiên cô ấy có thể.', N'Absolute Duo vol.03.jpg', 301000.0000, N'', 0, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (16, 2, N'Absolute Duo Tập 4', 1, 3, N'Khuôn viên chi nhánh trên đảo của Học viện Koryo là một nơi lý tưởng cho một số khóa đào tạo thêm - và để các phụ nữ của trường có thể diện đồ bơi. Mọi thứ đang tìm kiếm Tor. Anh ta có thể phải chịu đựng những nỗ lực không ngừng của Lilith để quyến rũ anh ta khỏi đối tác Duo của mình, nhưng hòn đảo là nơi để thư giãn và gặp gỡ những người bạn cũ. Thật không may, tất cả những điều đó sẽ không kéo dài: một kẻ thù bí ẩn đang chuẩn bị ra tay chống lại Học viện!', N'Absolute Duo vol.04.jpg', 301000.0000, N'', 13, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (17, 2, N'Absolute Duo Tập 5', 1, 3, N'', N'Absolute Duo vol.05.jpg', 251000.0000, N'', 3, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (18, 2, N'Absolute Duo Tập 6', 1, 3, N'', N'Absolute Duo vol.06.jpg', 235000.0000, N'', 7, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (19, 2, N'Yahari Ore no Seishun Love Come wa Machigatteiru
 Tập 1', 1, 4, N'Hachiman Hikigaya là một người hay hoài nghi. "Tuổi trẻ" là một trò lừa bịp, anh tin rằng - một trò chơi của kẻ hút máu, một ảo tưởng được dệt nên từ sự thất bại và đạo đức giả. Nhưng khi anh ấy nộp một bài luận cho một bài tập ở trường tán thành quan điểm này, anh ấy được mời làm việc trong Câu lạc bộ Dịch vụ, một tổ chức chuyên giúp đỡ các sinh viên gặp khó khăn trong cuộc sống của họ! Hachiman the Cynic sẽ đối phó với công việc đòi hỏi - thở hổn hển - lạc quan như thế nào?', N'My Youth Romantic Comedy Is Wrong, As I Expected, Vol. 1.jpg', 206000.0000, N'', 6, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (20, 2, N'Yahari Ore no Seishun Love Come wa Machigatteiru
 Tập 2', 1, 4, N'Cuộc sống của Hachiman Hikigaya ít thay đổi kể từ khi bị buộc phải tham gia Câu lạc bộ Dịch vụ. Chắc chắn, bây giờ anh ấy dành thời gian sau giờ học ở trường cùng với Yukino Yukinoshita băng giá và người bay trên không khí sôi nổi Yui Yuigahama, nhưng tính cách thay đổi của anh ấy vẫn đảm bảo rằng anh ấy sẽ không muốn tận hưởng một giây phút nào khỏi cuộc sống học đường đầy khó khăn của mình. Tuy nhiên, khi ai đó bắt đầu troll lớp anh ta bằng những email đáng ghét và Câu lạc bộ Dịch vụ được tranh thủ để giúp giải quyết vụ việc, góc nhìn "độc nhất vô nhị" của Hachiman với tư cách là một người ngoài cuộc cuối cùng có thể có ích ... hoặc anh ta vẫn có thể chỉ là kẻ thua cuộc .', N'My Youth Romantic Comedy Is Wrong, As I Expected, Vol. 2.jpg', 288000.0000, N'', 18, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (21, 2, N'Yahari Ore no Seishun Love Come wa Machigatteiru Tập 3', 1, 4, N'Không có gì thay đổi. Không bạn bè, không bạn gái - không gì khác ngoài cuộc sống đơn độc ở trường ... Vậy tại sao Hachiman lại khó chịu như vậy? Có lẽ thực tế là phòng câu lạc bộ của họ chỉ thiếu một cô gái. Không có cách nào Yukino và Hachiman có thể giải quyết những vấn đề sinh ra từ chuỗi hiểu lầm này. Khoảng thời gian buồn vui lẫn lộn với Totsuka, chuẩn bị cho trận chiến với Zaimokuza, một phe bí mật của cô Hiratsuka ... và đánh bài poker? Bị bao vây bởi các nhân vật phóng nhanh về hướng sai, liệu câu lạc bộ có bao giờ trở lại bình thường?', N'My Youth Romantic Comedy Is Wrong, As I Expected, Vol. 3.jpg', 233000.0000, N'', 48, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (22, 2, N'Yahari Ore no Seishun Love Come wa Machigatteiru Tập 4', 1, 4, N'TRẠI HÈ LÀ MỘT TRẠI HÈ TỐI THIỂU DÀNH CHO MỘT NGƯỜI DÀNH RIÊNG ...
Ahh, nghỉ hè. Không có trường học, không có trách nhiệm và không có bạn bè để vượt qua thời gian - cho đến khi cô Hiratsuka đưa Câu lạc bộ Dịch vụ (cộng với một số tổ chức) thành tình nguyện giám sát một chuyến cắm trại của trường tiểu học. Nhưng Hachiman có sở trường bám sát bên lề và sẵn sàng sống sót sau chuyến đi chơi khó xử này với ít xung đột nhất có thể - cho đến khi anh gặp một cô gái nhỏ, người đã bắt đầu con đường cô độc.', N'My Youth Romantic Comedy Is Wrong, As I Expected, Vol. 4.jpg', 255000.0000, N'', 46, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (23, 2, N'Yahari Ore no Seishun Love Come wa Machigatteiru Tập 5', 1, 4, N'Kì nghỉ hè của Hachiman sắp kết thúc thì Yui bất ngờ đến thăm nhà cậu. Không chỉ vậy, Totsuka còn có một lời mời dành cho anh ấy, cũng như một yêu cầu từ một người bạn cùng lớp - anh ấy thậm chí còn tình cờ gặp chị gái của Yukino tại lễ hội pháo hoa! Hachiman kiên quyết không kết thân với bất kỳ ai hay có bất kỳ kỳ vọng nào, nhưng ngay cả kẻ cô độc cứng đầu này cũng không thể phớt lờ những thay đổi xảy ra trong mối quan hệ của anh ta với Yukino và Yui ...', N'My Youth Romantic Comedy Is Wrong, As I Expected, Vol. 5.jpg', 246000.0000, N'', 9, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (24, 2, N'Yahari Ore no Seishun Love Come wa Machigatteiru Tập 6', 1, 4, N'À, lễ hội văn hóa. Cách tốt nhất để tồn tại trong một công việc rắc rối như vậy là ... đừng trả lời khi ai đó nói chuyện với bạn, và tỏ ra khó chịu. Sử dụng tối đa các kỹ năng cô độc của mình, Hachiman đã sẵn sàng và sẵn sàng chạy ngay khi có dấu hiệu trách nhiệm đầu tiên. Thật không may, trong khi bận rộn bỏ qua lớp chủ nhiệm, anh ấy đã được chọn vào ủy ban lễ hội văn hóa ...', N'My Youth Romantic Comedy Is Wrong, As I Expected, Vol. 6.jpg', 234000.0000, N'', 36, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (25, 2, N'Yahari Ore no Seishun Love Come wa Machigatteiru Tập 6.5', 1, 4, N'', N'My Youth Romantic Comedy Is Wrong, As I Expected, Vol. 6.5.jpg', 299000.0000, N'', 38, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (26, 2, N'Yahari Ore no Seishun Love Come wa Machigatteiru Tập 7', 1, 4, N'CUỘC SỐNG XÃ HỘI CỦA MỘT NGƯỜI LONER KHÔNG ĐƯỢC HOÀN THÀNH, ĐÚNG KHÔNG?
Sự hào hứng đang xây dựng trong các học sinh cho chuyến đi qua đêm lớn đến Kyoto - một sự kiện của trường học đầy tiềm năng cho cả mối tình lãng mạn chớm nở và những kỷ niệm đau thương. Và chắc chắn, ngay trước khi họ rời đi, Câu lạc bộ Dịch vụ có một vị khách ngạc nhiên đến hỏi những lời khuyên lãng mạn. Thật không may, điều này có thể mâu thuẫn với yêu cầu từ người khác trước chuyến đi ... và Hachiman ngày càng cảm thấy khó khăn hơn khi đứng ngoài mạng lưới các mối quan hệ ngày càng tăng trong lớp của mình.', N'My Youth Romantic Comedy Is Wrong, As I Expected, Vol. 7.jpg', 232000.0000, N'', 0, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (27, 2, N'Yahari Ore no Seishun Love Come wa Machigatteiru Tập 7.5', 1, 4, N'', N'My Youth Romantic Comedy Is Wrong, As I Expected, Vol. 7.5.jpg', 299000.0000, N'', 15, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (28, 2, N'Yahari Ore no Seishun Love Come wa Machigatteiru Tập 8', 1, 4, N'Mạng lưới quan hệ của kẻ cô độc này chỉ ngày càng rối ...
Chuyến đi đến trường đã để lại một hương vị tồi tệ trong miệng mọi người, và khi Câu lạc bộ Dịch vụ cố gắng duy trì thói quen hàng ngày của mình, một người nào đó đến gặp họ với yêu cầu liên quan đến việc bầu cử chủ tịch hội học sinh. Tuy nhiên, khi ba thành viên câu lạc bộ tranh cãi về cách khắc phục sự cố, họ đi theo con đường riêng! Hachiman Hikigaya biết các mối quan hệ của anh ấy không thể giữ nguyên mãi mãi, nhưng anh ấy chắc chắn rằng bản thân anh ấy không có khả năng thay đổi. Khi anh ta tìm thấy thứ gì đó đáng để bảo vệ, liệu phương pháp của anh ta có mang lại lợi ích cho mọi người hay chúng sẽ là một sai lầm to lớn khác?', N'My Youth Romantic Comedy Is Wrong, As I Expected, Vol. 8.jpg', 261000.0000, N'', 12, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (29, 2, N'Yahari Ore no Seishun Love Come wa Machigatteiru Tập 9', 1, 4, N'Một Giáng sinh không vui vẻ lắm nhưng Giáng sinh gần đến rồi, nhưng mọi thứ mà Hachiman muốn, mọi thứ mà anh có thể mong ước, đã biến mất. Kể từ cuộc bầu cử hội học sinh, các thành viên Câu lạc bộ Dịch vụ đã rơi vào bế tắc khó xử. Có điều gì đó rạn nứt giữa họ, nhưng họ tụ tập trong phòng câu lạc bộ với hy vọng rằng mọi thứ sẽ trở lại bình thường. Đó là khi Iroha Isshiki, chủ tịch hội học sinh mới, đưa ra yêu cầu giúp cô tổ chức sự kiện Giáng sinh chung với một trường khác. Hachiman quyết định giúp một tay, nhưng không thay mặt cho Câu lạc bộ Dịch vụ - anh ấy sẽ làm việc này một mình.', N'My Youth Romantic Comedy Is Wrong, As I Expected, Vol. 9.jpg', 281000.0000, N'', 26, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (30, 2, N'Yahari Ore no Seishun Love Come wa Machigatteiru Tập 10', 1, 4, N'NĂM MỚI MANG LẠI NHỮNG MỐI QUAN HỆ MỚI VÀ CẢM GIÁC MỚI.
Hachiman đang tận hưởng một kỳ nghỉ đông thoải mái cho đến khi anh gặp Yukino và Hayato và nhận ra rằng anh có thể biết ít hơn những gì anh nghĩ về lịch sử và mối quan hệ của họ. Tin đồn đã lan truyền khi các lớp học tiếp tục hoạt động, và khi một yêu cầu mới đến với Câu lạc bộ Dịch vụ, Hachiman sẽ phải nhìn sâu vào bề ngoài để thấy một khía cạnh mới của những người bạn cùng trường của mình ...', N'My Youth Romantic Comedy Is Wrong, As I Expected, Vol. 10.jpg', 183000.0000, N'', 6, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (31, 2, N'Yahari Ore no Seishun Love Come wa Machigatteiru Tập 10.5', 1, 4, N'', N'My Youth Romantic Comedy Is Wrong, As I Expected, Vol. 10.5.jpg', 292000.0000, N'', 20, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (32, 2, N'Yahari Ore no Seishun Love Come wa Machigatteiru Tập 11', 1, 4, N'', N'My Youth Romantic Comedy Is Wrong, As I Expected, Vol. 11.png', 218000.0000, N'', 5, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (33, 2, N'Yahari Ore no Seishun Love Come wa Machigatteiru Tập 12', 1, 4, N'', N'My Youth Romantic Comedy Is Wrong, As I Expected, Vol. 12.jpg', 253000.0000, N'', 13, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (34, 2, N'Yahari Ore no Seishun Love Come wa Machigatteiru Tập 13', 1, 4, N'', N'My Youth Romantic Comedy Is Wrong, As I Expected, Vol. 13.jpg', 163000.0000, N'', 10, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (35, 2, N'Yahari Ore no Seishun Love Come wa Machigatteiru Tập 14', 1, 4, N'', N'My Youth Romantic Comedy Is Wrong, As I Expected, Vol. 14.jpg', 203000.0000, N'', 18, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (36, 1, N'Neechan wa Chuunibyou ... Tập 1', 1, 5, N'Một ngày nọ, cậu học sinh trung học Yuichi Sakaki bắt đầu nhìn thấy những từ trên đầu mọi người. Hóa ra là khả năng nhìn thấy bản chất thật của con người, mà anh ta đặt tên là ... Soul Reader!

(Thực ra, chị gái của anh ấy đặt tên như vậy.)

Điều tiếp theo anh ta biết, xung quanh anh ta là những người có nhãn kỳ quái như "Thây ma" "Ma cà rồng" và "Phù thủy." Và trước khi anh ấy có thể hiểu phải làm gì về điều đó, anh ấy đã thấy mình bị đe dọa bởi một cô gái xinh đẹp, Natsuki, có nhãn hiệu là "Serial Killer"!

May mắn thay, Yuichi không phải là không chuẩn bị. Chị gái lớn của anh ấy đã huấn luyện anh ấy làm điều này cả đời. Trận chiến sắp diễn ra giữa cỗ máy giết người khát máu ... và đứa em trai mạnh nhất thế giới!', N'Neechan wa Chuunibyou Tập 1.jpg', 162000.0000, N'', 36, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (37, 1, N'Neechan wa Chuunibyou Tập 2', 1, 5, N'Yuichi vẫn chưa làm sáng tỏ bí mật đằng sau cảnh tượng kỳ diệu của mình, nhưng cuối học kỳ đầu tiên của cậu ấy vẫn rất bận rộn và có thể như vậy! Anh ấy tham gia các hoạt động của câu lạc bộ sinh tồn do chị gái Mutsuko dẫn đầu, huấn luyện chiến đấu vào sáng sớm với kẻ giết người hàng loạt Natsuki Takeuchi, và hẹn hò đầu tiên với ma cà rồng Aiko Noro (vì một số lý do). Sau đó, giữa tất cả, Aiko tiết lộ rằng anh trai lớn của cô Kyoya - người có hội chứng trung học cơ sở âm mưu thống trị thế giới gần đây ngày càng trở nên tồi tệ hơn - đã mất tích!', N'Neechan wa Chuunibyou Tập 2.jpg', 179000.0000, N'', 23, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (38, 1, N'Neechan wa Chuunibyou Tập 3', 1, 5, N'Yuichi, và câu lạc bộ sinh tồn cuối cùng cũng chuẩn bị cho trại huấn luyện mùa hè của họ, đến một biệt thự sang trọng ở một khu nghỉ mát xa xôi bên bờ biển. Liệu tập phim tai quái về áo tắm kiểu anime sẽ xảy ra? Nếu chị gái của anh ấy có bất cứ điều gì để nói về nó, vâng!

Nhưng trong khi cả nhóm tận hưởng một số niềm vui cần thiết dưới ánh nắng mặt trời, thì một âm mưu đen tối hơn ẩn nấp ngay ngoài khơi. Người em trai mạnh nhất thế giới sắp phải đối mặt với thử thách lớn nhất của mình!', N'Neechan wa Chuunibyou Tập 3.jpg', 180000.0000, N'', 46, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (39, 1, N'Neechan wa Chuunibyou Tập 4', 1, 5, N'Kỳ nghỉ hè không mấy thoải mái của Yuichi đã kết thúc, và học kỳ mới có vẻ không khả quan hơn. Những con quỷ bất tử đang cố gắng giết anh ta, giáo viên mới của anh ta là một kẻ sát nhân siêu năng lực, và tất cả các loại sự kiện kỳ lạ đang xảy ra xung quanh trường. Cuốn tiểu thuyết mới của Kanako có liên quan gì đến những diễn biến kỳ lạ đang diễn ra ở trường Seishin? Một lần nữa, điều đó phụ thuộc vào người em trai mạnh nhất thế giới và cô em gái bị ảo tưởng cao độ của mình, tìm ra!', N'Neechan wa Chuunibyou Tập 4.jpg', 162000.0000, N'', 8, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (40, 1, N'Neechan wa Chuunibyou Tập 5', 1, 5, N'Giữa một trận chiến bí mật để tập hợp lại một ác thần không mảnh vải che thân và mối đe dọa từ những sinh vật thay đổi số phận đang chờ đợi trong đôi cánh, người em trai mạnh nhất thế giới dường như đã có đủ điều trong tâm trí. Nhưng Yuichi Sakaki còn đang chờ đợi nhiều hơn trong cửa hàng, và mọi thứ sắp trở nên hỗn loạn hơn vào tuần này. Chẳng bao lâu nữa, một băng đảng yakuza đang rình rập em gái của cậu, một con búp bê quỷ đang rình rập Aiko, một cung thủ quá hăng hái đang rình rập cậu ... và đó mới chỉ là khởi đầu!', N'Neechan wa Chuunibyou Tập 5.jpg', 160000.0000, N'', 1, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (41, 1, N'Neechan wa Chuunibyou Tập 6', 1, 5, N'Khi cuộc chiến giành các kim khí của Ác thần bắt đầu leo thang, một mối đe dọa thậm chí còn khủng khiếp hơn đến với Thành phố Seishin. Khi Natsuki bỏ chạy, lo sợ cho tính mạng của mình, Yuichi và những người bạn của anh cố gắng tìm kiếm cô. Cuộc truy đuổi của họ sẽ khiến họ không chỉ là một kẻ thù mới, chết chóc ... mà còn là sự hiểu biết cuối cùng về cách Yuichi có được Soul Reader!', N'Neechan wa Chuunibyou Tập 6.jpg', 191000.0000, N'', 10, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (42, 1, N'Neechan wa Chuunibyou Tập 7', 1, 5, N'Cuộc Chiến Tàu Thần đang đi đến hồi kết. Nhưng khi Soul Reader ra đi, Yuichi không muốn gì hơn là bỏ học! Nhưng liệu anh ấy có thực sự có thể quay trở lại cuộc sống bình thường mà anh ấy luôn mong muốn? Và nếu anh ta làm vậy, liệu Mutsuko có bao giờ nói chuyện với anh ta nữa không ?!', N'Neechan wa Chuunibyou Tập 7.jpg', 190000.0000, N'', 7, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (43, 2, N'Kore wa Zombie Desu ka? Tập 1', 1, 6, N'Sự sống - hay sự chết? - không dễ dàng đối với Ayumu Aikawa. Một học sinh trung học có vẻ bình thường, anh ta thực chất là một thây ma, người phục vụ như một vệ sĩ cho một hồn ma hướng nội. Nhưng sự tồn tại vốn đã phức tạp của anh còn trở nên kỳ lạ hơn khi anh vô tình đánh cắp sức mạnh của một cô gái phép thuật, tự biến thành một cô gái - hoàn chỉnh với chiếc váy xếp nếp và chiếc cưa máy màu hồng !! Làm thế nào mà một xác chết được cải tạo lại có thể gối đầu lên vai với những người bạn cùng phòng như những cô gái quanh nhà này?', N'Kore wa Zombie Desu ka_ - Volume 1 - Yes, I’m a Masou Shoujo.png', 209000.0000, N'Yes, I''m a Masō-Shōjo', 23, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (44, 2, N'Kore wa Zombie Desu ka? Tập 2', 1, 6, N'Ayumu Aikawa đang ổn định cuộc sống mới của mình - hoặc thiếu nó - và tận hưởng mối quan hệ mà anh ấy đang xây dựng với những người bạn cùng phòng mới của mình, thật kỳ lạ mặc dù họ có thể như vậy! Nhưng khi có cơ hội đối mặt với kẻ sát nhân của mình, liệu cô gái zombie / magikewl này có thực hiện được nhiệm vụ ??', N'Kore wa Zombie Desu ka_ - Volume 2 - Yes, I am One who Calls Death..png', 298000.0000, N'Yes, I am the Harbinger of Death', 49, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (45, 2, N'Kore wa Zombie Desu ka? Tập 3', 1, 6, N'Ayumu và những người bạn cùng nhà của anh ấy đang trở nên thân thiết như thể họ là một gia đình ấm áp (hoặc trong trường hợp của anh ấy là lạnh lùng) và yêu thương. Và với việc Eu đang bị đe dọa từ một kẻ thù bí ẩn chỉ được biết đến với cái tên "Vua bóng đêm", phi hành đoàn ma mãnh đang chặt chẽ hơn bao giờ hết khi họ quyết tâm giữ an toàn cho "tên sát nhân mờ ám". Nhưng khi ninja ma cà rồng cư trú, Sera, nhận được lệnh từ nhà đe dọa đến hạnh phúc của Eu, liệu cô ấy có quay lưng lại với những người bạn mới của mình không ?!', N'Kore wa Zombie Desu ka_ - Volume 3 - No, That Explodes.jpg', 184000.0000, N'No, It explodes', 29, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (46, 2, N'Kore wa Zombie Desu ka? Tập 4', 1, 6, N'Sau khi Eu biến mất, Sera ở dưới bãi rác và nhờ có hạt giống xấu Kyouko, Haruna biến thành một cỗ máy gieo hạt! Nhưng chết tiệt thật, mong ước bất diệt của Ayumu undead chỉ là được nhìn thấy Eu !!', N'Kore wa Zombie Desu ka_ - Volume 4.jpg', 194000.0000, N'Yeah, I''m the Strongest Teacher!', 6, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (47, 2, N'Kore wa Zombie Desu ka? Tập 5', 1, 6, N'', N'Kore wa Zombie Desu ka_ - Volume 5.jpg', 237000.0000, N'Oh, My darling is a good-for-nothing', 15, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (48, 2, N'Kore wa Zombie Desu ka? Tập 6', 1, 6, N'', N'Kore wa Zombie Desu ka_ - Volume 6.jpg', 153000.0000, N'Yes, Both are my wives', 42, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (49, 2, N'Kore wa Zombie Desu ka? Tập 7', 1, 6, N'', N'Kore wa Zombie Desu ka_ - Volume 7.jpg', 229000.0000, N'Yes, I sleep with my father', 21, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (50, 2, N'Kore wa Zombie Desu ka? Tập 8', 1, 6, N'', N'Kore wa Zombie Desu ka_ - Volume 8.jpg', 208000.0000, N'Yes, I''m Sorry for Kissing', 36, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (51, 2, N'Kore wa Zombie Desu ka? Tập 9', 1, 6, N'', N'Kore wa Zombie Desu ka_ - Volume 9.jpg', 166000.0000, N'Yes, I''ve come to bless(curse) you', 1, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (52, 2, N'Kore wa Zombie Desu ka? Tập 10', 1, 6, N'', N'Kore wa Zombie Desu ka_ - Volume 10.jpg', 212000.0000, N'Yes, I''m Lovely and Charming', 5, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (53, 2, N'Kore wa Zombie Desu ka? Tập 11', 1, 6, N'', N'Kore wa Zombie Desu ka_ - Volume 11.jpg', 231000.0000, N'Yes, She''s Meringue', 12, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (54, 2, N'Kore wa Zombie Desu ka? Tập 12', 1, 6, N'', N'Kore wa Zombie Desu ka_ - Volume 12.jpg', 154000.0000, N'Yes, I Am the One Who Cries Love', 1, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (55, 2, N'Kore wa Zombie Desu ka? Tập 13', 1, 6, N'', N'Kore wa Zombie Desu ka_ - Volume 13.jpg', 238000.0000, N'No, It Does Not Have a Memory At All', 50, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (56, 2, N'Kore wa Zombie Desu ka? Tập 14', 1, 6, N'', N'Kore wa Zombie Desu ka_ - Volume 14.jpg', 236000.0000, N'Yes, Even Though It Is Also Hikikomori', 36, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (57, 2, N'Kore wa Zombie Desu ka? Tập 15', 1, 6, N'', N'Kore wa Zombie Desu ka_ - Volume 15.jpg', 235000.0000, N'Yes, Both Of Them Are Me', 35, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (58, 2, N'Kore wa Zombie Desu ka? Tập 16', 1, 6, N'', N'Kore wa Zombie Desu ka_ - Volume 16.jpg', 194000.0000, N'Oh, Especially Recently', 33, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (59, 2, N'Kore wa Zombie Desu ka? Tập 17', 1, 6, N'', N'Kore wa Zombie Desu ka_ - Volume 17.jpg', 247000.0000, N'Yes, I''m dead', 39, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (60, 2, N'Kore wa Zombie Desu ka? Tập 18', 1, 6, N'', N'Kore wa Zombie Desu ka_ - Volume 18.jpg', 206000.0000, N'Yes, I will return to General Peapo', 24, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (61, 2, N'Kore wa Zombie Desu ka? Tập 19', 1, 6, N'', N'Kore wa Zombie Desu ka_ - Volume 19.jpg', 244000.0000, N'Yes, you''re not!', 1, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (62, 1, N'High School DxD - Volume 01', 1, 7, N'Issei Hyodo, một học sinh Học viện Kuoh biến thái, có chút may mắn với các cô gái, được một cô gái dễ thương tên là Yuma Amano yêu cầu. Vào cuối buổi hẹn hò của họ (lần đầu tiên của anh ta), cô gái yêu cầu anh ta chết, và đâm anh ta một cách chí mạng bằng một ngọn giáo, nhưng anh ta sau đó được hồi sinh bởi Rias Gremory, một nữ sinh tóc đỏ, người đã tiết lộ bản thân. như một ác quỷ và chủ nhân mới của mình. Anh ta được tuyển dụng vào Câu lạc bộ Nghiên cứu Huyền bí, nơi anh ta phát tờ rơi và cố gắng thiết lập các hợp đồng để thăng tiến như một ác quỷ và cuối cùng trở thành một Harem King. Sau khi đối phó với một số liên hệ bất thường, anh ta kết bạn với một nữ tu mới chuyển đến tên là Asia Argento, và sau đó quan sát thấy đội của Rias gặp một ác quỷ đi lạc. Anh gặp linh mục phản bội Freed Sellzen, người làm việc với Yuma Amano, được tiết lộ là thiên thần sa ngã Raynare, người sau này đã bắt Asia để đánh cắp Sacred Gear của cô, Twilight Healing, có thể chữa lành không chỉ cho con người, mà cả ác quỷ và thiên thần sa ngã. Issei và cả nhóm cố gắng ngăn chặn Freed và giết Raynare, tuy nhiên Asia đã chết vì bị tách khỏi Sacred Gear của cô. Rias hồi sinh Asia như một ác quỷ và trao cho cô chức vụ giám mục. Cô ấy đã sống cùng Issei, và họ chào đón cô ấy đến câu lạc bộ bằng một bữa tiệc.', N'High School DxD - Volume 01 - Diabolos of the Old School Building.jpg', 242000.0000, N'Diabolos of the Old School Building', 37, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (63, 1, N'High School DxD - Volume 02', 1, 7, N'Khi Issei làm quen với cuộc sống mới của mình như một Ác quỷ, Rias phải đối mặt với vị hôn thê của cô, Riser Phoenix. Rias không muốn kết hôn với anh ta, vì nó đã được sắp đặt bởi gia đình của họ, nhưng Raiser muốn trải qua cuộc hôn nhân để thêm vào hậu cung của riêng mình, điều mà Issei vừa ngưỡng mộ vừa khinh thường. Họ quyết định tổ chức một Trò chơi xếp hạng để kết thúc cuộc tranh cãi. Sau khi Issei và những người còn lại trong câu lạc bộ tổ chức trại huấn luyện để tăng sức mạnh, họ đối đầu với toàn đội của Raiser và thua cuộc. Issei quyết định hy sinh một phần cơ thể của mình cho Ddraig, con Rồng bị phong ấn bên trong anh ta, để tăng sức mạnh tạm thời và đối đầu với Raiser một lần nữa. Issei đánh bại Raiser, hủy hôn. Rias yêu anh ta và quyết định chuyển đến nhà của Issei.', N'High School DxD - Volume 02 - Phoenix of the Battle School.jpg', 162000.0000, N'Phoenix of the Battle School', 5, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (64, 1, N'High School DxD - Volume 03 ', 1, 7, N'Khi Câu lạc bộ Nghiên cứu Huyền bí quyết định tổ chức cuộc họp của họ tại nhà Issei, Yuto Kiba tìm thấy một bức ảnh cũ có chứa thánh kiếm Excalibur, tấm ảnh này gợi lại những ký ức cay đắng trong quá khứ của anh. Ngay sau đó, hai nữ tu sĩ chiến đấu, Xenovia và Irina Shido, cũng là bạn thời thơ ấu của Issei, thông báo với họ rằng 3 trong số 6 thanh Excalibur Swords được biết đến đã bị đánh cắp. Yuto gặp lại Freed Sellzen, tay cầm thanh Excaliburs bị đánh cắp, và quyết định rời Câu lạc bộ để theo đuổi cuộc trả thù chống lại những thanh kiếm vì bạn bè của anh đã bị giết một cách bất cần từ Dự án Thánh kiếm dưới tay Valper Galilei. Họ sớm biết rằng Thiên thần sa ngã Kokabiel có kế hoạch kết hợp các Excaliburs bị hỏng và sử dụng chúng để bắt đầu một cuộc chiến khác. Khi Câu lạc bộ chiến đấu chống lại Kokabiel, anh ấy nói với họ rằng trong cuộc chiến trước, không chỉ các Quỷ vương gốc bị giết mà còn cả Chúa, tàn phá Xenovia và Asia Argento. Trong khi đó, khi Yuto tức giận chiến đấu với Valper để trả thù chính xác, anh ta được đoàn tụ với linh hồn của những người bạn và Sacred Gear của anh ta, Sword Birth, đạt được Balance Breaker và tạo ra Holy Demonic Swords, điều được cho là không thể. Với Kokabiel là kẻ thù duy nhất còn lại, Câu lạc bộ đấu tranh để đánh bại anh ta khi Bạch Long Hoàng bất ngờ xuất hiện, đánh bại Kokabiel một cách dễ dàng và bỏ đi cùng anh ta. Sau trận chiến, Yuto trở về Câu lạc bộ và Xenovia, bị gọi là dị giáo vì phát hiện ra sự thật, tham gia cùng họ với tư cách hiệp sĩ của Rias.', N'High School DxD - Volume 03 - Excalibur of the Moonlit Schoolyard.jpg', 191000.0000, N'Excalibur of the Moonlit Schoolyard', 32, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (65, 1, N'High School DxD - Volume 04', 1, 7, N'Khi Issei tiếp tục Công việc Quỷ của mình, một trong số họ tiết lộ mình là Azazel, thủ lĩnh của Grigori. Azazel nói rằng anh ấy đã đến để tham dự Hội nghị thượng đỉnh hòa bình giữa các Thiên thần, Thiên thần sa ngã và Ác quỷ, Rias xác nhận. Khi Sirzechs Lucifer đến câu lạc bộ, anh ta nói với em gái của mình rằng do thành tích chống lại Kokabiel, cô ấy phải phong ấn Gasper Valdi, người có Sacred Gear, Forbidden Balor View, không thể kiểm soát được đến nỗi anh ta phải bị phong ấn. Trong khi Issei, Asia và Xenovia đang huấn luyện Gasper, họ gặp Vali, Bạch Long Hoàng, người nói rằng anh ta đang đứng về phía các Thiên thần sa ngã. Issei cũng nhận được Thanh kiếm Thánh kiếm Rồng Ascalon từ Head Angel Michael, như một món quà trao đổi giữa các phe phái. Vào thời điểm lên đỉnh, những kẻ khủng bố thuộc Thế lực Satan cũ đã làm quá tải Sacred Gear của Gasper để đóng băng thời gian. Issei và Rias giải cứu Gasper và giải phóng thời gian bị đóng băng, nhưng khi họ đánh bại những kẻ khủng bố, Vali bật Azazel. Anh ta tiết lộ rằng anh ta đang làm việc với Chaos Brigade, tổ chức khủng bố do Ophis the Infinity Dragon lãnh đạo, và tên đầy đủ của anh ta là Vali Lucifer, người được thừa hưởng dòng máu của Quỷ vương Lucifer ban đầu. Vali khiến Issei thất vọng, buộc cả hai phải chiến đấu, Issei giành được một phần sức mạnh của Albion. Khi cuộc chiến của họ trở nên căng thẳng hơn, Bikou, một thành viên trong đội của Vali, đã ngắt lời họ và kết thúc cuộc chiến. Cuộc họp thượng đỉnh kết thúc với việc Liên minh Ba cường quốc để chống lại Lữ đoàn hỗn loạn. Issei yêu cầu Michael cho phép Asia và Xenovia tiếp tục cầu nguyện với Chúa vì họ vẫn có đức tin Cơ đốc của mình. Michael ban cho điều ước, và Azazel trở thành cố vấn của Câu lạc bộ Nghiên cứu Huyền bí để đào tạo Sacred Gears của họ.', N'High School DxD - Volume 04 - Vampire of the Suspended Classroom.jpg', 223000.0000, N'Vampire of the Suspended Classroom', 18, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (66, 1, N'High School DxD - Volume 05', 1, 7, N'Khi kỳ nghỉ hè bắt đầu, ngôi nhà của Issei được nhà Gremory tân trang lại giống như một khách sạn để Câu lạc bộ Nghiên cứu Huyền bí có thể chuyển đến. Câu lạc bộ quyết định đến Thế giới ngầm, nơi được tiết lộ rằng sẽ có Giải đấu Trò chơi Xếp hạng Thanh niên . Mỗi thành viên Câu lạc bộ đều được huấn luyện đặc biệt, bao gồm cả Issei được huấn luyện bởi Tannin, một cựu Long vương ngang hàng với Ddraig. Sau khóa huấn luyện, Koneko Toujou gặp em gái Kuroka, một Ác quỷ đi lạc và là thành viên của đội Vali, và cố gắng đưa cô ấy đi. Issei và Rias đến, và Issei cuối cùng đã đạt được Kẻ phá vỡ cân bằng thực sự của mình, đánh bại Kuroka. Sau đó, Trò chơi Xếp hạng Thanh niên đầu tiên là giữa đội của Rias và đội của Sona Sitri. Trong suốt giải đấu, Issei tiết lộ kỹ thuật mới nhất của mình, Song ngữ, cho phép anh ta nghe thấy ngực của phụ nữ, nhưng đã bị đánh bại ở giữa trận đấu. Trận đấu kết thúc với việc đội của Rias giành chiến thắng trong giải đấu, nhưng VIP thuộc về Genshiro Saji, người đã có thể đánh bại Issei trong trò chơi, và Koneko cũng bắt đầu nảy sinh tình cảm với Issei.', N'High School DxD - Volume 05 - Hellcat of the Underworld Training Camp.jpg', 219000.0000, N'Hellcat of the Underworld Training Camp', 35, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (67, 1, N'High School DxD - Volume 06', 1, 7, N'Khi học kỳ mới của Kuoh bắt đầu, Irina Shido trở thành thành viên mới của Câu lạc bộ Nghiên cứu Huyền bí với tư cách là đại diện của Thiên đàng khi cô trở thành một Thiên thần tái sinh. Trong khi cả trường chuẩn bị cho đại hội thể thao, đối thủ tiếp theo của Rias được tiết lộ là Diodora Astaroth. Diodora giải thích rằng anh ta là Á quỷ được giải cứu, buộc cô phải bị trục xuất khỏi Nhà thờ. Diodora yêu cầu giao dịch châu Á, nhưng Rias từ chối. Vào ngày của Trò chơi xếp hạng, Lữ đoàn hỗn loạn tấn công và Asia bị bắt cóc bởi Diodora, một thành viên của Lữ đoàn hỗn loạn. Đội của Rias đánh bại đội của Diodora, và giải cứu Asia khỏi một thiết bị có thể biến khả năng chữa bệnh của cô thành một quả bom. Tuy nhiên, Shalba Beelzebub của Old Maou Faction, giết Diodora vì thất bại của anh ta và đưa Châu Á vào Khoảng cách chiều không gian. Bây giờ thất vọng, Issei kích hoạt Juggernaut Drive của mình và giết Shalba, khi Vali đến Khoảng cách chiều với một châu Á được giải cứu và trả lại cô ấy. Với sự giúp đỡ của "Bài hát rồng vếu" và khả năng giảm một nửa của Vali, họ có thể khôi phục Issei. Một thời gian sau, Issei và Asia thi đấu trong cuộc đua ba chân tại Kuoh, và Asia tiết lộ cảm xúc thật của mình với Issei.', N'High School DxD - Volume 06 - Holy Behind the Gymnasium.jpg', 154000.0000, N'Holy Behind the Gymnasium', 38, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (68, 1, N'High School DxD - Volume 07', 1, 7, N'', N'High School DxD - Volume 07 - Ragnarok After School.jpg', 208000.0000, N'Ragnarok After School', 39, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (69, 1, N'High School DxD - Volume 08', 1, 7, N'Một loạt truyện ngắn trước đây đã đăng trên Tạp chí Dragon.', N'High School DxD - Volume 08 - The Work of a Devil.jpg', 262000.0000, N'The Work of a Devil', 5, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (70, 1, N'High School DxD - Volume 09', 1, 7, N'', N'High School DxD - Volume 09 - Pandemonium at the School Trip.jpg', 251000.0000, N'Pandemonium at the School Trip', 18, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (71, 1, N'High School DxD - Volume 10', 1, 7, N'', N'High School DxD - Volume 10 - Lion Heart of the School Festival.jpg', 204000.0000, N'Lion Heart of the School Festival', 5, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (72, 1, N'High School DxD - Volume 11', 1, 7, N'', N'High School DxD - Volume 11 - Ouroboros and Promotion Tests.jpg', 209000.0000, N'Ouroboros and Promotion Tests', 10, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (73, 1, N'High School DxD - Volume 12', 1, 7, N'', N'High School DxD - Volume 12 - Heroes of Tutoring.jpg', 263000.0000, N'Heroes of Tutoring', 18, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (74, 1, N'High School DxD - Volume 13', 1, 7, N'Tổng hợp các truyện ngắn trước đây đã đăng trên Tạp chí Dragon. Phiên bản giới hạn bao gồm một đĩa Blu-ray chứa tập thứ 13 của OVA từ bộ anime, do chính Ichiei Ishibumi viết và ảnh bìa độc đáo.', N'High School DxD - Volume 13 - Issei SOS.jpg', 290000.0000, N'Issei SOS', 25, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (75, 1, N'High School DxD - Volume 14', 1, 7, N'', N'High School DxD - Volume 14 - Wizards of Career Counseling.jpg', 200000.0000, N'Wizards of Career Counseling', 4, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (76, 1, N'High School DxD - Volume 15', 1, 7, N'Phiên bản giới hạn bao gồm một đĩa Blu-ray chứa tập thứ 14 của OVA từ bộ anime, do chính Ichiei Ishibumi viết và ảnh bìa độc đáo.', N'High School DxD - Volume 15 - The Dark Knight of Sunshine.jpg', 291000.0000, N'The Dark Knight of Sunshine', 34, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (77, 1, N'High School DxD - Volume 16', 1, 7, N'', N'High School DxD - Volume 16 - Daywalker of the Extracurricular Lesson.jpg', 285000.0000, N'Daywalker of the Extracurricular Lesson', 15, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (78, 1, N'High School DxD - Volume 17', 1, 7, N'', N'High School DxD - Volume 17 - Valkyrie of the Teacher Training.jpg', 239000.0000, N'Valkyrie of the Teacher Training', 24, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (79, 1, N'High School DxD - Volume 18', 1, 7, N'', N'High School DxD - Volume 18 - Funny Angel of the Christmas Day.jpg', 283000.0000, N'Funny Angel of the Christmas Day', 2, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (80, 1, N'High School DxD - Volume 19', 1, 7, N'', N'High School DxD - Volume 19 - Durandal of the General Election.jpg', 238000.0000, N'Durandal of the General Election', 6, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (81, 1, N'High School DxD - Volume 20', 1, 7, N'', N'High School DxD - Volume 20 - Belial of Career Consultation.jpg', 167000.0000, N'Belial of Career Consultation', 13, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (82, 1, N'High School DxD - Volume 21', 1, 7, N'', N'High School DxD - Volume 21 - Lucifer of the Optional Attendance.png', 165000.0000, N'Lucifer of the Optional Attendance', 7, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (83, 1, N'High School DxD - Volume 22', 1, 7, N'', N'High School DxD - Volume 22 - Gremory of the Graduation Ceremony.jpg', 283000.0000, N'Gremory of the Graduation Ceremony', 2, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (84, 1, N'High School DxD - Volume 23', 1, 7, N'', N'High School DxD - Volume 23 – Joker of the Ball Games.png', 162000.0000, N'Joker of the Ball Games', 49, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (85, 1, N'High School DxD - Volume 24', 1, 7, N'', N'High School DxD - Volume 24 - Grim Reaper of the Off - Campus Learning.jpg', 176000.0000, N'Grim Reaper of the Off - Campus Learning', 0, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (86, 1, N'High School DxD - Volume 25', 1, 7, N'', N'High School DxD - Volume 25 - Yggdrasil of the Summer Courses.jpg', 267000.0000, N'Yggdrasil of the Summer Courses', 19, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (87, 2, N'Shinmai Maou no Keiyakusha - Volume 01', 1, 8, N'', N'Shinmai Maou no Keiyakusha - Volume 01.jpg', 262000.0000, N'', 24, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (88, 2, N'Shinmai Maou no Keiyakusha - Volume 02', 1, 8, N'', N'Shinmai Maou no Keiyakusha - Volume 02.jpg', 269000.0000, N'', 38, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (89, 2, N'Shinmai Maou no Keiyakusha - Volume 03', 1, 8, N'', N'Shinmai Maou no Keiyakusha - Volume 03.jpg', 239000.0000, N'', 15, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (90, 2, N'Shinmai Maou no Keiyakusha - Volume 04', 1, 8, N'', N'Shinmai Maou no Keiyakusha - Volume 04.jpg', 184000.0000, N'', 5, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (91, 2, N'Shinmai Maou no Keiyakusha - Volume 05', 1, 8, N'', N'Shinmai Maou no Keiyakusha - Volume 05.jpg', 283000.0000, N'', 4, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (92, 2, N'Shinmai Maou no Keiyakusha - Volume 06', 1, 8, N'', N'Shinmai Maou no Keiyakusha - Volume 06.png', 270000.0000, N'', 22, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (93, 2, N'Shinmai Maou no Keiyakusha - Volume 07', 1, 8, N'', N'Shinmai Maou no Keiyakusha - Volume 07.png', 250000.0000, N'', 15, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (94, 2, N'Shinmai Maou no Keiyakusha - Volume 08', 1, 8, N'', N'Shinmai Maou no Keiyakusha - Volume 08.jpeg', 288000.0000, N'', 2, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (95, 2, N'Shinmai Maou no Keiyakusha - Volume 09', 1, 8, N'', N'Shinmai Maou no Keiyakusha - Volume 09.jpg', 270000.0000, N'', 17, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (96, 2, N'Shinmai Maou no Keiyakusha - Volume 10', 1, 8, N'', N'Shinmai Maou no Keiyakusha - Volume 10.jpg', 191000.0000, N'', 45, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (97, 2, N'Shinmai Maou no Keiyakusha - Volume 11', 1, 8, N'', N'Shinmai Maou no Keiyakusha - Volume 11.jpg', 176000.0000, N'', 7, NULL)
INSERT [dbo].[Product] ([Product ID], [Account ID], [Product Name], [Category ID], [Author ID], [Description], [Image], [Price], [Title], [Discount], [Status]) VALUES (98, 2, N'Shinmai Maou no Keiyakusha - Volume 12', 1, 8, N'', N'Shinmai Maou no Keiyakusha - Volume 12.jpg', 252000.0000, N'', 37, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Account] FOREIGN KEY([Account ID])
REFERENCES [dbo].[Account] ([Account ID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Account]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Product] FOREIGN KEY([Product ID])
REFERENCES [dbo].[Product] ([Product ID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [fk_authorID] FOREIGN KEY([Author ID])
REFERENCES [dbo].[Author] ([Author ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [fk_authorID]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [fk_cateID] FOREIGN KEY([Category ID])
REFERENCES [dbo].[Category] ([Category ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [fk_cateID]
GO
USE [master]
GO
ALTER DATABASE [Otaku no sekai] SET  READ_WRITE 
GO
