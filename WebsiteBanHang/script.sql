USE [master]
GO
/****** Object:  Database [WebsiteBanHang]    Script Date: 8/3/2023 2:55:18 PM ******/
CREATE DATABASE [WebsiteBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebsiteBanHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\WebsiteBanHang.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebsiteBanHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\WebsiteBanHang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [WebsiteBanHang] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebsiteBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebsiteBanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebsiteBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebsiteBanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebsiteBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebsiteBanHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET RECOVERY FULL 
GO
ALTER DATABASE [WebsiteBanHang] SET  MULTI_USER 
GO
ALTER DATABASE [WebsiteBanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebsiteBanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebsiteBanHang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebsiteBanHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebsiteBanHang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'WebsiteBanHang', N'ON'
GO
ALTER DATABASE [WebsiteBanHang] SET QUERY_STORE = ON
GO
ALTER DATABASE [WebsiteBanHang] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [WebsiteBanHang]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 8/3/2023 2:55:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Avatar] [varchar](100) NULL,
	[Slug] [varchar](100) NULL,
	[ShowOnHomePage] [bit] NULL,
	[CreatedOnUtc] [datetime] NULL,
	[UpdatedOnUtc] [datetime] NULL,
	[Deleted] [bit] NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 8/3/2023 2:55:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Avatar] [nchar](100) NULL,
	[Slug] [varchar](100) NULL,
	[ShowOnHomePage] [bit] NULL,
	[Deleted] [bit] NULL,
	[CreatedOnUtc] [datetime] NULL,
	[UpdatedOnUtc] [datetime] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Credential]    Script Date: 8/3/2023 2:55:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Credential](
	[ID] [int] NOT NULL,
	[GroupId] [int] NULL,
	[RoleId] [int] NULL,
 CONSTRAINT [PK_Credential] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 8/3/2023 2:55:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 8/3/2023 2:55:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Avatar] [nvarchar](50) NULL,
	[LoginName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[Status] [int] NULL,
	[GroupId] [int] NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 8/3/2023 2:55:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Avatar] [nvarchar](50) NULL,
	[Description] [nvarchar](4000) NULL,
	[Author] [nvarchar](50) NULL,
	[CreatedDate] [date] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 8/3/2023 2:55:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[UserId] [int] NULL,
	[Status] [int] NULL,
	[CreatedOnUtc] [datetime] NULL,
	[ShipName] [nvarchar](50) NULL,
	[ShipMobile] [nvarchar](50) NULL,
	[ShipAddress] [nvarchar](50) NULL,
	[ShipEmail] [nvarchar](50) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 8/3/2023 2:55:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 8/3/2023 2:55:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Avatar] [nchar](100) NULL,
	[CategoryId] [int] NULL,
	[ShortDes] [nvarchar](100) NULL,
	[FullDescription] [nvarchar](500) NULL,
	[Price] [float] NULL,
	[PriceDiscount] [float] NULL,
	[TypeId] [int] NULL,
	[Slug] [varchar](50) NULL,
	[BrandId] [int] NULL,
	[Deleted] [bit] NULL,
	[ShowOnHomePage] [bit] NULL,
	[DisplayOrder] [int] NULL,
	[CreatedOnUtc] [datetime] NULL,
	[UpdatedOnUtc] [datetime] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 8/3/2023 2:55:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[GroupName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 8/3/2023 2:55:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[IsAdmin] [bit] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([ID], [Name], [Avatar], [Slug], [ShowOnHomePage], [CreatedOnUtc], [UpdatedOnUtc], [Deleted]) VALUES (1, N'Apple', NULL, N'apple', 1, NULL, NULL, 0)
INSERT [dbo].[Brand] ([ID], [Name], [Avatar], [Slug], [ShowOnHomePage], [CreatedOnUtc], [UpdatedOnUtc], [Deleted]) VALUES (2, N'Samsung', NULL, N'samsung', 1, NULL, NULL, 0)
INSERT [dbo].[Brand] ([ID], [Name], [Avatar], [Slug], [ShowOnHomePage], [CreatedOnUtc], [UpdatedOnUtc], [Deleted]) VALUES (3, N'Xiaomi', NULL, N'xiaomi', 1, NULL, NULL, 0)
INSERT [dbo].[Brand] ([ID], [Name], [Avatar], [Slug], [ShowOnHomePage], [CreatedOnUtc], [UpdatedOnUtc], [Deleted]) VALUES (4, N'Acer', NULL, N'acer', 1, NULL, NULL, 0)
INSERT [dbo].[Brand] ([ID], [Name], [Avatar], [Slug], [ShowOnHomePage], [CreatedOnUtc], [UpdatedOnUtc], [Deleted]) VALUES (5, N'Dell', NULL, N'dell', 1, NULL, NULL, 0)
INSERT [dbo].[Brand] ([ID], [Name], [Avatar], [Slug], [ShowOnHomePage], [CreatedOnUtc], [UpdatedOnUtc], [Deleted]) VALUES (6, N'Tomko', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [Avatar], [Slug], [ShowOnHomePage], [Deleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2, N'Máy tính ', N'maytinh.jpg                                                                                         ', N'may-tinh', 1, 0, NULL, NULL)
INSERT [dbo].[Category] ([ID], [Name], [Avatar], [Slug], [ShowOnHomePage], [Deleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (3, N'Máy tính bảng', N'maytinhbang.jpg                                                                                     ', N'may-tinh-bang', 1, 0, NULL, NULL)
INSERT [dbo].[Category] ([ID], [Name], [Avatar], [Slug], [ShowOnHomePage], [Deleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (7, N'Điện thoại', N'iphone.jpg                                                                                          ', N'dien-thoai', 1, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
INSERT [dbo].[Credential] ([ID], [GroupId], [RoleId]) VALUES (1, 10, 10)
INSERT [dbo].[Credential] ([ID], [GroupId], [RoleId]) VALUES (2, 20, 20)
GO
INSERT [dbo].[Group] ([ID], [Name]) VALUES (10, N'Quản trị viên')
INSERT [dbo].[Group] ([ID], [Name]) VALUES (20, N'Thành viên')
INSERT [dbo].[Group] ([ID], [Name]) VALUES (30, N'Checker')
GO
INSERT [dbo].[Member] ([ID], [Name], [Avatar], [LoginName], [Password], [CreatedDate], [Status], [GroupId]) VALUES (0, N'Vinh Hiển', N'khuong.jpg', N'vinhhien@gmail.com', N'0545abd0dc44d4531a53331e44febd02', CAST(N'2023-02-02T00:00:00.000' AS DateTime), NULL, 20)
INSERT [dbo].[Member] ([ID], [Name], [Avatar], [LoginName], [Password], [CreatedDate], [Status], [GroupId]) VALUES (1, N'Hồ Phú Khương', N'khuong.jpg', N'phukhuong@gmail.com', N'202cb962ac59075b964b07152d234b70', CAST(N'2023-02-03T00:00:00.000' AS DateTime), NULL, 10)
INSERT [dbo].[Member] ([ID], [Name], [Avatar], [LoginName], [Password], [CreatedDate], [Status], [GroupId]) VALUES (2, N'Huỳnh Phúc Lợi', N'loi.jpg', N'huynhphucloi@gmail.com', N'202cb962ac59075b964b07152d234b70', CAST(N'2023-02-02T00:00:00.000' AS DateTime), NULL, 20)
INSERT [dbo].[Member] ([ID], [Name], [Avatar], [LoginName], [Password], [CreatedDate], [Status], [GroupId]) VALUES (3, N'Lê Thị Thu Ngân', N'ngan.jpg', N'thungan@gmail.com', N'202cb962ac59075b964b07152d234b70', CAST(N'2023-02-04T00:00:00.000' AS DateTime), NULL, 20)
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([ID], [Title], [Avatar], [Description], [Author], [CreatedDate]) VALUES (1, N'Elon musk và anh Facebook', N'musk zac.jpg', N'Threads, mạng xã hội đối đầu Elon Musk của Mark Zuckerberg, được ví như kỳ quan tại Meta khi hình thành chỉ trong 7 tháng bởi nhóm 60 người.  Khi đang đi nghỉ cùng gia đình ở Italy vào tháng 11/2022, Adam Mosseri nhận lệnh họp từ xa với ban lãnh đạo Meta để làm gì đó cạnh tranh trực tiếp với Elon Musk, người vừa tiếp quản Twitter được vài tuần.', N'Khương', CAST(N'2023-02-02' AS Date))
INSERT [dbo].[News] ([ID], [Title], [Avatar], [Description], [Author], [CreatedDate]) VALUES (2, N'Nỗi đau ngành chip - khan hiếm hóa dư thừa', N'chip news.png', N'Khủng hoảng thiếu hụt chip thời Covid-19 hiện chuyển sang thừa thãi, khiến nhiều hãng chip hàng đầu thế giới gánh chịu hậu quả.  Đại dịch từng gây gián đoạn nặng nề với chuỗi cung ứng và tăng gánh nặng cho các dây chuyền sản xuất bán dẫn khi nhiều người phải làm việc ở nhà và cần mua sắm thiết bị điện tử. Điều đó dẫn tới nhu cầu tăng vọt với các hãng sản xuất chip nhớ như Samsung, SK Hynix, Micron. Tình trạng khan hiếm chip nói riêng và sản phẩm tiêu dùng nói chung kéo dài đến nửa đầu 2022. Thiếu hụt chip cũng ảnh hưởng tới dây chuyền sản xuất ôtô và nhiều hãng lớn phải cắt giảm đáng kể sản lượng.  Nguồn cung và cầu với một số loại chip dần cân bằng trong hơn một năm qua, nhưng nhiều lĩnh vực đang chứng kiến tình trạng khan hiếm hóa thành dư thừa.', N'Khương', CAST(N'2003-02-02' AS Date))
INSERT [dbo].[News] ([ID], [Title], [Avatar], [Description], [Author], [CreatedDate]) VALUES (3, N'Tiến sĩ AI chỉ cách thành kỹ sư prompt', N'ai news.jpg', N'Theo tiến sĩ Đinh Viết Sang, prompt không cần kiến thức lập trình chuyên sâu nhưng cần khả năng diễn đạt tốt, ngoại ngữ và kiến thức nền tảng trong lĩnh vực của mình.  Prompt engineer - kỹ sư ra lệnh - là nghề mới, được săn đón khi các mô hình AI tạo sinh trở nên phổ biến trong cộng đồng. Điểm đặc biệt của kỹ sư prompt là không yêu cầu bằng cấp về máy tính hay kỹ năng lập trình, nhưng cần một số yếu tố nhất định.  Ngoại ngữ  Theo tiến sĩ Đinh Viết Sang, Trưởng phòng thí nghiệm Foundation Models, Phó Giám đốc Trung tâm BKAI - Đại học Bách khoa Hà Nội, điểm mạnh của mô hình ngôn ngữ lớn là có thể cho ra câu trả lời nhanh dựa trên việc tổng hợp lượng thông tin lớn. Tuy nhiên, một hạn chế của chúng là dễ cho ra câu trả lời "ảo giác" nếu người dùng không hỏi đúng cách. Công việc của kỹ sư prompt là đặt câu hỏi đúng để AI có thể đưa ra các câu trả lời theo ý muốn.', N'Khương', CAST(N'2023-02-02' AS Date))
SET IDENTITY_INSERT [dbo].[News] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (26, N'DonHang-20230630130319', 1, 1, CAST(N'2023-06-30T13:03:19.220' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (27, N'DonHang-20230630130623', 1, 1, CAST(N'2023-06-30T13:06:23.293' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (28, N'DonHang-20230630131820', 1, 1, CAST(N'2023-06-30T13:18:20.750' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (29, N'DonHang-20230630140110', 1, 1, CAST(N'2023-06-30T14:01:10.430' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (30, N'DonHang-20230701083106', 1, 1, CAST(N'2023-07-01T08:31:06.353' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (31, N'DonHang-20230704101659', 1, 1, CAST(N'2023-07-04T10:16:59.787' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (32, N'DonHang-20230724223445', 1, 1, CAST(N'2023-07-24T22:34:45.677' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (33, N'DonHang-20230724223633', 1, 1, CAST(N'2023-07-24T22:36:33.427' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (34, N'DonHang-20230724223722', 1, 1, CAST(N'2023-07-24T22:37:22.987' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (35, N'DonHang-20230724223725', 1, 1, CAST(N'2023-07-24T22:37:25.657' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (36, N'DonHang-20230724223917', 1, 1, CAST(N'2023-07-24T22:39:17.357' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (37, N'DonHang-20230724224429', 1, 1, CAST(N'2023-07-24T22:44:29.697' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (38, N'DonHang-20230724225221', 1, 1, CAST(N'2023-07-24T22:52:21.643' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (39, N'DonHang-20230724225231', 1, 1, CAST(N'2023-07-24T22:52:31.427' AS DateTime), N'ho phu khuong', N'03854854854', N'long binh', N'hophuthuong@yahoo.com')
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (40, N'DonHang-20230724225350', 1, 1, CAST(N'2023-07-24T22:53:50.983' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (41, N'DonHang-20230724230600', 1, 1, CAST(N'2023-07-24T23:06:00.523' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (42, N'DonHang-20230724230721', 1, 1, CAST(N'2023-07-24T23:07:21.237' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (43, N'DonHang-20230724231410', 1, 1, CAST(N'2023-07-24T23:14:10.127' AS DateTime), N'huynh phuc loi', N'0353579425', N'long an', N'tonisoni979@gmail.com')
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (44, N'DonHang-20230724231714', 1, 1, CAST(N'2023-07-24T23:17:14.183' AS DateTime), N'ho thi thu ngan', N'42358345934', N'tan an', N'hothithungan@gmail.com')
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (45, N'DonHang-20230724231808', 1, 1, CAST(N'2023-07-24T23:18:08.207' AS DateTime), N'huynh phuc loi', N'42358345934', N'3254565667767676', N'hophuthuong@yahoo.com')
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (46, N'DonHang-20230724232251', 1, 1, CAST(N'2023-07-24T23:22:51.070' AS DateTime), N'huu luan', N'95495686585', N'tan an ', N'nguyenphamhuuluan@gmail.com')
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (47, N'DonHang-20230724232333', 1, 1, CAST(N'2023-07-24T23:23:33.253' AS DateTime), N'huu luan', N'95495686585', N'tan an ', N'nguyenphamhuuluan@gmail.com')
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (48, N'DonHang-20230724232340', 1, 1, CAST(N'2023-07-24T23:23:40.860' AS DateTime), N'huu luan', N'95495686585', N'tan an ', N'nguyenphamhuuluan@gmail.com')
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (49, N'DonHang-20230724232448', 1, 1, CAST(N'2023-07-24T23:24:48.207' AS DateTime), N'huu luan', N'95495686585', N'tan an ', N'nguyenphamhuuluan@gmail.com')
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (50, N'DonHang-20230724232530', 1, 1, CAST(N'2023-07-24T23:25:30.887' AS DateTime), N'huu luan', N'95495686585', N'tan an ', N'nguyenphamhuuluan@gmail.com')
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (51, N'DonHang-20230724232556', 1, 1, CAST(N'2023-07-24T23:25:56.920' AS DateTime), N'huu luan', N'95495686585', N'tan an ', N'nguyenphamhuuluan@gmail.com')
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (52, N'DonHang-20230724232606', 1, 1, CAST(N'2023-07-24T23:26:06.083' AS DateTime), N'huu luan', N'95495686585', N'tan an ', N'nguyenphamhuuluan@gmail.com')
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (53, N'DonHang-20230724232756', 1, 1, CAST(N'2023-07-24T23:27:56.977' AS DateTime), N'huu luan', N'95495686585', N'long binh', N'tonisoni1001@gmail.com')
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (54, N'DonHang-20230727083520', 1, 1, CAST(N'2023-07-27T08:35:20.397' AS DateTime), N'huynh phuc loi', N'03854854854', N'long binh', N'hophuthuong@yahoo.com')
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (55, N'DonHang-20230727084402', 1, 1, CAST(N'2023-07-27T08:44:02.410' AS DateTime), N'huynh phuc loi', N'03854854854', N'long binh', N'hophuthuong@yahoo.com')
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (56, N'DonHang-20230727084427', 1, 1, CAST(N'2023-07-27T08:44:27.313' AS DateTime), N'huynh phuc loi', N'03854854854', N'long binh', N'hophuthuong@yahoo.com')
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (57, N'DonHang-20230727084436', 1, 1, CAST(N'2023-07-27T08:44:36.877' AS DateTime), N'huynh phuc loi', N'03854854854', N'long binh', N'hophuthuong@yahoo.com')
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (58, N'DonHang-20230727084442', 1, 1, CAST(N'2023-07-27T08:44:42.220' AS DateTime), N'huynh phuc loi', N'03854854854', N'long binh', N'hophuthuong@yahoo.com')
INSERT [dbo].[Order] ([ID], [Name], [UserId], [Status], [CreatedOnUtc], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail]) VALUES (59, N'DonHang-20230728192902', 1, 1, CAST(N'2023-07-28T19:29:02.063' AS DateTime), N'minh trung pham', N'03854854854', N'long binh', N'hophuthuong@yahoo.com')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (1, 1, 1, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (2, 2, 1, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (3, 3, 1, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (4, 28, 45, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (5, 28, 45, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (6, 29, 42, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (7, 30, 1, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (8, 31, 48, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (9, 32, 45, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (10, 33, 47, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (11, 34, 47, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (12, 35, 47, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (13, 36, 47, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (14, 37, 47, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (15, 38, 47, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (16, 39, 47, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (17, 40, 47, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (18, 40, 42, 10)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (19, 41, 47, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (20, 41, 42, 10)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (21, 42, 47, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (22, 42, 42, 10)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (23, 43, 47, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (24, 44, 43, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (25, 44, 47, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (26, 44, 46, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (27, 45, 43, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (28, 45, 47, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (29, 45, 46, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (30, 45, 42, 10)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (31, 46, 47, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (32, 47, 47, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (33, 48, 47, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (34, 49, 47, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (35, 50, 47, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (36, 51, 47, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (37, 52, 47, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (38, 53, 1, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (39, 54, 43, 2)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (40, 54, 1, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (41, 55, 43, 2)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (42, 55, 1, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (43, 56, 43, 2)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (44, 56, 1, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (45, 57, 43, 2)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (46, 57, 1, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (47, 58, 43, 2)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (48, 58, 1, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderId], [ProductId], [Quantity]) VALUES (49, 59, 42, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (1, N'iphone6', N'iphone6.jpg                                                                                         ', 7, NULL, N'Máy sử dụng chip đồ họa PowerVR GX6450, có thể xử lý hình ảnh độ phân giải cao như video 4K hay game 3D tốt và mượt hơn, màn hình Retina HD cùng kích thước 4.7 inch cho mọi thao tác lướt web, giải trí hay xử lý công việc đều rất tốt.', 2000000, NULL, 1, N'iPhone 6', 1, 0, 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (41, N'iPhone X', N'iphone x.jpg                                                                                        ', 7, NULL, N'iPhone X  có màn hình 5,8inch sắc nét, thiết kế tai thỏ thời thượng, camera kép chất lượng cao và con chip Apple A11 mạnh mẽ, tiết kiệm điện năng. iPhone X 64GB phù hợp với người dùng cần một smartphone thương hiệu lớn, vóc dáng vừa phải, cấu hình hàng đầu và chụp ảnh đẹp.', 7000000, NULL, 2, NULL, 1, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (42, N'iPhone 12', N'iphone 12.jpg                                                                                       ', 7, NULL, N'iPhone 12 Pro 128GB là smartphone sở hữu thiết kế sang trọng, hiện đại. Máy được trang bị một màn hình rộng 6.1 inch, đi kèm là hiệu năng mạnh mẽ với chip A14 Bionic, bộ nhớ trong 128GB. iPhone 12 Pro có bộ ba camera cực đỉnh 12MP cùng nhiều chế độ chụp ảnh chuyên nghiệp.', 23000000, NULL, 1, NULL, 1, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (43, N'Samsung Galaxy s22', N'samsung s22.jpg                                                                                     ', 7, NULL, NULL, 200000000, NULL, 1, NULL, 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (44, N'iPhone 13', N'iphone 13.jpg                                                                                       ', 7, NULL, N'iPhone 13 Pro 128GB  là smartphone sở hữu thiết kế sang trọng, hiện đại với màn hình lớn đẹp, cấu hình mạnh mẽ cùng con chip A15 Bionic, màn hình 6.1 inch OLED 120Hz cùng bộ nhớ trong lên đến 128GB lưu trữ thoải mái, máy được trang bị đến 3 camera sau với nhiều công nghệ chụp ảnh mới.', 20000000000, NULL, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (45, N'iPhone 14', N'iphone 14.jpg                                                                                       ', 7, NULL, N'Phone 14 Pro Max 512GB Chính hãng (VN/A) chính thống giá RẺ HƠN CÁC LOẠI RẺ chỉ có tại Di Động Việt - Đại lý uỷ quyền chính thức của Apple tại Việt Nam. Với thiết kế thời thượng và các tính năng hiện đại, chiếc smartphone này sẽ mang đến cho bạn trải nghiệm đầy cảm xúc với khả năng sáng tạo bứt phá với bộ 3 camera gồm: 48MP và 2 camera 12MP, kết hợp với hiệu năng mạnh mẽ từ chipset Apple A16 Bionic 6 nhân. ', 29000000, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (46, N'Samsung Galaxy S20 FE ', N'samsung-galaxy-s20.jpeg                                                                             ', 7, NULL, N'Samsung Galaxy S20 FE 256GB là phiên bản đặc biệt dành cho những người hâm mộ Samsung. Máy sở hữu thiết kế sang trọng, nhiều màu sắc trẻ trung. Màn hình rộng 6.5 inches, hiệu năng mạnh mẽ bởi chip Snapdragon 865. Máy còn được trang bị bộ 3 camera với nhiều tính năng, đáp ứng tốt nhu cầu người dùng.', 6000000, NULL, 2, NULL, 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (47, N'Acer Tiger', N'acer tiger.jpg                                                                                      ', 2, NULL, N'Laptop gaming Acer Nitro 5 AN515-58-791A Tiger - Core i7-12700H là chiếc laptop có cấu hình cao, được thay diện mạo mới từ thiết kế đến cấu hình. Hứa hẹn sẽ mang đến cho game thủ những trải nghiệm chơi game xuất sắc.', 70000000, NULL, 2, NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (48, N'Dell G15', N'dell g15.jpg                                                                                        ', 2, NULL, N'Dell Gaming G15 5525 (2022) là một trong những sản phẩm laptop chơi game đỉnh nhất của Dell, được trang bị cấu hình mạnh mẽ và thiết kế đẹp mắt. Với hiệu năng xử lý đa nhiệm ấn tượng, khả năng chơi game và đồ họa mượt mà cùng hệ thống làm mát hiệu quả, Dell Gaming G15 5525 hứa hẹn sẽ đem lại trải nghiệm tuyệt vời cho người dùng.', 2000000000, NULL, 1, NULL, 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (49, N'Acer Eagle', N'acer eagle.jpg                                                                                      ', 2, NULL, N'Acer Nitro 5 Eagle - Ryzen 5-5600H là một chiếc laptop gaming được trang bị bộ vi xử lý Ryzen 5-5600H, RAM 8GB và ổ cứng SSD 512G. Ngoài ra, sản phẩm còn sử dụng card đồ họa RTX 3060 và màn hình 144Hz FHD 15.6 inch', 19990000, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (50, N'Acer Aspire', N'acer aspire.jpg                                                                                     ', 2, NULL, N'Acer Aspire Nitro 5 thống trị thế giới trò chơi với sức mạnh tổng hợp của bộ xử lý Intel® Core ™ i7 thế hệ thứ 11 và GPU NVIDIA® GeForce RTX ™ 30 Series. Định cấu hình máy tính xách tay của bạn để có tốc độ tối đa và dung lượng lưu trữ lớn với hai khe cắm cho M.2 PCIe / SATA SSDs1 và lên đến 16GB RAM DDR4  2667.', 17440000, NULL, 2, NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (51, N'Acer swift ', N'acer swift.jpg                                                                                      ', 2, NULL, N'aptop Gaming Acer Aspire 7 A715 là dòng thiết bị dành cho phân khúc khách hàng chuyên chơi game. Tuy nhiên, khi nhìn từ bên ngoài, thiết kế của thiết bị này không quá hầm hố, mà ngược lại rất đơn giản và thanh lịch. Chỉ với trọng lượng khoảng 2.1kg và dày khoảng 22.9 mm, người dùng có thể dễ dàng mang thiết bị này đến bất kỳ đâu mà họ muốn.', 15990000, NULL, 2, NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (53, N'Samsung Galaxy A14', N'samsung galaxy a14.jpg                                                                              ', 7, NULL, N'sở hữu thiết kế nguyên khối liền mạch, các góc bo tròn tỉ mỉ, kết hợp cùng cụm camera không viền thời thượng mang đến diện mạo hết mực trẻ trung, năng động và cho cảm giác cầm nắm thoải mái trên tay. Điện thoại Galaxy A14 5G có 3 phiên bản màu phá cách mới lạ bao gồm: Đỏ Burgundy, Đen Midnight, Trắng Pearl để bạn thỏa sức khoe trọn dấu ấn cá nhân thông qua màu sắc yêu thích của mình.', 3900000, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (54, N'Samsung Galaxy M22', N'samsung galaxy m22.jpg                                                                              ', 7, NULL, N'ra mắt xứng đáng là 1 chiến thần trong phân khúc điện thoại tầm trung với cấu hình mạnh mẽ ấn tượng, cải tiến nổi bật ở camera, cùng dung lượng pin khỏe đến 2 ngày sử dụng, hứa hẹn là lựa chọn giá mềm đáng nhắm tới cho người tiêu dùng.', 3450000, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (55, N'Samsung Galaxy Z Flip 4 ', N'flip4.jpg                                                                                           ', 7, NULL, N'chiếc smartphone nắp gập xịn sò bậc nhất thị trường di động đánh dấu cho sự phát triển vượt bậc về công nghệ. Không chỉ đơn thuần là một chiếc smartphone cao cấp, Galaxy Z Flip4 còn là món phụ kiện thời trang tuyệt vời cho các quý cô trong dịp cuối năm nay.', 15990000, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [Avatar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (56, N'Samsung Galaxy Note20', N'sam-sung-note-20.jpg                                                                                ', 7, NULL, N' Chiếc smartphone Samsung đang được rất nhiều người dùng yêu thích. Đây là một trong những chiếc điện thoại nổi bật nhất của hãng. Không những vậy, máy còn minh chứng cho sự sáng tạo mạnh mẽ của hãng khi đem đến cho người dùng những trải nghiệm tuyệt vời.', 6990000, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[Role] ([Id], [Code], [Name], [GroupName]) VALUES (10, N'view-add-edit-delete', N'xem/thêm/sửa/xóa', N'Sản phẩm')
INSERT [dbo].[Role] ([Id], [Code], [Name], [GroupName]) VALUES (20, N'view', N'xem', N'Sản phẩm')
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [FirstName], [LastName], [Email], [Password], [IsAdmin]) VALUES (1, N'Khuong', N'Ho', N'anhemaoloi@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL)
INSERT [dbo].[User] ([ID], [FirstName], [LastName], [Email], [Password], [IsAdmin]) VALUES (7, N'Lan', N'Trinh', N'lan@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL)
INSERT [dbo].[User] ([ID], [FirstName], [LastName], [Email], [Password], [IsAdmin]) VALUES (11, N'qwe', N'qwe', N'qweqwe@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL)
INSERT [dbo].[User] ([ID], [FirstName], [LastName], [Email], [Password], [IsAdmin]) VALUES (12, N'Khuong', N'Mad', N'khuongdua@gmail.com', N'd9b1d7db4cd6e70935368a1efb10e377', NULL)
INSERT [dbo].[User] ([ID], [FirstName], [LastName], [Email], [Password], [IsAdmin]) VALUES (14, N'Lan', N'Trinh', N'lantrinh@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL)
INSERT [dbo].[User] ([ID], [FirstName], [LastName], [Email], [Password], [IsAdmin]) VALUES (18, N'Khuong', N'Trinh', N'tonisoni979@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1: Giảm giá sốc 2:Đề xuất' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'TypeId'
GO
USE [master]
GO
ALTER DATABASE [WebsiteBanHang] SET  READ_WRITE 
GO
