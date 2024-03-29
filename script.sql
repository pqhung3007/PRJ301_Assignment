USE [master]
GO
/****** Object:  Database [CampingProject]    Script Date: 23/03/2022 08:59:49 ******/
CREATE DATABASE [CampingProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CampingProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CampingProject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CampingProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CampingProject_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CampingProject] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CampingProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CampingProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CampingProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CampingProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CampingProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CampingProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [CampingProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CampingProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CampingProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CampingProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CampingProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CampingProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CampingProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CampingProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CampingProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CampingProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CampingProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CampingProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CampingProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CampingProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CampingProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CampingProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CampingProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CampingProject] SET RECOVERY FULL 
GO
ALTER DATABASE [CampingProject] SET  MULTI_USER 
GO
ALTER DATABASE [CampingProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CampingProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CampingProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CampingProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CampingProject] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CampingProject] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CampingProject', N'ON'
GO
ALTER DATABASE [CampingProject] SET QUERY_STORE = OFF
GO
USE [CampingProject]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 23/03/2022 08:59:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[displayName] [nvarchar](255) NULL,
	[addresss] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[role] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Camp]    Script Date: 23/03/2022 08:59:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Camp](
	[CampID] [int] NOT NULL,
	[CampName] [nvarchar](255) NULL,
	[Price] [float] NULL,
	[Description] [nvarchar](255) NULL,
	[ImageUrl] [nvarchar](255) NULL,
	[CreatedDate] [date] NULL,
	[CategoryID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CampID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 23/03/2022 08:59:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] NOT NULL,
	[CategoryName] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 23/03/2022 08:59:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReservationDetail]    Script Date: 23/03/2022 08:59:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReservationDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[reservation_id] [int] NULL,
	[campName] [nvarchar](255) NULL,
	[campImage] [nvarchar](255) NULL,
	[campPrice] [float] NULL,
	[numberOfPerson] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservations]    Script Date: 23/03/2022 08:59:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [text] NULL,
	[created_date] [date] NULL,
	[customer_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Camp] ADD  CONSTRAINT [DF_Camp_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Reservations] ADD  CONSTRAINT [DF_Reservations_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[Camp]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[ReservationDetail]  WITH CHECK ADD FOREIGN KEY([reservation_id])
REFERENCES [dbo].[Reservations] ([id])
GO
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customer] ([id])
GO
USE [master]
GO
ALTER DATABASE [CampingProject] SET  READ_WRITE 
GO
