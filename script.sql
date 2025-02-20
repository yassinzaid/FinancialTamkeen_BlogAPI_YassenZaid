USE [master]
GO
/****** Object:  Database [BlogPost]    Script Date: 2/13/2024 11:16:36 AM ******/
CREATE DATABASE [BlogPost]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BlogPost', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.TEST3\MSSQL\DATA\BlogPost.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BlogPost_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.TEST3\MSSQL\DATA\BlogPost_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BlogPost] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BlogPost].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BlogPost] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BlogPost] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BlogPost] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BlogPost] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BlogPost] SET ARITHABORT OFF 
GO
ALTER DATABASE [BlogPost] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BlogPost] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BlogPost] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BlogPost] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BlogPost] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BlogPost] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BlogPost] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BlogPost] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BlogPost] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BlogPost] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BlogPost] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BlogPost] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BlogPost] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BlogPost] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BlogPost] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BlogPost] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BlogPost] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BlogPost] SET RECOVERY FULL 
GO
ALTER DATABASE [BlogPost] SET  MULTI_USER 
GO
ALTER DATABASE [BlogPost] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BlogPost] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BlogPost] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BlogPost] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BlogPost] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BlogPost] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BlogPost', N'ON'
GO
ALTER DATABASE [BlogPost] SET QUERY_STORE = OFF
GO
USE [BlogPost]
GO
/****** Object:  User [yzaid]    Script Date: 2/13/2024 11:16:36 AM ******/
CREATE USER [yzaid] FOR LOGIN [yzaid] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[BlogPostTB]    Script Date: 2/13/2024 11:16:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogPostTB](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[BlogPostTB] ([Id], [Title], [Content], [CreatedAt]) VALUES (1, N'yassin', N'zaid', NULL)
GO
USE [master]
GO
ALTER DATABASE [BlogPost] SET  READ_WRITE 
GO
