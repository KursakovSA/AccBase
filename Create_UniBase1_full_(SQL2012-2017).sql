USE [master]
GO
CREATE DATABASE [UniBase1]
 --CONTAINMENT = PARTIAL
 ON  PRIMARY 
( NAME = N'UniBase1', FILENAME = N'D:\UniBases\UniBase1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UniBase1_Log', FILENAME = N'D:\UniBases\UniBase1_Log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
--ALTER DATABASE [UniBase1] SET COMPATIBILITY_LEVEL = 140
--GO
--IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
--begin
--EXEC [UniBase1].[dbo].[sp_fulltext_database] @action = 'enable'
--end
--GO
ALTER DATABASE [UniBase1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UniBase1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UniBase1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UniBase1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UniBase1] SET ARITHABORT OFF 
GO
ALTER DATABASE [UniBase1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UniBase1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UniBase1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UniBase1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UniBase1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UniBase1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UniBase1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UniBase1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UniBase1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UniBase1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UniBase1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UniBase1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UniBase1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UniBase1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UniBase1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UniBase1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UniBase1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UniBase1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UniBase1] SET  MULTI_USER 
GO
ALTER DATABASE [UniBase1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UniBase1] SET DB_CHAINING OFF 
GO
--ALTER DATABASE [UniBase1] SET DEFAULT_FULLTEXT_LANGUAGE = 1033 
--GO
--ALTER DATABASE [UniBase1] SET DEFAULT_LANGUAGE = 1033 
--GO
--ALTER DATABASE [UniBase1] SET NESTED_TRIGGERS = ON 
--GO
--ALTER DATABASE [UniBase1] SET TRANSFORM_NOISE_WORDS = OFF 
--GO
--ALTER DATABASE [UniBase1] SET TWO_DIGIT_YEAR_CUTOFF = 2049 
--GO
ALTER DATABASE [UniBase1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UniBase1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
--ALTER DATABASE [UniBase1] SET DELAYED_DURABILITY = DISABLED 
--GO
EXEC sys.sp_db_vardecimal_storage_format N'UniBase1', N'ON'
GO
--ALTER DATABASE [UniBase1] SET QUERY_STORE = OFF
--GO
USE [UniBase1]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [int] NOT NULL,
	[Parent] [int] NULL,
	[Face1] [int] NULL,
	[Face2] [int] NULL,
	[Face] [int] NULL,
	[Slice] [int] NULL,
	[Date1] [smalldatetime] NULL,
	[Date2] [nvarchar](100) NULL,
	[Code] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[Geo] [int] NULL,
	[Account] [int] NULL,
	[Role] [int] NULL,
	[Info] [int] NULL,
	[Sign] [int] NULL,
	[Unit] [int] NULL,
	[More] [nvarchar](max) NULL,
	[Mark] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asset](
	[Id] [int] NOT NULL,
	[Parent] [int] NULL,
	[Face1] [int] NULL,
	[Face2] [int] NULL,
	[Face] [int] NULL,
	[Slice] [int] NULL,
	[Date1] [smalldatetime] NULL,
	[Date2] [nvarchar](100) NULL,
	[Code] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[Geo] [int] NULL,
	[Account] [int] NULL,
	[Asset] [int] NULL,
	[Role] [int] NULL,
	[Info] [int] NULL,
	[Unit] [int] NULL,
	[More] [nvarchar](max) NULL,
	[Mark] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deal](
	[Id] [int] NOT NULL,
	[Parent] [int] NULL,
	[Face1] [int] NULL,
	[Face2] [int] NULL,
	[Face] [int] NULL,
	[Slice] [int] NULL,
	[Date1] [smalldatetime] NULL,
	[Date2] [nvarchar](100) NULL,
	[Code] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[Geo] [int] NULL,
	[Account] [int] NULL,
	[Deal] [int] NULL,
	[Role] [int] NULL,
	[Info] [int] NULL,
	[Unit] [int] NULL,
	[More] [nvarchar](max) NULL,
	[Mark] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Face](
	[Id] [int] NOT NULL,
	[Parent] [int] NULL,
	[Face1] [int] NULL,
	[Face2] [int] NULL,
	[Face] [int] NULL,
	[Slice] [int] NULL,
	[Date1] [smalldatetime] NULL,
	[Date2] [nvarchar](100) NULL,
	[Code] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[Geo] [int] NULL,
	[Account] [int] NULL,
	[Role] [int] NULL,
	[Info] [int] NULL,
	[Unit] [int] NULL,
	[More] [nvarchar](max) NULL,
	[Mark] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Geo](
	[Id] [int] NOT NULL,
	[Parent] [int] NULL,
	[Face1] [int] NULL,
	[Face2] [int] NULL,
	[Face] [int] NULL,
	[Slice] [int] NULL,
	[Date1] [smalldatetime] NULL,
	[Date2] [nvarchar](100) NULL,
	[Code] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[Geo] [int] NULL,
	[Account] [int] NULL,
	[Role] [int] NULL,
	[Info] [int] NULL,
	[Unit] [int] NULL,
	[More] [nvarchar](max) NULL,
	[Mark] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Info](
	[Id] [int] NOT NULL,
	[Parent] [int] NULL,
	[Face1] [int] NULL,
	[Face2] [int] NULL,
	[Face] [int] NULL,
	[Slice] [int] NULL,
	[Date1] [smalldatetime] NULL,
	[Date2] [nvarchar](100) NULL,
	[Code] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[Geo] [int] NULL,
	[Account] [int] NULL,
	[Role] [int] NULL,
	[Info] [int] NULL,
	[Unit] [int] NULL,
	[More] [nvarchar](max) NULL,
	[Mark] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[Id] [int] NOT NULL,
	[Parent] [int] NULL,
	[Face1] [int] NULL,
	[Face2] [int] NULL,
	[Face] [int] NULL,
	[Slice] [int] NULL,
	[Date1] [smalldatetime] NULL,
	[Date2] [nvarchar](100) NULL,
	[Code] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[Geo] [int] NULL,
	[Account] [int] NULL,
	[Item] [int] NULL,
	[Role] [int] NULL,
	[Info] [int] NULL,
	[Unit] [int] NULL,
	[More] [nvarchar](max) NULL,
	[Mark] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[Id] [int] NOT NULL,
	[Parent] [int] NULL,
	[Face1] [int] NULL,
	[Face2] [int] NULL,
	[Face] [int] NULL,
	[Slice] [int] NULL,
	[Date1] [smalldatetime] NULL,
	[Date2] [nvarchar](100) NULL,
	[Code] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[Geo] [int] NULL,
	[Sign] [int] NULL,
	[Account] [int] NULL,
	[Log] [int] NULL,
	[Process] [int] NULL,
	[Tax] [int] NULL,
	[Item] [int] NULL,
	[Deal] [int] NULL,
	[Price] [int] NULL,
	[Asset] [int] NULL,
	[Role] [int] NULL,
	[Info] [int] NULL,
	[Meter] [int] NULL,
	[Value] [nvarchar](100) NULL,
	[Unit] [int] NULL,
	[More] [varchar](max) NULL,
	[Mark] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mark](
	[Id] [int] NOT NULL,
	[Parent] [int] NULL,
	[Face1] [int] NULL,
	[Face2] [int] NULL,
	[Face] [int] NULL,
	[Slice] [int] NULL,
	[Date1] [smalldatetime] NULL,
	[Date2] [nvarchar](100) NULL,
	[Code] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[Geo] [int] NULL,
	[Account] [int] NULL,
	[Role] [int] NULL,
	[Info] [int] NULL,
	[Unit] [int] NULL,
	[More] [nvarchar](max) NULL,
	[Mark] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meter](
	[Id] [int] NOT NULL,
	[Parent] [int] NULL,
	[Face1] [int] NULL,
	[Face2] [int] NULL,
	[Face] [int] NULL,
	[Slice] [int] NULL,
	[Date1] [smalldatetime] NULL,
	[Date2] [nvarchar](100) NULL,
	[Code] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[Geo] [int] NULL,
	[Account] [int] NULL,
	[Role] [int] NULL,
	[Info] [int] NULL,
	[Meter] [int] NULL,
	[Unit] [int] NULL,
	[More] [nvarchar](max) NULL,
	[Mark] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Price](
	[Id] [int] NOT NULL,
	[Parent] [int] NULL,
	[Face1] [int] NULL,
	[Face2] [int] NULL,
	[Face] [int] NULL,
	[Slice] [int] NULL,
	[Date1] [smalldatetime] NULL,
	[Date2] [nvarchar](100) NULL,
	[Code] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[Geo] [int] NULL,
	[Account] [int] NULL,
	[Price] [int] NULL,
	[Role] [int] NULL,
	[Info] [int] NULL,
	[Unit] [int] NULL,
	[More] [nvarchar](max) NULL,
	[Mark] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Process](
	[Id] [int] NOT NULL,
	[Parent] [int] NULL,
	[Face1] [int] NULL,
	[Face2] [int] NULL,
	[Face] [int] NULL,
	[Slice] [int] NULL,
	[Date1] [smalldatetime] NULL,
	[Date2] [nvarchar](100) NULL,
	[Code] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[Geo] [int] NULL,
	[Sign] [int] NULL,
	[Account] [int] NULL,
	[Log] [int] NULL,
	[Log1] [int] NULL,
	[Process] [int] NULL,
	[Process1] [int] NULL,
	[Asset] [int] NULL,
	[Deal] [int] NULL,
	[Item] [int] NULL,
	[Tax] [int] NULL,
	[Price] [int] NULL,
	[Role] [int] NULL,
	[Info] [int] NULL,
	[Meter] [int] NULL,
	[Value] [nvarchar](100) NULL,
	[Unit] [int] NULL,
	[More] [nvarchar](max) NULL,
	[Mark] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[Id] [int] NOT NULL,
	[Parent] [int] NULL,
	[Face1] [int] NULL,
	[Face2] [int] NULL,
	[Face] [int] NULL,
	[Slice] [int] NULL,
	[Date1] [smalldatetime] NULL,
	[Date2] [nvarchar](100) NULL,
	[Code] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[Geo] [int] NULL,
	[Account] [int] NULL,
	[Report] [int] NULL,
	[Role] [int] NULL,
	[Info] [int] NULL,
	[Unit] [int] NULL,
	[More] [nvarchar](max) NULL,
	[Mark] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] NOT NULL,
	[Parent] [int] NULL,
	[Face1] [int] NULL,
	[Face2] [int] NULL,
	[Face] [int] NULL,
	[Slice] [int] NULL,
	[Date1] [smalldatetime] NULL,
	[Date2] [nvarchar](100) NULL,
	[Code] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[Geo] [int] NULL,
	[Account] [int] NULL,
	[Role] [int] NULL,
	[Info] [int] NULL,
	[Unit] [int] NULL,
	[More] [nvarchar](max) NULL,
	[Mark] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sign](
	[Id] [int] NOT NULL,
	[Parent] [int] NULL,
	[Face1] [int] NULL,
	[Face2] [int] NULL,
	[Face] [int] NULL,
	[Slice] [int] NULL,
	[Date1] [smalldatetime] NULL,
	[Date2] [nvarchar](100) NULL,
	[Code] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[Geo] [int] NULL,
	[Sign] [int] NULL,
	[Account] [int] NULL,
	[Role] [int] NULL,
	[Info] [int] NULL,
	[Unit] [int] NULL,
	[More] [nvarchar](max) NULL,
	[Mark] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slice](
	[Id] [int] NOT NULL,
	[Parent] [int] NULL,
	[Face1] [int] NULL,
	[Face2] [int] NULL,
	[Face] [int] NULL,
	[Slice] [int] NULL,
	[Date1] [smalldatetime] NULL,
	[Date2] [nvarchar](100) NULL,
	[Code] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[Geo] [int] NULL,
	[Account] [int] NULL,
	[Role] [int] NULL,
	[Info] [int] NULL,
	[Unit] [int] NULL,
	[More] [nvarchar](max) NULL,
	[Mark] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tax](
	[Id] [int] NOT NULL,
	[Parent] [int] NULL,
	[Face1] [int] NULL,
	[Face2] [int] NULL,
	[Face] [int] NULL,
	[Slice] [int] NULL,
	[Date1] [smalldatetime] NULL,
	[Date2] [nvarchar](100) NULL,
	[Code] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[Geo] [int] NULL,
	[Account] [int] NULL,
	[Tax] [int] NULL,
	[Role] [int] NULL,
	[Info] [int] NULL,
	[Unit] [int] NULL,
	[More] [nvarchar](max) NULL,
	[Mark] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[Id] [int] NOT NULL,
	[Parent] [int] NULL,
	[Face1] [int] NULL,
	[Face2] [int] NULL,
	[Face] [int] NULL,
	[Slice] [int] NULL,
	[Date1] [smalldatetime] NULL,
	[Date2] [nvarchar](100) NULL,
	[Code] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[Geo] [int] NULL,
	[Account] [int] NULL,
	[Role] [int] NULL,
	[Info] [int] NULL,
	[Unit] [int] NULL,
	[More] [nvarchar](max) NULL,
	[Mark] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (1, 286, NULL, NULL, NULL, 7, NULL, N'', N'Ac.1', N'Краткосрочные активы', NULL, NULL, 9, NULL, 3, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (2, 1, NULL, NULL, NULL, 7, NULL, N'', N'Ac.1000', N'Денежные средства', NULL, NULL, 11, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (3, 2, NULL, NULL, NULL, 1, NULL, N'', N'Ac.1010', N'Денежные средства в кассе', NULL, NULL, 195, 72, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (4, 2, NULL, NULL, NULL, 1, NULL, N'', N'Ac.1020', N'Денежные средства в пути', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (5, 2, NULL, NULL, NULL, 1, NULL, N'', N'Ac.1030', N'Денежные средства на текущих банковских счетах', NULL, NULL, 193, 72, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (6, 2, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1040', N' Денежные средства на корреспондентских счетах ', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (7, 2, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1050', N'Денежные средства на сберегательных счетах', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (8, 2, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1060', N'Денежные средства, ограниченные в использовании', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (9, 2, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1070', N'Учет электронных денег', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (10, 2, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1080', N'Прочие денежные средства', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (11, 2, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1090', N'Оценочный резерв под убытки от обесценения денежных средств', NULL, NULL, 12, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (12, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1100', N'Краткосрочные финансовые активы', NULL, NULL, 3, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (13, 12, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1110', N'Краткосрочные финансовые активы, оцениваемые по амортизированной стоимости', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (14, 12, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1120', N'Краткосрочные финансовые активы, оцениваемые по справедливой стоимости через прочий совокупный доход', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (15, 12, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1130', N'Краткосрочные финансовые активы, оцениваемые по справедливой стоимости через прибыль или убыток', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (16, 12, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1140', N'Производные финансовые инструменты', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (17, 12, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1150', N'Краткосрочные вознаграждения к получению', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (18, 12, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1160', N'Прочие краткосрочные финансовые активы', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (19, 12, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1170', N'Оценочный резерв под убытки от обесценения краткосрочных финансовых активов', NULL, NULL, 12, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (20, 1, NULL, NULL, NULL, 7, NULL, N'', N'Ac.1200', N'Краткосрочная дебиторская задолженность', NULL, NULL, 7, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (21, 20, NULL, NULL, NULL, 1, NULL, N'', N'Ac.1210', N'Краткосрочная дебиторская задолженность покупателей и заказчиков', NULL, NULL, NULL, 72, 4, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (22, 20, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1220', N'Краткосрочная дебиторская задолженность дочерних организаций', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (23, 20, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1230', N'Краткосрочная дебиторская задолженность ассоциированных и совместных организаций', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (24, 20, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1240', N'Краткосрочная дебиторская задолженность филиалов и структурных подразделений', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (25, 20, NULL, NULL, NULL, 1, NULL, N'', N'Ac.1250', N'Краткосрочная дебиторская задолженность работников', NULL, NULL, NULL, NULL, 4, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (26, 20, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1260', N'Краткосрочная дебиторская задолженность по аренде', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (27, 20, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1270', N'Прочая краткосрочная дебиторская задолженность', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (28, 20, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1280', N' Оценочный резерв под убытки от обесценения краткосрочной дебиторской задолженности ', NULL, NULL, 12, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (29, 1, NULL, NULL, NULL, 7, NULL, N'', N'Ac.1300', N'Запасы', NULL, NULL, 3, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (30, 29, NULL, NULL, NULL, 1, NULL, N'', N'Ac.1310', N'Сырье и материалы', NULL, NULL, NULL, 72, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (31, 29, NULL, NULL, NULL, 1, NULL, N'', N'Ac.1320', N'Готовая продукция', NULL, NULL, NULL, 72, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (32, 29, NULL, NULL, NULL, 1, NULL, N'', N'Ac.1330', N'Товары', NULL, NULL, NULL, 72, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (33, 29, NULL, NULL, NULL, 1, NULL, N'', N'Ac.1340', N'Незавершенное производство', NULL, NULL, NULL, 72, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (34, 29, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1350', N'Прочие запасы', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (35, 29, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1360', N'Оценочный резерв под убытки от обесценения запасов', NULL, NULL, 12, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (36, 29, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1370', N'Актив по праву на возврат запасов', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (37, 1, NULL, NULL, NULL, 7, NULL, N'', N'Ac.1400', N'Текущие налоговые активы', NULL, NULL, 15, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (38, 37, NULL, NULL, NULL, 1, NULL, N'', N'Ac.1410', N'Корпоративный подоходный налог', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (39, 37, NULL, NULL, NULL, 1, NULL, N'', N'Ac.1420', N'Налог на добавленную стоимость', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (40, 37, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1430', N'Прочие налоги и другие обязательные платежи в бюджет', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (41, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1500', N'Долгосрочные активы, предназначенные для продажи', NULL, NULL, 3, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (42, 41, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1510', N'Долгосрочные активы, предназначенные для продажи', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (43, 41, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1520', N'Группы на выбытие, предназначенные для продажи', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (44, 41, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1530', N'Оценочный резерв под убытки от обесценения долгосрочных активов (или выбывающих групп), предназначенных для продажи', NULL, NULL, 12, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (45, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1600', N'Биологические активы', NULL, NULL, 3, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (46, 45, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1610', N'Растения', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (47, 45, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1620', N'Животные', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (48, 45, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1630', N'Оценочный резерв под убытки от обесценения биологических активов', NULL, NULL, 12, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (49, 1, NULL, NULL, NULL, 7, NULL, N'', N'Ac.1700', N'Прочие краткосрочные активы', NULL, NULL, 3, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (50, 49, NULL, NULL, NULL, 1, NULL, N'', N'Ac.1710', N'Краткосрочные авансы выданные', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (51, 49, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1720', N'Расходы будущих периодов', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (52, 49, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1730', N'Краткосрочные активы по договорам', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (53, 49, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1740', N'Оценочный резерв под убытки от обесценения краткосрочных активов по договорам', NULL, NULL, 12, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (54, 49, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.1750', N'Прочие краткосрочные активы.', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (55, 286, NULL, NULL, NULL, 7, NULL, N'', N'Ac.2', N'Долгосрочные активы', NULL, NULL, 9, NULL, 3, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (56, 55, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2000', N'Долгосрочные финансовые активы', NULL, NULL, 3, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (57, 56, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2010', N'Долгосрочные финансовые активы, оцениваемые по амортизированной стоимости', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (58, 56, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2020', N'Долгосрочные финансовые активы, оцениваемые по справедливой стоимости через прочий совокупный доход', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (59, 56, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2030', N'Долгосрочные финансовые активы, оцениваемые по справедливой стоимости через прибыль или убыток', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (60, 56, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2040', N'Производные финансовые инструменты', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (61, 56, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2050', N'Долгосрочные вознаграждения к получению', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (62, 56, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2060', N'Долевые инструменты', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (63, 56, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2070', N'Прочие долгосрочные финансовые активы', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (64, 56, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2080', N'Оценочный резерв под убытки от обесценения долгосрочных финансовых активов', NULL, NULL, 12, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (65, 55, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2100', N'Долгосрочная дебиторская задолженность', NULL, NULL, 7, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (66, 65, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2110', N'Долгосрочная задолженность покупателей и заказчиков', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (67, 65, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2120', N'Долгосрочная дебиторская задолженность дочерних организаций', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (68, 65, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2130', N'Долгосрочная дебиторская задолженность ассоциированных и совместных организаций', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (69, 65, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2140', N'Долгосрочная дебиторская задолженность филиалов и структурных подразделений', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (70, 65, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2150', N'Долгосрочная дебиторская задолженность работников', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (71, 65, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2160', N'Долгосрочная дебиторская задолженность по аренде', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (72, 65, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2170', N'Прочая долгосрочная дебиторская задолженность', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (73, 65, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2180', N'Оценочный резерв под убытки от обесценения долгосрочной дебиторской задолженности', NULL, NULL, 12, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (74, 55, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2200', N'Инвестиции', NULL, NULL, 3, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (75, 74, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2210', N'Инвестиции, учитываемые методом долевого участия', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (76, 74, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2220', N'Инвестиции, учитываемые по первоначальной стоимости', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (77, 74, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2230', N'Оценочный резерв под убытки от обесценения инвестиций', NULL, NULL, 12, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (78, 55, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2300', N'Инвестиционное имущество', NULL, NULL, 3, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (79, 78, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2310', N'Инвестиционное имущество', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (80, 78, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2320', N'Амортизация инвестиционного имущества', NULL, NULL, 6, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (81, 78, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2330', N'Оценочный резерв под убытки от обесценения инвестиционного имущества', NULL, NULL, 12, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (82, 55, NULL, NULL, NULL, 7, NULL, N'', N'Ac.2400', N'Основные средства', NULL, NULL, 3, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (83, 82, NULL, NULL, NULL, 1, NULL, N'', N'Ac.2410', N'Основные средства', NULL, NULL, 8, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (84, 82, NULL, NULL, NULL, 1, NULL, N'', N'Ac.2420', N'Амортизация основных средств', NULL, NULL, 6, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (85, 82, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2430', N'Оценочный резерв под убытки от обесценения основных средств', NULL, NULL, 12, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (86, 82, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2440', N'Право пользования активом', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (87, 82, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2450', N'Амортизация права пользования активом', NULL, NULL, 6, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (88, 82, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2460', N'Убыток от обесценения права пользования активом', NULL, NULL, 12, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (89, 55, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2500', N'Биологические активы', NULL, NULL, 3, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (90, 89, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2510', N'Растения', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (91, 89, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2520', N'Животные', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (92, 89, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2530', N'Амортизация биологических активов', NULL, NULL, 6, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (93, 89, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2540', N'Оценочный резерв под убытки от обесценения биологических активов', NULL, NULL, 12, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (94, 55, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2600', N'Разведочные и оценочные активы', NULL, NULL, 3, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (95, 94, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2610', N'Разведочные и оценочные активы', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (96, 94, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2620', N'Амортизация разведочных и оценочных активов', NULL, NULL, 6, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (97, 94, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2630', N'Оценочный резерв под убытки от обесценения разведочных и оценочных активов', NULL, NULL, 12, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (98, 55, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2700', N'Нематериальные активы', NULL, NULL, 3, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (99, 98, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2710', N'Гудвилл', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (100, 98, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2720', N'Обесценение гудвилла', NULL, NULL, 12, NULL, 1, NULL, N'', 12)
GO
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (101, 98, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2730', N'Прочие нематериальные активы', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (102, 98, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2740', N'Амортизация прочих нематериальных активов', NULL, NULL, 6, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (103, 98, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2750', N'Оценочный резерв под убытки от обесценения прочих нематериальных активов', NULL, NULL, 12, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (104, 98, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2760', N'Право пользования активом', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (105, 98, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2770', N'Амортизация права пользования активом', NULL, NULL, 6, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (106, 98, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2780', N'Оценочный резерв под убытки от обесценения права пользования активом', NULL, NULL, 12, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (107, 55, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2800', N'Отложенные налоговые активы', NULL, NULL, 15, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (108, 107, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2810', N'Отложенные налоговые активы по корпоративному подоходному налогу', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (109, 55, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2900', N'Прочие долгосрочные активы', NULL, NULL, 7, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (110, 109, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2910', N'Долгосрочные авансы выданные', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (111, 109, NULL, NULL, NULL, 7, NULL, N'', N'Ac.2920', N'Расходы будущих периодов', NULL, NULL, NULL, NULL, 3, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (112, 109, NULL, NULL, NULL, 1, NULL, N'', N'Ac.2930', N'Незавершенное строительство', NULL, NULL, 3, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (113, 109, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2940', N'Долгосрочные активы по договорам', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (114, 109, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2950', N'Оценочный резерв под убытки от обесценения долгосрочных активов по договорам', NULL, NULL, 12, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (115, 109, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2960', N'Затраты по договорам', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (116, 109, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2970', N'Амортизация затрат по договорам', NULL, NULL, 6, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (117, 109, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2980', N'Оценочный резерв под убытки от обесценения затрат по договорам', NULL, NULL, 12, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (118, 109, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.2990', N'Прочие долгосрочные активы', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (119, 286, NULL, NULL, NULL, 7, NULL, N'', N'Ac.3', N'Краткосрочные обязательства', NULL, NULL, 9, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (120, 119, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.3000', N'Краткосрочные финансовые обязательства', NULL, NULL, 7, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (121, 120, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.3010', N'Краткосрочные финансовые обязательства, оцениваемые по амортизированной стоимости', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (122, 120, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.3020', N'Краткосрочные финансовые обязательства, оцениваемые по справедливой стоимости через прибыль или убыток', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (123, 120, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.3030', N'Производные финансовые инструменты', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (124, 120, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.3040', N'Краткосрочная кредиторская задолженность по дивидендам и доходам участников', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (125, 120, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.3050', N'Краткосрочные вознаграждения к выплате', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (126, 120, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.3060', N'Текущая часть долгосрочных финансовых обязательств, оцениваемых по амортизированной стоимости', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (127, 120, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.3070', N'Текущая часть долгосрочных финансовых обязательств, оцениваемых по справедливой стоимости через прибыль или убытки', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (128, 120, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.3080', N'Прочие краткосрочные финансовые обязательства', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (129, 119, NULL, NULL, NULL, 7, NULL, N'', N'Ac.3100', N'Обязательства по налогам', NULL, NULL, 15, NULL, 2, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (130, 129, NULL, NULL, NULL, 1, NULL, N'', N'Ac.3110', N'Корпоративный подоходный налог, подлежащий уплате', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (131, 129, NULL, NULL, NULL, 1, NULL, N'', N'Ac.3120', N'Индивидуальный подоходный налог', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (132, 129, NULL, NULL, NULL, 1, NULL, N'', N'Ac.3130', N'Налог на добавленную стоимость', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (133, 129, NULL, NULL, NULL, 1, NULL, N'', N'Ac.3140', N'Акцизы', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (134, 129, NULL, NULL, NULL, 1, NULL, N'', N'Ac.3150', N'Социальный налог', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (135, 129, NULL, NULL, NULL, 1, NULL, N'', N'Ac.3160', N'Земельный налог', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (136, 129, NULL, NULL, NULL, 1, NULL, N'', N'Ac.3170', N'Налог на транспортные средства', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (137, 129, NULL, NULL, NULL, 1, NULL, N'', N'Ac.3180', N'Налог на имущество', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (138, 129, NULL, NULL, NULL, 1, NULL, N'', N'Ac.3190', N'Прочие налоги', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (139, 119, NULL, NULL, NULL, 7, NULL, N'', N'Ac.3200', N'Обязательства по другим обязательным и добровольным платежам', NULL, NULL, 15, NULL, 2, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (140, 139, NULL, NULL, NULL, 1, NULL, N'', N'Ac.3210', N'Обязательства по социальному страхованию', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (141, 139, NULL, NULL, NULL, 1, NULL, N'', N'Ac.3220', N'Обязательства по пенсионным отчислениям', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (142, 139, NULL, NULL, NULL, 1, NULL, N'', N'Ac.3230', N'Прочие обязательства по другим обязательным платежам', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (143, 139, NULL, NULL, NULL, 1, NULL, N'', N'Ac.3240', N'Прочие обязательства по другим добровольным платежам', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (144, 119, NULL, NULL, NULL, 7, NULL, N'', N'Ac.3300', N'Краткосрочная кредиторская задолженность', NULL, NULL, 7, NULL, 2, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (145, 144, NULL, NULL, NULL, 1, NULL, N'', N'Ac.3310', N'Краткосрочная кредиторская задолженность поставщикам и подрядчикам', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (146, 144, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.3320', N'Краткосрочная кредиторская задолженность дочерним организациям', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (147, 144, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.3330', N'Краткосрочная кредиторская задолженность ассоциированным и совместным организациям', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (148, 144, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.3340', N'Краткосрочная кредиторская задолженность филиалам и структурным подразделениям', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (149, 144, NULL, NULL, NULL, 1, NULL, N'', N'Ac.3350', N'Краткосрочная задолженность по оплате труда', NULL, NULL, 14, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (150, 144, NULL, NULL, NULL, 1, NULL, N'', N'Ac.3360', N'Краткосрочная задолженность по аренде', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (151, 144, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.3370', N'Текущая часть долгосрочной кредиторской задолженности', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (152, 144, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.3380', N'Прочая краткосрочная кредиторская задолженность', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (153, 119, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.3400', N'Краткосрочные оценочные обязательства', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (154, 153, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.3410', N'Краткосрочные гарантийные обязательства', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (155, 153, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.3420', N'Краткосрочные обязательства по юридическим претензиям', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (156, 153, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.3430', N'Краткосрочные оценочные обязательства по вознаграждениям работникам', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (157, 153, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.3440', N'Прочие краткосрочные оценочные обязательства', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (158, 119, NULL, NULL, NULL, 7, NULL, N'', N'Ac.3500', N'Прочие краткосрочные обязательства', NULL, NULL, 7, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (159, 158, NULL, NULL, NULL, 1, NULL, N'', N'Ac.3510', N'Краткосрочные авансы полученные', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (160, 158, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.3520', N'Доходы будущих периодов', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (161, 158, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.3530', N'Обязательства группы на выбытие, предназначенной для продажи', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (162, 158, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.3540', N'Краткосрочные обязательства по договорам', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (163, 158, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.3550', N'Долговой компонент комбинированного краткосрочного финансового инструмента', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (164, 158, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.3560', N'Прочие краткосрочные обязательства.', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (165, 286, NULL, NULL, NULL, 7, NULL, N'', N'Ac.4', N'Долгосрочные обязательства', NULL, NULL, 9, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (166, 165, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4000', N'Долгосрочные финансовые обязательства', NULL, NULL, 7, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (167, 166, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4010', N'Долгосрочные финансовые обязательства, оцениваемые по амортизированной стоимости', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (168, 166, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4020', N'Долгосрочные финансовые обязательства, оцениваемые по справедливой стоимости через прибыль или убыток', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (169, 166, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4030', N'Производные финансовые инструменты', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (170, 166, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4040', N'Долгосрочная задолженность по дивидендам и доходам участников', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (171, 166, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4050', N'Долгосрочные вознаграждения к выплате', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (172, 166, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4060', N'Прочие долгосрочные финансовые обязательства', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (173, 165, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4100', N'Долгосрочная кредиторская задолженность', NULL, NULL, 7, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (174, 173, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4110', N'Долгосрочная кредиторская задолженность поставщикам и подрядчикам', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (175, 173, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4120', N'Долгосрочная кредиторская задолженность дочерним организациям', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (176, 173, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4130', N'Долгосрочная кредиторская задолженность ассоциированным и совместным организациям', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (177, 173, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4140', N'Долгосрочная кредиторская задолженность филиалам и структурным подразделениям', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (178, 173, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4150', N'Долгосрочная задолженность по аренде', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (179, 173, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4160', N'Прочая долгосрочная кредиторская задолженность', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (180, 165, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4200', N'Долгосрочные оценочные обязательства', NULL, NULL, 7, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (181, 180, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4210', N'Долгосрочные гарантийные обязательства', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (182, 180, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4220', N'Долгосрочные оценочные обязательства по юридическим претензиям', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (183, 180, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4230', N'Долгосрочные оценочные обязательства по вознаграждениям работникам', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (184, 180, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4240', N'Прочие долгосрочные оценочные обязательства', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (185, 165, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4300', N'Отложенные налоговые обязательства', NULL, NULL, 15, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (186, 185, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4310', N'Отложенные налоговые обязательства по корпоративному подоходному налогу', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (187, 165, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4400', N'Прочие долгосрочные обязательства', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (188, 187, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4410', N'Долгосрочные авансы полученные', NULL, NULL, 7, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (189, 187, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4420', N'Доходы будущих периодов', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (190, 187, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4430', N'Долгосрочные обязательства по договорам', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (191, 187, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4440', N'Долговой компонент комбинированного долгосрочного финансового инструмента', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (192, 187, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.4450', N'Прочие долгосрочные обязательства', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (193, 286, NULL, NULL, NULL, 7, NULL, N'', N'Ac.5', N'Капитал и резервы', NULL, NULL, 9, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (194, 193, NULL, NULL, NULL, 7, NULL, N'', N'Ac.5000', N'Уставный капитал', NULL, NULL, 5, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (195, 194, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.5010', N'Привилегированные акции', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (196, 194, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.5020', N'Простые акции', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (197, 194, NULL, NULL, NULL, 1, NULL, N'', N'Ac.5030', N'Вклады и паи', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (198, 193, NULL, NULL, NULL, 7, NULL, N'', N'Ac.5100', N'Неоплаченный капитал', NULL, NULL, 5, NULL, 3, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (199, 198, NULL, NULL, NULL, 1, NULL, N'', N'Ac.5110', N'Неоплаченный капитал', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (200, 193, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.5200', N'Выкупленные собственные долевые инструменты', NULL, NULL, 5, NULL, NULL, NULL, N'', 12)
GO
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (201, 200, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.5210', N'Выкупленные собственные долевые инструменты', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (202, 193, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.5300', N'Эмиссионный доход', NULL, NULL, 5, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (203, 202, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.5310', N'Эмиссионный доход', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (204, 193, NULL, NULL, NULL, 7, NULL, N'', N'Ac.5400', N'Дополнительно оплаченный капитал', NULL, NULL, 5, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (205, 204, NULL, NULL, NULL, 1, NULL, N'', N'Ac.5410', N'Дополнительно оплаченный капитал по безвозмездным операциям с основной организацией', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (206, 204, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.5420', N'Дополнительно оплаченный капитал по прочим операциям', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (207, 193, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.5500', N'Резервы', NULL, NULL, 5, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (208, 207, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.5510', N'Резервный капитал, установленный учредительными документами', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (209, 207, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.5520', N'Резерв на переоценку основных средств', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (210, 207, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.5530', N'Резерв на переоценку нематериальных активов', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (211, 207, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.5540', N'Резерв на переоценку финансовых активов, учитываемых по справедливой стоимости через прочий совокупный доход', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (212, 207, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.5550', N'Резерв под убытки по финансовым активам', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (213, 207, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.5560', N'Резерв на пересчет иностранной валюты по зарубежной деятельности', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (214, 207, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.5570', N'Прочие резервы', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (215, 193, NULL, NULL, NULL, 7, NULL, N'', N'Ac.5600', N'Нераспределенная прибыль (непокрытый убыток)', NULL, NULL, 5, NULL, 2, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (216, 215, NULL, NULL, NULL, 1, NULL, N'', N'Ac.5610', N'Нераспределенная прибыль (непокрытый убыток) отчетного года', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (217, 215, NULL, NULL, NULL, 1, NULL, N'', N'Ac.5620', N'Нераспределенная прибыль (непокрытый убыток) предыдущих лет', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (218, 193, NULL, NULL, NULL, 7, NULL, N'', N'Ac.5700', N'Итоговая прибыль (итоговый убыток)', NULL, NULL, 5, NULL, 2, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (219, 218, NULL, NULL, NULL, 1, NULL, N'', N'Ac.5710', N'Итоговая прибыль (итоговый убыток)', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (220, 286, NULL, NULL, NULL, 7, NULL, N'', N'Ac.6', N'Доходы', NULL, NULL, 9, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (221, 220, NULL, NULL, NULL, 7, NULL, N'', N'Ac.6000', N'Доход от реализации продукции и оказания услуг', NULL, NULL, 4, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (222, 221, NULL, NULL, NULL, 1, NULL, N'', N'Ac.6010', N'Доход от реализации продукции и оказания услуг', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (223, 221, NULL, NULL, NULL, 1, NULL, N'', N'Ac.6020', N'Возврат проданной продукции', NULL, NULL, NULL, NULL, 3, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (224, 221, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.6030', N'Скидки с цены и продаж', NULL, NULL, NULL, NULL, 3, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (225, 220, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.6100', N'Доход от финансирования', NULL, NULL, 4, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (226, 225, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.6110', N'Доходы по вознаграждениям', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (227, 225, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.6120', N'Доходы по дивидендам', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (228, 225, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.6130', N'Доходы от финансовой аренды', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (229, 225, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.6140', N'Доходы от операций с инвестициями в недвижимость', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (230, 225, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.6150', N'Доходы от изменения справедливой стоимости финансовых инструментов', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (231, 225, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.6160', N'Прочие доходы от финансирования', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (232, 220, NULL, NULL, NULL, 7, NULL, N'', N'Ac.6200', N'Прочие доходы', NULL, NULL, 4, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (233, 232, NULL, NULL, NULL, 1, NULL, N'', N'Ac.6210', N'Доходы от выбытия активов', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (234, 232, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.6220', N'Доходы от безвозмездно полученных активов', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (235, 232, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.6230', N'Доходы от государственных субсидий', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (236, 232, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.6240', N'Доходы от восстановления убытка от обесценения по нефинансовым активам', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (237, 232, NULL, NULL, NULL, 1, NULL, N'', N'Ac.6250', N'Доходы от курсовой разницы', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (238, 232, NULL, NULL, NULL, 1, NULL, N'', N'Ac.6260', N'Доходы от операционной аренды', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (239, 232, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.6270', N'Доходы от изменения справедливой стоимости биологических активов', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (240, 232, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.6280', N'Доходы от восстановления убытка от обесценения по финансовым активам', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (241, 232, NULL, NULL, NULL, 1, NULL, N'', N'Ac.6290', N'Прочие доходы', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (242, 220, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.6300', N'Доходы, связанные с прекращаемой деятельностью', NULL, NULL, 4, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (243, 242, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.6310', N'Доходы, связанные с прекращаемой деятельностью', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (244, 220, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.6400', N'Доля прибыли организаций, учитываемых по методу долевого участия', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (245, 244, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.6410', N'Доля прибыли ассоциированных организаций', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (246, 244, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.6420', N'Доля прибыли совместных организаций.', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (247, 286, NULL, NULL, NULL, 7, NULL, N'', N'Ac.7', N'Расходы', NULL, NULL, 9, NULL, 3, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (248, 247, NULL, NULL, NULL, 7, NULL, N'', N'Ac.7000', N'Себестоимость реализованной продукции и оказанных услуг', NULL, NULL, 4, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (249, 248, NULL, NULL, NULL, 1, NULL, N'', N'Ac.7010', N'Себестоимость реализованной продукции и оказанных услуг', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (250, 247, NULL, NULL, NULL, 7, NULL, N'', N'Ac.7100', N'Расходы по реализации продукции и оказанию услуг', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (251, 250, NULL, NULL, NULL, 1, NULL, N'', N'Ac.7110', N'Расходы по реализации продукции и оказанию услуг', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (252, 247, NULL, NULL, NULL, 7, NULL, N'', N'Ac.7200', N'Административные расходы', NULL, NULL, 4, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (253, 252, NULL, NULL, NULL, 1, NULL, N'', N'Ac.7210', N'Административные расходы', NULL, NULL, NULL, 72, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (254, 247, NULL, NULL, NULL, 7, NULL, N'', N'Ac.7300', N'Расходы на финансирование', NULL, NULL, 4, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (255, 254, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.7310', N'Расходы по вознаграждениям', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (256, 254, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.7320', N'Расходы на выплату процентов по финансовой аренде', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (257, 254, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.7330', N'Расходы от изменения справедливой стоимости финансовых инструментов стоимости', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (258, 254, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.7340', N'Прочие расходы на финансирование', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (259, 247, NULL, NULL, NULL, 7, NULL, N'', N'Ac.7400', N'Прочие расходы', NULL, NULL, 4, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (260, 259, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.7410', N'Расходы по выбытию активов', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (261, 259, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.7420', N'Расходы от обесценения нефинансовых активов', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (262, 259, NULL, NULL, NULL, 1, NULL, N'', N'Ac.7430', N'Расходы по курсовой разнице', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (263, 259, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.7440', N'Расходы по обесценению дебиторской задолженности', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (264, 259, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.7450', N'Расходы по операционной аренде', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (265, 259, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.7460', N'Расходы от изменения справедливой стоимости биологических активов', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (266, 259, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.7470', N'Расходы от обесценения финансовых инструментов', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (267, 259, NULL, NULL, NULL, 1, NULL, N'', N'Ac.7480', N'Прочие расходы', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (268, 247, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.7500', N'Расходы, связанные с прекращаемой деятельностью', NULL, NULL, 4, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (269, 268, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.7510', N'Расходы, связанные с прекращаемой деятельностью', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (270, 247, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.7600', N'Доля в убытке организаций, учитываемых методом долевого участия', NULL, NULL, 4, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (271, 270, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.7610', N'Доля в убытке ассоциированных организациях', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (272, 270, NULL, NULL, NULL, NULL, NULL, N'', N'Ac.7620', N'Доля в убытке совместных организациях', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (273, 247, NULL, NULL, NULL, 7, NULL, N'', N'Ac.7700', N'Расходы по корпоративному подоходному налогу', NULL, NULL, 4, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (274, 273, NULL, NULL, NULL, 1, NULL, N'', N'Ac.7710', N'Расходы по корпоративному подоходному налогу.', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (275, 286, NULL, NULL, NULL, 7, NULL, N'', N'Ac.8', N'Счета производственного учета', NULL, NULL, 9, NULL, 3, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (276, 275, NULL, NULL, NULL, 7, NULL, N'', N'Ac.8100', N'Основное производство', NULL, NULL, 13, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (277, 276, NULL, NULL, NULL, 1, NULL, N'', N'Ac.8110', N'Основное производство', NULL, NULL, NULL, 72, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (278, 275, NULL, NULL, NULL, 7, NULL, N'', N'Ac.8200', N'Полуфабрикаты собственного производства', NULL, NULL, 13, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (279, 278, NULL, NULL, NULL, 1, NULL, N'', N'Ac.8210', N'Полуфабрикаты собственного производства', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (280, 275, NULL, NULL, NULL, 7, NULL, N'', N'Ac.8300', N'Вспомогательные производства', NULL, NULL, 13, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (281, 280, NULL, NULL, NULL, 1, NULL, N'', N'Ac.8310', N'Вспомогательные производства', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (282, 275, NULL, NULL, NULL, 7, NULL, N'', N'Ac.8400', N'Накладные расходы', NULL, NULL, 13, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (283, 282, NULL, NULL, NULL, 1, NULL, N'', N'Ac.8410', N'Накладные расходы', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (284, 286, NULL, NULL, NULL, 5, NULL, N'', N'Ac.9', N'Забалансовые активы', NULL, NULL, 9, NULL, 3, NULL, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (285, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'Account', N'AccountData', 11, NULL, 2, 47, NULL, 2, N'', 12)
INSERT [dbo].[Account] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Sign], [Unit], [More], [Mark]) VALUES (286, 285, NULL, NULL, NULL, 7, NULL, N'', N'AccTable2019', N'Account Table 2019', NULL, NULL, 19, 72, NULL, NULL, N'', 12)
INSERT [dbo].[Asset] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Asset], [Role], [Info], [Unit], [More], [Mark]) VALUES (1, 1, NULL, NULL, NULL, 1, NULL, N'', N'Asset', N'AssetData', 11, NULL, NULL, 57, 47, 31, N'', 12)
INSERT [dbo].[Asset] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Asset], [Role], [Info], [Unit], [More], [Mark]) VALUES (2, 2, 1, NULL, NULL, 7, NULL, N'', N'Asset.Money', N'ДС', NULL, NULL, NULL, 34, 8, 6, N'Role.Generic.FullName.Денежные средства;', 12)
INSERT [dbo].[Asset] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Asset], [Role], [Info], [Unit], [More], [Mark]) VALUES (3, 3, 1, NULL, NULL, 7, NULL, N'', N'Asset.Template1.Good', N'Asset.Template1.Good', NULL, NULL, NULL, 28, 8, 31, N'', 14)
INSERT [dbo].[Asset] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Asset], [Role], [Info], [Unit], [More], [Mark]) VALUES (4, 4, 1, NULL, NULL, 7, NULL, N'', N'Asset.Template2.Material', N'Asset.Template2.Material', NULL, NULL, NULL, 33, 8, 31, N'', 14)
INSERT [dbo].[Asset] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Asset], [Role], [Info], [Unit], [More], [Mark]) VALUES (5, 5, 1, NULL, NULL, 7, NULL, N'', N'Asset.Template3.Service', N'Asset.Template3.Service', NULL, NULL, NULL, 40, 8, 31, N'', 14)
INSERT [dbo].[Asset] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Asset], [Role], [Info], [Unit], [More], [Mark]) VALUES (6, 6, 1, NULL, NULL, 7, NULL, N'', N'Asset.Template4.Work', N'Asset.Template4.Work', NULL, NULL, NULL, 42, 8, 31, N'', 14)
INSERT [dbo].[Asset] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Asset], [Role], [Info], [Unit], [More], [Mark]) VALUES (7, 7, 1, 2, NULL, NULL, NULL, N'', N'Asset1', N'Краска акриловая', NULL, NULL, NULL, 28, 8, 19, N'', 5)
INSERT [dbo].[Asset] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Asset], [Role], [Info], [Unit], [More], [Mark]) VALUES (8, 8, 1, 2, NULL, NULL, NULL, N'', N'Asset2', N'Настройка ПО', NULL, NULL, NULL, 40, 8, 36, N'', 5)
INSERT [dbo].[Asset] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Asset], [Role], [Info], [Unit], [More], [Mark]) VALUES (9, 9, 1, 2, NULL, NULL, NULL, N'', N'Asset3', N'Бензин', NULL, NULL, NULL, 33, 8, 23, N'', 5)
INSERT [dbo].[Asset] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Asset], [Role], [Info], [Unit], [More], [Mark]) VALUES (10, 10, 1, 2, NULL, NULL, NULL, N'', N'Asset4', N'Компьютер LENOVO', NULL, NULL, NULL, 36, 8, 31, N'', 5)
INSERT [dbo].[Asset] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Asset], [Role], [Info], [Unit], [More], [Mark]) VALUES (11, 11, 1, 2, NULL, NULL, NULL, N'', N'Asset5', N'Доставка', NULL, NULL, NULL, 40, 8, 36, N'', 5)
INSERT [dbo].[Asset] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Asset], [Role], [Info], [Unit], [More], [Mark]) VALUES (12, 12, 1, NULL, NULL, 5, NULL, N'', N'Asset6', N'Золото', NULL, NULL, NULL, 35, 9, NULL, N'', 2)
INSERT [dbo].[Asset] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Asset], [Role], [Info], [Unit], [More], [Mark]) VALUES (13, 13, 1, NULL, NULL, 5, NULL, N'', N'Asset7', N'Ювелирные изделия', NULL, NULL, NULL, 35, 9, NULL, N'', 2)
INSERT [dbo].[Asset] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Asset], [Role], [Info], [Unit], [More], [Mark]) VALUES (14, 14, 1, NULL, NULL, 5, NULL, N'', N'Asset8', N'Легковые автомобили', NULL, NULL, NULL, 35, 9, NULL, N'', 2)
INSERT [dbo].[Asset] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Asset], [Role], [Info], [Unit], [More], [Mark]) VALUES (15, 15, 1, NULL, NULL, 5, NULL, N'', N'Asset9', N'ТНП', NULL, NULL, NULL, 35, 9, NULL, N'', 2)
INSERT [dbo].[Asset] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Asset], [Role], [Info], [Unit], [More], [Mark]) VALUES (16, 16, 1, NULL, NULL, 7, NULL, N'', N'FNO100.FixedAsset', N'ФНО100.Фикс активы', NULL, NULL, NULL, 221, 9, NULL, N'Role.Generic.FullName.ФНО100-Классификация фиксированных активов;', 12)
INSERT [dbo].[Asset] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Asset], [Role], [Info], [Unit], [More], [Mark]) VALUES (17, 17, 16, NULL, NULL, 7, NULL, N'', N'FNO100.FixedAsset.Group1', N'ФНО100.Группа1.Здания, строения', NULL, NULL, NULL, 24, 9, NULL, N'Role.Generic.FullName.Здания, строения;', 12)
INSERT [dbo].[Asset] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Asset], [Role], [Info], [Unit], [More], [Mark]) VALUES (18, 18, 16, NULL, NULL, 7, NULL, N'', N'FNO100.FixedAsset.Group2', N'ФНО100.Группа2.Машины, оборудование', NULL, NULL, NULL, 32, 9, NULL, N'Role.Generic.FullName.Машины, оборудование;', 12)
INSERT [dbo].[Asset] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Asset], [Role], [Info], [Unit], [More], [Mark]) VALUES (19, 19, 16, NULL, NULL, 7, NULL, N'', N'FNO100.FixedAsset.Group3', N'ФНО100.Группа3.Офисное оборудование', NULL, NULL, NULL, 36, 9, NULL, N'Role.Generic.FullName.Офисное оборудование;', 12)
INSERT [dbo].[Asset] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Asset], [Role], [Info], [Unit], [More], [Mark]) VALUES (20, 20, 16, NULL, NULL, 7, NULL, N'', N'FNO100.FixedAsset.Group4', N'ФНО100.Группа3.Прочее', NULL, NULL, NULL, 36, 9, NULL, N'Role.Generic.FullName.Прочее;', 12)
INSERT [dbo].[Deal] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Deal], [Role], [Info], [Unit], [More], [Mark]) VALUES (1, NULL, NULL, NULL, NULL, 1, NULL, N'', N'Deal', N'DealData', NULL, NULL, NULL, 67, 47, 8, N'', 12)
INSERT [dbo].[Deal] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Deal], [Role], [Info], [Unit], [More], [Mark]) VALUES (2, 1, 11, 11, 1, 7, NULL, N'', N'Deal.alimony', N'алименты-МТиСЗН', 11, NULL, NULL, 51, 32, NULL, N'', 12)
INSERT [dbo].[Deal] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Deal], [Role], [Info], [Unit], [More], [Mark]) VALUES (3, 1, 11, NULL, 1, 7, NULL, N'', N'Deal.enbek.staff', N'штатное расписание-МТиСЗН', 11, NULL, NULL, 51, 38, NULL, N'', 12)
INSERT [dbo].[Deal] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Deal], [Role], [Info], [Unit], [More], [Mark]) VALUES (4, 3, 2, NULL, 27, NULL, NULL, N'', N'Deal.FA1.boss', N'директор', NULL, NULL, NULL, 51, 42, NULL, N'', 12)
INSERT [dbo].[Deal] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Deal], [Role], [Info], [Unit], [More], [Mark]) VALUES (5, 1, 11, 11, 20, 7, NULL, N'', N'Deal.GFSS', N'ГФСС-НАО-ГЦВП', 11, NULL, NULL, 51, 35, NULL, N'', 12)
INSERT [dbo].[Deal] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Deal], [Role], [Info], [Unit], [More], [Mark]) VALUES (6, 1, 11, NULL, 25, 7, NULL, N'', N'Deal.kgd.tax', N'налоги-КГД', 11, NULL, NULL, 51, 35, NULL, N'', 12)
INSERT [dbo].[Deal] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Deal], [Role], [Info], [Unit], [More], [Mark]) VALUES (7, 1, 11, 11, 20, 7, NULL, N'', N'Deal.OPV', N'ОПВ-НАО-ГЦВП', 11, NULL, NULL, 51, 35, NULL, N'', 12)
INSERT [dbo].[Deal] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Deal], [Role], [Info], [Unit], [More], [Mark]) VALUES (8, 1, 11, NULL, 1, 7, NULL, N'', N'Deal.OSGPOR', N'ОСГПОР', 11, NULL, NULL, 51, NULL, NULL, N'', 12)
INSERT [dbo].[Deal] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Deal], [Role], [Info], [Unit], [More], [Mark]) VALUES (9, 1, 11, 11, 20, 7, NULL, N'', N'Deal.OSMS', N'ОСМС-НАО-ГЦВП', 11, NULL, NULL, 51, 35, NULL, N'', 12)
INSERT [dbo].[Deal] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Deal], [Role], [Info], [Unit], [More], [Mark]) VALUES (10, 1, NULL, NULL, NULL, 7, NULL, N'', N'Deal.Template1.Good', N'Deal.Template1.Good', NULL, NULL, NULL, 52, 37, NULL, N'', 14)
INSERT [dbo].[Deal] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Deal], [Role], [Info], [Unit], [More], [Mark]) VALUES (11, 1, NULL, NULL, NULL, 7, NULL, N'', N'Deal.Template2.ContractWork', N'Deal.Template2.ContractWork', NULL, NULL, NULL, 52, 33, NULL, N'', 14)
INSERT [dbo].[Deal] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Deal], [Role], [Info], [Unit], [More], [Mark]) VALUES (12, 1, NULL, NULL, NULL, 7, NULL, N'', N'Deal.Template3.Staff', N'Deal.Template3.Staff', NULL, NULL, NULL, 51, 42, NULL, N'', 14)
INSERT [dbo].[Deal] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Deal], [Role], [Info], [Unit], [More], [Mark]) VALUES (13, 1, 2, NULL, 15, NULL, NULL, N'', N'Deal1', N'покупка ПК', NULL, NULL, NULL, 52, 37, NULL, N'', 5)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (1, 11, NULL, NULL, NULL, 7, NULL, N'', N'enbek', N'МТиСЗН РК', 11, NULL, 115, 57, NULL, N'', 12)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (2, 11, 2, NULL, NULL, NULL, NULL, N'', N'FA1', N'Лицо учета1', 9, NULL, 110, 121, NULL, N'', 2)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (3, 2, 2, NULL, NULL, NULL, NULL, N'', N'FA1.AdmStaff', N'Лицо учета1.АУП', NULL, NULL, 197, 72, NULL, N'', 2)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (4, 2, 2, NULL, 24, NULL, NULL, N'', N'FA1.Bank1', N'Лицо учета1.Банк1', NULL, NULL, 193, 72, 6, N'', 2)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (5, 2, 2, NULL, NULL, NULL, NULL, N'', N'FA1.Cash1', N'Лицо учета1.Касса1', NULL, NULL, 195, 72, 6, N'', 2)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (6, 2, NULL, NULL, NULL, NULL, NULL, N'', N'FA1.StaffTable', N'Лицо учета1.штатное расписание', NULL, NULL, 189, 72, NULL, N'', 2)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (7, 6, NULL, NULL, NULL, NULL, NULL, N'', N'FA1.StaffTable.Boss', N'Лицо учета1.Директор', NULL, NULL, 114, 101, 32, N'', 2)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (8, 6, NULL, NULL, NULL, NULL, NULL, N'', N'FA1.StaffTable.ChiefAccountant', N'Лицо учета1.Главный бухгалтер', NULL, NULL, 114, 101, 32, N'', 2)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (9, 2, 2, NULL, NULL, NULL, NULL, N'', N'FA1.Store1', N'Лицо учета1.Склад1', 9, NULL, 199, 72, NULL, N'', 2)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (10, 3, 2, NULL, 27, NULL, NULL, N'', N'FA1.User1', N'Лицо учета1.User1', NULL, NULL, 122, 63, 41, N'', 2)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (11, NULL, NULL, NULL, NULL, 1, NULL, N'', N'Face', N'FaceData', NULL, NULL, 67, 47, NULL, N'', 12)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (12, 11, NULL, NULL, NULL, 7, NULL, N'', N'Face.Template1', N'Face.Template1', NULL, NULL, 113, 56, NULL, N'', 14)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (13, 11, NULL, NULL, NULL, 7, NULL, N'', N'Face.Template2', N'Face.Template2', NULL, NULL, 108, 56, NULL, N'', 14)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (14, 11, NULL, NULL, NULL, 7, NULL, N'', N'Face.Template3', N'Face.Template3', NULL, NULL, 114, 60, NULL, N'', 14)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (15, 11, 2, NULL, NULL, NULL, NULL, N'', N'Face1', N'Альфа плюс', 2, NULL, 113, 56, NULL, N'Role.Generic.FullName.ТОО "Альфа Плюс";', 5)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (16, 15, 2, NULL, NULL, NULL, NULL, N'', N'Face1.Abishev', N'Альфа плюс.Абишев', NULL, NULL, 114, 60, NULL, N'Role.Generic.FullName.Абишев Канат Исламович;', 5)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (17, 15, 2, NULL, NULL, NULL, NULL, N'', N'Face1.Bank1', N'Альфа плюс.Банк1', NULL, NULL, 193, 72, 6, N'', 5)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (18, 15, 2, NULL, NULL, NULL, NULL, N'', N'Face1.Cash1', N'Альфа плюс.Касса1', NULL, NULL, 195, 72, 6, N'', 5)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (19, 15, 2, NULL, NULL, NULL, NULL, N'', N'Face1.Store1', N'Альфа плюс.Склад1', 2, NULL, 199, 72, NULL, N'', 5)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (20, 11, NULL, NULL, NULL, 7, NULL, N'', N'GCVP', N'GCVPKZ2A', 11, NULL, 112, 57, NULL, N'Role.Generic.FullName.НАО "Государственная корпорация "Правительство для граждан";Info.Code.BIC.GCVPKZ2A;', 12)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (21, 20, NULL, NULL, NULL, 7, NULL, N'', N'GCVP-GFSS.Bank1', N'GCVPKZ2A.KZ67009SS00368609110', NULL, NULL, 193, 34, 6, N'Info.Code.IBAN.KZ67009SS00368609110;', 12)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (22, 20, NULL, NULL, NULL, 7, NULL, N'', N'GCVP-OPV.Bank1', N'GCVPKZ2A.KZ12009NPS0413609816', NULL, NULL, 193, 181, 6, N'Info.Code.IBAN.KZ12009NPS0413609816;', 12)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (23, 20, NULL, NULL, NULL, 7, NULL, N'', N'GCVP-OSMS.Bank1', N'GCVPKZ2A.KZ92009MEDS368609103', NULL, NULL, 193, 39, 6, N'Info.Code.IBAN.KZ92009MEDS368609103;', 12)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (24, 11, NULL, NULL, NULL, 1, NULL, N'', N'halykbank', N'Народный банк', 11, NULL, 106, 56, NULL, N'Role.Generic.FullName.Народный банк Казахстана;Info.Code.BIC.HSBKKZKX;', 2)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (25, 11, NULL, NULL, NULL, 7, NULL, N'', N'kgd', N'КГД', 11, NULL, 115, 57, NULL, N'Role.Generic.FullName.Комитет государственных доходов;', 2)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (26, 25, NULL, NULL, NULL, 7, NULL, N'', N'kgd.ugd6202', N'КГД.УГД6202', NULL, NULL, 115, 57, NULL, N'Role.Generic.FullName.Управление государственных доходов;', 2)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (27, 2, NULL, NULL, NULL, NULL, NULL, N'', N'Sadvakasov', N'Садвакасов А.К.', 9, NULL, 114, 164, NULL, N'Role.Generic.FullName.Садвакасов Амантай Кусаинович;', 2)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (28, 27, NULL, NULL, 24, NULL, NULL, N'', N'Sadvakasov.Bank1', N'Садвакасов А К.Банк1', NULL, NULL, 194, 72, NULL, N'', 2)
INSERT [dbo].[Face] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (29, 26, NULL, NULL, NULL, 7, NULL, N'', N'UGD6202.Bank1', N'УГД6202.Банк1', NULL, NULL, 193, 72, 6, N'', 2)
INSERT [dbo].[Geo] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (1, NULL, NULL, NULL, NULL, 7, NULL, N'', N'Geo', N'GeoData', NULL, NULL, 62, 47, NULL, N'', 12)
INSERT [dbo].[Geo] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (2, 11, NULL, NULL, NULL, NULL, NULL, N'', N'Geo.Almaty', N'Алматы', NULL, NULL, 127, NULL, NULL, N'Role.Generic.FullName.Алматы', 12)
INSERT [dbo].[Geo] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (3, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Geo.BE', N'РБ', NULL, NULL, 128, NULL, NULL, N'Role.Generic.FullName.Республика Беларусь', 12)
INSERT [dbo].[Geo] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (4, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Geo.Ch', N'КНР', NULL, NULL, 128, NULL, NULL, N'Role.Generic.FullName.Китайская Народная Республика', 12)
INSERT [dbo].[Geo] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (5, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Geo.DE', N'ФРГ', NULL, NULL, 128, NULL, NULL, N'Role.Generic.FullName.Федеративная Республика Германия', 12)
INSERT [dbo].[Geo] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (6, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Geo.EAEU', N'ЕАЭС', NULL, NULL, 135, NULL, NULL, N'Role.Generic.FullName.ЕАЭС', 12)
INSERT [dbo].[Geo] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (7, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Geo.EU', N'ЕС', NULL, NULL, 135, NULL, 13, N'Role.Generic.FullName.Европейский Союз', 12)
INSERT [dbo].[Geo] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (8, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Geo.KG', N'Кыргызстан', NULL, NULL, 128, NULL, NULL, N'Role.Generic.FullName.Республика Кыргызстан', 12)
INSERT [dbo].[Geo] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (9, 11, NULL, NULL, NULL, NULL, NULL, N'', N'Geo.Nur-Sultan', N'Нур-Cултан', NULL, NULL, 127, NULL, NULL, N'Role.Generic.FullName.Нурсултан', 12)
INSERT [dbo].[Geo] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (10, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Geo.OESD', N'ОЭСР', NULL, NULL, 137, NULL, NULL, N'Role.Generic.FullName.ОЭСР', 12)
INSERT [dbo].[Geo] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (11, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Geo.Qazaqstan', N'РК', NULL, NULL, 128, NULL, 22, N'Role.Generic.FullName.Республика Казахстан', 12)
INSERT [dbo].[Geo] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (12, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Geo.RF', N'РФ', NULL, NULL, 128, NULL, 35, N'Role.Generic.FullName.Российская Федерация', 12)
INSERT [dbo].[Geo] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (13, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Geo.USA', N'США', NULL, NULL, 128, NULL, 40, N'Role.Generic.FullName.Соединенные Штаты Америки', 12)
INSERT [dbo].[Geo] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (14, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Geo.UZ', N'РУ', NULL, NULL, 128, NULL, NULL, N'Role.Generic.FullName.Республика Узбекистан', 12)
INSERT [dbo].[Geo] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (15, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Geo.WTO', N'ВТО', NULL, NULL, 137, NULL, NULL, N'Role.Generic.FullName.Всемирная торговая организация', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (1, NULL, NULL, NULL, NULL, 1, NULL, N'', N'Info', N'InfoData', 11, NULL, 72, 47, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (2, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Address', N'Address', NULL, NULL, 67, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (3, 2, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Address.Home', N'домашний', NULL, NULL, 122, 60, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (4, 2, NULL, NULL, NULL, 7, NULL, N'', N'Info.Address.Law', N'юридический', NULL, NULL, 122, 59, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (5, 2, NULL, NULL, NULL, 7, NULL, N'', N'Info.Address.Post', N'почтовый', NULL, NULL, NULL, 53, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (6, 2, NULL, NULL, NULL, 7, NULL, N'', N'Info.Address.Reg', N'прописки (регистрации)', NULL, NULL, NULL, 60, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (7, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Asset', N'Asset', NULL, NULL, 57, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (8, 7, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Asset.Activ', N'актив', NULL, NULL, NULL, NULL, 31, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (9, 7, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Asset.Catalog', N'каталог активов', NULL, NULL, NULL, NULL, 31, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (10, 7, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Asset.SubActiv', N'субактив', NULL, NULL, NULL, NULL, 31, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (11, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Code', N'Code', NULL, NULL, 72, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (12, 11, NULL, NULL, NULL, 7, NULL, N'', N'Info.Code.Alfa3', N'альфа3 код', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (13, 11, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Code.Art', N'артикул', NULL, NULL, 22, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (14, 11, NULL, NULL, NULL, 7, NULL, N'', N'Info.Code.BIC', N'БИК (BIC)', NULL, NULL, 59, 59, NULL, N'Role.Generic.FullName.Банковский идентификационный код;', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (15, 11, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Code.EAN', N'EAN код', NULL, NULL, 22, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (16, 11, NULL, NULL, NULL, 7, NULL, N'', N'Info.Code.IBAN', N'IBAN (ИИК)', NULL, NULL, 59, NULL, NULL, N'Role.Generic.FullName.IBAN;', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (17, 11, NULL, NULL, NULL, 7, NULL, N'', N'Info.Code.KBE', N'КБЕ', NULL, NULL, 105, NULL, NULL, N'Role.Generic.FullName.Код бенефициара;', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (18, 11, NULL, NULL, NULL, 7, NULL, N'', N'Info.Code.KBK', N'КБК', NULL, NULL, 76, 174, NULL, N'Role.Generic.FullName.Код бюджетной классификации;', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (19, 11, NULL, NULL, NULL, 7, NULL, N'', N'Info.Code.KNP', N'КНП', NULL, NULL, 76, NULL, NULL, N'Role.Generic.FullName.Код назначения платежа;', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (20, 11, NULL, NULL, NULL, 7, NULL, N'', N'Info.Code.KOF', N'код КОФ', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (21, 11, NULL, NULL, NULL, 7, NULL, N'', N'Info.Code.KPVED', N'код КПВЭД', 6, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (22, 11, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Code.MKEI', N'код МКЕИ', NULL, NULL, 122, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (23, 11, NULL, NULL, NULL, 7, NULL, N'', N'Info.Code.OKPO', N'код ОКПО', NULL, NULL, NULL, 59, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (24, 11, NULL, NULL, NULL, 7, NULL, N'', N'Info.Code.Post', N'почтовый код РК', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (25, 11, NULL, NULL, NULL, 7, NULL, N'', N'Info.Code.TNVED', N'код ТНВЭД', 6, NULL, 22, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (26, 11, NULL, NULL, NULL, 7, NULL, N'', N'Info.Code.VIN', N'VIN код', NULL, NULL, 25, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (27, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Cost', N'Cost', NULL, NULL, 57, NULL, 6, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (28, 27, NULL, NULL, NULL, 7, NULL, N'', N'Info.Cost.Accounting', N'бухгалтерская себестоимость', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (29, 27, NULL, NULL, NULL, 7, NULL, N'', N'Info.Cost.Standard', N'нормативная (стандартная) себестоимость', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (30, 27, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Cost.Store', N'складская себестоимость', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (31, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Deal', N'Deal', NULL, NULL, 67, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (32, 31, NULL, NULL, NULL, 7, NULL, N'', N'Info.Deal.Alimony', N'алименты', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (33, 31, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Deal.ContractWork', N'подрядные работы', NULL, NULL, 122, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (34, 31, NULL, NULL, NULL, 7, NULL, N'', N'Info.Deal.GFSS', N'ГФСС', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (35, 31, NULL, NULL, NULL, 7, NULL, N'', N'Info.Deal.GSVP', N'НАО-ГЦВП', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (36, 31, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Deal.Loan', N'займ, кредит', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (37, 31, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Deal.Main', N'купля-продажа', NULL, NULL, 122, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (38, 31, NULL, NULL, NULL, 7, NULL, N'', N'Info.Deal.MinistryLabor', N'МТиСЗН', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (39, 31, NULL, NULL, NULL, 7, NULL, N'', N'Info.Deal.OSMS', N'ОСМС', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (40, 31, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Deal.ProductionOrder', N'заказ производства', NULL, NULL, 122, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (41, 31, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Deal.Rent', N'аренда', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (42, 31, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Deal.Staff', N'трудовой', NULL, NULL, 114, 60, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (43, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Entity', N'Entity', NULL, NULL, 72, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (44, 43, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Entity.Doc', N'документ-журнал', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (45, 43, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Entity.Journal', N'журнал документов', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (46, 43, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Entity.MainForm', N'основная входная форма', NULL, NULL, 142, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (47, 43, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Entity.Reference', N'справочник', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (48, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Info.ExchangeRate', N'ExchangeRate', NULL, NULL, 73, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (49, 48, NULL, NULL, NULL, NULL, NULL, N'', N'Info.ExchangeRate.Bank', N'курс комм банка', NULL, NULL, 59, NULL, 6, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (50, 48, NULL, NULL, NULL, 7, NULL, N'', N'Info.ExchangeRate.Market', N'рыночный курс', NULL, NULL, NULL, NULL, 6, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (51, 48, NULL, NULL, NULL, 7, NULL, N'', N'Info.ExchangeRate.NationalBank', N'курс Нацбанка', NULL, NULL, 59, NULL, 6, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (52, 48, NULL, NULL, NULL, 7, NULL, N'', N'Info.ExchangeRate.Stock', N'курс биржи', NULL, NULL, NULL, NULL, 6, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (53, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Face', N'Face', NULL, NULL, 67, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (54, 53, NULL, NULL, NULL, 7, NULL, N'', N'Info.Face.Branch', N'филиал', NULL, NULL, NULL, 59, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (55, 53, NULL, NULL, NULL, 7, NULL, N'', N'Info.Face.Businessman', N'ИП', NULL, NULL, 122, 60, NULL, N'Role.Generic.FullName.Индивидуальный предприниматель;', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (56, 53, NULL, NULL, NULL, 7, NULL, N'', N'Info.Face.Corp', N'ТОО', NULL, NULL, 122, 59, NULL, N'Role.Generic.FullName.Товарищество с ограниченной ответственностью;', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (57, 53, NULL, NULL, NULL, 7, NULL, N'', N'Info.Face.GovAgency', N'ГУ', NULL, NULL, NULL, 59, NULL, N'Role.Generic.FullName.Государственное учреждение;', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (58, 53, NULL, NULL, NULL, 7, NULL, N'', N'Info.Face.JointStockCompany', N'АО', NULL, NULL, NULL, 59, NULL, N'Role.Generic.FullName.Акционерное общество;', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (59, 53, NULL, NULL, NULL, 7, NULL, N'', N'Info.Face.LegalEntity', N'юридическое лицо', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (60, 53, NULL, NULL, NULL, 7, NULL, N'', N'Info.Face.Person', N'физическое лицо', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (61, 53, NULL, NULL, NULL, 7, NULL, N'', N'Info.Face.QuasiGov1', N'РГКП', NULL, NULL, NULL, 59, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (62, 53, NULL, NULL, NULL, 7, NULL, N'', N'Info.Face.QuasiGov2', N'КГКП', NULL, NULL, NULL, 59, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (63, 53, NULL, NULL, NULL, 5, NULL, N'', N'Info.Face.User', N'пользователь', NULL, NULL, 114, 60, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (64, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Generic', N'Generic', NULL, NULL, 72, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (65, 64, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Generic.Cell', N'телефон сотовый', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (66, 64, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Generic.Description', N'расшифровка', NULL, NULL, NULL, NULL, 39, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (67, 64, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Generic.Email', N'емайл', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (68, 64, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Generic.Extra', N'необычный', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (69, 64, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Generic.FullDescription', N'полное описание', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (70, 64, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Generic.FullName', N'полное наименование', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (71, 64, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Generic.Logo', N'логотип', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (72, 64, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Generic.Main', N'общая инфо', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (73, 64, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Generic.Phone', N'телефон', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (74, 64, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Generic.Photo', N'фото', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (75, 64, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Generic.Sert', N'ключ, сертификат', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (76, 64, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Generic.ShortDescription', N'краткое описание', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (77, 64, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Generic.ShortName', N'сокращенное наименование', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (78, 64, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Generic.Site', N'сайт', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (79, 64, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Generic.Street-House', N'улица, дом', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (80, 64, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Generic.Time', N'время', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (81, 64, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Generic.Variant', N'вариант', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (82, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Item', N'Item', NULL, NULL, 79, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (83, 82, NULL, NULL, NULL, 7, NULL, N'', N'Info.Item.Financial', N'финансовая деятельность', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (84, 82, NULL, NULL, NULL, 7, NULL, N'', N'Info.Item.Invest', N'инвестиционная деятельность', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (85, 82, NULL, NULL, NULL, 7, NULL, N'', N'Info.Item.Main', N'операционная деятельность', NULL, NULL, 122, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (86, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Info.List', N'List', NULL, NULL, 72, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (87, 86, NULL, NULL, NULL, 7, NULL, N'', N'Info.List.ExemptionList', N'Перечень изъятий', 6, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (88, 86, NULL, NULL, NULL, NULL, NULL, N'', N'Info.List.StopList', N'Стоп-лист по отгрузке', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (89, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Log', N'Log', NULL, NULL, 71, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (90, 89, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Log.Deal.Devivery', N'поставка договора', NULL, NULL, 50, NULL, 9, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (91, 89, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Log.Deal.Movement', N'движения договора', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (92, 89, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Log.Level0.Main', N'Log.Level0.общее', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (93, 89, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Log.Level1.Amount', N'Log.Level1.сумма', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (94, 89, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Log.Level1.Cost', N'Log.Level1.себ-ть сумма', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (95, 89, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Log.Level1.Price', N'Log.Level1.цена', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (96, 89, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Log.Level1.Quantity', N'Log.Level1.кол-во', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (97, 89, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Log.Level2.Depreciation', N'Log.Level2.аморт-я', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (98, 89, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Log.Level2.TaxExcess', N'Log.Level2.налоги сверх суммы', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (99, 89, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Log.Level2.TaxTotal', N'Log.Level2.налоги в сумме', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (100, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Management', N'Management', NULL, NULL, 67, NULL, NULL, N'', 12)
GO
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (101, 100, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Management.Boss', N'директор', NULL, NULL, 114, 60, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (102, 100, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Management.Chief', N'начальник', NULL, NULL, 114, 60, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (103, 100, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Management.Driver', N'водитель', NULL, NULL, NULL, 60, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (104, 100, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Management.LeadingSpecialist', N'ведущий специалист', NULL, NULL, 114, 60, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (105, 100, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Management.Manager', N'управляющий', NULL, NULL, 114, 60, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (106, 100, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Management.Responsible', N'ответственный', NULL, NULL, NULL, 60, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (107, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Math', N'Math', NULL, NULL, 72, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (108, 107, NULL, NULL, NULL, 7, NULL, N'', N'Info.Math.Round1.5To1', N'округлять 1,5 до 1', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (109, 107, NULL, NULL, NULL, 7, NULL, N'', N'Info.Math.Round1.5To2', N'округлять 1,5 до 2', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (110, 107, NULL, NULL, NULL, 7, NULL, N'', N'Info.Math.RoundDownward', N'округлять всегда в меньшую сторону', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (111, 107, NULL, NULL, NULL, 7, NULL, N'', N'Info.Math.RoundUpward', N'округлять всегда в большую сторону', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (112, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Info.PersonData', N'PersonData', NULL, NULL, 67, 60, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (113, 112, NULL, NULL, NULL, NULL, NULL, N'', N'Info.PersonData.Autobiography', N'автобиография', NULL, NULL, NULL, NULL, 39, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (114, 112, NULL, NULL, NULL, NULL, NULL, N'', N'Info.PersonData.DateBirth', N'дата рождения', NULL, NULL, 122, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (115, 112, NULL, NULL, NULL, NULL, NULL, N'', N'Info.PersonData.Name', N'имя', NULL, NULL, 122, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (116, 112, NULL, NULL, NULL, NULL, NULL, N'', N'Info.PersonData.Nationality', N'национальность', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (117, 112, NULL, NULL, NULL, NULL, NULL, N'', N'Info.PersonData.Patronymic', N'отчество', NULL, NULL, 122, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (118, 112, NULL, NULL, NULL, NULL, NULL, N'', N'Info.PersonData.Resume', N'резюме', NULL, NULL, NULL, NULL, 39, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (119, 112, NULL, NULL, NULL, NULL, NULL, N'', N'Info.PersonData.Surname', N'фамилия', NULL, NULL, 122, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (120, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Profile', N'Profile', NULL, NULL, 67, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (121, 120, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Profile.Main', N'общий профиль', NULL, NULL, 122, 72, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (122, 120, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Profile.Pawnshop', N'профиль ломбард', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (123, 120, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Profile.PropertyManagement', N'профиль КСК', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (124, 1, NULL, NULL, NULL, 7, NULL, N'', N'Info.Rate', N'Rate', NULL, NULL, 72, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (125, 124, NULL, NULL, NULL, 7, NULL, N'', N'Info.Rate.MinRate', N'МРП', NULL, NULL, 164, 72, 6, N'Role.Generic.FullName.минимальный расчетный показатель;', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (126, 124, NULL, NULL, NULL, 7, NULL, N'', N'Info.Rate.MinSalary', N'Мин ЗП', NULL, NULL, 164, 72, 6, N'Role.Generic.FullName.минимальная заработная плата;', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (127, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Info.RegData', N'RegData', NULL, NULL, 67, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (128, 127, NULL, NULL, NULL, 7, NULL, N'', N'Info.RegData.BIN', N'БИН', NULL, NULL, 172, 59, NULL, N'Role.Generic.FullName.Бизнес-идентификационный номер;', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (129, 127, NULL, NULL, NULL, 7, NULL, N'', N'Info.RegData.IIN', N'ИИН', NULL, NULL, 172, 60, NULL, N'Role.Generic.FullName.Индивидуально-идентификационный номер;', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (130, 127, NULL, NULL, NULL, 7, NULL, N'', N'Info.RegData.Passport', N'паспорт РК', NULL, NULL, NULL, 60, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (131, 127, NULL, NULL, NULL, 7, NULL, N'', N'Info.RegData.RNN', N'РНН', NULL, NULL, 172, 60, NULL, N'Role.Generic.FullName.Регистрационный номер налогоплательщика;', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (132, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Relation', N'Relation', NULL, NULL, 72, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (133, 132, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Relation.Alimonier', N'получатель алиментов', NULL, NULL, NULL, 60, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (134, 132, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Relation.MainCalc', N'основной пересчет', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (135, 132, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Relation.Pensioner', N'пенсионер', NULL, NULL, NULL, 60, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (136, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Report', N'Отчет', NULL, NULL, 71, 136, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (137, 136, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Report.Analysis', N'анализ', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (138, 136, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Report.Balance', N'остатки', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (139, 136, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Report.BalanceTurnover', N'остатки и обороты', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (140, 136, NULL, NULL, NULL, 7, NULL, N'', N'Info.Report.Depreciation', N'расчет амортизации', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (141, 136, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Report.Detail', N'карточка', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (142, 136, NULL, NULL, NULL, 7, NULL, N'', N'Info.Report.DocLawForm', N'нормативная форма документа', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (143, 136, NULL, NULL, NULL, 7, NULL, N'', N'Info.Report.FinForm', N'фин отчет', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (144, 143, NULL, NULL, NULL, 7, NULL, N'', N'Info.Report.FinForm.Balance', N'баланс', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (145, 143, NULL, NULL, NULL, 7, NULL, N'', N'Info.Report.FinForm.Capital', N'капитал', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (146, 143, NULL, NULL, NULL, 7, NULL, N'', N'Info.Report.FinForm.Income', N'доход', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (147, 143, NULL, NULL, NULL, 7, NULL, N'', N'Info.Report.FinForm.Money', N'деньги', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (148, 136, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Report.List', N'список', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (149, 136, NULL, NULL, NULL, 7, NULL, N'', N'Info.Report.PaySheet', N'реестр платежей', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (150, 136, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Report.PriceList', N'прайс-лист', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (151, 136, NULL, NULL, NULL, 7, NULL, N'', N'Info.Report.Revise', N'акт сверки', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (152, 136, NULL, NULL, NULL, 7, NULL, N'', N'Info.Report.SalaryInquery', N'справка по зарплате', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (153, 136, NULL, NULL, NULL, 7, NULL, N'', N'Info.Report.SalarySheet', N'расчетная ведомость начисления ЗП', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (154, 136, NULL, NULL, NULL, 7, NULL, N'', N'Info.Report.SalarySummary', N'свод зарплаты', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (155, 136, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Report.Sheet', N'ведомость', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (156, 136, NULL, NULL, NULL, 7, NULL, N'', N'Info.Report.StaffDoc', N'кадровый приказ', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (157, 136, NULL, NULL, NULL, 7, NULL, N'', N'Info.Report.TaxForm', N'налог отчет', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (158, 136, NULL, NULL, NULL, 7, NULL, N'', N'Info.Report.TaxRegistry', N'налог регистр', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (159, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Sign', N'Sign', NULL, NULL, 71, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (160, 159, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Sign.UseAccTable', N'использовать в плане счетов', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (161, 159, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Sign.UseEntry', N'использовать в проводках', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (162, 1, NULL, NULL, NULL, 7, NULL, N'', N'Info.Staff', N'Staff', NULL, NULL, 67, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (163, 162, NULL, NULL, NULL, 7, NULL, N'', N'Info.Staff.BaseSalary', N'базовый оклад', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (164, 162, NULL, NULL, NULL, 7, NULL, N'', N'Info.Staff.BossSign', N'подпись руководителя', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (165, 162, NULL, NULL, NULL, 7, NULL, N'', N'Info.Staff.ChiefAccountantSign', N'подпись глав бухгалтера', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (166, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Info.StaffTime', N'StaffTime', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (167, 166, NULL, NULL, NULL, 7, NULL, N'', N'Info.StaffTime.DayOff', N'выходной день', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (168, 166, NULL, NULL, NULL, 7, NULL, N'', N'Info.StaffTime.Holiday', N'праздничный день', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (169, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Store', N'Store', NULL, NULL, 92, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (170, 169, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Store.CoreFund', N'основное средство', NULL, 83, NULL, NULL, 31, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (171, 169, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Store.IsDriveLaw', N'есть право вождения', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (172, 169, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Store.IsSubStore', N'является субскладом', NULL, NULL, NULL, NULL, 31, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (173, 169, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Store.NoStoreNoTraffic', N'не требует транспортировки и складирования', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (174, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Info.Tax', N'Tax', NULL, NULL, 93, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (175, 174, NULL, NULL, NULL, 7, NULL, N'', N'Info.Tax.Amount', N'налоговая сумма', NULL, NULL, NULL, NULL, 6, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (176, 174, NULL, NULL, NULL, 7, NULL, N'', N'Info.Tax.Base', N'налоговая база', NULL, NULL, NULL, NULL, 6, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (177, 174, NULL, NULL, NULL, 7, NULL, N'', N'Info.Tax.BaseDeduction', N'вычет налоговой базы', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (178, 174, NULL, NULL, NULL, 7, NULL, N'', N'Info.Tax.BaseException', N'исключение базы', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (179, 174, NULL, NULL, NULL, 7, NULL, N'', N'Info.Tax.BaseLimit', N'лимит базы', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (180, 174, NULL, NULL, NULL, 7, NULL, N'', N'Info.Tax.Deduction.MinSalary', N'вычет МинЗП', NULL, NULL, 122, NULL, 26, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (181, 174, NULL, NULL, NULL, 7, NULL, N'', N'Info.Tax.Deduction.OPV', N'вычет ОПВ', NULL, NULL, 122, NULL, 6, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (182, 174, NULL, NULL, NULL, 7, NULL, N'', N'Info.Tax.HalfYearReportingCycle', N'полугодовой отчетный цикл', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (183, 174, NULL, NULL, NULL, 7, NULL, N'', N'Info.Tax.MonthBillingCycle', N'месячный расчетный цикл', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (184, 174, NULL, NULL, NULL, 7, NULL, N'', N'Info.Tax.MonthYearBillingCycle', N'месячно-годовой расчетный цикл', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (185, 174, NULL, NULL, NULL, 7, NULL, N'', N'Info.Tax.QuarterBillingCycle', N'квартальный расчетный цикл', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (186, 174, NULL, NULL, NULL, 7, NULL, N'', N'Info.Tax.QuarterReportingCycle', N'квартальный отчетный цикл', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (187, 174, NULL, NULL, NULL, 7, NULL, N'', N'Info.Tax.RateFree', N'освобожденная ставка', NULL, NULL, NULL, NULL, 30, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (188, 174, NULL, NULL, NULL, 7, NULL, N'', N'Info.Tax.RateMain', N'основная ставка', NULL, NULL, 122, NULL, 30, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (189, 174, NULL, NULL, NULL, 7, NULL, N'', N'Info.Tax.RateReduce', N'сниженная ставка', NULL, NULL, NULL, NULL, 30, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (190, 174, NULL, NULL, NULL, 7, NULL, N'', N'Info.Tax.RateZero', N'нулевая ставка', NULL, NULL, NULL, NULL, 30, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (191, 174, NULL, NULL, NULL, 7, NULL, N'', N'Info.Tax.SNMinusGFSS', N'корректировка СН на ГФСС', NULL, NULL, 122, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (192, 174, NULL, NULL, NULL, 7, NULL, N'', N'Info.Tax.TaxAdjustment', N'налоговая корректировка', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (193, 174, NULL, NULL, NULL, 7, NULL, N'', N'Info.Tax.YearBillingCycle', N'годовой расчетный цикл', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Info] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (194, 174, NULL, NULL, NULL, 7, NULL, N'', N'Info.Tax.YearReportingCycle', N'годовой отчетный цикл', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (1, NULL, 11, NULL, NULL, 1, NULL, N'', N'Item', N'ItemData', NULL, NULL, NULL, 61, 47, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (2, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Advance', N'авансы', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (3, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Advertising', N'реклама', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (4, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Bank', N'РКО, услуги банка', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (5, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Car', N'автопарк', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (6, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Charity', N'благотворительность', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (7, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Cost', N'себестоимость', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (8, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Deduction from salary', N'удержания из ЗП', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (9, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Depreciation', N'амортизация', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (10, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Equipment', N'оборудование', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (11, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Exchange difference', N'курсовая разница', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (12, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Fine', N'штрафы, пени', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (13, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Food', N'питание', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (14, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Fuel', N'топливо', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (15, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Impress', N'подотчет', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (16, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Insurance', N'страхование', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (17, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Learning', N'обучение персонала', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (18, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Loan', N'кредит, овердрафт', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (19, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Material', N'материалы', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (20, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Office', N'офис, канцелярия, почта', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (21, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Other', N'прочее', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (22, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Parts', N'запчасти', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (23, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Periodical', N'периодика, книги', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (24, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Production', N'производство', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (25, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Purchase', N'приобретение', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (26, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Rent', N'аренда, хранение', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (27, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Repair', N'ремонт', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (28, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Salary', N'зарплата и отчисления', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (29, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Security', N'охрана', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (30, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Sell', N'продажа', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (31, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Shipping', N'перевозки', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (32, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Store', N'склад', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (33, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Tax', N'налоги, сборы, отчисления', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (34, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Telecom', N'телефон, интернет', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (35, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Trip', N'командировки', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (36, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Utilities', N'коммунальные услуги', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Item] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Item], [Role], [Info], [Unit], [More], [Mark]) VALUES (37, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Item.Writeoff', N'списание', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (1, NULL, 2, NULL, NULL, 1, NULL, N'', N'Log', N'LogData', 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 71, 45, NULL, N'', NULL, N'', 12)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (2, 1, NULL, 10, NULL, 9, NULL, N'', N'Log.AT', N'Log.AssetTemplate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 142, NULL, 4, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (3, 2, 9, NULL, NULL, 9, NULL, N'', N'Log.AT0.1', N'Log.AssetTemplate.Level0.Main', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140, 92, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (4, 3, NULL, NULL, NULL, 9, NULL, N'', N'Log.AT1.1', N'Log.AssetTemplate.Level1.Quantity', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140, 96, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (5, 4, NULL, NULL, NULL, 9, NULL, N'', N'Log.AT1.2', N'Log.AssetTemplate.Level1.Price', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141, 94, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (6, 4, NULL, NULL, NULL, 9, NULL, N'', N'Log.AT1.3', N'Log.AssetTemplate.Level1.Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141, 93, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (7, 4, NULL, NULL, NULL, 9, NULL, N'', N'Log.AT1.4', N'Log.AssetTemplate.Level1.Cost', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141, 94, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (8, 4, NULL, NULL, NULL, 9, NULL, N'', N'Log.AT2.1', N'Log.AssetTemplate.Level2.Depreciation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141, 97, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (9, 1, NULL, NULL, NULL, 9, NULL, N'', N'Log.DailySalary', N'Ставка за 1 раб день', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, 122, 92, 1, N'', 22, N'', 12)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (10, 1, NULL, NULL, NULL, 7, NULL, N'', N'Log.DepreciationTax', N'Амортизация налоговая', NULL, NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, 122, 92, NULL, N'', NULL, N'', 12)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (11, 10, NULL, NULL, NULL, NULL, NULL, N'', N'Log.DepreciationTax.Group1.Rate', N'Налоговая амортизация.Группа1.Ставка', NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, 17, NULL, NULL, 14, N'10', 30, N'', 12)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (12, 10, NULL, NULL, NULL, NULL, NULL, N'', N'Log.DepreciationTax.Group2.Rate', N'Налоговая амортизация.Группа2.Ставка', NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, 18, NULL, NULL, 14, N'25', 30, N'', 12)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (13, 10, NULL, NULL, NULL, NULL, NULL, N'', N'Log.DepreciationTax.Group3.Rate', N'Налоговая амортизация.Группа3.Ставка', NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, 19, NULL, NULL, 14, N'40', 30, N'', 12)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (14, 10, NULL, NULL, NULL, NULL, NULL, N'', N'Log.DepreciationTax.Group4.Rate', N'Налоговая амортизация.Группа4.Ставка', NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, 20, NULL, NULL, 14, N'15', 30, N'', 12)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (15, 1, NULL, 10, NULL, 9, NULL, N'', N'Log.DT', N'Log.DealTemplate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 142, 92, 4, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (16, 15, 9, 11, 11, 9, NULL, N'', N'Log.DT0', N'Log.DealTemplate.Main', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 140, NULL, 1, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (17, 16, 11, NULL, 11, 7, NULL, N'', N'Log.DT0.KNP', N'Log.820', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 125, 19, 2, N'', 39, N'Role.Generic.FullName.Строительные услуги;', 2)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (18, 16, 11, NULL, 11, 7, NULL, N'', N'Log.DT0.KNP', N'Log.856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 125, 19, 2, N'', 39, N'Role.Generic.FullName.Коммунальные услуги;', 2)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (19, 16, 11, NULL, 11, 7, NULL, N'', N'Log.DT0.KNP', N'Log.851', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 125, 19, 2, N'', 39, N'Role.Generic.FullName.Прочие деловые услуги;', 2)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (20, 16, 11, NULL, 11, 7, NULL, N'', N'Log.DT0.KNP', N'Log.710', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 122, 19, 2, N'', 39, N'Role.Generic.FullName.Платежи за товары, за исключением недвижимости;', 2)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (21, 16, NULL, NULL, NULL, 9, NULL, N'', N'Log.DT1', N'Log.DealTemplate.Devivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140, 90, 4, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (22, 21, NULL, NULL, NULL, 9, NULL, N'', N'Log.DT1.1', N'Log.DealTemplate.Devivery.Movement', NULL, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 140, 91, 13, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (23, 1, NULL, 10, NULL, 9, NULL, N'', N'Log.ET', N'Log.EntryTemplate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 142, NULL, 4, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (24, 23, 2, 11, 11, 9, NULL, N'', N'Log.ET0.1', N'Log.EntryTemplate.Level0.Main', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140, 92, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (25, 24, NULL, NULL, NULL, 9, NULL, N'', N'Log.ET1.1', N'Log.EntryTemplate.Level1.Quantity', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140, 96, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (26, 25, NULL, NULL, NULL, 9, NULL, N'', N'Log.ET1.2', N'Log.EntryTemplate.Level1.Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140, 93, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (27, 1, 11, NULL, 11, 7, NULL, N'', N'Log.Face.KBE', N'Осн КБЕ для лиц', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 122, 17, 2, N'17', 39, N'', 12)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (28, 1, NULL, 10, NULL, 9, NULL, N'', N'Log.FT', N'Log.FaceTemplate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 142, NULL, 4, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (29, 28, 3, 11, 11, 9, NULL, N'', N'Log.FT0.1', N'Log.FaceTemplate.Level0.Main', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140, 92, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (30, 29, NULL, 11, NULL, 9, NULL, N'', N'Log.FT1.1', N'Log.FaceTemplate.Level1.Quantity', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140, 96, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (31, 30, NULL, 11, 11, 9, NULL, N'', N'Log.FT1.2', N'Log.FaceTemplate.Level1.Price', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141, 95, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (32, 30, NULL, 11, 11, 9, NULL, N'', N'Log.FT1.3', N'Log.FaceTemplate.Level1.Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141, 93, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (33, 32, NULL, 11, 11, 9, NULL, N'', N'Log.FT2.1', N'Log.FaceTemplate.Level2.TaxIn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141, 99, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (34, 32, NULL, 11, 11, 9, NULL, N'', N'Log.FT2.2', N'Log.FaceTemplate.Level2.TaxOut', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141, 98, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (35, 1, 11, NULL, 11, 7, CAST(N'2005-07-01T00:00:00' AS SmallDateTime), N'', N'Log.GFSS.MainRate', N'Осн ставка ГФСС', NULL, NULL, NULL, NULL, NULL, 24, NULL, 5, NULL, NULL, 122, 72, 14, N'5', 30, N'', 12)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (36, 1, NULL, 10, NULL, 9, NULL, N'', N'Log.IMT', N'Log.ImprestTemplate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 142, NULL, 4, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (37, 36, 2, 11, 11, 9, NULL, N'', N'Log.IMT0.1', N'Log.ImprestTemplate.Level0.Main', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140, 92, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (38, 37, NULL, NULL, NULL, 9, NULL, N'', N'Log.IMT1.1', N'Log.ImprestTemplate.Level1.Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141, 93, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (39, 1, 11, NULL, 11, 7, CAST(N'2002-01-01T00:00:00' AS SmallDateTime), N'', N'Log.IncomePersonTax.RateMain', N'Осн ставка ИПН', NULL, NULL, NULL, NULL, NULL, 30, NULL, 6, NULL, NULL, 122, 72, 14, N'10', 30, N'', 12)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (40, 1, NULL, 10, NULL, 9, NULL, N'', N'Log.IT', N'Log.InvoiceTemplate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 142, NULL, 4, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (41, 40, 11, 11, 11, 9, NULL, N'', N'Log.IT0.1', N'Log.InvoiceTemplate.Level0.Main', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141, 92, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (42, 41, NULL, NULL, NULL, 9, NULL, N'', N'Log.IT1.1', N'Log.InvoiceTemplate.Level1.Quantity', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141, 96, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (43, 42, NULL, NULL, NULL, 9, NULL, N'', N'Log.IT1.2', N'Log.InvoiceTemplate.Level1.Price', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141, 95, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (44, 42, NULL, NULL, NULL, 9, NULL, N'', N'Log.IT1.3', N'Log.InvoiceTemplate.Level1.Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141, 93, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (45, 44, NULL, NULL, NULL, 9, NULL, N'', N'Log.IT2.1', N'Log.InvoiceTemplate.Level2.TaxIn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141, 99, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (46, 1, 2, NULL, NULL, 9, NULL, N'', N'Log.MainMarkup', N'Основная наценка', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 161, NULL, 14, N'10', 30, N'', 5)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (47, 1, 2, NULL, NULL, 9, NULL, N'', N'Log.MainSale', N'Основная скидка', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 161, NULL, 14, N'3', 30, N'', 5)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (48, 1, NULL, 10, NULL, 9, NULL, N'', N'Log.MT', N'Log.MoneyTemplate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 142, NULL, 4, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (49, 48, 4, 11, 11, 9, NULL, N'', N'Log.MT0.1', N'Log.MoneyTemplate.Level0.Main', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140, 92, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (50, 49, 5, NULL, NULL, 9, NULL, N'', N'Log.MT1.1', N'Log.MoneyTemplate.Level1.Amount', NULL, 4, 2, 1, NULL, NULL, 1, 1, NULL, 2, 140, 93, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (51, 50, NULL, NULL, NULL, 9, NULL, N'', N'Log.MT1.2', N'Log.MoneyTemplate.Level1.LinkAmount', NULL, 2, 285, 50, NULL, NULL, 1, 1, NULL, 1, 141, 93, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (52, 1, 11, NULL, 11, 7, CAST(N'1997-01-01T00:00:00' AS SmallDateTime), N'', N'Log.OPV.RateMain', N'Осн ставка ОПВ', NULL, NULL, NULL, NULL, NULL, 45, NULL, 7, NULL, NULL, 122, 72, 14, N'10', 30, N'', 12)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (53, 1, 11, NULL, 11, 7, CAST(N'2021-01-01T00:00:00' AS SmallDateTime), N'', N'Log.OSMS.EmployePay.RateMain', N'Осн ставка взносов ОСМС', NULL, NULL, NULL, NULL, NULL, 37, NULL, 9, NULL, NULL, 122, 72, 14, N'2', 30, N'', 12)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (54, 1, 11, NULL, 11, 7, CAST(N'2022-01-01T00:00:00' AS SmallDateTime), N'', N'Log.OSMS.EmployerFee.RateMain', N'Осн ставка отчислений ОСМС', NULL, NULL, NULL, NULL, NULL, 39, NULL, 9, NULL, NULL, 122, 72, 14, N'3', 30, N'', 12)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (55, 1, NULL, 10, NULL, 9, NULL, N'', N'Log.OT', N'Log.OrderTemplate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 142, NULL, 4, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (56, 55, 11, 11, 11, 9, NULL, N'', N'Log.OT0.1', N'Log.OrderTemplate.Level0.Main', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140, 92, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (57, 56, NULL, NULL, NULL, 9, NULL, N'', N'Log.OT1.1', N'Log.OrderTemplate.Level1.Quantity', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140, 96, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (58, 57, NULL, NULL, NULL, 9, NULL, N'', N'Log.OT1.2', N'Log.OrderTemplate.Level1.Price', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140, 95, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (59, 57, NULL, NULL, NULL, 9, NULL, N'', N'Log.OT1.3', N'Log.OrderTemplate.Level1.Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141, 93, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (60, 57, NULL, NULL, NULL, 9, NULL, N'', N'Log.OT1.4', N'Log.OrderTemplate.Level1.Cost', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141, 94, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (61, 59, NULL, NULL, NULL, 9, NULL, N'', N'Log.OT2.1', N'Log.OrderTemplate.Level2.TaxIn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141, 99, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (62, 1, NULL, 10, NULL, 9, NULL, N'', N'Log.PT', N'Log.PurchaseTemplate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 142, NULL, 4, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (63, 62, 9, 11, 11, 9, NULL, N'', N'Log.PT0.1', N'Log.PurchaseTemplate.Level0.Main', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140, 92, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (64, 63, NULL, NULL, NULL, 9, NULL, N'', N'Log.PT1.1', N'Log.PurchaseTemplate.Level1.Quantity', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140, 96, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (65, 64, NULL, NULL, NULL, 9, NULL, N'', N'Log.PT1.2', N'Log.PurchaseTemplate.Level1.Price', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140, 95, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (66, 64, NULL, NULL, NULL, 9, NULL, N'', N'Log.PT1.3', N'Log.PurchaseTemplate.Level1.Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141, 93, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (67, 64, NULL, NULL, NULL, 9, NULL, N'', N'Log.PT1.4', N'Log.PurchaseTemplate.Level1.Cost', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141, 94, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (68, 66, NULL, NULL, NULL, 9, NULL, N'', N'Log.PT2.1', N'Log.PurchaseTemplate.Level2.TaxIn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141, 99, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (69, 1, 11, NULL, 11, 7, NULL, N'', N'Log.SN.MainRate', N'Осн ставка СН', NULL, NULL, NULL, NULL, NULL, 57, NULL, 6, NULL, NULL, 122, 72, 14, N'11', 30, N'', 12)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (70, 1, NULL, 10, NULL, 9, NULL, N'', N'Log.ST', N'Log.SellTemplate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 142, NULL, 4, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (71, 70, 9, 11, 11, 9, NULL, N'', N'Log.ST0.1', N'Log.SellTemplate.Level0.Main', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140, 92, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (72, 71, NULL, NULL, NULL, 9, NULL, N'', N'Log.ST1.1', N'Log.SellTemplate.Level1.Quantity', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140, 96, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (73, 71, NULL, NULL, NULL, 9, NULL, N'', N'Log.ST1.2', N'Log.SellTemplate.Level1.Price', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140, 95, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (74, 71, NULL, NULL, NULL, 9, NULL, N'', N'Log.ST1.3', N'Log.SellTemplate.Level1.Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141, 93, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (75, 71, NULL, NULL, NULL, 9, NULL, N'', N'Log.ST1.4', N'Log.SellTemplate.Level1.Cost', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141, 94, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (76, 74, NULL, NULL, NULL, 9, NULL, N'', N'Log.ST2.1', N'Log.SellTemplate.Level2.TaxIn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141, 99, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (77, 71, NULL, NULL, NULL, 9, NULL, N'', N'Log.ST2.4', N'Log.SellTemplate.Level2.Depreciation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141, 97, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (78, 1, NULL, NULL, NULL, 7, NULL, N'', N'Log.TaxBase.MaxLimit', N'Макс лимиты налоговых баз', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 163, 179, 13, N'', 26, N'', 12)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (79, 78, NULL, NULL, NULL, 7, CAST(N'2019-01-01T00:00:00' AS SmallDateTime), N'', N'Log.TaxBase.MaxLimit.GFSS', N'Макс лимит базы ГФСС', NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL, 13, N'7', 26, N'', 12)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (80, 78, NULL, NULL, NULL, 7, CAST(N'2019-01-01T00:00:00' AS SmallDateTime), N'', N'Log.TaxBase.MaxLimit.OPV', N'Макс лимит базы ОПВ', NULL, NULL, NULL, NULL, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL, 13, N'50', 26, N'', 12)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (81, 78, NULL, NULL, NULL, 7, CAST(N'2020-01-01T00:00:00' AS SmallDateTime), N'', N'Log.TaxBase.MaxLimit.OSMS', N'Макс лимит базы ОСМС', NULL, NULL, NULL, NULL, NULL, 35, NULL, NULL, NULL, NULL, NULL, NULL, 13, N'10', 26, N'', 12)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (82, 1, NULL, NULL, NULL, 7, NULL, N'', N'Log.USD-KZT', N'курс тенге к доллару', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 13, N'1', 40, N'', 12)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (83, 82, NULL, NULL, 24, 7, CAST(N'2018-08-01T00:00:00' AS SmallDateTime), N'', N'Log.USD-KZT.halykbank', N'USD-KZT halykbank 1.08.2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, N'380', 22, N'', 5)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (84, 1, 11, NULL, NULL, 7, NULL, N'', N'Log.VAT.Import.RateMain', N'Осн ставка НДС импорта', NULL, NULL, NULL, NULL, NULL, 63, NULL, 6, NULL, 1, 122, 72, 14, N'12', 30, N'', 12)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (85, 1, 11, NULL, NULL, 7, NULL, N'', N'Log.VAT.Purchase.RateMain', N'Осн ставка НДС зачета', NULL, NULL, NULL, NULL, NULL, 65, NULL, 6, NULL, 1, 122, 72, 14, N'12', 30, N'', 12)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (86, 1, 11, NULL, NULL, 7, CAST(N'2020-04-01T00:00:00' AS SmallDateTime), N'', N'Log.VAT.Purchase.RateReduce', N'Сниж ставка НДС зачета', NULL, NULL, NULL, NULL, NULL, 66, NULL, 6, NULL, 1, 125, 81, 14, N'8', 30, N'', 12)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (87, 1, 11, NULL, NULL, 7, NULL, N'', N'Log.VAT.Sell.MainRate', N'Осн ставка НДС реализации', NULL, NULL, NULL, NULL, NULL, 70, NULL, 6, NULL, 1, 122, 72, 14, N'12', 30, N'', 12)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (88, 1, 11, NULL, NULL, 7, CAST(N'2020-04-01T00:00:00' AS SmallDateTime), N'', N'Log.VAT.Sell.RateReduce', N'Сниж ставка НДС реализации', NULL, NULL, NULL, NULL, NULL, 71, NULL, 6, NULL, 1, 125, 81, 14, N'8', 30, N'', 12)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (89, 1, NULL, NULL, NULL, 7, NULL, N'', N'Log.WorkDay-WorkHour', N'Число рабочих часов в рабочем дне.час', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 122, 72, 13, N'8', 44, N'', 12)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (90, 1, NULL, NULL, NULL, 9, NULL, N'', N'Log3', N'Доставка', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 11, 122, NULL, 13, N'1', 49, N'', 5)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (91, 90, NULL, NULL, NULL, 9, NULL, N'', N'Log3.1', N'Доставка.рейс.цена', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, N'1000', 22, N'', 5)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (92, 1, NULL, NULL, NULL, 9, NULL, N'', N'Log4', N'Краска акриловая.цены', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 122, 72, 11, N'4 (обычно)', 31, N'', 5)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (93, 92, 2, NULL, NULL, 9, NULL, N'', N'Log4.1', N'Краска акриловая.кол-во 1-4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 122, NULL, 13, N'1-4', 31, N'', 5)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (94, 93, 2, NULL, NULL, 9, NULL, N'', N'Log4.1.1', N'Краска акриловая.кол-во 1-4.цена', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 7, NULL, NULL, 12, N'800', 22, N'', 5)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (95, 92, 2, NULL, NULL, 9, NULL, N'', N'Log4.2', N'Краска акриловая.кол-во 5 и более', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, 13, N'5-999999', 31, N'', 5)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (96, 95, 2, NULL, NULL, 9, NULL, N'', N'Log4.2.1', N'Краска акриловая.кол-во 5 и более.цена', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 7, NULL, NULL, 12, N'700', 22, N'', 5)
INSERT [dbo].[Log] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Process], [Tax], [Item], [Deal], [Price], [Asset], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (97, 1, 7, NULL, 27, 1, CAST(N'2020-01-01T00:00:00' AS SmallDateTime), N'', N'Log6', N'Ставка ШР-директор', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 163, 1, N'???', 22, N'', 2)
INSERT [dbo].[Mark] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (1, 7, NULL, NULL, NULL, 1, NULL, N'', N'ArcD', N'ArchivalData', NULL, NULL, 122, NULL, NULL, N'', 12)
INSERT [dbo].[Mark] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (2, 7, NULL, NULL, NULL, 1, NULL, N'', N'CD', N'CurrentData', NULL, NULL, 122, NULL, NULL, N'', 12)
INSERT [dbo].[Mark] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (3, 7, NULL, NULL, NULL, 1, NULL, N'', N'DD', N'DraftData', NULL, NULL, 122, NULL, NULL, N'', 12)
INSERT [dbo].[Mark] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (4, 7, NULL, NULL, NULL, 1, NULL, N'', N'DelD', N'DeleteData', NULL, NULL, 125, NULL, NULL, N'', 12)
INSERT [dbo].[Mark] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (5, 7, NULL, NULL, NULL, 5, NULL, N'', N'ExD', N'ExampleData', NULL, NULL, 125, NULL, NULL, N'', 12)
INSERT [dbo].[Mark] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (6, 7, NULL, NULL, NULL, 5, NULL, N'', N'ExtD', N'ExternalData', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Mark] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (7, NULL, NULL, NULL, NULL, 7, NULL, N'', N'Mark', N'MarkData', NULL, NULL, 72, 47, NULL, N'', 12)
INSERT [dbo].[Mark] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (8, 7, NULL, NULL, NULL, 7, NULL, N'', N'Mark.All-AD', N'From All To ArchivalData', NULL, NULL, 139, 81, NULL, N'', 12)
INSERT [dbo].[Mark] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (9, 7, NULL, NULL, NULL, 7, NULL, N'', N'Mark.All-CD', N'From All To CurrentData', NULL, NULL, 139, 72, NULL, N'', 12)
INSERT [dbo].[Mark] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (10, 7, NULL, NULL, NULL, 7, NULL, N'', N'Mark.All-DD', N'From All To DraftData', NULL, NULL, 139, 72, NULL, N'', 12)
INSERT [dbo].[Mark] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (11, 7, NULL, NULL, NULL, 7, NULL, N'', N'Mark.All-DelD', N'From All To DeleteData', NULL, NULL, 139, 81, NULL, N'', 12)
INSERT [dbo].[Mark] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (12, 7, NULL, NULL, NULL, 7, NULL, N'', N'MD', N'MetaData', NULL, NULL, 122, NULL, NULL, N'', 12)
INSERT [dbo].[Mark] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (13, 7, NULL, NULL, NULL, 7, NULL, N'', N'RuleD', N'RuleData', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Mark] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (14, 7, NULL, NULL, NULL, 7, NULL, N'', N'TemplD', N'TemplateData', NULL, NULL, 122, NULL, NULL, N'', 12)
INSERT [dbo].[Mark] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (15, 7, NULL, NULL, NULL, 1, NULL, N'', N'TrnD', N'TransferData', NULL, NULL, 119, NULL, NULL, N'', 12)
INSERT [dbo].[Meter] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Meter], [Unit], [More], [Mark]) VALUES (1, 10, NULL, NULL, NULL, NULL, NULL, N'', N'Amount', N'сумма', NULL, NULL, 122, NULL, NULL, 6, N'', 12)
INSERT [dbo].[Meter] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Meter], [Unit], [More], [Mark]) VALUES (2, 10, NULL, NULL, NULL, NULL, NULL, N'', N'Authentication', N'аутентификация', NULL, NULL, NULL, NULL, NULL, 50, N'', 12)
INSERT [dbo].[Meter] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Meter], [Unit], [More], [Mark]) VALUES (3, 10, NULL, NULL, NULL, NULL, NULL, N'', N'Cost', N'себестоимость', NULL, NULL, 122, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Meter] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Meter], [Unit], [More], [Mark]) VALUES (4, 10, NULL, NULL, NULL, NULL, NULL, N'', N'Counter', N'счетчик', NULL, NULL, 122, NULL, 13, 12, N'', 12)
INSERT [dbo].[Meter] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Meter], [Unit], [More], [Mark]) VALUES (5, 10, NULL, NULL, NULL, NULL, NULL, N'', N'Depth', N'толщина', NULL, NULL, NULL, NULL, NULL, 48, N'', 12)
INSERT [dbo].[Meter] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Meter], [Unit], [More], [Mark]) VALUES (6, 10, NULL, NULL, NULL, NULL, NULL, N'', N'Diameter', N'диаметр', NULL, NULL, NULL, NULL, NULL, 48, N'', 12)
INSERT [dbo].[Meter] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Meter], [Unit], [More], [Mark]) VALUES (7, 10, NULL, NULL, NULL, NULL, NULL, N'', N'Height', N'высота', NULL, NULL, NULL, NULL, NULL, 24, N'', 12)
INSERT [dbo].[Meter] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Meter], [Unit], [More], [Mark]) VALUES (8, 10, NULL, NULL, NULL, NULL, NULL, N'', N'Length', N'длина', NULL, NULL, NULL, NULL, NULL, 24, N'', 12)
INSERT [dbo].[Meter] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Meter], [Unit], [More], [Mark]) VALUES (9, 10, NULL, NULL, NULL, NULL, NULL, N'', N'Linear weight 1m', N'погонный вес 1м', NULL, NULL, NULL, NULL, 18, 20, N'', 12)
INSERT [dbo].[Meter] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Meter], [Unit], [More], [Mark]) VALUES (10, NULL, NULL, NULL, NULL, 5, NULL, N'', N'Meter', N'MeterData', NULL, NULL, 72, 47, NULL, 1, N'', 12)
INSERT [dbo].[Meter] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Meter], [Unit], [More], [Mark]) VALUES (11, 10, NULL, NULL, NULL, NULL, NULL, N'', N'Number pieces pack', N'кол-во штук в упаковке', NULL, NULL, NULL, NULL, 13, 31, N'', 12)
INSERT [dbo].[Meter] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Meter], [Unit], [More], [Mark]) VALUES (12, 10, NULL, NULL, NULL, NULL, NULL, N'', N'Price', N'цена', NULL, NULL, 122, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Meter] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Meter], [Unit], [More], [Mark]) VALUES (13, 10, NULL, NULL, NULL, NULL, NULL, N'', N'Quantity', N'количество', NULL, NULL, 122, NULL, NULL, 1, N'', 12)
INSERT [dbo].[Meter] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Meter], [Unit], [More], [Mark]) VALUES (14, 10, NULL, NULL, NULL, NULL, NULL, N'', N'Rate', N'ставка', NULL, NULL, NULL, NULL, NULL, 30, N'', 12)
INSERT [dbo].[Meter] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Meter], [Unit], [More], [Mark]) VALUES (15, 10, NULL, NULL, NULL, NULL, NULL, N'', N'Rating', N'номинал', NULL, NULL, NULL, NULL, 1, NULL, N'', 12)
INSERT [dbo].[Meter] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Meter], [Unit], [More], [Mark]) VALUES (16, 10, NULL, NULL, NULL, NULL, NULL, N'', N'Time', N'время', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Meter] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Meter], [Unit], [More], [Mark]) VALUES (17, 10, NULL, NULL, NULL, NULL, NULL, N'', N'Volume', N'объем', NULL, NULL, NULL, NULL, NULL, 23, N'', 12)
INSERT [dbo].[Meter] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Meter], [Unit], [More], [Mark]) VALUES (18, 10, NULL, NULL, NULL, NULL, NULL, N'', N'Weight', N'вес', NULL, NULL, NULL, NULL, NULL, 20, N'', 12)
INSERT [dbo].[Meter] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Meter], [Unit], [More], [Mark]) VALUES (19, 10, NULL, NULL, NULL, NULL, NULL, N'', N'Width', N'ширина', NULL, NULL, NULL, NULL, NULL, 24, N'', 12)
INSERT [dbo].[Price] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Price], [Role], [Info], [Unit], [More], [Mark]) VALUES (1, NULL, NULL, NULL, NULL, 1, NULL, N'', N'Price', N'PriceData', NULL, NULL, NULL, 78, 47, NULL, N'', 12)
INSERT [dbo].[Price] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Price], [Role], [Info], [Unit], [More], [Mark]) VALUES (2, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Price.Main', N'Оптовая цена', NULL, NULL, NULL, 154, 72, NULL, N'', 12)
INSERT [dbo].[Price] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Price], [Role], [Info], [Unit], [More], [Mark]) VALUES (3, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Price.MainMarkup', N'Основная наценка', NULL, NULL, NULL, 160, 72, 30, N'', 12)
INSERT [dbo].[Price] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Price], [Role], [Info], [Unit], [More], [Mark]) VALUES (4, 2, NULL, NULL, NULL, NULL, NULL, N'', N'Price.MainSale', N'Основная скидка', NULL, NULL, NULL, 161, 72, 30, N'', 12)
INSERT [dbo].[Price] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Price], [Role], [Info], [Unit], [More], [Mark]) VALUES (5, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Price.USD-KZT', N'USD-KZT (курс тенге к доллару)', 11, NULL, NULL, 46, 52, 22, N'', 12)
INSERT [dbo].[Price] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Price], [Role], [Info], [Unit], [More], [Mark]) VALUES (6, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Price1', N'Розничная цена', NULL, NULL, NULL, 154, 81, NULL, N'', 12)
INSERT [dbo].[Price] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Price], [Role], [Info], [Unit], [More], [Mark]) VALUES (7, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Price2', N'Ставка за 1 раб. Час', NULL, NULL, NULL, 156, 72, 22, N'', 2)
INSERT [dbo].[Price] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Price], [Role], [Info], [Unit], [More], [Mark]) VALUES (8, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Price3', N'Ставка за 1 раб. День', NULL, NULL, NULL, 156, 72, 22, N'', 2)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (1, 130, NULL, NULL, NULL, NULL, NULL, N'', N'AddSalary', N'Дополн удержание из ЗП', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 84, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (2, 1, NULL, 11, NULL, NULL, NULL, N'', N'AddSalary.1', N'Удержание из ЗП', NULL, 3, 149, NULL, 26, NULL, NULL, NULL, 1, 8, 11, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (3, 1, NULL, 11, 11, NULL, NULL, N'', N'AddSalary.2', N'Коррсчет удержания из ЗП', NULL, 1, 285, NULL, 26, 2, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (4, 130, NULL, NULL, NULL, NULL, NULL, N'', N'Buy', N'Покупка', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 142, 72, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (5, 4, NULL, 11, 11, NULL, NULL, N'', N'Buy.1', N'Согласование вх договора', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 25, NULL, 1, 63, NULL, 10, N'', 1, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (6, 5, NULL, 11, 11, NULL, NULL, N'', N'Buy.2 (Contract)', N'Новый договор', NULL, NULL, NULL, NULL, 15, 5, NULL, NULL, 1, 25, NULL, NULL, 63, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (7, 6, 11, NULL, 2, NULL, NULL, N'', N'Buy.3 (Order)', N'Получение вх счета', NULL, NULL, NULL, NULL, 55, 6, NULL, NULL, 1, NULL, NULL, NULL, 74, NULL, NULL, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (8, 7, NULL, NULL, 11, 9, NULL, N'', N'Buy.3A', N'Оплата вх счета (план)', NULL, 3, 2, NULL, 55, NULL, NULL, NULL, 1, 25, NULL, NULL, 73, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (9, 7, NULL, NULL, 11, NULL, NULL, N'', N'Buy.4 (Money)', N'Оплата вх счета', NULL, NULL, NULL, NULL, 48, 8, NULL, NULL, 1, NULL, NULL, NULL, 73, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (10, 9, 4, NULL, 11, NULL, NULL, N'', N'Buy.4A', N'Плат поручение исх', NULL, 17, NULL, NULL, 49, NULL, NULL, 2, 1, 25, NULL, NULL, 76, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (11, 9, 4, NULL, 11, NULL, NULL, N'', N'Buy.4B', N'Выбытие ДС', NULL, 1, 2, NULL, 50, 10, NULL, 2, 1, 25, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (12, 9, NULL, NULL, 11, NULL, NULL, N'', N'Buy.4C', N'Списание кред задолж-ти', NULL, 3, 145, NULL, 51, 11, NULL, NULL, 1, 25, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (13, 7, NULL, NULL, NULL, NULL, NULL, N'', N'Buy.5 (Arrival)', N'Исполнение вх счета', NULL, NULL, NULL, NULL, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (14, 13, NULL, NULL, NULL, NULL, NULL, N'', N'Buy.5A', N'Выдача исх доверенности', NULL, NULL, NULL, 55, 2, 7, NULL, 1, 1, 25, NULL, NULL, 95, NULL, 10, N'', 1, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (15, 13, 9, NULL, NULL, NULL, NULL, N'', N'Buy.5B', N'Приход активов.кол-во', NULL, 3, 32, NULL, 64, 7, NULL, 1, 1, 25, NULL, NULL, NULL, 28, 13, N'', 1, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (16, 13, 9, NULL, NULL, NULL, NULL, N'', N'Buy.5C', N'Приход активов.сумма', NULL, 3, 32, NULL, 65, 7, NULL, 1, 1, 25, NULL, NULL, NULL, 28, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (17, 13, NULL, NULL, NULL, NULL, NULL, N'', N'Buy.5CA', N'Приход услуг, работ.сумма', NULL, 3, 253, NULL, 65, 7, NULL, NULL, 1, 25, NULL, NULL, NULL, 81, 1, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (18, 13, NULL, 11, 11, NULL, NULL, N'', N'Buy.5D', N'Начисление кред задолж-ти', NULL, 1, 132, NULL, 63, 7, NULL, NULL, 1, 25, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (19, 13, NULL, NULL, 26, NULL, NULL, N'', N'Buy.5E (VATBase)', N'Налоговая база НДС зачета', NULL, 1, NULL, NULL, 63, 18, NULL, NULL, 6, 25, 60, NULL, NULL, 176, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (20, 13, NULL, NULL, 26, NULL, NULL, N'', N'Buy.5F (VAT)', N'Начисление НДС зачета', NULL, 3, 132, NULL, 63, 18, NULL, NULL, 6, 25, 65, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (21, 13, NULL, NULL, NULL, NULL, NULL, N'', N'Buy.6', N'Распределение услуг, работ на активы', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (22, 21, NULL, NULL, NULL, NULL, NULL, N'', N'Buy.6A', N'Приход работ, услуг.сторно', NULL, 3, 253, 62, 26, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'storno', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (23, 21, NULL, NULL, NULL, NULL, NULL, N'', N'Buy.6B', N'Отнесение работ, услуг на активы', NULL, 3, 32, 62, 26, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (24, 13, 11, NULL, 2, NULL, NULL, N'', N'Buy.7 (Invoice)', N'Получение счета-фактуры от поставщика', NULL, NULL, NULL, 62, 40, 13, NULL, NULL, 1, 25, NULL, NULL, 70, 72, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (25, 7, 11, NULL, 2, NULL, NULL, N'', N'Buy.8 (Null)', N'Аннулирование вх счета', NULL, NULL, NULL, 40, NULL, NULL, NULL, 1, 1, 25, NULL, 1, 74, 81, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (26, 130, NULL, NULL, NULL, NULL, NULL, N'', N'ChangeCurrency', N'Конвертация валюты', NULL, NULL, NULL, NULL, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 142, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (27, 26, 5, NULL, NULL, NULL, NULL, N'', N'ChangeCurrency.1', N'Списание ДС на конвертацию', NULL, 1, 2, NULL, 49, NULL, NULL, 2, 1, 25, NULL, NULL, 73, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (28, 26, 5, NULL, NULL, NULL, NULL, N'', N'ChangeCurrency.2', N'Покупка валюты', NULL, 3, 2, 82, 50, 27, NULL, 2, 1, 25, NULL, NULL, 73, NULL, 1, N'', 40, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (29, 26, 5, NULL, NULL, NULL, NULL, N'', N'ChangeCurrency.3', N'Курсовая разница при конвертации', NULL, 1, 2, 82, 51, 27, NULL, 2, 1, 11, NULL, NULL, 73, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (30, 26, NULL, NULL, NULL, NULL, NULL, N'', N'ChangeCurrency.4', N'Расход по КР', NULL, 3, 262, NULL, 51, 27, NULL, NULL, NULL, 11, 20, NULL, 73, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (31, 130, NULL, NULL, NULL, NULL, NULL, N'', N'Closing', N'Процесс Закрытие счетов', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 64, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (32, 31, NULL, NULL, NULL, NULL, NULL, N'', N'Closing.1', N'Закрытие доходов', NULL, 3, 220, NULL, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (33, 32, NULL, NULL, NULL, NULL, NULL, N'', N'Closing.2', N'Итоговый доход', NULL, 1, 216, NULL, 26, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (34, 31, NULL, NULL, NULL, NULL, NULL, N'', N'Closing.3', N'Закрытие расходов', NULL, 1, 247, NULL, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (35, 31, NULL, NULL, NULL, NULL, NULL, N'', N'Closing.4', N'Итоговый расход', NULL, 3, 216, NULL, 26, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (36, 130, 9, NULL, NULL, NULL, NULL, N'', N'CurrentBalance', N'Снятие остатков', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (37, 36, 9, NULL, NULL, 11, NULL, N'', N'CurrentBalance.1', N'Текущие остатки (отчет)', NULL, NULL, 32, NULL, 2, NULL, NULL, 1, NULL, NULL, NULL, NULL, 58, 72, 13, N'', 1, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (38, 37, 9, NULL, NULL, 11, NULL, N'', N'CurrentBalance.1A', N'Текущие остатки.кол-во', NULL, 3, 32, NULL, 2, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 13, N'', 1, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (39, 37, 9, NULL, NULL, 11, NULL, N'', N'CurrentBalance.1B', N'Текущие остатки.сумма', NULL, 3, 32, NULL, 2, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 3, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (40, 36, 9, NULL, NULL, 11, NULL, N'', N'CurrentBalance.2', N'Инв опись', NULL, NULL, 32, NULL, 2, 37, NULL, 1, NULL, NULL, NULL, NULL, 58, 81, 13, N'', 1, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (41, 37, 9, NULL, NULL, NULL, NULL, N'', N'CurrentBalance.3', N'Слич ведомость', NULL, NULL, NULL, NULL, NULL, 37, NULL, 1, NULL, NULL, NULL, NULL, 58, 81, 13, N'', 1, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (42, 41, 9, 11, NULL, NULL, NULL, N'', N'CurrentBalance.3A', N'Списание недостач.кол-во', NULL, 1, 32, NULL, NULL, NULL, NULL, 1, NULL, 32, NULL, NULL, 96, 81, 13, N'', 1, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (43, 41, 9, 11, NULL, NULL, NULL, N'', N'CurrentBalance.3B', N'Списание недостач.сумма', NULL, 1, 29, NULL, NULL, NULL, NULL, 1, NULL, 32, NULL, NULL, 96, 81, 3, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (44, 41, 2, NULL, NULL, NULL, NULL, N'', N'CurrentBalance.3C', N'Списание недостач.расход', NULL, 3, 249, NULL, NULL, NULL, NULL, 1, NULL, 32, NULL, NULL, 96, 81, 1, N'', 1, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (45, 130, NULL, NULL, NULL, NULL, NULL, N'', N'DebtOffsetting', N'Взаимозачет и списание задолж-ти и авансов', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 67, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (46, 45, NULL, NULL, 11, NULL, NULL, N'', N'DebtOffsetting.1', N'Списание кред задолж-ти по договорам', NULL, 3, 145, NULL, 26, 47, NULL, NULL, 1, 37, NULL, NULL, 65, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (47, 45, NULL, NULL, 11, NULL, NULL, N'', N'DebtOffsetting.2', N'Списание деб задолж-ти по договорам', NULL, 1, 21, NULL, 26, 46, NULL, NULL, 1, 37, NULL, NULL, 65, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (48, 45, NULL, NULL, 11, NULL, NULL, N'', N'DebtOffsetting.3', N'Списание авансов поставщику', NULL, 1, 50, NULL, 26, 49, NULL, NULL, 1, 37, NULL, NULL, 65, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (49, 45, NULL, NULL, 11, NULL, NULL, N'', N'DebtOffsetting.4', N'Списание кред задолж-ти поставщика', NULL, 3, 145, NULL, 26, 48, NULL, NULL, 1, 37, NULL, NULL, 65, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (50, 45, NULL, NULL, 11, NULL, NULL, N'', N'DebtOffsetting.5', N'Списание авансов покупателя', NULL, 3, 159, NULL, 26, 51, NULL, NULL, 1, 37, NULL, NULL, 65, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (51, 45, NULL, NULL, 11, NULL, NULL, N'', N'DebtOffsetting.6', N'Списание деб задолж-ти покупателя', NULL, 1, 21, NULL, 26, 50, NULL, NULL, 1, 37, NULL, NULL, 65, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (52, 130, NULL, NULL, NULL, NULL, NULL, N'', N'Depreciation', N'Начисление амортизации', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 65, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (53, 52, NULL, NULL, NULL, NULL, NULL, N'', N'Depreciation.1', N'Амортизация активов', NULL, 1, 84, NULL, 26, NULL, NULL, 1, NULL, 9, 14, NULL, 64, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (54, 52, NULL, NULL, NULL, NULL, NULL, N'', N'Depreciation.2', N'Затраты по амортизации', NULL, 3, 249, 26, 24, 53, NULL, NULL, NULL, 9, NULL, NULL, 64, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (55, 130, NULL, NULL, NULL, NULL, NULL, N'', N'Entry', N'Процесс Бух справка', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 65, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (56, 55, NULL, 11, 11, NULL, NULL, N'', N'Entry.1', N'Бух справка.кол-во', NULL, 4, 285, 1, 25, 130, NULL, 1, 1, NULL, 1, 1, NULL, NULL, 13, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (57, 55, NULL, 11, 11, NULL, NULL, N'', N'Entry.2', N'Бух справка.сумма', NULL, 4, 285, 1, 26, 130, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (58, 130, NULL, NULL, NULL, NULL, NULL, N'', N'ExchangeDifference', N'Расчет курсовой разницы', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 142, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (59, 58, NULL, NULL, 11, NULL, NULL, N'', N'ExchangeDifference.1', N'Текущие остатки валютных задолж-тей', NULL, 5, 285, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 65, NULL, 1, N'', 40, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (60, 58, NULL, NULL, 11, NULL, NULL, N'', N'ExchangeDifference.2', N'Расчет КР', NULL, NULL, 285, NULL, 26, 59, NULL, NULL, 1, NULL, NULL, NULL, 65, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (61, 58, NULL, NULL, NULL, NULL, NULL, N'', N'ExchangeDifference.3', N'Расходы по КР', NULL, 3, 262, NULL, 24, 60, NULL, NULL, NULL, NULL, NULL, NULL, 65, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (62, 58, NULL, NULL, NULL, NULL, NULL, N'', N'ExchangeDifference.4', N'Доходы по КР', NULL, 1, 237, NULL, 24, 60, NULL, NULL, NULL, NULL, NULL, NULL, 65, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (63, 58, NULL, NULL, 11, NULL, NULL, N'', N'ExchangeDifference.5', N'Кредиторская задолж-ть по КР', NULL, 1, 285, NULL, 26, 60, NULL, NULL, 1, NULL, NULL, NULL, 65, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (64, 58, NULL, NULL, 11, NULL, NULL, N'', N'ExchangeDifference.6', N'Дебиторская задолж-ть по КР', NULL, 3, 285, NULL, 26, 60, NULL, NULL, 1, NULL, NULL, NULL, 65, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (65, 130, NULL, NULL, NULL, NULL, NULL, N'', N'InputInitialBalance', N'Ввод нач остатков', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 65, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (66, 65, NULL, 11, 11, NULL, NULL, N'', N'InputInitialBalance.1', N'Ввод остатков.кол-во', NULL, 5, 285, NULL, 25, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, 13, N'', 1, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (67, 65, NULL, 11, 11, NULL, NULL, N'', N'InputInitialBalance.2', N'Ввод остатков.сумма', NULL, 5, 285, NULL, 26, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (68, 130, NULL, 3, NULL, NULL, NULL, N'1-31.9999', N'MainSalary', N'Начисление ЗП и налогов', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 142, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (69, 68, NULL, 11, NULL, NULL, NULL, N'', N'MainSalary.1', N'Табелирование.рабочие дни', NULL, 9, NULL, NULL, 30, NULL, NULL, NULL, 3, NULL, NULL, 8, 84, 72, 13, N'', 43, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (70, 68, NULL, 11, NULL, NULL, NULL, N'', N'MainSalary.1A', N'Табелирование.рабочие часы', NULL, 9, NULL, NULL, 30, NULL, NULL, NULL, 3, NULL, NULL, 8, 84, 81, 13, N'', 44, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (71, 68, NULL, 11, NULL, NULL, NULL, N'', N'MainSalary.2', N'Начисления', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, NULL, NULL, 87, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (72, 71, NULL, 11, NULL, NULL, NULL, N'', N'MainSalary.2A', N'Оклад', NULL, 1, 149, NULL, 32, 69, NULL, NULL, NULL, 28, 50, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (73, 71, NULL, 11, NULL, NULL, NULL, N'', N'MainSalary.2B', N'Премия', NULL, 1, 149, NULL, 32, NULL, NULL, NULL, NULL, 28, 49, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (74, 71, NULL, 11, NULL, NULL, NULL, N'', N'MainSalary.2C', N'Отпускные', NULL, 1, 149, NULL, 32, NULL, NULL, NULL, NULL, 28, 53, NULL, NULL, 81, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (75, 71, NULL, 11, NULL, NULL, NULL, N'', N'MainSalary.2D', N'Компенсация за отпуск', NULL, 1, 149, NULL, 32, NULL, NULL, NULL, NULL, 28, 52, NULL, NULL, 81, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (76, 71, NULL, NULL, NULL, NULL, NULL, N'', N'MainSalary.2E', N'Расход', NULL, 3, 249, NULL, 29, 71, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (77, 68, NULL, NULL, NULL, NULL, NULL, N'1-31.9999', N'MainSalary.3', N'Удержания, налоги, отчисления', NULL, NULL, NULL, NULL, NULL, 76, NULL, NULL, NULL, NULL, NULL, NULL, 87, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (78, 77, NULL, NULL, NULL, NULL, NULL, N'', N'MainSalary.3A', N'Вычеты ИПН', NULL, 1, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (79, 77, NULL, NULL, NULL, NULL, NULL, N'', N'MainSalary.3B', N'База ОПВ', NULL, 1, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, 41, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (80, 77, NULL, 11, 11, NULL, NULL, N'', N'MainSalary.3C', N'Удержание ОПВ', NULL, 1, 120, NULL, 33, 79, NULL, NULL, NULL, NULL, 43, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (81, 77, NULL, NULL, NULL, NULL, NULL, N'', N'MainSalary.3D', N'База взносов ОСМС', NULL, 1, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, 35, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (82, 77, NULL, NULL, NULL, NULL, CAST(N'2020-01-01T00:00:00' AS SmallDateTime), N'', N'MainSalary.3E', N'Удержание взносов ОСМС', NULL, 1, 120, NULL, 33, 81, NULL, NULL, NULL, NULL, 36, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (83, 77, NULL, NULL, NULL, NULL, NULL, N'', N'MainSalary.3F', N'База ИПН', NULL, 1, NULL, NULL, 32, 78, NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (84, 77, NULL, NULL, NULL, NULL, NULL, N'', N'MainSalary.3G', N'Удержание ИПН', NULL, 1, 120, NULL, 33, 83, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (85, 77, NULL, NULL, NULL, NULL, NULL, N'', N'MainSalary.3H', N'Алименты.удержание', NULL, 3, 149, NULL, 33, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, 81, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (86, 77, NULL, NULL, NULL, NULL, NULL, N'', N'MainSalary.3I', N'Алименты.начисление получателям', NULL, 1, 152, NULL, 32, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, 81, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (87, 77, NULL, NULL, NULL, NULL, NULL, N'', N'MainSalary.3J', N'Всего удержания из ЗП', NULL, 3, 149, NULL, 29, 77, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (88, 77, NULL, NULL, NULL, NULL, NULL, N'', N'MainSalary.3K', N'База отчислений ГФСС', NULL, 1, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (89, 77, NULL, NULL, NULL, NULL, NULL, N'', N'MainSalary.3L', N'Начисление отчислений ГФСС', NULL, 1, 120, NULL, 34, NULL, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (90, 77, NULL, NULL, NULL, NULL, NULL, N'', N'MainSalary.3LA', N'Расходы по отчислениям ГФСС', NULL, 3, 249, NULL, 29, 89, NULL, NULL, NULL, 28, 21, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (91, 77, NULL, NULL, NULL, NULL, NULL, N'', N'MainSalary.3M', N'База СН', NULL, 1, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (92, 77, NULL, NULL, NULL, NULL, NULL, N'', N'MainSalary.3N', N'Расходы по отчислениям СН', NULL, 3, 249, NULL, 29, 93, NULL, NULL, NULL, 28, 54, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (93, 77, NULL, NULL, NULL, NULL, NULL, N'', N'MainSalary.3NA', N'Начисление СН', NULL, 1, 120, NULL, 34, NULL, NULL, NULL, NULL, NULL, 54, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (94, 77, NULL, NULL, NULL, NULL, NULL, N'', N'MainSalary.3O', N'База отчислений ОСМС', NULL, 1, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, 35, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (95, 77, NULL, NULL, NULL, NULL, NULL, N'', N'MainSalary.3P', N'Расходы по отчислениям ОСМС', NULL, 3, 249, NULL, 29, 96, NULL, NULL, NULL, 28, 38, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (96, 77, NULL, NULL, NULL, NULL, NULL, N'', N'MainSalary.3Q', N'Начисление отчислений ОСМС', NULL, 1, 120, NULL, 34, NULL, NULL, NULL, NULL, NULL, 38, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (97, 68, NULL, NULL, NULL, NULL, NULL, N'', N'MainSalary.4', N'Реестры платежей', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (98, 97, 4, 11, 20, NULL, NULL, N'1-31.9999', N'MainSalary.4A', N'Составление реестра платежей', NULL, NULL, NULL, NULL, 29, 77, NULL, NULL, NULL, NULL, NULL, NULL, 77, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (99, 97, 4, 11, 11, NULL, NULL, N'', N'MainSalary.4B', N'Плат поручение исх', NULL, 20, NULL, NULL, 49, 98, NULL, NULL, NULL, NULL, NULL, NULL, 76, 19, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (100, 97, 4, NULL, NULL, NULL, NULL, N'', N'MainSalary.4C', N'Списание ДС', NULL, 1, 2, NULL, 50, 101, NULL, 2, NULL, 28, NULL, NULL, 60, NULL, 1, N'', 6, N'', 14)
GO
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (101, 97, NULL, 11, 11, NULL, NULL, N'', N'MainSalary.4D', N'Списание задолженности', NULL, 3, 120, NULL, 51, 99, NULL, NULL, NULL, 28, NULL, NULL, 60, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (102, 68, 4, NULL, NULL, NULL, NULL, N'', N'MainSalary.5', N'Возврат реестра платежей', NULL, 15, NULL, NULL, NULL, 97, NULL, NULL, NULL, NULL, 1, NULL, 77, 81, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (103, 102, NULL, 11, 20, NULL, NULL, N'1-31.9999', N'MainSalary.5A', N'Восстановление задолж-ти', NULL, 1, 120, NULL, 32, NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (104, 102, 4, NULL, NULL, NULL, NULL, N'', N'MainSalary.5B', N'Поступление ДС', NULL, 3, 5, NULL, 49, 103, NULL, 2, NULL, 28, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (105, 130, NULL, NULL, NULL, NULL, NULL, N'', N'PaySalary', N'Выплата ЗП', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (106, 105, NULL, NULL, NULL, NULL, NULL, N'', N'PaySalary.1', N'Выплата ЗП через банк', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (107, 106, 4, NULL, 11, NULL, NULL, N'', N'PaySalary.1A', N'Плат поручение исх', NULL, 19, NULL, NULL, 49, NULL, NULL, 2, NULL, 28, NULL, NULL, 76, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (108, 106, NULL, 11, 11, NULL, NULL, N'', N'PaySalary.1B', N'Списание задолж-ти по ЗП', NULL, 3, 149, NULL, 32, 107, NULL, NULL, 3, 28, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (109, 106, 4, NULL, NULL, NULL, NULL, N'', N'PaySalary.1C', N'Списание ДС', NULL, 1, 2, NULL, 50, 108, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (110, 105, NULL, NULL, NULL, NULL, NULL, N'', N'PaySalary.2', N'Возврат выплаты ЗП из банка', NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 81, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (111, 110, NULL, 11, 11, NULL, NULL, N'', N'PaySalary.2A', N'Восстановление задолж-ти по ЗП', NULL, 1, 149, NULL, 32, 107, NULL, NULL, 3, 28, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (112, 110, 4, NULL, NULL, NULL, NULL, N'', N'PaySalary.2B', N'Поступление ДС', NULL, 3, 2, NULL, 50, 108, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (113, 105, NULL, NULL, NULL, NULL, NULL, N'', N'PaySalary.3', N'Выплата ЗП через кассу', NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (114, 113, NULL, 11, 11, NULL, NULL, N'', N'PaySalary.3A', N'Списание задолж-ти по ЗП', NULL, 3, 149, NULL, 32, 107, NULL, NULL, 3, 28, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (115, 113, 5, NULL, NULL, NULL, NULL, N'', N'PaySalary.3B', N'Списание ДС', NULL, 1, 2, NULL, 50, 108, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (116, 130, NULL, NULL, NULL, NULL, NULL, N'', N'PettyCash', N'Аванс в подотчет', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 142, 72, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (117, 116, NULL, NULL, NULL, NULL, NULL, N'', N'PettyCash.1', N'Согласование выдачи аванса в подотчет', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 15, NULL, NULL, 68, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (118, 117, 5, 11, NULL, NULL, NULL, N'', N'PettyCash.2 (Payment)', N'Выдача аванса в подотчет', NULL, 18, NULL, NULL, NULL, 117, NULL, NULL, NULL, NULL, NULL, NULL, 75, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (119, 118, 5, 11, NULL, NULL, NULL, N'', N'PettyCash.2A', N'Выплата ДС', NULL, 1, 2, NULL, 50, NULL, NULL, 2, NULL, 15, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (120, 118, NULL, 11, NULL, NULL, NULL, N'', N'PettyCash.2B', N'Начисление подотчета', NULL, 3, 25, NULL, 51, 119, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (121, 116, NULL, 11, 11, NULL, NULL, N'', N'PettyCash.3 (Imprest)', N'Погашение кредиторской задолж-ти', NULL, NULL, NULL, NULL, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 68, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (122, 121, NULL, 11, 11, NULL, NULL, N'', N'PettyCash.3A', N'Списание кредиторской задолж-ти', NULL, 3, 132, NULL, 38, NULL, NULL, NULL, 1, 15, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (123, 121, NULL, 11, NULL, NULL, NULL, N'', N'PettyCash.3B', N'Списание подотчетной суммы', NULL, 1, 25, NULL, 37, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (124, 118, NULL, NULL, NULL, NULL, NULL, N'', N'PettyCash.4 (ReturnCash)', N'Возврат аванса из подотчета', NULL, 15, NULL, 36, NULL, 119, NULL, NULL, NULL, NULL, NULL, NULL, 69, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (125, 124, 5, 11, NULL, NULL, NULL, N'', N'PettyCash.4A', N'Поступление ДС', NULL, 3, 2, NULL, 50, NULL, NULL, 2, NULL, 15, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (126, 124, NULL, 11, NULL, NULL, NULL, N'', N'PettyCash.4B', N'Списание подотчета', NULL, 1, 25, NULL, 51, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (127, 130, NULL, 11, NULL, NULL, NULL, N'', N'Price', N'Прайс-лист', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 142, 72, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (128, 127, NULL, 11, NULL, NULL, NULL, N'', N'Price.1', N'Согласование прайса', NULL, NULL, NULL, NULL, 3, NULL, NULL, 1, 1, NULL, NULL, 1, 78, NULL, 13, N'1', 11, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (129, 127, NULL, 11, NULL, NULL, NULL, N'', N'Price.2', N'Утверждение прайса', NULL, 22, NULL, NULL, 5, 128, NULL, 1, 1, NULL, NULL, 1, 78, NULL, 12, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (130, NULL, 2, NULL, NULL, 1, NULL, N'', N'Process', N'ProcessData', 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 79, 47, NULL, N'', 22, N'', 12)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (131, 130, NULL, NULL, NULL, NULL, NULL, N'', N'ReturnBuy', N'Возврат поставщику', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 142, 81, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (132, 131, 9, 11, 11, NULL, NULL, N'', N'ReturnBuy.1', N'Согласование возврата поставщику', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 81, NULL, 13, N'', 1, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (133, 132, NULL, NULL, NULL, NULL, NULL, N'', N'ReturnBuy.2 (BuyStorno)', N'Возврат активов поставщику', NULL, NULL, NULL, NULL, NULL, 132, NULL, NULL, NULL, NULL, NULL, NULL, 81, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (134, 133, 9, 11, 11, NULL, NULL, N'', N'ReturnBuy.2A', N'Приход активов\кол-во (сторно)', NULL, 3, 32, 64, 64, NULL, NULL, 1, 1, 25, NULL, 1, NULL, NULL, 13, N'storno', 1, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (135, 133, NULL, NULL, NULL, NULL, NULL, N'', N'ReturnBuy.2B', N'Приход активов\себ-ть (сторно)', NULL, 3, 32, 65, 65, NULL, NULL, 1, 1, 25, NULL, 1, NULL, NULL, 1, N'storno', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (136, 133, NULL, NULL, 11, NULL, NULL, N'', N'ReturnBuy.2C', N'Списание кредиторской задолж-сти (сторно)', NULL, 1, 145, 66, 66, 135, NULL, NULL, 1, 25, NULL, NULL, NULL, NULL, 1, N'storno', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (137, 133, NULL, NULL, 26, NULL, NULL, N'', N'ReturnBuy.2D (VATStorno)', N'Начисление НДС зачета (сторно)', NULL, 3, 132, 68, 68, 135, NULL, NULL, 6, 25, 65, NULL, NULL, NULL, 1, N'storno', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (138, 133, NULL, NULL, 26, NULL, NULL, N'', N'ReturnBuy.2E (VATBaseStorno)', N'Налоговая база НДС зачета (сторно)', NULL, 1, NULL, 63, 63, 135, NULL, NULL, 6, 25, 65, NULL, NULL, 176, 1, N'storno', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (139, 132, NULL, NULL, NULL, NULL, NULL, N'', N'ReturnBuy.3 (ReturnMoney)', N'Возврат ДС поставщиком', NULL, NULL, NULL, NULL, NULL, 133, NULL, NULL, NULL, NULL, NULL, NULL, 73, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (140, 139, 11, NULL, 4, NULL, NULL, N'', N'ReturnBuy.3A', N'Плат поручение вх', NULL, 15, NULL, NULL, 49, NULL, NULL, 2, 1, 25, NULL, NULL, 76, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (141, 139, 4, NULL, 11, NULL, NULL, N'', N'ReturnBuy.3B', N'Поступление ДС', NULL, 3, 2, NULL, 50, 140, NULL, 2, 1, 25, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (142, 139, NULL, NULL, 11, NULL, NULL, N'', N'ReturnBuy.3C', N'Восстановление кредиторской задолж-ти', NULL, 1, 145, NULL, 51, 141, NULL, NULL, 1, 25, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (143, 133, 11, NULL, 2, NULL, NULL, N'', N'ReturnBuy.4 (InvoiceStorno)', N'Получение счета-фактуры (сторно)', NULL, NULL, NULL, 62, 40, NULL, NULL, NULL, 1, 25, NULL, NULL, 70, 72, NULL, N'storno', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (144, 130, NULL, NULL, NULL, NULL, NULL, N'', N'ReturnSell', N'Процесс Возврат от покупателя', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 142, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (145, 144, 9, 11, 11, NULL, NULL, N'', N'ReturnSell.1', N'Согласование возврата от покупателя', NULL, NULL, NULL, 70, 70, NULL, NULL, 1, 1, 30, NULL, 1, 81, NULL, 13, N'', 1, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (146, 145, NULL, NULL, NULL, NULL, NULL, N'', N'ReturnSell.2 (SellStorno)', N'Исполнение возврата от покупателя', NULL, NULL, NULL, NULL, NULL, 145, NULL, NULL, NULL, NULL, NULL, NULL, 81, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (147, 146, 9, NULL, 11, NULL, NULL, N'', N'ReturnSell.2A (Storno)', N'Расход активов\кол-во (сторно)', NULL, 1, 32, 72, 72, NULL, NULL, 1, NULL, 30, NULL, NULL, NULL, 28, 13, N'storno', 1, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (148, 146, NULL, NULL, NULL, NULL, NULL, N'', N'ReturnSell.2B (Storno)', N'Расход активов\сумма (сторно)', NULL, 1, 32, 74, 74, NULL, NULL, 1, NULL, 30, NULL, NULL, NULL, 28, 1, N'storno', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (149, 146, NULL, 11, 11, NULL, NULL, N'', N'ReturnSell.2C (Storno)', N'Списание дебиторской задолж-ти (сторно)', NULL, 3, 21, 74, 74, NULL, NULL, NULL, 1, 30, NULL, NULL, NULL, NULL, 1, N'storno', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (150, 146, NULL, 11, 11, NULL, NULL, N'', N'ReturnSell.2D (Storno)', N'Признание расхода (сторно)', NULL, 3, 249, 74, 71, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, 28, 3, N'storno', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (151, 146, NULL, 11, 11, NULL, NULL, N'', N'ReturnSell.2E (Storno)', N'Признание дохода (сторно)', NULL, 1, 221, 74, 71, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, 1, N'storno', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (152, 146, NULL, NULL, 26, NULL, NULL, N'', N'ReturnSell.2F (VATStorno)', N'Начисление НДС реализации (сторно)', NULL, 1, 132, 76, 76, NULL, NULL, NULL, 6, 30, 70, NULL, NULL, NULL, 1, N'storno', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (153, 146, NULL, NULL, 26, NULL, NULL, N'', N'ReturnSell.2G (IncomeTaxBaseStorno)', N'Налоговая база КПН (сторно)', NULL, 1, NULL, 71, 71, NULL, NULL, NULL, 6, 30, 31, NULL, NULL, 176, 1, N'storno', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (154, 146, NULL, NULL, 26, NULL, NULL, N'', N'ReturnSell.2H (VATBaseStorno)', N'Налоговая база НДС реализации (сторно)', NULL, 1, NULL, 71, 71, NULL, NULL, NULL, 6, 30, 70, NULL, NULL, 176, 1, N'storno', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (155, 145, NULL, NULL, 11, NULL, NULL, N'', N'ReturnSell.3 (Money)', N'Оплата возврата от покупателя', NULL, NULL, NULL, NULL, 48, 146, NULL, NULL, 1, NULL, NULL, NULL, 73, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (156, 155, 4, NULL, 11, NULL, NULL, N'', N'ReturnSell.3A', N'Плат поручение исх', NULL, 21, NULL, NULL, 49, NULL, NULL, 2, 1, 30, 1, NULL, 76, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (157, 155, 4, NULL, 11, NULL, NULL, N'', N'ReturnSell.3B', N'Выбытие ДС', NULL, 1, 2, 74, 50, 156, NULL, 2, 1, 30, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (158, 155, NULL, NULL, 11, NULL, NULL, N'', N'ReturnSell.3C', N'Восстановление дебиторской задолж-ти', NULL, 3, 21, 74, 51, 157, NULL, NULL, 1, 30, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (159, 146, NULL, NULL, 11, NULL, NULL, N'', N'ReturnSell.4 (InvoiceStorno)', N'Выставление счета-фактуры покупателю (сторно)', NULL, NULL, NULL, 40, 40, 146, NULL, NULL, 1, 30, NULL, NULL, 70, 72, NULL, N'storno', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (160, 130, NULL, NULL, NULL, 11, NULL, N'', N'Revise', N'Акт сверки', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 64, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (161, 160, NULL, 11, 11, 11, NULL, N'', N'Revise.1', N'Согласование акта сверки', NULL, 5, 285, NULL, 24, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (162, 160, NULL, 11, 11, 11, NULL, N'', N'Revise.2', N'Подписание акта сверки', NULL, 5, 285, NULL, 26, 161, NULL, NULL, 1, NULL, NULL, NULL, 82, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (163, 130, NULL, NULL, NULL, NULL, NULL, N'', N'Sell', N'Реализация', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 142, 72, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (164, 163, NULL, 11, 11, NULL, NULL, N'', N'Sell.1', N'Согласование исх договора', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 30, NULL, 1, 63, NULL, 10, N'', 1, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (165, 164, NULL, 11, 11, NULL, NULL, N'', N'Sell.2 (Contract)', N'Новый договор', NULL, NULL, NULL, NULL, 15, 164, NULL, NULL, 1, 30, NULL, NULL, 63, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (166, 165, NULL, 11, 11, NULL, NULL, N'', N'Sell.3 (Order)', N'Выставление исх счета', NULL, NULL, NULL, NULL, 55, 165, NULL, NULL, 1, NULL, NULL, NULL, 74, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (167, 166, NULL, 11, 11, 9, NULL, N'', N'Sell.3A', N'Реализация менеджеров (план)', NULL, 1, 221, 15, 55, NULL, NULL, NULL, 1, 30, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (168, 166, NULL, NULL, NULL, 9, NULL, N'', N'Sell.3B', N'Себест-ть (план)', NULL, 3, 248, 15, 55, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, 3, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (169, 166, NULL, 11, 11, 9, NULL, N'', N'Sell.3C', N'Оплата исх счета (план)', NULL, 3, 2, 15, 55, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (170, 166, NULL, NULL, 11, NULL, NULL, N'', N'Sell.4 (Money)', N'Оплата исх счета', NULL, NULL, NULL, NULL, 48, 166, NULL, NULL, 1, 30, NULL, NULL, 73, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (171, 170, 11, NULL, 4, NULL, NULL, N'', N'Sell.4A', N'Плат поручение вх', NULL, 12, NULL, NULL, 49, NULL, NULL, 2, 1, 30, NULL, NULL, 76, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (172, 170, 4, NULL, 11, NULL, NULL, N'', N'Sell.4B', N'Поступление ДС', NULL, 3, 2, NULL, 50, 171, NULL, 2, 1, 30, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (173, 170, NULL, NULL, 11, NULL, NULL, N'', N'Sell.4C', N'Списание деб задолж-ти', NULL, 1, 21, 50, 51, 171, NULL, NULL, 1, 30, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (174, 166, NULL, NULL, NULL, NULL, NULL, N'', N'Sell.5 (Consumption)', N'Исполнение исх счета', NULL, NULL, NULL, NULL, 70, 172, NULL, NULL, NULL, NULL, NULL, NULL, 89, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (175, 174, NULL, 11, 11, NULL, NULL, N'', N'Sell.5A', N'Получение вх доверенности', NULL, NULL, NULL, 55, 2, NULL, NULL, 1, 1, 30, NULL, NULL, 95, NULL, 10, N'', 1, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (176, 174, NULL, 11, 11, NULL, NULL, N'', N'Sell.5B', N'Начисление деб задолж-ти', NULL, 3, 21, NULL, 74, NULL, NULL, NULL, 1, 30, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (177, 174, 9, NULL, NULL, NULL, NULL, N'', N'Sell.5C', N'Списание себест-ти активов\кол-во', NULL, 1, 32, NULL, 72, NULL, NULL, 1, NULL, 7, NULL, NULL, NULL, 28, 13, N'', 1, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (178, 174, 9, NULL, NULL, NULL, NULL, N'', N'Sell.5D', N'Списание себест-ти активов\себ-ть', NULL, 1, 32, NULL, 75, NULL, NULL, 1, NULL, 7, NULL, NULL, NULL, 28, 3, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (179, 174, NULL, NULL, NULL, NULL, NULL, N'', N'Sell.5E', N'Списание амортизации активов', NULL, 3, 80, NULL, 77, NULL, NULL, 1, NULL, 7, 14, NULL, NULL, 28, 3, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (180, 174, NULL, NULL, 26, NULL, NULL, N'', N'Sell.5F (VATBase)', N'Налоговая база НДС реализации', NULL, 34, NULL, 74, 71, 176, NULL, NULL, 6, 30, 60, NULL, NULL, 176, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (181, 174, NULL, NULL, 26, NULL, NULL, N'', N'Sell.5G (IncomeTaxBase)', N'Налоговая база КПН', NULL, 34, NULL, 74, 71, 176, NULL, NULL, 6, 30, 32, NULL, NULL, 176, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (182, 174, NULL, NULL, 26, NULL, NULL, N'', N'Sell.5H (VAT)', N'Начисление НДС реализации', NULL, 1, 132, NULL, 76, 176, NULL, NULL, 6, 30, 70, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (183, 174, NULL, 11, 11, NULL, NULL, N'', N'Sell.5I', N'Признание расхода', NULL, 3, 249, 74, 71, 178, NULL, NULL, NULL, 30, NULL, NULL, NULL, 28, 3, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (184, 174, NULL, 11, 11, NULL, NULL, N'', N'Sell.5J', N'Признание дохода', NULL, 1, 221, 74, 71, 176, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (185, 174, NULL, NULL, 11, NULL, NULL, N'', N'Sell.6 (Invoice)', N'Выставление счета-фактуры покупателю', NULL, NULL, NULL, 70, 40, 174, NULL, NULL, 1, 30, NULL, NULL, 70, 72, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (186, 166, NULL, NULL, NULL, NULL, NULL, N'', N'Sell.7 (Null)', N'Аннулирование исх счета', NULL, NULL, NULL, 40, NULL, NULL, NULL, 1, 1, 30, NULL, 1, 74, 81, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (187, 130, NULL, NULL, NULL, NULL, NULL, N'', N'StaffDoc', N'Кадровый приказ', NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 91, 72, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (188, 187, NULL, 11, NULL, NULL, NULL, N'', N'StaffDoc.1', N'Прием на работу', NULL, 9, NULL, NULL, 32, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 13, N'1', 16, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (189, 187, NULL, 11, NULL, NULL, NULL, N'', N'StaffDoc.2', N'Командировка', NULL, 9, NULL, NULL, 32, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 13, N'1', 53, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (190, 187, NULL, 11, NULL, NULL, NULL, N'', N'StaffDoc.3', N'Поощрение', NULL, 9, NULL, NULL, 32, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 13, N'1', 52, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (191, 187, NULL, 11, NULL, NULL, NULL, N'', N'StaffDoc.4', N'Изменение оклада', NULL, 9, NULL, NULL, 32, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, N'1', 53, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (192, 187, NULL, 11, NULL, NULL, NULL, N'', N'StaffDoc.5', N'Взыскание', NULL, 9, NULL, NULL, 32, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 13, N'1', 51, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (193, 187, NULL, 11, NULL, NULL, NULL, N'', N'StaffDoc.6', N'Отпуск', NULL, 9, NULL, NULL, 32, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 13, N'1', 53, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (194, 187, NULL, 11, NULL, NULL, NULL, N'', N'StaffDoc.7', N'Увольнение', NULL, 9, NULL, NULL, 32, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 13, N'1', 10, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (195, 130, NULL, NULL, NULL, NULL, NULL, N'', N'Storno', N'Процесс Сторно', NULL, 2, 285, 1, 23, 130, NULL, NULL, NULL, NULL, NULL, NULL, 142, NULL, 10, N'storno', 1, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (196, 130, NULL, NULL, NULL, NULL, NULL, N'', N'TaxPay', N'Начисление и оплата налога', NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 142, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (197, 196, NULL, NULL, 26, NULL, NULL, N'', N'TaxPay.1', N'Задолженность по налогу', NULL, 1, 129, NULL, 25, NULL, NULL, NULL, 6, NULL, 1, NULL, 65, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (198, 196, NULL, NULL, NULL, NULL, NULL, N'', N'TaxPay.2', N'Затраты по налогу', NULL, 3, 249, 25, 24, 197, NULL, NULL, NULL, 33, 1, NULL, 65, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (199, 196, 4, NULL, 11, NULL, NULL, N'', N'TaxPay.3', N'Плат поручение исх', NULL, 35, NULL, NULL, 49, 197, NULL, 2, 1, 33, 1, NULL, 76, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (200, 196, 4, NULL, 26, NULL, NULL, N'', N'TaxPay.4', N'Оплата налога', NULL, 1, 2, 49, 50, 199, NULL, 2, NULL, 33, 1, NULL, 73, NULL, 1, N'', 6, N'', 14)
GO
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (201, 196, NULL, NULL, 26, NULL, NULL, N'', N'TaxPay.5', N'Списание задолж-ти по налогу', NULL, 3, 129, 49, 51, 200, NULL, NULL, 6, 33, 1, NULL, 73, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (202, 130, NULL, NULL, NULL, NULL, NULL, N'', N'Transfer', N'Перемещение активов', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 142, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (203, 202, NULL, NULL, NULL, NULL, NULL, N'', N'Transfer.1', N'Согласование перемещения активов', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 94, NULL, 13, N'', 1, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (204, 203, NULL, NULL, NULL, NULL, NULL, N'', N'Transfer.2 (Transfer)', N'Пер-е активов', NULL, NULL, NULL, NULL, NULL, 203, NULL, 1, NULL, NULL, NULL, NULL, 94, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (205, 204, 9, NULL, NULL, NULL, NULL, N'', N'Transfer.2A', N'Отпуск активов.кол-во', NULL, 1, 29, NULL, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 28, 13, N'', 1, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (206, 204, 9, NULL, NULL, NULL, NULL, N'', N'Transfer.2B', N'Отпуск активов.себ-ть сумма', NULL, 1, 29, NULL, 7, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 28, 3, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (207, 204, 3, NULL, NULL, NULL, NULL, N'', N'Transfer.2C', N'Прием активов.кол-во', NULL, 3, 29, NULL, 4, 205, NULL, 1, NULL, NULL, NULL, NULL, NULL, 28, 13, N'', 1, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (208, 204, 3, NULL, NULL, NULL, NULL, N'', N'Transfer.2D', N'Прием активов.себ-ть сумма', NULL, 3, 29, NULL, 7, 206, NULL, 1, NULL, NULL, NULL, NULL, NULL, 28, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (209, 130, NULL, NULL, NULL, NULL, NULL, N'', N'TransferMoney', N'Перемещение ДС', NULL, 15, NULL, NULL, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 73, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (210, 209, 4, NULL, NULL, NULL, NULL, N'', N'TransferMoney.1', N'Плат поручение исх', NULL, 21, NULL, NULL, 49, NULL, NULL, 2, NULL, NULL, NULL, NULL, 76, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (211, 209, 4, NULL, NULL, NULL, NULL, N'', N'TransferMoney.2', N'Списание ДС при отправке', NULL, 1, 2, NULL, 50, 210, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (212, 209, 5, NULL, NULL, NULL, NULL, N'', N'TransferMoney.3', N'Оприходование ДС при получении', NULL, 3, 2, 50, 51, 211, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (213, 130, NULL, NULL, NULL, NULL, NULL, N'', N'Writeoff', N'Списание активов', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 142, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (214, 213, 9, NULL, NULL, NULL, NULL, N'', N'Writeoff.1', N'Согласование спис-я активов', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 37, NULL, NULL, 96, NULL, 13, N'', 1, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (215, 214, NULL, NULL, NULL, NULL, NULL, N'', N'Writeoff.2  (Consumption)', N'Спис-е активов', NULL, NULL, NULL, NULL, NULL, 214, NULL, 1, NULL, NULL, NULL, NULL, 96, NULL, NULL, N'', NULL, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (216, 215, 9, NULL, NULL, NULL, NULL, N'', N'Writeoff.2A', N'Спис-е активов.кол-во', NULL, 1, 29, NULL, 4, NULL, NULL, 1, NULL, 37, NULL, NULL, NULL, 28, 13, N'', 1, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (217, 215, NULL, NULL, NULL, NULL, NULL, N'', N'Writeoff.2B', N'Спис-е активов.себ-ть сумма', NULL, 1, 29, NULL, 7, NULL, NULL, 1, NULL, 37, NULL, NULL, NULL, 28, 3, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (218, 215, NULL, NULL, NULL, NULL, NULL, N'', N'Writeoff.2C', N'Спис-е склада.расход', NULL, 3, 267, 7, 3, 217, NULL, NULL, NULL, 37, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (219, 215, NULL, NULL, NULL, NULL, NULL, N'', N'Writeoff.3 (Arrival)', N'Приход других активов после спис-я', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 125, NULL, 13, N'', 1, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (220, 219, 9, NULL, NULL, NULL, NULL, N'', N'Writeoff.3A', N'Приход активов.кол-во', NULL, 3, 29, NULL, 4, NULL, NULL, 1, NULL, 37, NULL, NULL, NULL, 28, 13, N'', 1, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (221, 219, NULL, NULL, NULL, NULL, NULL, N'', N'Writeoff.3B', N'Приход активов.себ-ть сумма', NULL, 3, 29, NULL, 7, NULL, NULL, 1, NULL, 37, NULL, NULL, NULL, 28, 3, N'', 6, N'', 14)
INSERT [dbo].[Process] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Log], [Log1], [Process], [Process1], [Asset], [Deal], [Item], [Tax], [Price], [Role], [Info], [Meter], [Value], [Unit], [More], [Mark]) VALUES (222, 219, NULL, NULL, NULL, NULL, NULL, N'', N'Writeoff.3C', N'Приход склада.доход', NULL, 1, 241, 7, 3, 221, NULL, NULL, NULL, 37, NULL, NULL, NULL, NULL, 1, N'', 6, N'', 14)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (1, NULL, NULL, NULL, NULL, 1, NULL, N'', N'Report', N'ReportData', 11, NULL, NULL, 72, 47, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (2, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Report.AccForm.Balance', N'Остатки', NULL, NULL, NULL, NULL, 138, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (3, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Report.AccForm.BalanceTurnover', N'Остатки и обороты', NULL, NULL, NULL, 92, 139, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (4, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Report.AccForm.Detail', N'Карточка', NULL, NULL, NULL, NULL, 141, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (5, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Report.AccForm.Sheet', N'Ведомость', NULL, NULL, NULL, NULL, 155, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (6, 1, NULL, NULL, NULL, 7, NULL, N'', N'Report.DepreciationForm', N'Расчет амортизации', NULL, NULL, NULL, NULL, 140, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (7, 6, NULL, NULL, NULL, 7, NULL, N'', N'Report.DepreciationForm.Account', N'Расчет амортизации.бухсчета', NULL, NULL, NULL, 55, NULL, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (8, 6, NULL, NULL, NULL, 7, NULL, N'', N'Report.DepreciationForm.Asset', N'Расчет амортизации.активы', NULL, NULL, NULL, 93, NULL, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (9, 1, NULL, NULL, NULL, 7, NULL, N'', N'Report.DocForm', N'Нормативные формы документов', NULL, NULL, NULL, NULL, 142, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (10, 9, NULL, NULL, NULL, 7, NULL, N'', N'Report.DocForm.BankStatement', N'Выписка банка', NULL, NULL, NULL, 60, NULL, NULL, N'Role.Generic.FullName.Выписка банка;', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (11, 9, NULL, NULL, NULL, 7, NULL, N'', N'Report.DocForm.CashBook', N'КО-4', NULL, NULL, NULL, 73, NULL, NULL, N'Role.Generic.FullName.Кассовая книга;', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (12, 9, NULL, NULL, NULL, 7, NULL, N'', N'Report.DocForm.Entry', N'С-1', NULL, NULL, NULL, 65, NULL, NULL, N'Role.Generic.FullName.Бухгалтерская справка;', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (13, 9, NULL, NULL, NULL, 7, NULL, N'', N'Report.DocForm.Imprest', N'Т-3', NULL, NULL, NULL, 68, NULL, NULL, N'Role.Generic.FullName.Авансовый отчет;', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (14, 9, NULL, NULL, NULL, 7, NULL, N'', N'Report.DocForm.InputCash', N'КО-1', NULL, NULL, NULL, 69, NULL, NULL, N'Role.Generic.FullName.Приходный кассовый ордер;', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (15, 9, NULL, NULL, NULL, 7, NULL, N'', N'Report.DocForm.Invoice', N'Счет-фактура ', NULL, NULL, NULL, 70, NULL, NULL, N'Role.Generic.FullName.Счет-фактура;', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (16, 9, NULL, NULL, NULL, 7, NULL, N'', N'Report.DocForm.Order', N'Счет', NULL, NULL, NULL, 74, NULL, NULL, N'Role.Generic.FullName.Счет;', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (17, 9, NULL, NULL, NULL, 7, NULL, N'', N'Report.DocForm.OutputCash', N'КО-2', NULL, NULL, NULL, 75, NULL, NULL, N'Role.Generic.FullName.Расходный кассовый ордер;', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (18, 9, NULL, NULL, NULL, 7, NULL, N'', N'Report.DocForm.PayOrder', N'Платежное поручение', NULL, NULL, NULL, 76, NULL, NULL, N'Role.Generic.FullName.Платежное поручение;', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (19, 9, NULL, NULL, NULL, 7, NULL, N'', N'Report.DocForm.PaySheet', N'Реестр платежей', NULL, NULL, NULL, 77, NULL, NULL, N'Role.Generic.FullName.Реестр;', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (20, 9, NULL, NULL, NULL, 7, NULL, N'', N'Report.DocForm.Purchase', N'З-1, ОС-1, НМА-1 (приход активов)', NULL, NULL, NULL, 80, NULL, NULL, N'Role.Generic.FullName.Приходная накладная;', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (21, 9, NULL, NULL, NULL, 7, NULL, N'', N'Report.DocForm.Return', N'Возвратная накладная', NULL, NULL, NULL, 81, NULL, NULL, N'Role.Generic.FullName.Возвратная накладная;', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (22, 9, NULL, NULL, NULL, 7, NULL, N'', N'Report.DocForm.Revise', N'Акт сверки-лица,договора', NULL, NULL, NULL, 67, 151, NULL, N'Role.Generic.FullName.Акт сверки;', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (23, 9, NULL, NULL, NULL, 7, NULL, N'', N'Report.DocForm.SalaryPaySheet', N'Т-2 (платежная ведомость)', NULL, NULL, NULL, 86, NULL, NULL, N'Role.Generic.FullName.Платежая ведомость по зарплате;', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (24, 9, NULL, NULL, NULL, 7, NULL, N'', N'Report.DocForm.SalarySheet', N'Расчетная ведомость начисления ЗП', NULL, NULL, NULL, 87, NULL, NULL, N'Role.Generic.FullName.Расчетная ведомость начисления зарплаты;', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (25, 9, NULL, NULL, NULL, 7, NULL, N'', N'Report.DocForm.Sell', N'З-2, ДА-1, Р-1 (реализация активов, услуг)', NULL, NULL, NULL, 89, NULL, NULL, N'Role.Generic.FullName.Расходная накладная;', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (26, 9, NULL, NULL, NULL, 7, NULL, N'', N'Report.DocForm.TrafficOrder', N'ТТН', NULL, NULL, NULL, 92, NULL, NULL, N'Role.Generic.FullName.Товарно-транспортная накладная;', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (27, 9, NULL, NULL, NULL, 7, NULL, N'', N'Report.DocForm.Transfer', N'З-5, ДА-4 (перемещение активов)', NULL, NULL, NULL, 94, NULL, NULL, N'Role.Generic.FullName.Накладная на перемещение активов;', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (28, 9, NULL, NULL, NULL, 7, NULL, N'', N'Report.DocForm.Warrant', N'Д-1', NULL, NULL, NULL, 95, NULL, NULL, N'Role.Generic.FullName.Доверенность;', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (29, 9, NULL, NULL, NULL, 7, NULL, N'', N'Report.DocForm.WriteOff', N'З-6 (списание)', NULL, NULL, NULL, 96, NULL, NULL, N'Role.Generic.FullName.Акт списания;', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (30, 1, NULL, NULL, NULL, 7, NULL, N'', N'Report.FinForm', N'ФФО', NULL, NULL, NULL, 55, 143, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (31, 30, NULL, NULL, NULL, 7, CAST(N'2019-01-01T00:00:00' AS SmallDateTime), N'', N'Report.FinForm.Balance2019', N'ФФО.Баланс2019', NULL, NULL, NULL, 55, 144, NULL, N'Role.Generic.FullName.Бухгалтерский баланс;', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (32, 30, NULL, NULL, NULL, 7, CAST(N'2019-01-01T00:00:00' AS SmallDateTime), N'', N'Report.FinForm.Capital2019', N'ФФО.Капитал2019', NULL, NULL, NULL, 55, 145, NULL, N'Role.Generic.FullName.Отчет о движении капитала;', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (33, 30, NULL, NULL, NULL, 7, CAST(N'2019-01-01T00:00:00' AS SmallDateTime), N'', N'Report.FinForm.Income2019', N'ФФО.Доход2019', NULL, NULL, NULL, 55, 146, NULL, N'Role.Generic.FullName.Отчет о доходах и расходах;', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (34, 30, NULL, NULL, NULL, 7, CAST(N'2019-01-01T00:00:00' AS SmallDateTime), N'', N'Report.FinForm.Money2019', N'ФФО.Деньги2019', NULL, NULL, NULL, 55, 147, NULL, N'Role.Generic.FullName.Отчет о движении денег;', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (35, 1, NULL, NULL, NULL, 7, NULL, N'', N'Report.HRForm', N'Кадровый приказ', NULL, NULL, NULL, NULL, 156, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (36, 35, NULL, NULL, NULL, 7, NULL, N'', N'Report.HRForm.Salary', N'Кадровый приказ.ЗП', NULL, NULL, NULL, 84, NULL, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (37, 35, NULL, NULL, NULL, 7, NULL, N'', N'Report.HRForm.Staff', N'Кадровый приказ.сотрудники', NULL, NULL, NULL, 90, NULL, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (38, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Report.List', N'Список', NULL, NULL, NULL, 54, 148, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (39, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Report.Price', N'Прайс лист', NULL, NULL, NULL, NULL, 150, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (40, 39, NULL, NULL, NULL, NULL, NULL, N'', N'Report.Price.Asset.Deal', N'Прайс-активы.договора', NULL, NULL, NULL, 78, NULL, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (41, 39, NULL, NULL, NULL, NULL, NULL, N'', N'Report.Price.Asset.Unit', N'Прайс-активы.ед изм', NULL, NULL, NULL, 78, NULL, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (42, 39, NULL, NULL, NULL, NULL, NULL, N'', N'Report.Price.Face.Deal', N'Прайс-лица.договора', NULL, NULL, NULL, 78, NULL, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (43, 39, NULL, NULL, NULL, NULL, NULL, N'', N'Report.Price.Store', N'Прайс-склад', NULL, NULL, NULL, 92, NULL, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (44, 1, NULL, NULL, NULL, 7, NULL, N'', N'Report.SalaryInquery', N'Справка по зарплате', NULL, NULL, NULL, NULL, 152, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (45, 44, NULL, NULL, NULL, 7, NULL, N'', N'Report.SalaryInquery.Staff', N'Справка по зарплате.сотрудники', NULL, NULL, NULL, 90, NULL, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (46, 44, NULL, NULL, NULL, 7, NULL, N'', N'Report.SalaryInquery.Total', N'Справка по зарплате.ЗП', NULL, NULL, NULL, 84, NULL, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (47, 1, NULL, NULL, NULL, 7, NULL, N'', N'Report.SalarySummary', N'Свод зарплаты', NULL, NULL, NULL, NULL, 154, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (48, 47, NULL, NULL, NULL, 7, NULL, N'', N'Report.SalarySummary.Staff', N'Свод зарплаты.сотрудники', NULL, NULL, NULL, 90, NULL, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (49, 47, NULL, NULL, NULL, 7, NULL, N'', N'Report.SalarySummary.Total', N'Свод зарплаты.ЗП', NULL, NULL, NULL, 84, NULL, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (50, 1, NULL, NULL, NULL, 7, NULL, N'', N'Report.TaxForm', N'ФНО, ФНР', NULL, NULL, NULL, NULL, 157, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (51, 50, NULL, NULL, NULL, 7, NULL, N'', N'Report.TaxForm.100', N'ФНО100-налоги.лица', NULL, NULL, NULL, 93, NULL, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (52, 50, NULL, NULL, NULL, 7, NULL, N'', N'Report.TaxForm.200', N'ФНО200-налоги.лица', NULL, NULL, NULL, 93, NULL, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (53, 50, NULL, NULL, NULL, 7, NULL, N'', N'Report.TaxForm.300', N'ФНО300-налоги.лица', NULL, NULL, NULL, 93, NULL, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (54, 50, NULL, NULL, NULL, 7, NULL, N'', N'Report.TaxForm.328', N'ФНО328-налоги.лица', NULL, NULL, NULL, 93, NULL, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (55, 50, NULL, NULL, NULL, 7, NULL, N'', N'Report.TaxForm.910', N'ФНО910-налоги.лица', NULL, NULL, NULL, 93, NULL, NULL, N'', 12)
INSERT [dbo].[Report] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Report], [Role], [Info], [Unit], [More], [Mark]) VALUES (56, 1, NULL, NULL, NULL, 7, NULL, N'', N'Report.TaxForm.Registry', N'ФНР-налоги.лица', NULL, NULL, NULL, 93, 158, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (1, NULL, NULL, NULL, NULL, 1, NULL, N'', N'Role', N'RoleData', 11, NULL, 72, 47, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (2, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Account', N'Account', NULL, NULL, 55, NULL, 2, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (3, 2, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Account.Asset', N'счет активов', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (4, 2, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Account.Budget', N'счет бюджета', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (5, 2, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Account.Capital', N'счет капитала', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (6, 2, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Account.Depreciation', N'счет амортизации', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (7, 2, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Account.Face', N'счет лиц', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (8, 2, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Account.FixedAsset', N'счет основных средств', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (9, 2, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Account.Group1Level', N'группа счетов 1 уровня', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (10, 2, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Account.Group2Level', N'группа счетов 2 уровня', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (11, 2, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Account.Money', N'счет денег', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (12, 2, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Account.Other', N'счет прочий', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (13, 2, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Account.Production', N'счет производства', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (14, 2, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Account.Salary', N'счет зарплаты', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (15, 2, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Account.Tax', N'счет налогов и платежей', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (16, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Role.AccTable', N'AccountTable', NULL, NULL, 55, 160, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (17, 16, NULL, NULL, NULL, 7, CAST(N'1997-01-01T00:00:00' AS SmallDateTime), N'31.12.2004', N'Role.AccTable.1997-2004', N'генеральный план счетов 1997', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (18, 16, NULL, NULL, NULL, 7, CAST(N'2005-01-01T00:00:00' AS SmallDateTime), N'31.12.2018', N'Role.AccTable.2005-2008-2018', N'типовой план счетов 2005-2008-2018', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (19, 16, NULL, NULL, NULL, 7, CAST(N'2019-01-01T00:00:00' AS SmallDateTime), N'', N'Role.AccTable.2019', N'типовой план счетов 2019', NULL, NULL, 21, 72, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (20, 16, NULL, NULL, NULL, NULL, NULL, N'', N'Role.AccTable.OffBalance', N'забалансовый', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (21, 16, NULL, NULL, NULL, NULL, NULL, N'', N'Role.AccTable.Work', N'рабочий план счетов', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (22, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Asset', N'Asset', NULL, NULL, 57, NULL, 31, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (23, 22, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Asset.BioAsset', N'биологический актив', NULL, 45, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (24, 22, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Asset.Building', N'здание', NULL, 83, NULL, 170, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (25, 22, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Asset.Car', N'автотранспорт', NULL, 83, NULL, 170, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (26, 22, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Asset.Coverall', N'спецодежда', NULL, 30, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (27, 22, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Asset.Furniture', N'мебель', NULL, 83, NULL, 170, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (28, 22, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Asset.Good', N'товар', NULL, 32, NULL, 72, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (29, 22, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Asset.IntangibleAsset', N'нематериальные активы', NULL, 101, NULL, 173, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (30, 22, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Asset.Land', N'земля', NULL, 83, NULL, 170, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (31, 22, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Asset.LineBusiness', N'направление деятельности', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (32, 22, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Asset.Machine', N'машинное оборудование', NULL, 83, NULL, 170, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (33, 22, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Asset.Material', N'материал', NULL, 30, NULL, 72, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (34, 22, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Asset.Money', N'денежные средства', NULL, 2, NULL, NULL, 6, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (35, 22, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Asset.Mortgage', N'залоговое имущество', NULL, 32, NULL, 173, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (36, 22, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Asset.OfficeEquipment', N'офисное оборудование', NULL, 83, NULL, 170, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (37, 22, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Asset.OtherFixedAsset', N'прочие ОС', NULL, 83, NULL, 170, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (38, 22, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Asset.Production', N'готовая продукция', NULL, 31, NULL, 72, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (39, 22, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Asset.Project', N'проект', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (40, 22, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Asset.Service', N'услуга', NULL, NULL, NULL, 173, 36, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (41, 22, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Asset.Tool', N'инструмент', NULL, 30, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (42, 22, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Asset.Work', N'работа', NULL, NULL, NULL, 173, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (43, 22, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Asset.WorkInProgress', N'незавершенное производство, стр-во', NULL, 33, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (44, 1, NULL, NULL, NULL, 7, NULL, N'', N'Role.Currency', N'Currency', NULL, NULL, 73, NULL, 6, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (45, 44, NULL, NULL, NULL, 7, NULL, N'', N'Role.Currency.AccountingCurrency', N'учетная валюта', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (46, 44, NULL, NULL, NULL, 7, NULL, N'', N'Role.Currency.ExchangeCurrency', N'курс валюты', NULL, NULL, NULL, 72, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (47, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Deal', N'Deal', NULL, NULL, 67, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (48, 47, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Deal.AddAgreement', N'дополнительное соглашение', NULL, NULL, NULL, NULL, 8, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (49, 47, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Deal.Appendix', N'приложение', NULL, NULL, NULL, NULL, 8, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (50, 47, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Deal.Devivery', N'поставка договора', NULL, NULL, NULL, 90, 9, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (51, 47, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Deal.Frame', N'рамочный договор', NULL, NULL, NULL, NULL, 8, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (52, 47, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Deal.Main', N'разовая сделка', NULL, NULL, 122, 72, 8, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (53, 47, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Deal.Spec', N'спецификация', NULL, NULL, NULL, NULL, 8, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (54, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Entity', N'Entity', NULL, NULL, 122, 72, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (55, 54, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Entity.Account', N'бухсчета', NULL, NULL, 72, 47, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (56, 54, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Entity.Asset-Deal', N'активы-договора', NULL, NULL, 92, 47, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (57, 54, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Entity.Asset-Unit', N'активы-ед. изм.', NULL, NULL, 92, 47, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (58, 54, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Entity.Balance', N'остатки', NULL, NULL, 92, 44, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (59, 54, NULL, NULL, NULL, 7, NULL, N'', N'Role.Entity.Bank', N'банк', NULL, NULL, 73, 45, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (60, 54, NULL, NULL, NULL, 7, NULL, N'', N'Role.Entity.BankStatement', N'выписка банка', NULL, NULL, 59, 44, 11, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (61, 54, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Entity.Budget', N'бюджет', NULL, NULL, 72, 47, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (62, 54, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Entity.Country-Currency', N'страны-валюты', NULL, NULL, 72, 47, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (63, 54, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Entity.Deal', N'сделка', NULL, NULL, 67, 44, 11, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (64, 54, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Entity.Doc-Process', N'документ-процесс', NULL, NULL, 55, 46, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (65, 54, NULL, NULL, NULL, 7, NULL, N'', N'Role.Entity.Entry', N'бухгалтерская справка', NULL, NULL, 55, 44, 11, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (66, 54, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Entity.ExtraCalc', N'расчет премии', NULL, NULL, 84, 44, 11, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (67, 54, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Entity.Face-Deal', N'лица-сделки', NULL, NULL, 72, 47, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (68, 54, NULL, NULL, NULL, 7, NULL, N'', N'Role.Entity.Imprest', N'авансовый отчет', NULL, NULL, 90, 44, 11, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (69, 54, NULL, NULL, NULL, 7, NULL, N'', N'Role.Entity.InputCash', N'приходный кассовый ордер', NULL, NULL, 73, 44, 11, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (70, 54, NULL, NULL, NULL, 7, NULL, N'', N'Role.Entity.Invoice', N'счет-фактура (ЭСФ)', NULL, NULL, 92, 44, 11, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (71, 54, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Entity.Log', N'журнал', NULL, NULL, 54, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (72, 54, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Entity.MainTable', N'общие таблицы', NULL, NULL, 54, 47, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (73, 54, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Entity.Money', N'денежные средства', NULL, NULL, 54, 45, 6, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (74, 54, NULL, NULL, NULL, 7, NULL, N'', N'Role.Entity.Order', N'счет', NULL, NULL, 92, 44, 11, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (75, 54, NULL, NULL, NULL, 7, NULL, N'', N'Role.Entity.OutputCash', N'расходный кассовый ордер', NULL, NULL, 73, 44, 11, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (76, 54, NULL, NULL, NULL, 7, NULL, N'', N'Role.Entity.PayOrder', N'платежное поручение', NULL, NULL, 59, 44, 11, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (77, 54, NULL, NULL, NULL, 7, NULL, N'', N'Role.Entity.PaySheet', N'реестр платежей по ЗП', NULL, NULL, 84, 44, 11, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (78, 54, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Entity.PriceList', N'прайс-лист', NULL, NULL, 92, 44, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (79, 54, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Entity.Process', N'процесс', NULL, NULL, 55, 47, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (80, 54, NULL, NULL, NULL, 7, NULL, N'', N'Role.Entity.Purchase', N'приходная накладная', NULL, NULL, 92, 44, 11, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (81, 54, NULL, NULL, NULL, 7, NULL, N'', N'Role.Entity.Return', N'возвратная накладная', NULL, NULL, 92, 44, 11, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (82, 54, NULL, NULL, NULL, 7, NULL, N'', N'Role.Entity.Revise', N'акт сверки', NULL, NULL, 67, 44, 11, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (83, 54, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Entity.SalaruAverageCalc', N'расчет по средней ЗП', NULL, NULL, 84, 44, 11, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (84, 54, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Entity.Salary', N'зарплата', NULL, NULL, 90, 45, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (85, 54, NULL, NULL, NULL, 7, NULL, N'', N'Role.Entity.SalaryInquery', N'справка по ЗП', NULL, NULL, 84, 44, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (86, 54, NULL, NULL, NULL, 7, NULL, N'', N'Role.Entity.SalaryPaySheet', N'ведомость выплаты ЗП', NULL, NULL, 84, 44, 11, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (87, 54, NULL, NULL, NULL, 7, NULL, N'', N'Role.Entity.SalarySheet', N'начисление зарплаты', NULL, NULL, 84, 44, 11, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (88, 54, NULL, NULL, NULL, 7, NULL, N'', N'Role.Entity.SalarySummary', N'свод ЗП', NULL, NULL, 84, 44, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (89, 54, NULL, NULL, NULL, 7, NULL, N'', N'Role.Entity.Sell', N'реализация', NULL, NULL, 92, 44, 11, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (90, 54, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Entity.Staff', N'сотрудники', NULL, NULL, 72, 47, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (91, 54, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Entity.StaffDoc', N'кадровый приказ', NULL, NULL, 90, 44, 11, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (92, 54, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Entity.Store', N'склад', NULL, NULL, 54, 45, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (93, 54, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Entity.Tax-Face', N'налоги-лица', NULL, NULL, 72, 47, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (94, 54, NULL, NULL, NULL, 7, NULL, N'', N'Role.Entity.Transfer', N'накладная перемещения', NULL, NULL, 92, 44, 11, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (95, 54, NULL, NULL, NULL, 7, NULL, N'', N'Role.Entity.Warrant', N'доверенность', NULL, NULL, 92, 44, 11, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (96, 54, NULL, NULL, NULL, 7, NULL, N'', N'Role.Entity.WriteOff', N'списание', NULL, NULL, 92, 44, 11, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (97, 1, NULL, NULL, NULL, 7, NULL, N'', N'Role.ExchangeData', N'ExchangeData', NULL, NULL, 64, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (98, 97, NULL, NULL, NULL, 7, NULL, N'', N'Role.ExchangeData.EsfXML', N'ESF XML', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (99, 97, NULL, NULL, NULL, 7, NULL, N'', N'Role.ExchangeData.MT100', N'swift MT-100 (платежки)', NULL, NULL, 77, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (100, 97, NULL, NULL, NULL, 7, NULL, N'', N'Role.ExchangeData.MT102', N'swift MT-102 (зарплата)', NULL, NULL, 77, NULL, NULL, N'', 12)
GO
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (101, 97, NULL, NULL, NULL, 7, NULL, N'', N'Role.ExchangeData.SwiftGFSS', N'swift ГФСС', NULL, NULL, 77, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (102, 97, NULL, NULL, NULL, 7, NULL, N'', N'Role.ExchangeData.SwiftOPV', N'swift ОПВ', NULL, NULL, 77, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (103, 97, NULL, NULL, NULL, 7, NULL, N'', N'Role.ExchangeData.SwiftOSMS', N'swift отч ОСМС', NULL, NULL, 77, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (104, 97, NULL, NULL, NULL, 7, NULL, N'', N'Role.ExchangeData.Tax100-01', N'ф100.01', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (105, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Face', N'Face', NULL, NULL, 67, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (106, 105, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Face.Bank', N'банк', NULL, NULL, 59, 59, 14, N'Info.Code.KBE.15;', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (107, 105, NULL, NULL, NULL, 7, NULL, N'', N'Role.Face.ContractWorker', N'работник по договору', NULL, NULL, 84, 60, 14, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (108, 105, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Face.Customer', N'покупатель', NULL, 21, 122, 59, 14, N'Info.Code.KBE.17;', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (109, 105, NULL, NULL, NULL, 7, NULL, N'', N'Role.Face.ExternalWorker', N'внешний совместитель', NULL, NULL, 84, 60, 14, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (110, 105, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Face.FA', N'лицо учета', NULL, NULL, 122, 59, 14, N'Info.Code.KBE.17;', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (111, 105, NULL, NULL, NULL, 7, NULL, N'', N'Role.Face.Foreigner', N'иностранный персонал', NULL, NULL, 84, 60, 14, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (112, 105, NULL, NULL, NULL, 7, NULL, N'', N'Role.Face.GCVP', N'НАО-ГЦВП', NULL, NULL, 115, 61, 14, N'Info.Code.KBE.11;', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (113, 105, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Face.Seller', N'поставщик', NULL, 145, 122, 59, 14, N'Info.Code.KBE.17;', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (114, 105, NULL, NULL, NULL, 7, NULL, N'', N'Role.Face.Staff', N'штатный работник', NULL, NULL, 122, 60, 14, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (115, 105, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Face.State', N'госорган', NULL, NULL, NULL, 59, 14, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (116, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Generic', N'Generic', NULL, NULL, 72, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (117, 116, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Generic.Code', N'код', NULL, NULL, NULL, NULL, 39, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (118, 116, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Generic.Description', N'расшифровка', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (119, 116, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Generic.Extra', N'необычный', NULL, NULL, NULL, 72, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (120, 116, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Generic.FullName', N'полное наименование', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (121, 116, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Generic.List', N'список', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (122, 116, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Generic.Main', N'общая инфо', NULL, NULL, NULL, 72, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (123, 116, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Generic.ShortName', N'сокращенное наименование', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (124, 116, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Generic.Time', N'время', NULL, NULL, NULL, NULL, 4, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (125, 116, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Generic.Variant', N'вариант', NULL, NULL, NULL, 72, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (126, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Geo', N'Geo', NULL, NULL, 72, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (127, 126, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Geo.City', N'город', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (128, 126, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Geo.Country', N'страна', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (129, 126, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Geo.County', N'область', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (130, 126, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Geo.District', N'район', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (131, 126, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Geo.House', N'дом', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (132, 126, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Geo.Region', N'регион', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (133, 126, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Geo.Street', N'улица', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (134, 126, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Geo.Township', N'поселок', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (135, 126, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Geo.Union', N'союз стран', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (136, 126, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Geo.Village', N'село', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (137, 126, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Geo.WorldOrg', N'международная организация', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (138, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Log', N'Log', NULL, NULL, 71, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (139, 138, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Log.ChangeMark', N'change mark', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (140, 138, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Log.Line1Manual', N'строка ручного ввода (первичная)', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (141, 138, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Log.Line2Calc', N'доп строка расчета (вторичная)', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (142, 138, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Log.StartPoint', N'стартовая точка', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (143, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Policy', N'Policy', NULL, NULL, 105, 63, 18, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (144, 143, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Policy.CanChangeDayAgo', N'изменять число дней назад', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (145, 143, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Policy.MustAuth', N'обязательная авторизация', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (146, 143, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Policy.MustFill', N'обязательно заполнять', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (147, 143, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Policy.NoChange', N'не изменять', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (148, 143, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Policy.NoDelete', N'не удалять', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (149, 143, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Policy.NoRound', N'не округлять до целого', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (150, 143, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Policy.NoView', N'не отображать', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (151, 143, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Policy.ToZero', N'обнулять', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (152, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Price', N'Price', NULL, NULL, 78, NULL, 6, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (153, 152, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Price.AddFee', N'доп сбор к тарифу', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (154, 152, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Price.Main', N'цена ТРУ', NULL, NULL, NULL, 72, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (155, 152, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Price.Percent', N'процент', NULL, NULL, NULL, NULL, 30, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (156, 152, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Price.Tariff', N'тариф', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (157, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Role.PriceChange', N'PriceChange', NULL, NULL, 78, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (158, 157, NULL, NULL, NULL, NULL, NULL, N'', N'Role.PriceChange.Action', N'акция', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (159, 157, NULL, NULL, NULL, NULL, NULL, N'', N'Role.PriceChange.FreePiece', N'бесплатный экземпляр', NULL, NULL, NULL, NULL, 31, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (160, 157, NULL, NULL, NULL, NULL, NULL, N'', N'Role.PriceChange.Markup', N'надбавка, наценка', NULL, NULL, NULL, NULL, 30, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (161, 157, NULL, NULL, NULL, NULL, NULL, N'', N'Role.PriceChange.Sale', N'скидка', NULL, NULL, 122, NULL, 30, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (162, 1, NULL, NULL, NULL, 7, NULL, N'', N'Role.Rate', N'Rate', NULL, NULL, 72, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (163, 162, NULL, NULL, NULL, 7, NULL, N'', N'Role.Rate.MaxRate', N'максимальный показатель', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (164, 162, NULL, NULL, NULL, 7, NULL, N'', N'Role.Rate.MinRate', N'минимальный показатель', NULL, NULL, NULL, 72, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (165, 162, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Rate.Ratio', N'коэффициент', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (166, 1, NULL, NULL, NULL, 7, NULL, N'', N'Role.RegData', N'RegData', NULL, NULL, 67, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (167, 166, NULL, NULL, NULL, NULL, NULL, N'', N'Role.RegData.ExternalNumber', N'внешний номер', NULL, NULL, NULL, NULL, 12, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (168, 166, NULL, NULL, NULL, 7, NULL, N'', N'Role.RegData.License', N'лицензия', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (169, 166, NULL, NULL, NULL, 7, NULL, N'', N'Role.RegData.Passport', N'паспорт', NULL, NULL, 122, 60, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (170, 166, NULL, NULL, NULL, 7, NULL, N'', N'Role.RegData.RegDescription', N'официальное наименование', NULL, NULL, 122, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (171, 166, NULL, NULL, NULL, 7, NULL, N'', N'Role.RegData.Sert', N'сертификат', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (172, 166, NULL, NULL, NULL, 7, NULL, N'', N'Role.RegData.TaxNumber', N'налоговый номер', NULL, NULL, 122, 53, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (173, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Role.ReportFrame', N'структура отчета', NULL, NULL, 71, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (174, 173, NULL, NULL, NULL, 5, NULL, N'', N'Role.ReportFrame.Body', N'тело', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (175, 173, NULL, NULL, NULL, 5, NULL, N'', N'Role.ReportFrame.Column1', N'колонка1', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (176, 173, NULL, NULL, NULL, 5, NULL, N'', N'Role.ReportFrame.Column2', N'колонка2', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (177, 173, NULL, NULL, NULL, 5, NULL, N'', N'Role.ReportFrame.Column3', N'колонка3', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (178, 173, NULL, NULL, NULL, 5, NULL, N'', N'Role.ReportFrame.Footer', N'подвал', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (179, 173, NULL, NULL, NULL, 5, NULL, N'', N'Role.ReportFrame.Header', N'заголовок', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (180, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Sign', N'Sign', NULL, NULL, 55, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (181, 180, NULL, NULL, NULL, 7, NULL, N'', N'Role.Sign.AccTable', N'план счетов', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (182, 180, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Sign.Budget', N'бюджет', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (183, 180, NULL, NULL, NULL, 7, NULL, N'', N'Role.Sign.HRA', N'кадры', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (184, 180, NULL, NULL, NULL, 7, NULL, N'', N'Role.Sign.MoneyFlow', N'ДДС', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (185, 180, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Sign.Store-Traffic', N'склад, транспорт', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (186, 180, NULL, NULL, NULL, 7, NULL, N'', N'Role.Sign.Tax', N'налоги', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (187, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Role.StaffTable', N'StaffTable', NULL, NULL, 67, NULL, 43, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (188, 187, NULL, NULL, NULL, NULL, NULL, N'', N'Role.StaffTable.4day', N'4-дневка', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (189, 187, NULL, NULL, NULL, 7, NULL, N'', N'Role.StaffTable.5day', N'5-дневка', NULL, NULL, NULL, 72, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (190, 187, NULL, NULL, NULL, 7, NULL, N'', N'Role.StaffTable.6day', N'6-дневка', NULL, NULL, NULL, 72, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (191, 187, NULL, NULL, NULL, NULL, NULL, N'', N'Role.StaffTable.7day', N'7-дневка', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (192, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Store', N'Store', NULL, NULL, 92, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (193, 192, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Store.Bank', N'текущий банковский счет', NULL, NULL, 106, 72, 6, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (194, 192, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Store.BankPersonAccount', N'карт-счет физлица', NULL, NULL, 106, 60, 6, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (195, 192, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Store.Cash', N'касса', NULL, NULL, 122, 59, 6, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (196, 192, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Store.Construction', N'объект строительства', NULL, 33, NULL, 59, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (197, 192, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Store.Department', N'отдел', NULL, NULL, NULL, 59, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (198, 192, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Store.Depo', N'депозитный счет', NULL, NULL, 106, NULL, 6, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (199, 192, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Store.Main', N'оптовый склад', NULL, NULL, 122, 59, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (200, 192, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Store.Pallet', N'паллета', NULL, NULL, NULL, 172, NULL, N'', 12)
GO
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (201, 192, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Store.Rack', N'стеллаж', NULL, NULL, NULL, 172, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (202, 192, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Store.Retail', N'розничный склад', NULL, NULL, NULL, 59, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (203, 192, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Store.Shelf', N'полка', NULL, NULL, NULL, 172, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (204, 192, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Store.Shop', N'цех', NULL, NULL, NULL, 59, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (205, 192, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Store.Staff', N'работник', NULL, NULL, 187, 60, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (206, 1, NULL, NULL, NULL, 7, NULL, N'', N'Role.TaxBase', N'TaxBase', NULL, NULL, 93, 176, 6, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (207, 206, NULL, NULL, NULL, 7, NULL, N'', N'Role.TaxBase.CostBrutto', N'расход брутто', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (208, 206, NULL, NULL, NULL, 7, NULL, N'', N'Role.TaxBase.CostNetto', N'расход нетто', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (209, 206, NULL, NULL, NULL, 7, NULL, N'', N'Role.TaxBase.ExchangeRateDelta', N'разница валютных курсов', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (210, 206, NULL, NULL, NULL, 7, NULL, N'', N'Role.TaxBase.FixedAssetNetto', N'стоимость ФА нетто', NULL, NULL, NULL, 193, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (211, 206, NULL, NULL, NULL, 7, NULL, N'', N'Role.TaxBase.CoreFundNetto', N'стоимость ОС-НМА нетто', NULL, NULL, NULL, 193, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (212, 206, NULL, NULL, NULL, 7, NULL, N'', N'Role.TaxBase.ImportNetto', N'облагаемый импорт нетто', NULL, NULL, NULL, 183, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (213, 206, NULL, NULL, NULL, 7, NULL, N'', N'Role.TaxBase.IncomeBrutto', N'доход брутто', NULL, NULL, NULL, 193, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (214, 206, NULL, NULL, NULL, 7, NULL, N'', N'Role.TaxBase.IncomeNetto', N'доход нетто', NULL, NULL, NULL, 193, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (215, 206, NULL, NULL, NULL, 7, NULL, N'', N'Role.TaxBase.SalaryBrutto', N'зарплата брутто', NULL, NULL, 84, 183, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (216, 206, NULL, NULL, NULL, 7, NULL, N'', N'Role.TaxBase.SalaryNetto', N'зарплата нетто', NULL, NULL, 84, 183, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (217, 206, NULL, NULL, NULL, 7, NULL, N'', N'Role.TaxBase.SellBrutto', N'реализация брутто (вх и исх)', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (218, 206, NULL, NULL, NULL, 7, NULL, N'', N'Role.TaxBase.SellNetto', N'реализация нетто (вх и исх)', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (219, 1, NULL, NULL, NULL, 7, NULL, N'', N'Role.TaxDetail', N'TaxDetail', NULL, NULL, 93, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (220, 219, NULL, NULL, NULL, 7, NULL, N'', N'Role.TaxDetail.DepreciationLineMonth', N'амортизация линейно помесячно', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (221, 219, NULL, NULL, NULL, 7, NULL, N'', N'Role.TaxDetail.DepreciationYearTax', N'амортизация по году налоговая', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (222, 219, NULL, NULL, NULL, 7, NULL, N'', N'Role.TaxDetail.ExcRateDelta1', N'разница одного вида вал курса одной валюты между разными датами', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (223, 219, NULL, NULL, NULL, 7, NULL, N'', N'Role.TaxDetail.ExcRateDelta2', N'разница разных видов вал курсов одной даты', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (224, 219, NULL, NULL, NULL, 7, NULL, N'', N'Role.TaxDetail.InputSell', N'входящая реализация', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (225, 219, NULL, NULL, NULL, 7, NULL, N'', N'Role.TaxDetail.OutputSell', N'исходящая реализация', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (226, 1, NULL, NULL, NULL, 7, NULL, N'', N'Role.TaxMode', N'TaxMode', NULL, NULL, 93, 53, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (227, 226, NULL, NULL, NULL, 7, NULL, N'', N'Role.TaxMode.Main', N'общеустановленный', NULL, NULL, 122, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (228, 226, NULL, NULL, NULL, 7, NULL, N'', N'Role.TaxMode.Patent', N'патент', NULL, NULL, 122, 60, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (229, 226, NULL, NULL, NULL, 7, NULL, N'', N'Role.TaxMode.Simple', N'упрощенный', NULL, NULL, 122, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (230, 226, NULL, NULL, NULL, 7, NULL, N'', N'Role.TaxMode.WorkContract', N'договор ГПХ', NULL, NULL, NULL, 60, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (231, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Unit', N'Unit', NULL, NULL, 57, NULL, 31, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (232, 231, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Unit.Auth', N'ЕИ аутентификации', NULL, NULL, NULL, NULL, 50, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (233, 231, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Unit.Derivative', N'производная ЕИ', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Role] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (234, 231, NULL, NULL, NULL, NULL, NULL, N'', N'Role.Unit.Main', N'базовая ЕИ', NULL, NULL, NULL, 72, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (1, 5, NULL, NULL, NULL, 7, NULL, N'', N'Acc.Ct', N'Счет.Кредит', NULL, NULL, NULL, NULL, 161, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (2, 5, NULL, NULL, NULL, NULL, NULL, N'', N'Acc.Ct-Dt', N'Счет.Кредит или Дебет', NULL, NULL, NULL, NULL, 160, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (3, 5, NULL, NULL, NULL, 7, NULL, N'', N'Acc.Dt', N'Счет.Дебет', NULL, NULL, NULL, NULL, 161, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (4, 5, NULL, NULL, NULL, NULL, NULL, N'', N'Acc.Dt-Ct', N'Счет.Дебет или Кредит', NULL, NULL, NULL, NULL, 160, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (5, 26, NULL, NULL, NULL, 7, NULL, N'', N'Account', N'Счет', NULL, NULL, NULL, 181, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (6, 26, NULL, NULL, NULL, NULL, NULL, N'', N'Budget', N'Бюджет', NULL, NULL, NULL, 182, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (7, 6, NULL, NULL, NULL, NULL, NULL, N'', N'Budget.Input', N'Бюджет.Вход', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (8, 6, NULL, NULL, NULL, NULL, NULL, N'', N'Budget.Output', N'Бюджет.Выход', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (9, 26, NULL, NULL, NULL, NULL, NULL, N'', N'HRA', N'HumanResourceAccounting', NULL, NULL, NULL, 183, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (10, 26, NULL, NULL, NULL, NULL, NULL, N'', N'MoneyFlow', N'ДвижениеДенег', NULL, NULL, 2, 184, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (11, 10, NULL, NULL, NULL, NULL, NULL, N'', N'MoneyFlow.Input', N'ДвижениеДенег.Вход', NULL, 3, NULL, NULL, NULL, NULL, N'Role.Generic.FullName.Поступление;', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (12, 11, NULL, NULL, NULL, 7, CAST(N'2019-01-01T00:00:00' AS SmallDateTime), N'', N'MoneyFlow.Input.011', N'011 - реализация', NULL, NULL, NULL, 122, 147, NULL, N'Role.Generic.FullName.реализация товаров и услуг;', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (13, 11, NULL, NULL, NULL, 7, CAST(N'2019-01-01T00:00:00' AS SmallDateTime), N'', N'MoneyFlow.Input.012', N'012 - прочая выручка', NULL, NULL, NULL, 125, 147, NULL, N'Role.Generic.FullName.прочая выручка;', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (14, 11, NULL, NULL, NULL, 7, CAST(N'2019-01-01T00:00:00' AS SmallDateTime), N'', N'MoneyFlow.Input.013', N'012 - авансы', NULL, NULL, NULL, 122, 147, NULL, N'Role.Generic.FullName.авансы, полученные от покупателей и заказчиков;', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (15, 11, NULL, NULL, NULL, 7, CAST(N'2019-01-01T00:00:00' AS SmallDateTime), N'', N'MoneyFlow.Input.016', N'016 - прочие поступления', NULL, NULL, NULL, 125, 147, NULL, N'Role.Generic.FullName.прочие поступления;', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (16, 10, NULL, NULL, NULL, NULL, NULL, N'', N'MoneyFlow.Output', N'ДвижениеДенег.Выход', NULL, 1, NULL, NULL, NULL, NULL, N'Role.Generic.FullName.Выбытие;', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (17, 16, NULL, NULL, NULL, 7, CAST(N'2019-01-01T00:00:00' AS SmallDateTime), N'', N'MoneyFlow.Output.021', N'021 - платежи поставщикам', NULL, NULL, NULL, 122, 147, NULL, N'Role.Generic.FullName.платежи поставщикам за товары и услуги;', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (18, 16, NULL, NULL, NULL, 7, CAST(N'2019-01-01T00:00:00' AS SmallDateTime), N'', N'MoneyFlow.Output.022', N'022 - авансы поставщикам', NULL, NULL, NULL, 125, 147, NULL, N'Role.Generic.FullName.авансы, выданные поставщикам товаров и услуг;', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (19, 16, NULL, NULL, NULL, 7, CAST(N'2019-01-01T00:00:00' AS SmallDateTime), N'', N'MoneyFlow.Output.023', N'023 - выплаты по оплате труда', NULL, NULL, NULL, 125, 147, NULL, N'Role.Generic.FullName.выплаты по оплате труда;', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (20, 16, NULL, NULL, NULL, 7, CAST(N'2019-01-01T00:00:00' AS SmallDateTime), N'', N'MoneyFlow.Output.026', N'026 - платежи в бюджет', NULL, NULL, NULL, 122, 147, NULL, N'Role.Generic.FullName.подоходный налог и другие платежи в бюджет;', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (21, 16, NULL, NULL, NULL, 7, CAST(N'2019-01-01T00:00:00' AS SmallDateTime), N'', N'MoneyFlow.Output.027', N'027 - прочие выплаты', NULL, NULL, NULL, 125, 147, NULL, N'Role.Generic.FullName.прочие выплаты;', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (22, 26, NULL, NULL, NULL, NULL, NULL, N'', N'Price', N'Цена', NULL, NULL, NULL, 185, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (23, 22, NULL, NULL, NULL, NULL, NULL, N'', N'Price.Fall', N'Цена.снижение', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (24, 22, NULL, NULL, NULL, NULL, NULL, N'', N'Price.Growth', N'Цена.рост', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (25, 22, NULL, NULL, NULL, NULL, NULL, N'', N'Price.NoChange', N'Цена.без изм', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (26, NULL, NULL, NULL, NULL, 5, NULL, N'', N'Sign', N'SignData', NULL, NULL, NULL, 72, 47, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (27, 26, NULL, NULL, NULL, NULL, NULL, N'', N'Store', N'Склад', NULL, NULL, NULL, 185, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (28, 27, NULL, NULL, NULL, NULL, NULL, N'', N'Store.Input', N'Склад.Приход', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (29, 27, NULL, NULL, NULL, NULL, NULL, N'', N'Store.Output', N'Склад.Расход', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (30, 27, NULL, NULL, NULL, NULL, NULL, N'', N'Store.Storage', N'Склад.Хранение', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (31, 30, NULL, NULL, NULL, NULL, NULL, N'', N'Store.Storage.Input', N'Склад.Хранение.вход', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (32, 30, NULL, NULL, NULL, NULL, NULL, N'', N'Store.Storage.Output', N'Склад.Хранение.выход', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (33, 26, NULL, NULL, NULL, NULL, NULL, N'', N'Tax', N'Налог', NULL, NULL, NULL, 186, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (34, 33, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.Ct', N'Налог.Кредит', NULL, 1, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (35, 33, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.KNP', N'Налог.КНП', NULL, 3, NULL, NULL, 19, NULL, N'Role.Generic.FullName.Начисленные (исчисленные) и иные обязательства в бюджет;', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (36, 35, NULL, NULL, NULL, 7, CAST(N'2020-01-01T00:00:00' AS SmallDateTime), N'', N'Tax.KNP.TaxMode.Main.911', N'911 - обяз-ва в бюджет', NULL, NULL, NULL, 227, 72, NULL, N'Role.Generic.FullName.Начисленные (исчисленные) и иные обязательства в бюджет;', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (37, 35, NULL, NULL, NULL, 7, CAST(N'2020-01-01T00:00:00' AS SmallDateTime), N'', N'Tax.KNP.TaxMode.Main.912', N'912 - пени', NULL, NULL, NULL, 227, 81, NULL, N'Role.Generic.FullName.Пени по обязательствам в бюджет;', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (38, 33, NULL, NULL, NULL, 7, CAST(N'2020-01-01T00:00:00' AS SmallDateTime), N'', N'Tax.KNP.TaxMode.Patent.921', N'921 - обяз-ва в бюджет', NULL, NULL, NULL, 228, 72, NULL, N'Role.Generic.FullName.Начисленные (исчисленные) и иные обязательства в бюджет;', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (39, 35, NULL, NULL, NULL, 7, CAST(N'2020-01-01T00:00:00' AS SmallDateTime), N'', N'Tax.KNP.TaxMode.Patent.922', N'922 - пени', NULL, NULL, NULL, 228, 81, NULL, N'Role.Generic.FullName.Пени по обязательствам в бюджет;', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (40, 35, NULL, NULL, NULL, 7, CAST(N'2020-01-01T00:00:00' AS SmallDateTime), N'', N'Tax.KNP.TaxMode.Simple.931', N'931 - обяз-ва в бюджет', NULL, NULL, NULL, 229, 72, NULL, N'Role.Generic.FullName.Начисленные (исчисленные) и иные обязательства в бюджет;', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (41, 35, NULL, NULL, NULL, 7, CAST(N'2020-01-01T00:00:00' AS SmallDateTime), N'', N'Tax.KNP.TaxMode.Simple.932', N'932 - пени', NULL, NULL, NULL, 229, 81, NULL, N'Role.Generic.FullName.Пени по обязательствам в бюджет;', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (42, 26, NULL, NULL, NULL, NULL, NULL, N'', N'Traffic', N'Транспорт', NULL, NULL, NULL, 185, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (43, 42, NULL, NULL, NULL, NULL, NULL, N'', N'Traffic.Input', N'Транспорт.Вход', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (44, 42, NULL, NULL, NULL, NULL, NULL, N'', N'Traffic.Output', N'Транспорт.Выход', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (45, 42, NULL, NULL, NULL, NULL, NULL, N'', N'Traffic.Transit', N'Транспорт.Транзит', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (46, 45, NULL, NULL, NULL, NULL, NULL, N'', N'Traffic.Transit.Input', N'Транспорт.Транзит.вход', NULL, 43, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (47, 45, NULL, NULL, NULL, NULL, NULL, N'', N'Traffic.Transit.Output', N'Транспорт.Транзит.выход', NULL, 47, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (48, 26, NULL, NULL, NULL, NULL, NULL, N'', N'Work', N'Работа', NULL, NULL, NULL, 185, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (49, 48, NULL, NULL, NULL, NULL, NULL, N'', N'Work.Closing', N'Работа.Закрытие', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (50, 48, NULL, NULL, NULL, NULL, NULL, N'', N'Work.Execution', N'Работа.Выполнение', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Sign] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Sign], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (51, 48, NULL, NULL, NULL, NULL, NULL, N'', N'Work.Plan', N'Работа.План', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Slice] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (1, 13, NULL, NULL, NULL, 7, NULL, N'', N'Accounting', N'учет', NULL, NULL, 122, 72, NULL, N'', 12)
INSERT [dbo].[Slice] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (2, 13, NULL, NULL, NULL, NULL, NULL, N'', N'Adjustment', N'корректировка', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Slice] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (3, 13, NULL, NULL, NULL, NULL, NULL, N'', N'Budget', N'бюджет', NULL, NULL, 122, NULL, NULL, N'', 12)
INSERT [dbo].[Slice] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (4, 13, NULL, NULL, NULL, NULL, NULL, N'', N'Duplicate', N'дубликат', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Slice] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (5, 13, NULL, NULL, NULL, NULL, NULL, N'', N'Fact', N'факт', NULL, NULL, 122, NULL, NULL, N'', 12)
INSERT [dbo].[Slice] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (6, 13, NULL, NULL, NULL, NULL, NULL, N'', N'Forecast', N'прогноз', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Slice] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (7, 13, NULL, NULL, NULL, NULL, NULL, N'', N'Norm', N'норматив', NULL, NULL, 122, NULL, NULL, N'', 12)
INSERT [dbo].[Slice] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (8, 13, NULL, NULL, NULL, NULL, NULL, N'', N'Offer', N'коммерческое предложение', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Slice] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (9, 13, NULL, NULL, NULL, NULL, NULL, N'', N'Plan', N'план', NULL, NULL, 122, NULL, NULL, N'', 12)
INSERT [dbo].[Slice] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (10, 13, NULL, NULL, NULL, NULL, NULL, N'', N'Preorder', N'предварительный заказ', NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Slice] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (11, 13, NULL, NULL, NULL, 7, NULL, N'', N'Report', N'отчет', NULL, NULL, 122, NULL, NULL, N'', 12)
INSERT [dbo].[Slice] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (12, 13, NULL, NULL, NULL, NULL, NULL, N'', N'Request', N'заявка', NULL, NULL, 122, NULL, NULL, N'', 12)
INSERT [dbo].[Slice] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (13, NULL, NULL, NULL, NULL, 5, NULL, N'', N'Slice', N'SliceData', NULL, NULL, 72, 47, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (1, NULL, NULL, NULL, NULL, 7, NULL, N'', N'Tax', N'TaxData', 11, NULL, NULL, 93, 47, 6, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (2, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.Custom', N'Таможенные платежи', NULL, 138, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (3, 2, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.Custom.Base', N'База ТП', NULL, 145, NULL, 212, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (4, 2, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.Custom.Duty', N'Таможенная пошлина', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (5, 2, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.Custom.Fee', N'Таможенный сбор', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (6, 1, NULL, 11, NULL, NULL, NULL, N'', N'Tax.DeductionSalary', N'Удержания из зарплаты', NULL, 152, NULL, 217, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (7, 6, NULL, 11, 11, NULL, NULL, N'', N'Tax.DeductionSalary.Alimony', N'Алименты', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (8, 7, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.DeductionSalary.Alimony.Rate1', N'Ставка алиментов1 (на 1 ребенка)', NULL, NULL, NULL, 122, 188, 30, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (9, 7, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.DeductionSalary.Alimony.Rate2', N'Ставка алиментов2 (на 2 детей)', NULL, NULL, NULL, 125, NULL, 30, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (10, 7, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.DeductionSalary.Alimony.Rate3', N'Ставка алиментов3 (на 3 и более детей)', NULL, NULL, NULL, 125, NULL, 30, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (11, 6, NULL, 11, NULL, NULL, NULL, N'', N'Tax.DeductionSalary.Other', N'Прочие удержания', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (12, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.Depreciation', N'Амортизация', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (13, 12, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.Depreciation.Base', N'База амортизации', NULL, NULL, NULL, 211, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (14, 12, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.DepreciationAccounting', N'Ам-я бухгалтерская', NULL, NULL, NULL, 220, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (15, 14, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.DepreciationAccounting.Rate', N'Ставка аморт-и бухгалтерской', NULL, NULL, NULL, NULL, 188, 30, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (16, 12, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.DepreciationTax', N'Ам-я налоговая', NULL, NULL, 31, 221, 194, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (17, 16, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.DepreciationTax.Rate', N'Ставка аморт-и налоговой', NULL, NULL, NULL, NULL, 188, 30, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (18, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.ExchangeDifference', N'Курсовая разница', NULL, NULL, NULL, 209, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (19, 18, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.ExchangeDifference.Advance', N'КР на авансы', NULL, NULL, NULL, 222, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (20, 18, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.ExchangeDifference.Purchase', N'КР при покупке валюты', NULL, NULL, NULL, 223, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (21, 1, NULL, NULL, 21, NULL, NULL, N'', N'Tax.GFSS', N'ГФСС', NULL, NULL, 47, 77, 186, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (22, 21, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.GFSS.Base', N'База ГФСС', NULL, NULL, NULL, 217, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (23, 21, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.GFSS.KNP.012', N'012 - обяз соц отчисления', NULL, NULL, NULL, 76, 19, NULL, N'Role.Generic.FullName.Обязательные социальные отчисления;', 2)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (24, 21, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.GFSS.Rate', N'Ставка ГФСС', NULL, NULL, NULL, NULL, 188, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (25, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.IncomePersonTax', N'Индивидуальный подоходный налог', NULL, NULL, 47, NULL, 186, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (26, 25, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.IncomePersonTax.Base', N'База ИПН', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (27, 25, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.IncomePersonTax.Base.Deduction.MinSalary', N'Вычет МинЗП из базы ИПН', NULL, NULL, NULL, 122, 180, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (28, 25, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.IncomePersonTax.Base.Deduction.OPV', N'Вычет ОПВ из базы ИПН', NULL, NULL, NULL, 122, 181, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (29, 25, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.IncomePersonTax.KBK.101201', N'101201 - ИПН с доходов, облагаемых у ист выпл', NULL, NULL, NULL, 76, 18, NULL, N'Role.Generic.FullName.Индивидуальный подоходный налог с доходов, облагаемых у источника выплаты;', 2)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (30, 25, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.IncomePersonTax.RateMain', N'Ставка ИПН', NULL, NULL, NULL, NULL, 188, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (31, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.IncomeTax', N'Корпоративный подоходный налог', NULL, 130, NULL, NULL, 194, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (32, 31, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.IncomeTax.Base', N'База КПН', NULL, 21, NULL, 218, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (33, 31, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.IncomeTax.KBK.101110', N'101110 - КПН с ЮЛ, кроме нефт сект', NULL, NULL, NULL, 76, 18, NULL, N'Role.Generic.FullName.Корпоративный подоходный налог с юридических лиц, за исключением поступлений от организаций нефтяного сектора;', 2)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (34, 1, NULL, NULL, 23, NULL, NULL, N'', N'Tax.OSMS', N'ОСМС', NULL, NULL, NULL, 77, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (35, 34, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.OSMS.Base', N'База ОСМС', NULL, NULL, NULL, 217, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (36, 34, NULL, 11, 23, NULL, CAST(N'2020-01-01T00:00:00' AS SmallDateTime), N'', N'Tax.OSMS.EmployeePay', N'Взносы ОСМС', NULL, NULL, 47, NULL, 186, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (37, 36, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.OSMS.EmployeePay.RateMain', N'Ставка взносов ОСМС', NULL, NULL, NULL, NULL, 188, 30, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (38, 34, NULL, 11, 23, NULL, NULL, N'', N'Tax.OSMS.EmployerFee', N'Отчисления ОСМС', NULL, NULL, 47, NULL, 186, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (39, 38, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.OSMS.EmployerFee.RateMain', N'Ставка отчислений ОСМС', NULL, NULL, NULL, NULL, 188, 30, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (40, 1, NULL, NULL, 20, NULL, NULL, N'', N'Tax.Pension', N'Пенсионные платежи', NULL, NULL, NULL, 77, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (41, 40, NULL, 11, NULL, NULL, NULL, N'', N'Tax.Pension.Base', N'База пенсионных платежей', NULL, NULL, NULL, 217, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (42, 40, NULL, 11, NULL, NULL, NULL, N'', N'Tax.Pension.OPPV', N'Обязательные проф пенс взносы', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (43, 40, NULL, 11, 22, NULL, NULL, N'', N'Tax.Pension.OPV', N'ОПВ', NULL, NULL, 47, NULL, 186, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (44, 43, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.Pension.OPV.KNP.010', N'010 - обяз пенс взносы', NULL, NULL, NULL, 76, 19, NULL, N'Role.Generic.FullName.Обязательные пенсионные взносы;', 2)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (45, 43, NULL, 11, 22, NULL, NULL, N'', N'Tax.Pension.OPV.RateMain', N'Ставка ОПВ', NULL, NULL, NULL, NULL, NULL, 30, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (46, 40, NULL, 11, NULL, NULL, NULL, N'', N'Tax.Pension.OPVR', N'ОПВ работодателя', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (47, 1, NULL, 11, NULL, NULL, NULL, N'', N'Tax.Salary', N'Оплата труда', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (48, 47, NULL, 11, NULL, NULL, NULL, N'', N'Tax.Salary.Commission', N'Комиссионные', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (49, 47, NULL, 11, NULL, NULL, NULL, N'', N'Tax.Salary.Extra', N'Премия', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (50, 47, NULL, 11, NULL, NULL, NULL, N'', N'Tax.Salary.Main', N'Оклад', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (51, 47, NULL, 11, NULL, NULL, NULL, N'', N'Tax.Salary.Other', N'Прочие начисления', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (52, 47, NULL, 11, NULL, NULL, NULL, N'', N'Tax.Salary.VacationCompensation', N'Компенсация отпуск', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (53, 47, NULL, 11, NULL, NULL, NULL, N'', N'Tax.Salary.VacationPay', N'Отпускные', NULL, NULL, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (54, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.SN', N'Социальный налог', NULL, NULL, 47, NULL, 186, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (55, 54, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.SN.Base', N'База СН', NULL, NULL, NULL, 217, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (56, 54, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.SN.KBK.103101', N'103101 - соц налог', NULL, NULL, NULL, 76, 18, NULL, N'Role.Generic.FullName.Социальный налог;', 2)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (57, 54, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.SN.Rate', N'Ставка СН', NULL, NULL, NULL, NULL, 188, 30, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (58, 54, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.SN.SNMinusGFSS', N'Корректировка СН на ГФСС', NULL, NULL, 21, NULL, 191, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (59, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.VAT', N'НДС', NULL, NULL, NULL, NULL, 186, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (60, 59, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.VAT.Base', N'База НДС', NULL, NULL, NULL, 218, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (61, 59, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.VAT.Import', N'НДС импорта', NULL, NULL, NULL, NULL, 186, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (62, 61, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.VAT.Import.Base', N'База НДС импорта', NULL, NULL, NULL, 212, 176, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (63, 61, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.VAT.Import.RateMain', N'Осн ставка НДС импорта', NULL, NULL, NULL, 122, 188, 30, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (64, 59, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.VAT.Purchase', N'НДС зачета', NULL, NULL, NULL, 224, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (65, 64, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.VAT.Purchase.RateMain', N'Осн ставка НДС зачета', NULL, NULL, NULL, 122, 188, 30, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (66, 64, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.VAT.Purchase.RateReduce', N'Сниженная ставка НДС зачета', NULL, NULL, NULL, 125, 189, 30, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (67, 59, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.VAT.Sell', N'НДС реализации', NULL, NULL, NULL, 225, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (68, 67, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.VAT.Sell.KBK.105101', N'105101 - НДС на ТРУ на терр РК', NULL, NULL, NULL, 76, 18, NULL, N'Role.Generic.FullName.НДС на произведенные товары, выполненные работы и оказанные услуги на территории РК;', 2)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (69, 67, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.VAT.Sell.RateFree', N'Осв ставка НДС реализации', NULL, NULL, NULL, 125, 187, 30, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (70, 67, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.VAT.Sell.RateMain', N'Осн ставка НДС реализации', NULL, NULL, NULL, NULL, 188, 30, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (71, 67, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.VAT.Sell.RateReduce', N'Сниженная ставка НДС реализации', NULL, NULL, NULL, 125, 189, 30, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (72, 67, NULL, NULL, NULL, NULL, NULL, N'', N'Tax.VAT.Sell.RateZero', N'Нулевая ставка НДС реализации', NULL, NULL, NULL, 125, 190, 30, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (73, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Tax1', N'Налог на транспортные средства', NULL, 136, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (74, 73, NULL, NULL, NULL, NULL, NULL, N'', N'Tax1.KBK.104401', N'104401 - НТС с ЮЛ', NULL, NULL, NULL, 76, 18, NULL, N'Role.Generic.FullName.Налог на транспортные средства с юр лиц;', 2)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (75, 73, NULL, NULL, NULL, NULL, NULL, N'', N'Tax1.KBK.104402', N'104402 - НТС с ФЛ', NULL, NULL, NULL, 76, 18, NULL, N'Role.Generic.FullName.Налог на транспортные средства с физ лиц;', 2)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (76, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Tax2', N'Плата за загрязнение окружающей среды', NULL, 138, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (77, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Tax3', N'Земельный налог', NULL, 135, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Tax] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Tax], [Role], [Info], [Unit], [More], [Mark]) VALUES (78, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Tax5', N'Налог на имущество', NULL, 137, NULL, NULL, NULL, NULL, N'', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (1, NULL, NULL, NULL, NULL, 1, NULL, N'', N'Unit', N'UnitData', 11, NULL, 57, 47, NULL, N'', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (2, 31, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.Account', N'бухсчет', NULL, NULL, 233, NULL, 31, N'Role.Generic.FullName.бухсчет;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (3, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.Box', N'ящ', NULL, NULL, 234, 72, 31, N'Role.Generic.FullName.ящик;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (4, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.CalendarDay', N'кал дн', NULL, NULL, 234, 80, NULL, N'Role.Generic.FullName.календарные дни;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (5, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.Case', N'коробка', NULL, NULL, 234, 72, 31, N'Role.Generic.FullName.коробка;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (6, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.CurrUnit', N'ден ед', NULL, NULL, 234, 72, NULL, N'Role.Generic.FullName.денежных единиц;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (7, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.Day', N'дн', NULL, NULL, 234, 80, NULL, N'Role.Generic.FullName.день;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (8, 31, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.Deal', N'сделка', NULL, NULL, 233, NULL, 31, N'Role.Generic.FullName.сделка;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (9, 1, NULL, NULL, NULL, 5, NULL, N'', N'Unit.Delivery', N'поставка', NULL, NULL, 233, NULL, 31, N'Role.Generic.FullName.поставка;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (10, 17, NULL, NULL, NULL, 5, NULL, N'', N'Unit.Dismissal', N'увольнение', NULL, NULL, 233, NULL, 31, N'Role.Generic.FullName.увольнение;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (11, 31, NULL, NULL, NULL, 5, NULL, N'', N'Unit.Doc', N'док', NULL, NULL, 233, NULL, 31, N'Role.Generic.FullName.документ;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (12, 1, NULL, NULL, NULL, 7, NULL, N'', N'Unit.DocID', N'номер документа', NULL, NULL, 233, NULL, 39, N'Role.Generic.FullName.номер документа;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (13, 6, NULL, NULL, NULL, 7, NULL, N'', N'Unit.EUR', N'EUR', NULL, NULL, 45, NULL, 6, N'Role.Generic.FullName.евро;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (14, 1, NULL, NULL, NULL, 5, NULL, N'', N'Unit.Face', N'лицо', NULL, NULL, 233, NULL, 31, N'Role.Generic.FullName.лицо;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (15, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.HalfYear', N'полугодие', NULL, NULL, 234, 80, NULL, N'Role.Generic.FullName.полугодие;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (16, 17, NULL, NULL, NULL, 5, NULL, N'', N'Unit.Hiring', N'прием на работу', NULL, NULL, 233, NULL, 31, N'Role.Generic.FullName.прием на работу;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (17, 1, NULL, NULL, NULL, 5, NULL, N'', N'Unit.HR', N'HR', NULL, NULL, 233, NULL, 31, N'Role.Generic.FullName.HR;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (18, 31, NULL, NULL, NULL, 5, NULL, N'', N'Unit.InfoBase', N'инф база', NULL, NULL, 233, NULL, 31, N'Role.Generic.FullName.информационная база;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (19, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.Jar', N'банка', NULL, NULL, 234, 72, 31, N'Role.Generic.FullName.банка;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (20, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.Kg', N'кг', NULL, NULL, 234, NULL, NULL, N'Role.Generic.FullName.килограмм;Info.Code.MKEI.166;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (21, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.Kilometer', N'км', NULL, NULL, 234, NULL, NULL, N'Role.Generic.FullName.километр;Info.Code.MKEI.8;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (22, 6, NULL, NULL, NULL, 7, NULL, N'', N'Unit.KZT', N'KZT', NULL, NULL, 45, NULL, NULL, N'Role.Generic.FullName.казахстанский тенге;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (23, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.Litr', N'л', NULL, NULL, 234, NULL, NULL, N'Role.Generic.FullName.литр;Info.Code.MKEI.112;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (24, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.Meter', N'м', NULL, NULL, 234, NULL, NULL, N'Role.Generic.FullName.метр;Info.Code.MKEI.6;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (25, 1, NULL, NULL, NULL, 7, NULL, N'', N'Unit.MinCalcRate', N'МРП', NULL, NULL, 164, 125, NULL, N'Role.Generic.FullName.минимальный расчетный показатель;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (26, 1, NULL, NULL, NULL, 7, NULL, N'', N'Unit.MinSalary', N'МинЗП', NULL, NULL, 164, 126, NULL, N'Role.Generic.FullName.минимальная заработная плата;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (27, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.Month', N'мес', NULL, NULL, 234, 80, NULL, N'Role.Generic.FullName.месяц;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (28, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.Pack', N'уп', NULL, NULL, 234, 72, 31, N'Role.Generic.FullName.упаковка;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (29, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.Packet', N'пач', NULL, NULL, 234, 72, 31, N'Role.Generic.FullName.пачка;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (30, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.Percent', N'%', NULL, NULL, 234, 72, NULL, N'Role.Generic.FullName.процент;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (31, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.Piece', N'шт', NULL, NULL, 234, 72, NULL, N'Role.Generic.FullName.штука;Info.Code.MKEI.796;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (32, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.Position', N'должность', NULL, NULL, 233, NULL, 31, N'Role.Generic.FullName.должность штатного расписания;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (33, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.Product', N'изд', NULL, NULL, 234, 72, 31, N'Role.Generic.FullName.изделие;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (34, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.Quarter', N'кв', NULL, NULL, 234, 80, NULL, N'Role.Generic.FullName.квартал;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (35, 6, NULL, NULL, NULL, 7, NULL, N'', N'Unit.RUB', N'RUB', NULL, NULL, 45, NULL, 6, N'Role.Generic.FullName.российский рубль;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (36, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.Service', N'усл', NULL, NULL, 234, 72, NULL, N'Role.Generic.FullName.услуга;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (37, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.SquareMeter', N'кв м', NULL, NULL, 234, NULL, NULL, N'Role.Generic.FullName.квадратный метр;Info.Code.MKEI.55;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (38, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.T', N'т', NULL, NULL, 234, NULL, NULL, N'Role.Generic.FullName.тонна;Info.Code.MKEI.168;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (39, 31, NULL, NULL, NULL, 5, NULL, N'', N'Unit.Text', N'текст', NULL, NULL, 233, NULL, 31, N'Role.Generic.FullName.текст;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (40, 6, NULL, NULL, NULL, 7, NULL, N'', N'Unit.USD', N'USD', NULL, NULL, 45, NULL, 6, N'Role.Generic.FullName.доллар США;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (41, 1, NULL, NULL, NULL, 5, NULL, N'', N'Unit.User', N'пользователь', NULL, NULL, 233, NULL, NULL, N'Role.Generic.FullName.пользователь;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (42, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.Week', N'нед', NULL, NULL, 234, 80, NULL, N'Role.Generic.FullName.неделя;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (43, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.WorkDay', N'раб дн', NULL, NULL, 234, 80, NULL, N'Role.Generic.FullName.рабочий день;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (44, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.WorkHour', N'раб ч', NULL, NULL, 234, 80, NULL, N'Role.Generic.FullName.рабочий час;Info.Code.MKEI.356;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (45, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit.Year', N'год', NULL, NULL, 234, 80, NULL, N'Role.Generic.FullName.год;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (46, 30, NULL, NULL, NULL, NULL, NULL, N'', N'Unit1', N'%/дн', NULL, NULL, 233, 122, NULL, N'Role.Generic.FullName.%/день;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (47, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit2', N'куб м', NULL, NULL, 234, NULL, NULL, N'Role.Generic.FullName.кубометр;Info.Code.MKEI.113;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (48, 1, NULL, NULL, NULL, NULL, NULL, N'', N'Unit3', N'мм', NULL, NULL, 234, NULL, NULL, N'Role.Generic.FullName.миллиметр;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (49, 31, NULL, NULL, NULL, 5, NULL, N'', N'Unit4', N'рейс', NULL, NULL, 233, NULL, 31, N'Role.Generic.FullName.рейс;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (50, 1, NULL, NULL, NULL, 5, NULL, N'', N'Unit5', N'сервис, логин, пароль', NULL, NULL, 232, 72, NULL, N'Role.Generic.FullName.сервис, логин, пароль;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (51, 17, NULL, NULL, NULL, 5, NULL, N'', N'Unit6', N'взыскание', NULL, NULL, 233, NULL, 31, N'Role.Generic.FullName.взыскание;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (52, 17, NULL, NULL, NULL, 5, NULL, N'', N'Unit7', N'поощрение', NULL, NULL, 233, NULL, 31, N'Role.Generic.FullName.поощрение;', 12)
INSERT [dbo].[Unit] ([Id], [Parent], [Face1], [Face2], [Face], [Slice], [Date1], [Date2], [Code], [Description], [Geo], [Account], [Role], [Info], [Unit], [More], [Mark]) VALUES (53, 17, NULL, NULL, NULL, 5, NULL, N'', N'Unit8', N'прочее кадровое событие', NULL, NULL, 233, NULL, 31, N'Role.Generic.FullName.прочее кадровое событие;', 12)
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [AccountAccount_FK] FOREIGN KEY([Account])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [AccountAccount_FK]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [AccountFace_FK] FOREIGN KEY([Face])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [AccountFace_FK]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [AccountFace1_FK] FOREIGN KEY([Face1])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [AccountFace1_FK]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [AccountFace2_FK] FOREIGN KEY([Face2])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [AccountFace2_FK]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [AccountGeo_FK] FOREIGN KEY([Geo])
REFERENCES [dbo].[Geo] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [AccountGeo_FK]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [AccountInfo_FK] FOREIGN KEY([Info])
REFERENCES [dbo].[Info] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [AccountInfo_FK]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [AccountMark_FK] FOREIGN KEY([Mark])
REFERENCES [dbo].[Mark] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [AccountMark_FK]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [AccountParent_FK] FOREIGN KEY([Parent])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [AccountParent_FK]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [AccountRole_FK] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [AccountRole_FK]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [AccountSign_FK] FOREIGN KEY([Sign])
REFERENCES [dbo].[Sign] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [AccountSign_FK]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [AccountSlice_FK] FOREIGN KEY([Slice])
REFERENCES [dbo].[Slice] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [AccountSlice_FK]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [AccountUnit_FK] FOREIGN KEY([Unit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [AccountUnit_FK]
GO
ALTER TABLE [dbo].[Asset]  WITH CHECK ADD  CONSTRAINT [AssetAccount_FK] FOREIGN KEY([Account])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Asset] CHECK CONSTRAINT [AssetAccount_FK]
GO
ALTER TABLE [dbo].[Asset]  WITH CHECK ADD  CONSTRAINT [AssetAsset_FK] FOREIGN KEY([Asset])
REFERENCES [dbo].[Asset] ([Id])
GO
ALTER TABLE [dbo].[Asset] CHECK CONSTRAINT [AssetAsset_FK]
GO
ALTER TABLE [dbo].[Asset]  WITH CHECK ADD  CONSTRAINT [AssetFace_FK] FOREIGN KEY([Face])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Asset] CHECK CONSTRAINT [AssetFace_FK]
GO
ALTER TABLE [dbo].[Asset]  WITH CHECK ADD  CONSTRAINT [AssetFace1_FK] FOREIGN KEY([Face1])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Asset] CHECK CONSTRAINT [AssetFace1_FK]
GO
ALTER TABLE [dbo].[Asset]  WITH CHECK ADD  CONSTRAINT [AssetFace2_FK] FOREIGN KEY([Face2])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Asset] CHECK CONSTRAINT [AssetFace2_FK]
GO
ALTER TABLE [dbo].[Asset]  WITH CHECK ADD  CONSTRAINT [AssetGeo_FK] FOREIGN KEY([Geo])
REFERENCES [dbo].[Geo] ([Id])
GO
ALTER TABLE [dbo].[Asset] CHECK CONSTRAINT [AssetGeo_FK]
GO
ALTER TABLE [dbo].[Asset]  WITH CHECK ADD  CONSTRAINT [AssetInfo_FK] FOREIGN KEY([Info])
REFERENCES [dbo].[Info] ([Id])
GO
ALTER TABLE [dbo].[Asset] CHECK CONSTRAINT [AssetInfo_FK]
GO
ALTER TABLE [dbo].[Asset]  WITH CHECK ADD  CONSTRAINT [AssetMark_FK] FOREIGN KEY([Mark])
REFERENCES [dbo].[Mark] ([Id])
GO
ALTER TABLE [dbo].[Asset] CHECK CONSTRAINT [AssetMark_FK]
GO
ALTER TABLE [dbo].[Asset]  WITH CHECK ADD  CONSTRAINT [AssetParent_FK] FOREIGN KEY([Parent])
REFERENCES [dbo].[Asset] ([Id])
GO
ALTER TABLE [dbo].[Asset] CHECK CONSTRAINT [AssetParent_FK]
GO
ALTER TABLE [dbo].[Asset]  WITH CHECK ADD  CONSTRAINT [AssetRole_FK] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Asset] CHECK CONSTRAINT [AssetRole_FK]
GO
ALTER TABLE [dbo].[Asset]  WITH CHECK ADD  CONSTRAINT [AssetSlice_FK] FOREIGN KEY([Slice])
REFERENCES [dbo].[Slice] ([Id])
GO
ALTER TABLE [dbo].[Asset] CHECK CONSTRAINT [AssetSlice_FK]
GO
ALTER TABLE [dbo].[Asset]  WITH CHECK ADD  CONSTRAINT [AssetUnit_FK] FOREIGN KEY([Unit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[Asset] CHECK CONSTRAINT [AssetUnit_FK]
GO
ALTER TABLE [dbo].[Deal]  WITH CHECK ADD  CONSTRAINT [DealAccount_FK] FOREIGN KEY([Account])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Deal] CHECK CONSTRAINT [DealAccount_FK]
GO
ALTER TABLE [dbo].[Deal]  WITH CHECK ADD  CONSTRAINT [DealDeal_FK] FOREIGN KEY([Deal])
REFERENCES [dbo].[Deal] ([Id])
GO
ALTER TABLE [dbo].[Deal] CHECK CONSTRAINT [DealDeal_FK]
GO
ALTER TABLE [dbo].[Deal]  WITH CHECK ADD  CONSTRAINT [DealFace_FK] FOREIGN KEY([Face])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Deal] CHECK CONSTRAINT [DealFace_FK]
GO
ALTER TABLE [dbo].[Deal]  WITH CHECK ADD  CONSTRAINT [DealFace1_FK] FOREIGN KEY([Face1])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Deal] CHECK CONSTRAINT [DealFace1_FK]
GO
ALTER TABLE [dbo].[Deal]  WITH CHECK ADD  CONSTRAINT [DealFace2_FK] FOREIGN KEY([Face2])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Deal] CHECK CONSTRAINT [DealFace2_FK]
GO
ALTER TABLE [dbo].[Deal]  WITH CHECK ADD  CONSTRAINT [DealGeo_FK] FOREIGN KEY([Geo])
REFERENCES [dbo].[Geo] ([Id])
GO
ALTER TABLE [dbo].[Deal] CHECK CONSTRAINT [DealGeo_FK]
GO
ALTER TABLE [dbo].[Deal]  WITH CHECK ADD  CONSTRAINT [DealInfo_FK] FOREIGN KEY([Info])
REFERENCES [dbo].[Info] ([Id])
GO
ALTER TABLE [dbo].[Deal] CHECK CONSTRAINT [DealInfo_FK]
GO
ALTER TABLE [dbo].[Deal]  WITH CHECK ADD  CONSTRAINT [DealMark_FK] FOREIGN KEY([Mark])
REFERENCES [dbo].[Mark] ([Id])
GO
ALTER TABLE [dbo].[Deal] CHECK CONSTRAINT [DealMark_FK]
GO
ALTER TABLE [dbo].[Deal]  WITH CHECK ADD  CONSTRAINT [DealParent_FK] FOREIGN KEY([Parent])
REFERENCES [dbo].[Deal] ([Id])
GO
ALTER TABLE [dbo].[Deal] CHECK CONSTRAINT [DealParent_FK]
GO
ALTER TABLE [dbo].[Deal]  WITH CHECK ADD  CONSTRAINT [DealRole_FK] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Deal] CHECK CONSTRAINT [DealRole_FK]
GO
ALTER TABLE [dbo].[Deal]  WITH CHECK ADD  CONSTRAINT [DealSlice_FK] FOREIGN KEY([Slice])
REFERENCES [dbo].[Slice] ([Id])
GO
ALTER TABLE [dbo].[Deal] CHECK CONSTRAINT [DealSlice_FK]
GO
ALTER TABLE [dbo].[Deal]  WITH CHECK ADD  CONSTRAINT [DealUnit_FK] FOREIGN KEY([Unit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[Deal] CHECK CONSTRAINT [DealUnit_FK]
GO
ALTER TABLE [dbo].[Face]  WITH CHECK ADD  CONSTRAINT [FaceAccount_FK] FOREIGN KEY([Account])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Face] CHECK CONSTRAINT [FaceAccount_FK]
GO
ALTER TABLE [dbo].[Face]  WITH CHECK ADD  CONSTRAINT [FaceFace_FK] FOREIGN KEY([Face])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Face] CHECK CONSTRAINT [FaceFace_FK]
GO
ALTER TABLE [dbo].[Face]  WITH CHECK ADD  CONSTRAINT [FaceFace1_FK] FOREIGN KEY([Face1])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Face] CHECK CONSTRAINT [FaceFace1_FK]
GO
ALTER TABLE [dbo].[Face]  WITH CHECK ADD  CONSTRAINT [FaceFace2_FK] FOREIGN KEY([Face2])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Face] CHECK CONSTRAINT [FaceFace2_FK]
GO
ALTER TABLE [dbo].[Face]  WITH CHECK ADD  CONSTRAINT [FaceGeo_FK] FOREIGN KEY([Geo])
REFERENCES [dbo].[Geo] ([Id])
GO
ALTER TABLE [dbo].[Face] CHECK CONSTRAINT [FaceGeo_FK]
GO
ALTER TABLE [dbo].[Face]  WITH CHECK ADD  CONSTRAINT [FaceInfo_FK] FOREIGN KEY([Info])
REFERENCES [dbo].[Info] ([Id])
GO
ALTER TABLE [dbo].[Face] CHECK CONSTRAINT [FaceInfo_FK]
GO
ALTER TABLE [dbo].[Face]  WITH CHECK ADD  CONSTRAINT [FaceMark_FK] FOREIGN KEY([Mark])
REFERENCES [dbo].[Mark] ([Id])
GO
ALTER TABLE [dbo].[Face] CHECK CONSTRAINT [FaceMark_FK]
GO
ALTER TABLE [dbo].[Face]  WITH CHECK ADD  CONSTRAINT [FaceParent_FK] FOREIGN KEY([Parent])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Face] CHECK CONSTRAINT [FaceParent_FK]
GO
ALTER TABLE [dbo].[Face]  WITH CHECK ADD  CONSTRAINT [FaceRole_FK] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Face] CHECK CONSTRAINT [FaceRole_FK]
GO
ALTER TABLE [dbo].[Face]  WITH CHECK ADD  CONSTRAINT [FaceSlice_FK] FOREIGN KEY([Slice])
REFERENCES [dbo].[Slice] ([Id])
GO
ALTER TABLE [dbo].[Face] CHECK CONSTRAINT [FaceSlice_FK]
GO
ALTER TABLE [dbo].[Face]  WITH CHECK ADD  CONSTRAINT [FaceUnit_FK] FOREIGN KEY([Unit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[Face] CHECK CONSTRAINT [FaceUnit_FK]
GO
ALTER TABLE [dbo].[Geo]  WITH CHECK ADD  CONSTRAINT [GeoAccount_FK] FOREIGN KEY([Account])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Geo] CHECK CONSTRAINT [GeoAccount_FK]
GO
ALTER TABLE [dbo].[Geo]  WITH CHECK ADD  CONSTRAINT [GeoFace_FK] FOREIGN KEY([Face])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Geo] CHECK CONSTRAINT [GeoFace_FK]
GO
ALTER TABLE [dbo].[Geo]  WITH CHECK ADD  CONSTRAINT [GeoFace1_FK] FOREIGN KEY([Face1])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Geo] CHECK CONSTRAINT [GeoFace1_FK]
GO
ALTER TABLE [dbo].[Geo]  WITH CHECK ADD  CONSTRAINT [GeoFace2_FK] FOREIGN KEY([Face2])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Geo] CHECK CONSTRAINT [GeoFace2_FK]
GO
ALTER TABLE [dbo].[Geo]  WITH CHECK ADD  CONSTRAINT [GeoGeo_FK] FOREIGN KEY([Geo])
REFERENCES [dbo].[Geo] ([Id])
GO
ALTER TABLE [dbo].[Geo] CHECK CONSTRAINT [GeoGeo_FK]
GO
ALTER TABLE [dbo].[Geo]  WITH CHECK ADD  CONSTRAINT [GeoInfo_FK] FOREIGN KEY([Info])
REFERENCES [dbo].[Info] ([Id])
GO
ALTER TABLE [dbo].[Geo] CHECK CONSTRAINT [GeoInfo_FK]
GO
ALTER TABLE [dbo].[Geo]  WITH CHECK ADD  CONSTRAINT [GeoMark_FK] FOREIGN KEY([Mark])
REFERENCES [dbo].[Mark] ([Id])
GO
ALTER TABLE [dbo].[Geo] CHECK CONSTRAINT [GeoMark_FK]
GO
ALTER TABLE [dbo].[Geo]  WITH CHECK ADD  CONSTRAINT [GeoParent_FK] FOREIGN KEY([Parent])
REFERENCES [dbo].[Geo] ([Id])
GO
ALTER TABLE [dbo].[Geo] CHECK CONSTRAINT [GeoParent_FK]
GO
ALTER TABLE [dbo].[Geo]  WITH CHECK ADD  CONSTRAINT [GeoRole_FK] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Geo] CHECK CONSTRAINT [GeoRole_FK]
GO
ALTER TABLE [dbo].[Geo]  WITH CHECK ADD  CONSTRAINT [GeoSlice_FK] FOREIGN KEY([Slice])
REFERENCES [dbo].[Slice] ([Id])
GO
ALTER TABLE [dbo].[Geo] CHECK CONSTRAINT [GeoSlice_FK]
GO
ALTER TABLE [dbo].[Geo]  WITH CHECK ADD  CONSTRAINT [GeoUnit_FK] FOREIGN KEY([Unit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[Geo] CHECK CONSTRAINT [GeoUnit_FK]
GO
ALTER TABLE [dbo].[Info]  WITH CHECK ADD  CONSTRAINT [InfoAccount_FK] FOREIGN KEY([Account])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Info] CHECK CONSTRAINT [InfoAccount_FK]
GO
ALTER TABLE [dbo].[Info]  WITH CHECK ADD  CONSTRAINT [InfoFace_FK] FOREIGN KEY([Face])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Info] CHECK CONSTRAINT [InfoFace_FK]
GO
ALTER TABLE [dbo].[Info]  WITH CHECK ADD  CONSTRAINT [InfoFace1_FK] FOREIGN KEY([Face1])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Info] CHECK CONSTRAINT [InfoFace1_FK]
GO
ALTER TABLE [dbo].[Info]  WITH CHECK ADD  CONSTRAINT [InfoFace2_FK] FOREIGN KEY([Face2])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Info] CHECK CONSTRAINT [InfoFace2_FK]
GO
ALTER TABLE [dbo].[Info]  WITH CHECK ADD  CONSTRAINT [InfoGeo_FK] FOREIGN KEY([Geo])
REFERENCES [dbo].[Geo] ([Id])
GO
ALTER TABLE [dbo].[Info] CHECK CONSTRAINT [InfoGeo_FK]
GO
ALTER TABLE [dbo].[Info]  WITH CHECK ADD  CONSTRAINT [InfoInfo_FK] FOREIGN KEY([Info])
REFERENCES [dbo].[Info] ([Id])
GO
ALTER TABLE [dbo].[Info] CHECK CONSTRAINT [InfoInfo_FK]
GO
ALTER TABLE [dbo].[Info]  WITH CHECK ADD  CONSTRAINT [InfoMark_FK] FOREIGN KEY([Mark])
REFERENCES [dbo].[Mark] ([Id])
GO
ALTER TABLE [dbo].[Info] CHECK CONSTRAINT [InfoMark_FK]
GO
ALTER TABLE [dbo].[Info]  WITH CHECK ADD  CONSTRAINT [InfoParent_FK] FOREIGN KEY([Parent])
REFERENCES [dbo].[Info] ([Id])
GO
ALTER TABLE [dbo].[Info] CHECK CONSTRAINT [InfoParent_FK]
GO
ALTER TABLE [dbo].[Info]  WITH CHECK ADD  CONSTRAINT [InfoRole_FK] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Info] CHECK CONSTRAINT [InfoRole_FK]
GO
ALTER TABLE [dbo].[Info]  WITH CHECK ADD  CONSTRAINT [InfoSlice_FK] FOREIGN KEY([Slice])
REFERENCES [dbo].[Slice] ([Id])
GO
ALTER TABLE [dbo].[Info] CHECK CONSTRAINT [InfoSlice_FK]
GO
ALTER TABLE [dbo].[Info]  WITH CHECK ADD  CONSTRAINT [InfoUnit_FK] FOREIGN KEY([Unit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[Info] CHECK CONSTRAINT [InfoUnit_FK]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [ItemAccount_FK] FOREIGN KEY([Account])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [ItemAccount_FK]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [ItemFace_FK] FOREIGN KEY([Face])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [ItemFace_FK]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [ItemFace1_FK] FOREIGN KEY([Face1])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [ItemFace1_FK]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [ItemFace2_FK] FOREIGN KEY([Face2])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [ItemFace2_FK]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [ItemGeo_FK] FOREIGN KEY([Geo])
REFERENCES [dbo].[Geo] ([Id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [ItemGeo_FK]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [ItemInfo_FK] FOREIGN KEY([Info])
REFERENCES [dbo].[Info] ([Id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [ItemInfo_FK]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [ItemItem_FK] FOREIGN KEY([Item])
REFERENCES [dbo].[Item] ([Id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [ItemItem_FK]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [ItemMark_FK] FOREIGN KEY([Mark])
REFERENCES [dbo].[Mark] ([Id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [ItemMark_FK]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [ItemParent_FK] FOREIGN KEY([Parent])
REFERENCES [dbo].[Item] ([Id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [ItemParent_FK]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [ItemRole_FK] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [ItemRole_FK]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [ItemSlice_FK] FOREIGN KEY([Slice])
REFERENCES [dbo].[Slice] ([Id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [ItemSlice_FK]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [ItemUnit_FK] FOREIGN KEY([Unit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [ItemUnit_FK]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [LogAccount_FK] FOREIGN KEY([Account])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [LogAccount_FK]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [LogAsset_FK] FOREIGN KEY([Asset])
REFERENCES [dbo].[Asset] ([Id])
GO
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [LogAsset_FK]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [LogDeal_FK] FOREIGN KEY([Deal])
REFERENCES [dbo].[Deal] ([Id])
GO
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [LogDeal_FK]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [LogFace_FK] FOREIGN KEY([Face])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [LogFace_FK]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [LogFace1_FK] FOREIGN KEY([Face1])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [LogFace1_FK]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [LogFace2_FK] FOREIGN KEY([Face2])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [LogFace2_FK]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [LogGeo_FK] FOREIGN KEY([Geo])
REFERENCES [dbo].[Geo] ([Id])
GO
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [LogGeo_FK]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [LogInfo_FK] FOREIGN KEY([Info])
REFERENCES [dbo].[Info] ([Id])
GO
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [LogInfo_FK]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [LogItem_FK] FOREIGN KEY([Item])
REFERENCES [dbo].[Item] ([Id])
GO
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [LogItem_FK]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [LogLog_FK] FOREIGN KEY([Log])
REFERENCES [dbo].[Log] ([Id])
GO
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [LogLog_FK]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [LogMark_FK] FOREIGN KEY([Mark])
REFERENCES [dbo].[Mark] ([Id])
GO
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [LogMark_FK]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [LogMeter_FK] FOREIGN KEY([Meter])
REFERENCES [dbo].[Meter] ([Id])
GO
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [LogMeter_FK]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [LogParent_FK] FOREIGN KEY([Parent])
REFERENCES [dbo].[Log] ([Id])
GO
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [LogParent_FK]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [LogPrice_FK] FOREIGN KEY([Price])
REFERENCES [dbo].[Price] ([Id])
GO
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [LogPrice_FK]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [LogProcess_FK] FOREIGN KEY([Process])
REFERENCES [dbo].[Process] ([Id])
GO
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [LogProcess_FK]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [LogRole_FK] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [LogRole_FK]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [LogSign_FK] FOREIGN KEY([Sign])
REFERENCES [dbo].[Sign] ([Id])
GO
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [LogSign_FK]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [LogSlice_FK] FOREIGN KEY([Slice])
REFERENCES [dbo].[Slice] ([Id])
GO
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [LogSlice_FK]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [LogTax_FK] FOREIGN KEY([Tax])
REFERENCES [dbo].[Tax] ([Id])
GO
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [LogTax_FK]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [LogUnit_FK] FOREIGN KEY([Unit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [LogUnit_FK]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [MarkAccount_FK] FOREIGN KEY([Account])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [MarkAccount_FK]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [MarkFace_FK] FOREIGN KEY([Face])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [MarkFace_FK]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [MarkFace1_FK] FOREIGN KEY([Face1])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [MarkFace1_FK]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [MarkFace2_FK] FOREIGN KEY([Face2])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [MarkFace2_FK]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [MarkGeo_FK] FOREIGN KEY([Geo])
REFERENCES [dbo].[Geo] ([Id])
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [MarkGeo_FK]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [MarkInfo_FK] FOREIGN KEY([Info])
REFERENCES [dbo].[Info] ([Id])
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [MarkInfo_FK]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [MarkMark_FK] FOREIGN KEY([Mark])
REFERENCES [dbo].[Mark] ([Id])
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [MarkMark_FK]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [MarkParent_FK] FOREIGN KEY([Parent])
REFERENCES [dbo].[Mark] ([Id])
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [MarkParent_FK]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [MarkRole_FK] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [MarkRole_FK]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [MarkSlice_FK] FOREIGN KEY([Slice])
REFERENCES [dbo].[Slice] ([Id])
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [MarkSlice_FK]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [MarkUnit_FK] FOREIGN KEY([Unit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [MarkUnit_FK]
GO
ALTER TABLE [dbo].[Meter]  WITH CHECK ADD  CONSTRAINT [MeterAccount_FK] FOREIGN KEY([Account])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Meter] CHECK CONSTRAINT [MeterAccount_FK]
GO
ALTER TABLE [dbo].[Meter]  WITH CHECK ADD  CONSTRAINT [MeterFace_FK] FOREIGN KEY([Face])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Meter] CHECK CONSTRAINT [MeterFace_FK]
GO
ALTER TABLE [dbo].[Meter]  WITH CHECK ADD  CONSTRAINT [MeterFace1_FK] FOREIGN KEY([Face1])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Meter] CHECK CONSTRAINT [MeterFace1_FK]
GO
ALTER TABLE [dbo].[Meter]  WITH CHECK ADD  CONSTRAINT [MeterFace2_FK] FOREIGN KEY([Face2])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Meter] CHECK CONSTRAINT [MeterFace2_FK]
GO
ALTER TABLE [dbo].[Meter]  WITH CHECK ADD  CONSTRAINT [MeterGeo_FK] FOREIGN KEY([Geo])
REFERENCES [dbo].[Geo] ([Id])
GO
ALTER TABLE [dbo].[Meter] CHECK CONSTRAINT [MeterGeo_FK]
GO
ALTER TABLE [dbo].[Meter]  WITH CHECK ADD  CONSTRAINT [MeterInfo_FK] FOREIGN KEY([Info])
REFERENCES [dbo].[Info] ([Id])
GO
ALTER TABLE [dbo].[Meter] CHECK CONSTRAINT [MeterInfo_FK]
GO
ALTER TABLE [dbo].[Meter]  WITH CHECK ADD  CONSTRAINT [MeterMark_FK] FOREIGN KEY([Mark])
REFERENCES [dbo].[Mark] ([Id])
GO
ALTER TABLE [dbo].[Meter] CHECK CONSTRAINT [MeterMark_FK]
GO
ALTER TABLE [dbo].[Meter]  WITH CHECK ADD  CONSTRAINT [MeterMeter_FK] FOREIGN KEY([Meter])
REFERENCES [dbo].[Meter] ([Id])
GO
ALTER TABLE [dbo].[Meter] CHECK CONSTRAINT [MeterMeter_FK]
GO
ALTER TABLE [dbo].[Meter]  WITH CHECK ADD  CONSTRAINT [MeterParent_FK] FOREIGN KEY([Parent])
REFERENCES [dbo].[Meter] ([Id])
GO
ALTER TABLE [dbo].[Meter] CHECK CONSTRAINT [MeterParent_FK]
GO
ALTER TABLE [dbo].[Meter]  WITH CHECK ADD  CONSTRAINT [MeterRole_FK] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Meter] CHECK CONSTRAINT [MeterRole_FK]
GO
ALTER TABLE [dbo].[Meter]  WITH CHECK ADD  CONSTRAINT [MeterSlice_FK] FOREIGN KEY([Slice])
REFERENCES [dbo].[Slice] ([Id])
GO
ALTER TABLE [dbo].[Meter] CHECK CONSTRAINT [MeterSlice_FK]
GO
ALTER TABLE [dbo].[Meter]  WITH CHECK ADD  CONSTRAINT [MeterUnit_FK] FOREIGN KEY([Unit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[Meter] CHECK CONSTRAINT [MeterUnit_FK]
GO
ALTER TABLE [dbo].[Price]  WITH CHECK ADD  CONSTRAINT [PriceAccount_FK] FOREIGN KEY([Account])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Price] CHECK CONSTRAINT [PriceAccount_FK]
GO
ALTER TABLE [dbo].[Price]  WITH CHECK ADD  CONSTRAINT [PriceFace_FK] FOREIGN KEY([Face])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Price] CHECK CONSTRAINT [PriceFace_FK]
GO
ALTER TABLE [dbo].[Price]  WITH CHECK ADD  CONSTRAINT [PriceFace1_FK] FOREIGN KEY([Face1])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Price] CHECK CONSTRAINT [PriceFace1_FK]
GO
ALTER TABLE [dbo].[Price]  WITH CHECK ADD  CONSTRAINT [PriceFace2_FK] FOREIGN KEY([Face2])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Price] CHECK CONSTRAINT [PriceFace2_FK]
GO
ALTER TABLE [dbo].[Price]  WITH CHECK ADD  CONSTRAINT [PriceGeo_FK] FOREIGN KEY([Geo])
REFERENCES [dbo].[Geo] ([Id])
GO
ALTER TABLE [dbo].[Price] CHECK CONSTRAINT [PriceGeo_FK]
GO
ALTER TABLE [dbo].[Price]  WITH CHECK ADD  CONSTRAINT [PriceInfo_FK] FOREIGN KEY([Info])
REFERENCES [dbo].[Info] ([Id])
GO
ALTER TABLE [dbo].[Price] CHECK CONSTRAINT [PriceInfo_FK]
GO
ALTER TABLE [dbo].[Price]  WITH CHECK ADD  CONSTRAINT [PriceMark_FK] FOREIGN KEY([Mark])
REFERENCES [dbo].[Mark] ([Id])
GO
ALTER TABLE [dbo].[Price] CHECK CONSTRAINT [PriceMark_FK]
GO
ALTER TABLE [dbo].[Price]  WITH CHECK ADD  CONSTRAINT [PriceParent_FK] FOREIGN KEY([Parent])
REFERENCES [dbo].[Price] ([Id])
GO
ALTER TABLE [dbo].[Price] CHECK CONSTRAINT [PriceParent_FK]
GO
ALTER TABLE [dbo].[Price]  WITH CHECK ADD  CONSTRAINT [PricePrice_FK] FOREIGN KEY([Price])
REFERENCES [dbo].[Price] ([Id])
GO
ALTER TABLE [dbo].[Price] CHECK CONSTRAINT [PricePrice_FK]
GO
ALTER TABLE [dbo].[Price]  WITH CHECK ADD  CONSTRAINT [PriceRole_FK] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Price] CHECK CONSTRAINT [PriceRole_FK]
GO
ALTER TABLE [dbo].[Price]  WITH CHECK ADD  CONSTRAINT [PriceSlice_FK] FOREIGN KEY([Slice])
REFERENCES [dbo].[Slice] ([Id])
GO
ALTER TABLE [dbo].[Price] CHECK CONSTRAINT [PriceSlice_FK]
GO
ALTER TABLE [dbo].[Price]  WITH CHECK ADD  CONSTRAINT [PriceUnit_FK] FOREIGN KEY([Unit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[Price] CHECK CONSTRAINT [PriceUnit_FK]
GO
ALTER TABLE [dbo].[Process]  WITH CHECK ADD  CONSTRAINT [ProcessAccount_FK] FOREIGN KEY([Account])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Process] CHECK CONSTRAINT [ProcessAccount_FK]
GO
ALTER TABLE [dbo].[Process]  WITH CHECK ADD  CONSTRAINT [ProcessAsset_FK] FOREIGN KEY([Asset])
REFERENCES [dbo].[Asset] ([Id])
GO
ALTER TABLE [dbo].[Process] CHECK CONSTRAINT [ProcessAsset_FK]
GO
ALTER TABLE [dbo].[Process]  WITH CHECK ADD  CONSTRAINT [ProcessDeal_FK] FOREIGN KEY([Deal])
REFERENCES [dbo].[Deal] ([Id])
GO
ALTER TABLE [dbo].[Process] CHECK CONSTRAINT [ProcessDeal_FK]
GO
ALTER TABLE [dbo].[Process]  WITH CHECK ADD  CONSTRAINT [ProcessFace_FK] FOREIGN KEY([Face])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Process] CHECK CONSTRAINT [ProcessFace_FK]
GO
ALTER TABLE [dbo].[Process]  WITH CHECK ADD  CONSTRAINT [ProcessFace1_FK] FOREIGN KEY([Face1])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Process] CHECK CONSTRAINT [ProcessFace1_FK]
GO
ALTER TABLE [dbo].[Process]  WITH CHECK ADD  CONSTRAINT [ProcessFace2_FK] FOREIGN KEY([Face2])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Process] CHECK CONSTRAINT [ProcessFace2_FK]
GO
ALTER TABLE [dbo].[Process]  WITH CHECK ADD  CONSTRAINT [ProcessGeo_FK] FOREIGN KEY([Geo])
REFERENCES [dbo].[Geo] ([Id])
GO
ALTER TABLE [dbo].[Process] CHECK CONSTRAINT [ProcessGeo_FK]
GO
ALTER TABLE [dbo].[Process]  WITH CHECK ADD  CONSTRAINT [ProcessInfo_FK] FOREIGN KEY([Info])
REFERENCES [dbo].[Info] ([Id])
GO
ALTER TABLE [dbo].[Process] CHECK CONSTRAINT [ProcessInfo_FK]
GO
ALTER TABLE [dbo].[Process]  WITH CHECK ADD  CONSTRAINT [ProcessItem_FK] FOREIGN KEY([Item])
REFERENCES [dbo].[Item] ([Id])
GO
ALTER TABLE [dbo].[Process] CHECK CONSTRAINT [ProcessItem_FK]
GO
ALTER TABLE [dbo].[Process]  WITH CHECK ADD  CONSTRAINT [ProcessLog_FK] FOREIGN KEY([Log])
REFERENCES [dbo].[Log] ([Id])
GO
ALTER TABLE [dbo].[Process] CHECK CONSTRAINT [ProcessLog_FK]
GO
ALTER TABLE [dbo].[Process]  WITH CHECK ADD  CONSTRAINT [ProcessLog1_FK] FOREIGN KEY([Log1])
REFERENCES [dbo].[Log] ([Id])
GO
ALTER TABLE [dbo].[Process] CHECK CONSTRAINT [ProcessLog1_FK]
GO
ALTER TABLE [dbo].[Process]  WITH CHECK ADD  CONSTRAINT [ProcessMark_FK] FOREIGN KEY([Mark])
REFERENCES [dbo].[Mark] ([Id])
GO
ALTER TABLE [dbo].[Process] CHECK CONSTRAINT [ProcessMark_FK]
GO
ALTER TABLE [dbo].[Process]  WITH CHECK ADD  CONSTRAINT [ProcessMeter_FK] FOREIGN KEY([Meter])
REFERENCES [dbo].[Meter] ([Id])
GO
ALTER TABLE [dbo].[Process] CHECK CONSTRAINT [ProcessMeter_FK]
GO
ALTER TABLE [dbo].[Process]  WITH CHECK ADD  CONSTRAINT [ProcessParent_FK] FOREIGN KEY([Parent])
REFERENCES [dbo].[Process] ([Id])
GO
ALTER TABLE [dbo].[Process] CHECK CONSTRAINT [ProcessParent_FK]
GO
ALTER TABLE [dbo].[Process]  WITH CHECK ADD  CONSTRAINT [ProcessPrice_FK] FOREIGN KEY([Price])
REFERENCES [dbo].[Price] ([Id])
GO
ALTER TABLE [dbo].[Process] CHECK CONSTRAINT [ProcessPrice_FK]
GO
ALTER TABLE [dbo].[Process]  WITH CHECK ADD  CONSTRAINT [ProcessProcess_FK] FOREIGN KEY([Process])
REFERENCES [dbo].[Process] ([Id])
GO
ALTER TABLE [dbo].[Process] CHECK CONSTRAINT [ProcessProcess_FK]
GO
ALTER TABLE [dbo].[Process]  WITH CHECK ADD  CONSTRAINT [ProcessProcess1_FK] FOREIGN KEY([Process1])
REFERENCES [dbo].[Process] ([Id])
GO
ALTER TABLE [dbo].[Process] CHECK CONSTRAINT [ProcessProcess1_FK]
GO
ALTER TABLE [dbo].[Process]  WITH CHECK ADD  CONSTRAINT [ProcessRole_FK] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Process] CHECK CONSTRAINT [ProcessRole_FK]
GO
ALTER TABLE [dbo].[Process]  WITH CHECK ADD  CONSTRAINT [ProcessSign_FK] FOREIGN KEY([Sign])
REFERENCES [dbo].[Sign] ([Id])
GO
ALTER TABLE [dbo].[Process] CHECK CONSTRAINT [ProcessSign_FK]
GO
ALTER TABLE [dbo].[Process]  WITH CHECK ADD  CONSTRAINT [ProcessSlice_FK] FOREIGN KEY([Slice])
REFERENCES [dbo].[Slice] ([Id])
GO
ALTER TABLE [dbo].[Process] CHECK CONSTRAINT [ProcessSlice_FK]
GO
ALTER TABLE [dbo].[Process]  WITH CHECK ADD  CONSTRAINT [ProcessTax_FK] FOREIGN KEY([Tax])
REFERENCES [dbo].[Tax] ([Id])
GO
ALTER TABLE [dbo].[Process] CHECK CONSTRAINT [ProcessTax_FK]
GO
ALTER TABLE [dbo].[Process]  WITH CHECK ADD  CONSTRAINT [ProcessUnit_FK] FOREIGN KEY([Unit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[Process] CHECK CONSTRAINT [ProcessUnit_FK]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [ReportAccount_FK] FOREIGN KEY([Account])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [ReportAccount_FK]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [ReportFace_FK] FOREIGN KEY([Face])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [ReportFace_FK]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [ReportFace1_FK] FOREIGN KEY([Face1])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [ReportFace1_FK]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [ReportFace2_FK] FOREIGN KEY([Face2])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [ReportFace2_FK]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [ReportGeo_FK] FOREIGN KEY([Geo])
REFERENCES [dbo].[Geo] ([Id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [ReportGeo_FK]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [ReportInfo_FK] FOREIGN KEY([Info])
REFERENCES [dbo].[Info] ([Id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [ReportInfo_FK]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [ReportMark_FK] FOREIGN KEY([Mark])
REFERENCES [dbo].[Mark] ([Id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [ReportMark_FK]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [ReportParent_FK] FOREIGN KEY([Parent])
REFERENCES [dbo].[Report] ([Id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [ReportParent_FK]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [ReportReport_FK] FOREIGN KEY([Report])
REFERENCES [dbo].[Report] ([Id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [ReportReport_FK]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [ReportRole_FK] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [ReportRole_FK]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [ReportSlice_FK] FOREIGN KEY([Slice])
REFERENCES [dbo].[Slice] ([Id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [ReportSlice_FK]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [ReportUnit_FK] FOREIGN KEY([Unit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [ReportUnit_FK]
GO
ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [RoleAccount_FK] FOREIGN KEY([Account])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [RoleAccount_FK]
GO
ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [RoleFace_FK] FOREIGN KEY([Face])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [RoleFace_FK]
GO
ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [RoleFace1_FK] FOREIGN KEY([Face1])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [RoleFace1_FK]
GO
ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [RoleFace2_FK] FOREIGN KEY([Face2])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [RoleFace2_FK]
GO
ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [RoleGeo_FK] FOREIGN KEY([Geo])
REFERENCES [dbo].[Geo] ([Id])
GO
ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [RoleGeo_FK]
GO
ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [RoleInfo_FK] FOREIGN KEY([Info])
REFERENCES [dbo].[Info] ([Id])
GO
ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [RoleInfo_FK]
GO
ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [RoleMark_FK] FOREIGN KEY([Mark])
REFERENCES [dbo].[Mark] ([Id])
GO
ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [RoleMark_FK]
GO
ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [RoleParent_FK] FOREIGN KEY([Parent])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [RoleParent_FK]
GO
ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [RoleRole_FK] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [RoleRole_FK]
GO
ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [RoleSlice_FK] FOREIGN KEY([Slice])
REFERENCES [dbo].[Slice] ([Id])
GO
ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [RoleSlice_FK]
GO
ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [RoleUnit_FK] FOREIGN KEY([Unit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [RoleUnit_FK]
GO
ALTER TABLE [dbo].[Sign]  WITH CHECK ADD  CONSTRAINT [SignAccount_FK] FOREIGN KEY([Account])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Sign] CHECK CONSTRAINT [SignAccount_FK]
GO
ALTER TABLE [dbo].[Sign]  WITH CHECK ADD  CONSTRAINT [SignFace_FK] FOREIGN KEY([Face])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Sign] CHECK CONSTRAINT [SignFace_FK]
GO
ALTER TABLE [dbo].[Sign]  WITH CHECK ADD  CONSTRAINT [SignFace1_FK] FOREIGN KEY([Face1])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Sign] CHECK CONSTRAINT [SignFace1_FK]
GO
ALTER TABLE [dbo].[Sign]  WITH CHECK ADD  CONSTRAINT [SignFace2_FK] FOREIGN KEY([Face2])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Sign] CHECK CONSTRAINT [SignFace2_FK]
GO
ALTER TABLE [dbo].[Sign]  WITH CHECK ADD  CONSTRAINT [SignGeo_FK] FOREIGN KEY([Geo])
REFERENCES [dbo].[Geo] ([Id])
GO
ALTER TABLE [dbo].[Sign] CHECK CONSTRAINT [SignGeo_FK]
GO
ALTER TABLE [dbo].[Sign]  WITH CHECK ADD  CONSTRAINT [SignInfo_FK] FOREIGN KEY([Info])
REFERENCES [dbo].[Info] ([Id])
GO
ALTER TABLE [dbo].[Sign] CHECK CONSTRAINT [SignInfo_FK]
GO
ALTER TABLE [dbo].[Sign]  WITH CHECK ADD  CONSTRAINT [SignMark_FK] FOREIGN KEY([Mark])
REFERENCES [dbo].[Mark] ([Id])
GO
ALTER TABLE [dbo].[Sign] CHECK CONSTRAINT [SignMark_FK]
GO
ALTER TABLE [dbo].[Sign]  WITH CHECK ADD  CONSTRAINT [SignParent_FK] FOREIGN KEY([Parent])
REFERENCES [dbo].[Sign] ([Id])
GO
ALTER TABLE [dbo].[Sign] CHECK CONSTRAINT [SignParent_FK]
GO
ALTER TABLE [dbo].[Sign]  WITH CHECK ADD  CONSTRAINT [SignRole_FK] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Sign] CHECK CONSTRAINT [SignRole_FK]
GO
ALTER TABLE [dbo].[Sign]  WITH CHECK ADD  CONSTRAINT [SignSign_FK] FOREIGN KEY([Sign])
REFERENCES [dbo].[Sign] ([Id])
GO
ALTER TABLE [dbo].[Sign] CHECK CONSTRAINT [SignSign_FK]
GO
ALTER TABLE [dbo].[Sign]  WITH CHECK ADD  CONSTRAINT [SignSlice_FK] FOREIGN KEY([Slice])
REFERENCES [dbo].[Slice] ([Id])
GO
ALTER TABLE [dbo].[Sign] CHECK CONSTRAINT [SignSlice_FK]
GO
ALTER TABLE [dbo].[Sign]  WITH CHECK ADD  CONSTRAINT [SignUnit_FK] FOREIGN KEY([Unit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[Sign] CHECK CONSTRAINT [SignUnit_FK]
GO
ALTER TABLE [dbo].[Slice]  WITH CHECK ADD  CONSTRAINT [SliceAccount_FK] FOREIGN KEY([Account])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Slice] CHECK CONSTRAINT [SliceAccount_FK]
GO
ALTER TABLE [dbo].[Slice]  WITH CHECK ADD  CONSTRAINT [SliceFace_FK] FOREIGN KEY([Face])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Slice] CHECK CONSTRAINT [SliceFace_FK]
GO
ALTER TABLE [dbo].[Slice]  WITH CHECK ADD  CONSTRAINT [SliceFace1_FK] FOREIGN KEY([Face1])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Slice] CHECK CONSTRAINT [SliceFace1_FK]
GO
ALTER TABLE [dbo].[Slice]  WITH CHECK ADD  CONSTRAINT [SliceFace2_FK] FOREIGN KEY([Face2])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Slice] CHECK CONSTRAINT [SliceFace2_FK]
GO
ALTER TABLE [dbo].[Slice]  WITH CHECK ADD  CONSTRAINT [SliceGeo_FK] FOREIGN KEY([Geo])
REFERENCES [dbo].[Geo] ([Id])
GO
ALTER TABLE [dbo].[Slice] CHECK CONSTRAINT [SliceGeo_FK]
GO
ALTER TABLE [dbo].[Slice]  WITH CHECK ADD  CONSTRAINT [SliceInfo_FK] FOREIGN KEY([Info])
REFERENCES [dbo].[Info] ([Id])
GO
ALTER TABLE [dbo].[Slice] CHECK CONSTRAINT [SliceInfo_FK]
GO
ALTER TABLE [dbo].[Slice]  WITH CHECK ADD  CONSTRAINT [SliceMark_FK] FOREIGN KEY([Mark])
REFERENCES [dbo].[Mark] ([Id])
GO
ALTER TABLE [dbo].[Slice] CHECK CONSTRAINT [SliceMark_FK]
GO
ALTER TABLE [dbo].[Slice]  WITH CHECK ADD  CONSTRAINT [SliceParent_FK] FOREIGN KEY([Parent])
REFERENCES [dbo].[Slice] ([Id])
GO
ALTER TABLE [dbo].[Slice] CHECK CONSTRAINT [SliceParent_FK]
GO
ALTER TABLE [dbo].[Slice]  WITH CHECK ADD  CONSTRAINT [SliceRole_FK] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Slice] CHECK CONSTRAINT [SliceRole_FK]
GO
ALTER TABLE [dbo].[Slice]  WITH CHECK ADD  CONSTRAINT [SliceSlice_FK] FOREIGN KEY([Slice])
REFERENCES [dbo].[Slice] ([Id])
GO
ALTER TABLE [dbo].[Slice] CHECK CONSTRAINT [SliceSlice_FK]
GO
ALTER TABLE [dbo].[Slice]  WITH CHECK ADD  CONSTRAINT [SliceUnit_FK] FOREIGN KEY([Unit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[Slice] CHECK CONSTRAINT [SliceUnit_FK]
GO
ALTER TABLE [dbo].[Tax]  WITH CHECK ADD  CONSTRAINT [TaxAccount_FK] FOREIGN KEY([Account])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Tax] CHECK CONSTRAINT [TaxAccount_FK]
GO
ALTER TABLE [dbo].[Tax]  WITH CHECK ADD  CONSTRAINT [TaxFace_FK] FOREIGN KEY([Face])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Tax] CHECK CONSTRAINT [TaxFace_FK]
GO
ALTER TABLE [dbo].[Tax]  WITH CHECK ADD  CONSTRAINT [TaxFace1_FK] FOREIGN KEY([Face1])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Tax] CHECK CONSTRAINT [TaxFace1_FK]
GO
ALTER TABLE [dbo].[Tax]  WITH CHECK ADD  CONSTRAINT [TaxFace2_FK] FOREIGN KEY([Face2])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Tax] CHECK CONSTRAINT [TaxFace2_FK]
GO
ALTER TABLE [dbo].[Tax]  WITH CHECK ADD  CONSTRAINT [TaxGeo_FK] FOREIGN KEY([Geo])
REFERENCES [dbo].[Geo] ([Id])
GO
ALTER TABLE [dbo].[Tax] CHECK CONSTRAINT [TaxGeo_FK]
GO
ALTER TABLE [dbo].[Tax]  WITH CHECK ADD  CONSTRAINT [TaxInfo_FK] FOREIGN KEY([Info])
REFERENCES [dbo].[Info] ([Id])
GO
ALTER TABLE [dbo].[Tax] CHECK CONSTRAINT [TaxInfo_FK]
GO
ALTER TABLE [dbo].[Tax]  WITH CHECK ADD  CONSTRAINT [TaxMark_FK] FOREIGN KEY([Mark])
REFERENCES [dbo].[Mark] ([Id])
GO
ALTER TABLE [dbo].[Tax] CHECK CONSTRAINT [TaxMark_FK]
GO
ALTER TABLE [dbo].[Tax]  WITH CHECK ADD  CONSTRAINT [TaxParent_FK] FOREIGN KEY([Parent])
REFERENCES [dbo].[Tax] ([Id])
GO
ALTER TABLE [dbo].[Tax] CHECK CONSTRAINT [TaxParent_FK]
GO
ALTER TABLE [dbo].[Tax]  WITH CHECK ADD  CONSTRAINT [TaxRole_FK] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Tax] CHECK CONSTRAINT [TaxRole_FK]
GO
ALTER TABLE [dbo].[Tax]  WITH CHECK ADD  CONSTRAINT [TaxSlice_FK] FOREIGN KEY([Slice])
REFERENCES [dbo].[Slice] ([Id])
GO
ALTER TABLE [dbo].[Tax] CHECK CONSTRAINT [TaxSlice_FK]
GO
ALTER TABLE [dbo].[Tax]  WITH CHECK ADD  CONSTRAINT [TaxTax_FK] FOREIGN KEY([Tax])
REFERENCES [dbo].[Tax] ([Id])
GO
ALTER TABLE [dbo].[Tax] CHECK CONSTRAINT [TaxTax_FK]
GO
ALTER TABLE [dbo].[Tax]  WITH CHECK ADD  CONSTRAINT [TaxUnit_FK] FOREIGN KEY([Unit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[Tax] CHECK CONSTRAINT [TaxUnit_FK]
GO
ALTER TABLE [dbo].[Unit]  WITH CHECK ADD  CONSTRAINT [UnitAccount_FK] FOREIGN KEY([Account])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Unit] CHECK CONSTRAINT [UnitAccount_FK]
GO
ALTER TABLE [dbo].[Unit]  WITH CHECK ADD  CONSTRAINT [UnitFace_FK] FOREIGN KEY([Face])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Unit] CHECK CONSTRAINT [UnitFace_FK]
GO
ALTER TABLE [dbo].[Unit]  WITH CHECK ADD  CONSTRAINT [UnitFace1_FK] FOREIGN KEY([Face1])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Unit] CHECK CONSTRAINT [UnitFace1_FK]
GO
ALTER TABLE [dbo].[Unit]  WITH CHECK ADD  CONSTRAINT [UnitFace2_FK] FOREIGN KEY([Face2])
REFERENCES [dbo].[Face] ([Id])
GO
ALTER TABLE [dbo].[Unit] CHECK CONSTRAINT [UnitFace2_FK]
GO
ALTER TABLE [dbo].[Unit]  WITH CHECK ADD  CONSTRAINT [UnitGeo_FK] FOREIGN KEY([Geo])
REFERENCES [dbo].[Geo] ([Id])
GO
ALTER TABLE [dbo].[Unit] CHECK CONSTRAINT [UnitGeo_FK]
GO
ALTER TABLE [dbo].[Unit]  WITH CHECK ADD  CONSTRAINT [UnitInfo_FK] FOREIGN KEY([Info])
REFERENCES [dbo].[Info] ([Id])
GO
ALTER TABLE [dbo].[Unit] CHECK CONSTRAINT [UnitInfo_FK]
GO
ALTER TABLE [dbo].[Unit]  WITH CHECK ADD  CONSTRAINT [UnitMark_FK] FOREIGN KEY([Mark])
REFERENCES [dbo].[Mark] ([Id])
GO
ALTER TABLE [dbo].[Unit] CHECK CONSTRAINT [UnitMark_FK]
GO
ALTER TABLE [dbo].[Unit]  WITH CHECK ADD  CONSTRAINT [UnitParent_FK] FOREIGN KEY([Parent])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[Unit] CHECK CONSTRAINT [UnitParent_FK]
GO
ALTER TABLE [dbo].[Unit]  WITH CHECK ADD  CONSTRAINT [UnitRole_FK] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Unit] CHECK CONSTRAINT [UnitRole_FK]
GO
ALTER TABLE [dbo].[Unit]  WITH CHECK ADD  CONSTRAINT [UnitSlice_FK] FOREIGN KEY([Slice])
REFERENCES [dbo].[Slice] ([Id])
GO
ALTER TABLE [dbo].[Unit] CHECK CONSTRAINT [UnitSlice_FK]
GO
ALTER TABLE [dbo].[Unit]  WITH CHECK ADD  CONSTRAINT [UnitUnit_FK] FOREIGN KEY([Unit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[Unit] CHECK CONSTRAINT [UnitUnit_FK]
GO
USE [master]
GO
ALTER DATABASE [UniBase1] SET  READ_WRITE 
GO
