USE [master]
GO
/****** Object:  Database [Abonents]    Script Date: 20.12.2022 9:51:59 ******/
CREATE DATABASE [Abonents]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Abonents', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\Abonents.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Abonents_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\Abonents_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Abonents] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Abonents].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Abonents] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Abonents] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Abonents] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Abonents] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Abonents] SET ARITHABORT OFF 
GO
ALTER DATABASE [Abonents] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Abonents] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Abonents] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Abonents] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Abonents] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Abonents] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Abonents] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Abonents] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Abonents] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Abonents] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Abonents] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Abonents] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Abonents] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Abonents] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Abonents] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Abonents] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Abonents] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Abonents] SET RECOVERY FULL 
GO
ALTER DATABASE [Abonents] SET  MULTI_USER 
GO
ALTER DATABASE [Abonents] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Abonents] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Abonents] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Abonents] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Abonents] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Abonents', N'ON'
GO
ALTER DATABASE [Abonents] SET QUERY_STORE = OFF
GO
USE [Abonents]
GO
/****** Object:  Table [dbo].[Абоненты]    Script Date: 20.12.2022 9:51:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Абоненты](
	[ФИО] [nvarchar](50) NOT NULL,
	[эл_почта] [nvarchar](100) NOT NULL,
	[номер_договора] [nvarchar](50) NOT NULL,
	[дата_установки] [date] NOT NULL,
 CONSTRAINT [PK__Абоненты__A9F75A1537E51E6D] PRIMARY KEY CLUSTERED 
(
	[ФИО] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Разговоры]    Script Date: 20.12.2022 9:51:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Разговоры](
	[количество_звонков] [int] NOT NULL,
	[продолжительность] [int] NOT NULL,
	[оплата] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[количество_звонков] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[тарифы]    Script Date: 20.12.2022 9:51:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[тарифы](
	[количество_подключений] [nvarchar](50) NOT NULL,
	[стоимость_в_месяц] [int] NOT NULL,
	[стоимость_подключения] [int] NOT NULL,
 CONSTRAINT [PK_тарифы] PRIMARY KEY CLUSTERED 
(
	[стоимость_подключения] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[телефон]    Script Date: 20.12.2022 9:51:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[телефон](
	[id_телефона] [nvarchar](50) NOT NULL,
	[год_покупки] [int] NOT NULL,
	[количество_симкарт] [int] NOT NULL,
 CONSTRAINT [PK_телефон] PRIMARY KEY CLUSTERED 
(
	[id_телефона] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Абоненты] ([ФИО], [эл_почта], [номер_договора], [дата_установки]) VALUES (N'Вавилов
Сергей Борисович
', N'lflflf@hotmail.com', N'99345Р', CAST(N'2021-03-23' AS Date))
INSERT [dbo].[Абоненты] ([ФИО], [эл_почта], [номер_договора], [дата_установки]) VALUES (N'Орлов 
Сергей Борисович
', N'sdadasd@mail.ru', N'4523В', CAST(N'2021-03-15' AS Date))
INSERT [dbo].[Абоненты] ([ФИО], [эл_почта], [номер_договора], [дата_установки]) VALUES (N'Титова Александра Иввановна', N'sdad@gmail.com', N'3465Ф', CAST(N'2012-10-09' AS Date))
GO
ALTER TABLE [dbo].[тарифы]  WITH CHECK ADD  CONSTRAINT [FK_тарифы_телефон] FOREIGN KEY([количество_подключений])
REFERENCES [dbo].[телефон] ([id_телефона])
GO
ALTER TABLE [dbo].[тарифы] CHECK CONSTRAINT [FK_тарифы_телефон]
GO
ALTER TABLE [dbo].[телефон]  WITH CHECK ADD  CONSTRAINT [FK_телефон_Разговоры] FOREIGN KEY([год_покупки])
REFERENCES [dbo].[Разговоры] ([количество_звонков])
GO
ALTER TABLE [dbo].[телефон] CHECK CONSTRAINT [FK_телефон_Разговоры]
GO
USE [master]
GO
ALTER DATABASE [Abonents] SET  READ_WRITE 
GO
