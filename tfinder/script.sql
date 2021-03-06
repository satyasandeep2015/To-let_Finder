USE [master]
GO
/****** Object:  Database [tfinder]    Script Date: 07-02-2015 14:06:09 ******/
CREATE DATABASE [tfinder]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tfinder', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.CSE304\MSSQL\DATA\tfinder.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'tfinder_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.CSE304\MSSQL\DATA\tfinder_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [tfinder] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tfinder].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tfinder] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [tfinder] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [tfinder] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [tfinder] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [tfinder] SET ARITHABORT OFF 
GO
ALTER DATABASE [tfinder] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [tfinder] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [tfinder] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [tfinder] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [tfinder] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [tfinder] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [tfinder] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [tfinder] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [tfinder] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [tfinder] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [tfinder] SET  DISABLE_BROKER 
GO
ALTER DATABASE [tfinder] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [tfinder] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [tfinder] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [tfinder] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [tfinder] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [tfinder] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [tfinder] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [tfinder] SET RECOVERY FULL 
GO
ALTER DATABASE [tfinder] SET  MULTI_USER 
GO
ALTER DATABASE [tfinder] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [tfinder] SET DB_CHAINING OFF 
GO
ALTER DATABASE [tfinder] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [tfinder] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'tfinder', N'ON'
GO
USE [tfinder]
GO
/****** Object:  Table [dbo].[city]    Script Date: 07-02-2015 14:06:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[city](
	[cityid] [int] IDENTITY(1,1) NOT NULL,
	[stateid] [int] NOT NULL,
	[cityname] [varchar](15) NOT NULL,
 CONSTRAINT [PK_city] PRIMARY KEY CLUSTERED 
(
	[cityid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[images]    Script Date: 07-02-2015 14:06:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[postid] [int] NOT NULL,
	[imagepath] [varchar](50) NOT NULL,
 CONSTRAINT [PK_images] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[locality]    Script Date: 07-02-2015 14:06:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[locality](
	[id] [varchar](50) NOT NULL,
	[stateid] [varchar](50) NOT NULL,
	[cityid] [varchar](50) NOT NULL,
 CONSTRAINT [PK_locality] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[post]    Script Date: 07-02-2015 14:06:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[post](
	[postid] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[phonenumber] [bigint] NOT NULL,
	[city] [varchar](50) NOT NULL,
	[state] [varchar](50) NOT NULL,
	[address] [varchar](50) NOT NULL,
	[type] [varchar](50) NOT NULL,
	[price] [int] NOT NULL,
	[image1] [varchar](50) NULL,
	[image2] [varchar](50) NULL,
	[image3] [varchar](50) NULL,
	[image4] [varchar](50) NULL,
	[image5] [varchar](50) NULL,
	[image6] [varchar](50) NULL,
	[image7] [varchar](50) NULL,
	[image8] [varchar](50) NULL,
	[image9] [varchar](50) NULL,
	[image10] [varchar](50) NULL,
 CONSTRAINT [PK_post] PRIMARY KEY CLUSTERED 
(
	[postid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[question]    Script Date: 07-02-2015 14:06:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[question](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[questext] [varchar](50) NOT NULL,
 CONSTRAINT [PK_question] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[registration]    Script Date: 07-02-2015 14:06:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[registration](
	[name] [varchar](50) NOT NULL,
	[phonenumber] [bigint] NOT NULL,
	[password] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[profilepic] [varchar](50) NOT NULL,
	[securityQ] [varchar](50) NOT NULL,
	[answer] [varchar](50) NOT NULL,
 CONSTRAINT [PK_registration] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[state]    Script Date: 07-02-2015 14:06:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[state](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[statename] [varchar](50) NOT NULL,
 CONSTRAINT [PK_state] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[type]    Script Date: 07-02-2015 14:06:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[typename] [varchar](50) NULL,
 CONSTRAINT [PK_type_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[city] ON 

INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (101, 1, N'Guntur')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (102, 1, N'Chilakaluripet')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (103, 2, N'Bubang')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (104, 2, N'Changlang')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (105, 2, N'Chopelling')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (107, 3, N'Odalguri')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (108, 3, N'Tangla')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (109, 3, N'Karimganj')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (110, 4, N'Patna')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (111, 4, N'Gaya')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (112, 5, N'Raipur')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (119, 5, N'Bilaspur')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (120, 5, N'Rajnandgaon')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (121, 6, N'Mapusa')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (122, 6, N'Panaji')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (123, 6, N'Margao')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (124, 7, N'Ahmedabad')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (126, 7, N'Surat')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (127, 7, N'Vadodara
')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (128, 8, N'Ambala')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (129, 8, N'Bahadurgarh ')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (130, 8, N'Bhiwan')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (131, 9, N'Bilaspur')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (132, 9, N'Chamba')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (133, 9, N' Dalhousie')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (135, 10, N'
Gulmarg')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (136, 10, N'Jammu')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (137, 10, N'Leh')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (138, 11, N'Bokaro')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (139, 11, N'Dhanbad')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (140, 11, N'Jamshedpur')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (141, 12, N'Bangalore')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (142, 12, N'Bellary')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (143, 12, N'Bidar')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (144, 13, N'Kochi')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (145, 13, N'Kozhikode')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (146, 13, N'Thrissur')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (147, 14, N'Indore')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (148, 14, N'Bhopal')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (151, 14, N'Jabalpur')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (152, 15, N'Mumbai (Bombay)')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (153, 15, N'Pune')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (154, 15, N'Nagpur')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (155, 16, N'Aihol')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (156, 16, N'Jessami')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (157, 16, N'Atengba')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (158, 17, N'Adugiri')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (159, 17, N'Bajengdoba')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (160, 17, N'Barato')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (161, 18, N'Aijal')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (163, 18, N'Ainak')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (164, 18, N'Aizawl')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (165, 19, N'Aichisagami')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (166, 19, N'Akhegwo')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (167, 19, N'Baimho')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (168, 20, N'Bhubaneshwar')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (169, 20, N'Cuttack')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (170, 20, N'Rourkela')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (173, 21, N'Abohar')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (174, 21, N'Ajnala')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (175, 21, N'Amritsar')
INSERT [dbo].[city] ([cityid], [stateid], [cityname]) VALUES (176, 1, N'Narasaraopeta')
SET IDENTITY_INSERT [dbo].[city] OFF
SET IDENTITY_INSERT [dbo].[post] ON 

INSERT [dbo].[post] ([postid], [email], [name], [phonenumber], [city], [state], [address], [type], [price], [image1], [image2], [image3], [image4], [image5], [image6], [image7], [image8], [image9], [image10]) VALUES (1, N'as@gmail.com', N'dsadsa', 9000640521, N'Ahmedabad', N'Gujarat', N'jxzchxzjkckzxjh', N'1BHK', 20000, N'~/profilepics/s6.png', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[post] ([postid], [email], [name], [phonenumber], [city], [state], [address], [type], [price], [image1], [image2], [image3], [image4], [image5], [image6], [image7], [image8], [image9], [image10]) VALUES (2, N'qqq@gmail.com', N'dsadsa', 9000640521, N'Guntur', N'Andhra Pradesh', N'jxzchxzjkckzxjh', N'1BHK', 30000, N'~/profilepics/s1.png', N'~/profilepics/s1.png', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[post] ([postid], [email], [name], [phonenumber], [city], [state], [address], [type], [price], [image1], [image2], [image3], [image4], [image5], [image6], [image7], [image8], [image9], [image10]) VALUES (4, N'qqq@gmail.com', N'Kss', 9000640521, N'Guntur', N'Andhra Pradesh', N'sadffdsfsdsa', N'1BHK', 20000, N'~/profilepics/screenshot_12052014_145222.png', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[post] ([postid], [email], [name], [phonenumber], [city], [state], [address], [type], [price], [image1], [image2], [image3], [image4], [image5], [image6], [image7], [image8], [image9], [image10]) VALUES (5, N'qqq@gmail.com', N'dsadsa', 9000640521, N'Bubang', N'Arunachal Pradesh', N'', N'1BHK', 20000, N'~/profilepics/s3.png', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[post] ([postid], [email], [name], [phonenumber], [city], [state], [address], [type], [price], [image1], [image2], [image3], [image4], [image5], [image6], [image7], [image8], [image9], [image10]) VALUES (6, N'qqq@gmail.com', N'mani', 9502925503, N'Patna', N'Bihar', N'qwerty', N'1BHK', 2000, N'~/profilepics/s6.png', N'~/profilepics/s6.png', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[post] ([postid], [email], [name], [phonenumber], [city], [state], [address], [type], [price], [image1], [image2], [image3], [image4], [image5], [image6], [image7], [image8], [image9], [image10]) VALUES (7, N'qqq@gmail.com', N'nag', 1234567891, N'Guntur', N'Andhra Pradesh', N'qwertyu', N'2BHK', 20000, N'~/profilepics/screenshot_12052014_145222.png', N'~/profilepics/s2.png', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[post] ([postid], [email], [name], [phonenumber], [city], [state], [address], [type], [price], [image1], [image2], [image3], [image4], [image5], [image6], [image7], [image8], [image9], [image10]) VALUES (12, N'malli.royal22@gmail.com', N'', 0, N'--select--', N'--select--', N'', N'1BHK', 0, N'~/profilepics/screenshot_12052014_145222.png', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[post] ([postid], [email], [name], [phonenumber], [city], [state], [address], [type], [price], [image1], [image2], [image3], [image4], [image5], [image6], [image7], [image8], [image9], [image10]) VALUES (13, N'malli.royal22@gmail.com', N'', 0, N'--select--', N'--select--', N'', N'1BHK', 0, N'~/profilepics/s1.png', N'~/profilepics/screenshot_12052014_145222.png', N'~/profilepics/s2.png', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[post] ([postid], [email], [name], [phonenumber], [city], [state], [address], [type], [price], [image1], [image2], [image3], [image4], [image5], [image6], [image7], [image8], [image9], [image10]) VALUES (14, N'malli.royal22@gmail.com', N'', 0, N'--select--', N'--select--', N'', N'1BHK', 0, N'~/profilepics/s7.png', N'~/profilepics/s6.png', N'~/profilepics/s3.png', N'~/profilepics/screenshot_12052014_144118.png', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[post] ([postid], [email], [name], [phonenumber], [city], [state], [address], [type], [price], [image1], [image2], [image3], [image4], [image5], [image6], [image7], [image8], [image9], [image10]) VALUES (15, N'as@gmail.com', N'asmi', 1231231231, N'Bubang', N'Arunachal Pradesh', N'ccc', N'3BHK', 100000, N'~/profilepics/s7.png', N'~/profilepics/s1.png', N'~/profilepics/s3.png', N'', N'', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[post] OFF
SET IDENTITY_INSERT [dbo].[question] ON 

INSERT [dbo].[question] ([id], [questext]) VALUES (1, N'your favorate hero')
INSERT [dbo].[question] ([id], [questext]) VALUES (2, N'your pet name')
INSERT [dbo].[question] ([id], [questext]) VALUES (3, N'your mother''s name')
INSERT [dbo].[question] ([id], [questext]) VALUES (4, N'your bithday')
INSERT [dbo].[question] ([id], [questext]) VALUES (5, N'your favorate place')
INSERT [dbo].[question] ([id], [questext]) VALUES (6, N'your favorate movie')
SET IDENTITY_INSERT [dbo].[question] OFF
INSERT [dbo].[registration] ([name], [phonenumber], [password], [email], [profilepic], [securityQ], [answer]) VALUES (N'as', 9742157703, N'ms', N'as@gmail.com', N'~/profilepics/s5.png', N'your favorate movie', N'vivah')
INSERT [dbo].[registration] ([name], [phonenumber], [password], [email], [profilepic], [securityQ], [answer]) VALUES (N'kalyani', 1234567890, N'1', N'kalyani.jonnalagadda437@gmail.com', N'~/profilepics/screenshot_12052014_145221.png', N'your mother''s name', N'sdddf')
INSERT [dbo].[registration] ([name], [phonenumber], [password], [email], [profilepic], [securityQ], [answer]) VALUES (N'asmi', 1234567890, N'12345', N'kalyani.jp1@gmail.com', N'~/profilepics/s5.png', N'your bithday', N'bggh')
INSERT [dbo].[registration] ([name], [phonenumber], [password], [email], [profilepic], [securityQ], [answer]) VALUES (N'manu', 9177559976, N'manu', N'kavurumanohar@gmail.com', N'/profilepics/', N'your favorate hero', N'manohar')
INSERT [dbo].[registration] ([name], [phonenumber], [password], [email], [profilepic], [securityQ], [answer]) VALUES (N'dsadsa', 9618770580, N'hello', N'kk@gmail.com', N'~/profilepics/s2.png', N'your favorate hero', N'hai')
INSERT [dbo].[registration] ([name], [phonenumber], [password], [email], [profilepic], [securityQ], [answer]) VALUES (N'dsadsa', 9618770580, N'11', N'kum@gmail.com', N'~/profilepics/screenshot_12052014_145222.png', N'your favorate hero', N'hai')
INSERT [dbo].[registration] ([name], [phonenumber], [password], [email], [profilepic], [securityQ], [answer]) VALUES (N'malliswari', 7731959554, N'12', N'malli.royal22@gmail.com', N'~/profilepics/s3.png', N'your pet name', N'sai')
INSERT [dbo].[registration] ([name], [phonenumber], [password], [email], [profilepic], [securityQ], [answer]) VALUES (N'new', 9555555555, N'ss', N'new@gmail.com', N'~/profilepics/s7.png', N'your pet name', N'gg')
INSERT [dbo].[registration] ([name], [phonenumber], [password], [email], [profilepic], [securityQ], [answer]) VALUES (N'dsadsa', 9618770580, N'hello', N'qqq@gmail.com', N'~/profilepics/screenshot_12052014_145221.png', N'your favorate hero', N'hai1')
INSERT [dbo].[registration] ([name], [phonenumber], [password], [email], [profilepic], [securityQ], [answer]) VALUES (N'Kss', 9000460105, N'ss', N'sathya_678@yahoo.com', N'~/profilepics/s6.png', N'your favorate hero', N'ss')
INSERT [dbo].[registration] ([name], [phonenumber], [password], [email], [profilepic], [securityQ], [answer]) VALUES (N'Kss', 9000460105, N'ss', N'satyasandeep369@gmail.com', N'~/profilepics/s5.png', N'your favorate hero', N'sss')
INSERT [dbo].[registration] ([name], [phonenumber], [password], [email], [profilepic], [securityQ], [answer]) VALUES (N'dsadsa', 9618770580, N'qq', N'satyasandeepkollipara@gmail.com', N'~/profilepics/screenshot_12052014_145217.png', N'your favorate hero', N'qq')
INSERT [dbo].[registration] ([name], [phonenumber], [password], [email], [profilepic], [securityQ], [answer]) VALUES (N'sahina', 9502925598, N'9502925503', N'sdadas@gmail.com', N'/profilepics/', N'your favorate place', N'aa')
INSERT [dbo].[registration] ([name], [phonenumber], [password], [email], [profilepic], [securityQ], [answer]) VALUES (N'satish', 9876543210, N'123', N'ss@ss.com', N'/profilepics/', N'your favorate hero', N'h nmsd  ')
SET IDENTITY_INSERT [dbo].[state] ON 

INSERT [dbo].[state] ([id], [statename]) VALUES (1, N'Andhra Pradesh')
INSERT [dbo].[state] ([id], [statename]) VALUES (2, N'Arunachal Pradesh')
INSERT [dbo].[state] ([id], [statename]) VALUES (3, N'Assam')
INSERT [dbo].[state] ([id], [statename]) VALUES (4, N'Bihar')
INSERT [dbo].[state] ([id], [statename]) VALUES (5, N'Chhattisgarh')
INSERT [dbo].[state] ([id], [statename]) VALUES (6, N'Goa')
INSERT [dbo].[state] ([id], [statename]) VALUES (7, N'Gujarat')
INSERT [dbo].[state] ([id], [statename]) VALUES (8, N'Haryana')
INSERT [dbo].[state] ([id], [statename]) VALUES (9, N'Himachal Pradesh')
INSERT [dbo].[state] ([id], [statename]) VALUES (10, N'Jammu and Kashmir')
INSERT [dbo].[state] ([id], [statename]) VALUES (11, N'Jharkhand')
INSERT [dbo].[state] ([id], [statename]) VALUES (12, N'Karnataka')
INSERT [dbo].[state] ([id], [statename]) VALUES (13, N'Kerala')
INSERT [dbo].[state] ([id], [statename]) VALUES (14, N'Madhya Pradesh')
INSERT [dbo].[state] ([id], [statename]) VALUES (15, N'Maharashtra')
INSERT [dbo].[state] ([id], [statename]) VALUES (16, N'Manipur')
INSERT [dbo].[state] ([id], [statename]) VALUES (17, N'Meghalaya')
INSERT [dbo].[state] ([id], [statename]) VALUES (18, N'Mizoram')
INSERT [dbo].[state] ([id], [statename]) VALUES (19, N'Nagaland')
INSERT [dbo].[state] ([id], [statename]) VALUES (20, N'Odisha')
INSERT [dbo].[state] ([id], [statename]) VALUES (21, N'Punjab')
INSERT [dbo].[state] ([id], [statename]) VALUES (22, N'Rajasthan')
INSERT [dbo].[state] ([id], [statename]) VALUES (23, N'Sikkim')
INSERT [dbo].[state] ([id], [statename]) VALUES (24, N'Tamil Nadu')
INSERT [dbo].[state] ([id], [statename]) VALUES (25, N'Telangana')
INSERT [dbo].[state] ([id], [statename]) VALUES (26, N'Tripura')
INSERT [dbo].[state] ([id], [statename]) VALUES (27, N'Uttar Pradesh')
INSERT [dbo].[state] ([id], [statename]) VALUES (28, N'Uttarakhand')
INSERT [dbo].[state] ([id], [statename]) VALUES (29, N'West Bengal')
SET IDENTITY_INSERT [dbo].[state] OFF
SET IDENTITY_INSERT [dbo].[type] ON 

INSERT [dbo].[type] ([id], [typename]) VALUES (1, N'1BHK')
INSERT [dbo].[type] ([id], [typename]) VALUES (2, N'2BHK')
INSERT [dbo].[type] ([id], [typename]) VALUES (3, N'3BHK')
SET IDENTITY_INSERT [dbo].[type] OFF
ALTER TABLE [dbo].[city]  WITH CHECK ADD  CONSTRAINT [FK_city_state] FOREIGN KEY([stateid])
REFERENCES [dbo].[state] ([id])
GO
ALTER TABLE [dbo].[city] CHECK CONSTRAINT [FK_city_state]
GO
USE [master]
GO
ALTER DATABASE [tfinder] SET  READ_WRITE 
GO
