USE [master]
GO
/****** Object:  Database [Projex]    Script Date: 21/09/2022 11:18:47 ******/
CREATE DATABASE [Projex]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Projex', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Projex.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Projex_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Projex_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Projex] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Projex].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Projex] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Projex] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Projex] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Projex] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Projex] SET ARITHABORT OFF 
GO
ALTER DATABASE [Projex] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Projex] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Projex] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Projex] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Projex] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Projex] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Projex] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Projex] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Projex] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Projex] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Projex] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Projex] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Projex] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Projex] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Projex] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Projex] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Projex] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Projex] SET RECOVERY FULL 
GO
ALTER DATABASE [Projex] SET  MULTI_USER 
GO
ALTER DATABASE [Projex] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Projex] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Projex] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Projex] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Projex] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Projex] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Projex', N'ON'
GO
ALTER DATABASE [Projex] SET QUERY_STORE = OFF
GO
USE [Projex]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 21/09/2022 11:18:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 21/09/2022 11:18:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[projectName] [nvarchar](max) NOT NULL,
	[projectDescription] [nvarchar](max) NOT NULL,
	[projectAvailable] [bit] NOT NULL,
	[createdOn] [datetime2](7) NOT NULL,
	[createdBy] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 21/09/2022 11:18:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](max) NOT NULL,
	[userPassword] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220921084422_AddProjectsToDatabase', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220921090500_AddUsersToDatabase', N'6.0.9')
GO
SET IDENTITY_INSERT [dbo].[Projects] ON 

INSERT [dbo].[Projects] ([ID], [projectName], [projectDescription], [projectAvailable], [createdOn], [createdBy]) VALUES (3, N'Informatiesysteem Heerlen', N'Beheren informatiesysteem voor gemeente Heerlen', 1, CAST(N'1900-01-01T00:00:00.0000000' AS DateTime2), N'Gemeente Heerlen')
INSERT [dbo].[Projects] ([ID], [projectName], [projectDescription], [projectAvailable], [createdOn], [createdBy]) VALUES (4, N'Reserveringen Happy Italy', N'Afronden online reserveringssysteem', 1, CAST(N'1900-01-01T00:00:00.0000000' AS DateTime2), N'Happy Italy Kerkrade')
INSERT [dbo].[Projects] ([ID], [projectName], [projectDescription], [projectAvailable], [createdOn], [createdBy]) VALUES (6, N'Test aanmaken project', N'Dit project is nu aangemaakt en beschikbaar.', 1, CAST(N'2022-09-21T10:58:00.0000000' AS DateTime2), N'Lucas Janssen')
SET IDENTITY_INSERT [dbo].[Projects] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [userName], [userPassword]) VALUES (1, N'Janklaas', N'Trukendoos355')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
USE [master]
GO
ALTER DATABASE [Projex] SET  READ_WRITE 
GO
