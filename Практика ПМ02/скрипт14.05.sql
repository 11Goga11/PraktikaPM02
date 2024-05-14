USE [master]
GO
/****** Object:  Database [Medical Laboratory]    Script Date: 14.05.2024 10:33:26 ******/
CREATE DATABASE [Medical Laboratory]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Medical Laboratory', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Medical Laboratory.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Medical Laboratory_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Medical Laboratory_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Medical Laboratory] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Medical Laboratory].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Medical Laboratory] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Medical Laboratory] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Medical Laboratory] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Medical Laboratory] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Medical Laboratory] SET ARITHABORT OFF 
GO
ALTER DATABASE [Medical Laboratory] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Medical Laboratory] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Medical Laboratory] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Medical Laboratory] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Medical Laboratory] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Medical Laboratory] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Medical Laboratory] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Medical Laboratory] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Medical Laboratory] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Medical Laboratory] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Medical Laboratory] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Medical Laboratory] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Medical Laboratory] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Medical Laboratory] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Medical Laboratory] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Medical Laboratory] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Medical Laboratory] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Medical Laboratory] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Medical Laboratory] SET  MULTI_USER 
GO
ALTER DATABASE [Medical Laboratory] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Medical Laboratory] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Medical Laboratory] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Medical Laboratory] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Medical Laboratory]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 14.05.2024 10:33:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [nvarchar](50) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 14.05.2024 10:33:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
	[Photo] [image] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Анализатор(Analyzer)]    Script Date: 14.05.2024 10:33:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Анализатор(Analyzer)](
	[id_analyzer] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[Price] [nvarchar](50) NOT NULL,
	[Type_of_result] [nvarchar](50) NOT NULL,
	[Available_results] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Анализатор(anylyzer)] PRIMARY KEY CLUSTERED 
(
	[id_analyzer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Анализы (Analyzes)]    Script Date: 14.05.2024 10:33:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Анализы (Analyzes)](
	[Test_id] [int] NOT NULL,
	[name] [varchar](250) NOT NULL,
	[description_id] [int] NOT NULL,
	[price] [decimal](10, 1) NOT NULL,
 CONSTRAINT [PK_Анализы (Tests)] PRIMARY KEY CLUSTERED 
(
	[Test_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Врачи(Doctors) ]    Script Date: 14.05.2024 10:33:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Врачи(Doctors) ](
	[Doctor_id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Specialization] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone_number] [nvarchar](50) NOT NULL,
	[Department] [int] NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Врачи (Doctors)1] PRIMARY KEY CLUSTERED 
(
	[Doctor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Закупки (Purchases)]    Script Date: 14.05.2024 10:33:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Закупки (Purchases)](
	[Purchase_id] [int] NOT NULL,
	[Supplier_id] [int] NOT NULL,
	[Equipment_id] [int] NOT NULL,
	[Date_of_purchase] [date] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_Закупки (Purchases)] PRIMARY KEY CLUSTERED 
(
	[Purchase_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Назначения (Appointments)]    Script Date: 14.05.2024 10:33:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Назначения (Appointments)](
	[Appointment_id] [int] NOT NULL,
	[Patient_id] [int] NOT NULL,
	[Doctor_id] [int] NOT NULL,
	[Date_of_appointment] [date] NOT NULL,
	[Time_of_appointment] [time](7) NOT NULL,
	[Reason] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Appointments (Назначение)] PRIMARY KEY CLUSTERED 
(
	[Appointment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Оборудование (Equipment)]    Script Date: 14.05.2024 10:33:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Оборудование (Equipment)](
	[Equipment_id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](250) NOT NULL,
	[Manufacturer] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Оборудование (Equipment)] PRIMARY KEY CLUSTERED 
(
	[Equipment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Описание анализа (Description)]    Script Date: 14.05.2024 10:33:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Описание анализа (Description)](
	[Description_id] [int] NOT NULL,
	[Description] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Description] PRIMARY KEY CLUSTERED 
(
	[Description_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Отделы (Departments)]    Script Date: 14.05.2024 10:33:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Отделы (Departments)](
	[Department_id] [int] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](250) NOT NULL,
	[Supplier_id] [int] NOT NULL,
 CONSTRAINT [PK_Отделы (Departments)] PRIMARY KEY CLUSTERED 
(
	[Department_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Пациенты (Patients)]    Script Date: 14.05.2024 10:33:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Пациенты (Patients)](
	[Patient_id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[Date_of_birth] [date] NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Phone_number] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Patients (Пациент)] PRIMARY KEY CLUSTERED 
(
	[Patient_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Поставщики (Suppliers)]    Script Date: 14.05.2024 10:33:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Поставщики (Suppliers)](
	[Supplier_id] [int] NOT NULL,
	[Name] [varchar](250) NOT NULL,
	[Address] [varchar](250) NOT NULL,
	[Phone_number] [varchar](250) NOT NULL,
	[Email] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Поставщики (Suppliers)] PRIMARY KEY CLUSTERED 
(
	[Supplier_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Работа анализатора(Analyzer operation)]    Script Date: 14.05.2024 10:33:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Работа анализатора(Analyzer operation)](
	[id_analyzer] [int] NOT NULL,
	[Date_and_time_of_admission_to_the_analyzer] [nvarchar](50) NOT NULL,
	[Date_and_time_of_execution] [nvarchar](50) NOT NULL,
	[Service] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Работа анализатора] PRIMARY KEY CLUSTERED 
(
	[id_analyzer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Результаты анализов (Test_Results)]    Script Date: 14.05.2024 10:33:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Результаты анализов (Test_Results)](
	[Result_id] [int] NOT NULL,
	[Patient_id] [int] NOT NULL,
	[Test_id] [int] NOT NULL,
	[Doctor_id] [int] NOT NULL,
	[Date_of_test] [date] NOT NULL,
	[result] [nvarchar](50) NOT NULL,
	[id_analyzer] [int] NOT NULL,
 CONSTRAINT [PK_Результат теста] PRIMARY KEY CLUSTERED 
(
	[Result_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Специализация врача (Specialization)]    Script Date: 14.05.2024 10:33:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Специализация врача (Specialization)](
	[Specialization_ID] [int] NOT NULL,
	[Specialization] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Specialization (Специализация врача)] PRIMARY KEY CLUSTERED 
(
	[Specialization_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role1] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role1]
GO
ALTER TABLE [dbo].[Анализы (Analyzes)]  WITH CHECK ADD  CONSTRAINT [FK_Анализы (Tests)_Описание анализа (Description)] FOREIGN KEY([description_id])
REFERENCES [dbo].[Описание анализа (Description)] ([Description_id])
GO
ALTER TABLE [dbo].[Анализы (Analyzes)] CHECK CONSTRAINT [FK_Анализы (Tests)_Описание анализа (Description)]
GO
ALTER TABLE [dbo].[Врачи(Doctors) ]  WITH CHECK ADD  CONSTRAINT [FK_Врачи (Doctors)_Role] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[Врачи(Doctors) ] CHECK CONSTRAINT [FK_Врачи (Doctors)_Role]
GO
ALTER TABLE [dbo].[Врачи(Doctors) ]  WITH CHECK ADD  CONSTRAINT [FK_Врачи (Doctors)_Отделы (Departments)] FOREIGN KEY([Department])
REFERENCES [dbo].[Отделы (Departments)] ([Department_id])
GO
ALTER TABLE [dbo].[Врачи(Doctors) ] CHECK CONSTRAINT [FK_Врачи (Doctors)_Отделы (Departments)]
GO
ALTER TABLE [dbo].[Врачи(Doctors) ]  WITH CHECK ADD  CONSTRAINT [FK_Врачи (Doctors)_Специализация врача (Specialization)] FOREIGN KEY([Specialization])
REFERENCES [dbo].[Специализация врача (Specialization)] ([Specialization_ID])
GO
ALTER TABLE [dbo].[Врачи(Doctors) ] CHECK CONSTRAINT [FK_Врачи (Doctors)_Специализация врача (Specialization)]
GO
ALTER TABLE [dbo].[Закупки (Purchases)]  WITH CHECK ADD  CONSTRAINT [FK_Закупки (Purchases)_Оборудование (Equipment)] FOREIGN KEY([Equipment_id])
REFERENCES [dbo].[Оборудование (Equipment)] ([Equipment_id])
GO
ALTER TABLE [dbo].[Закупки (Purchases)] CHECK CONSTRAINT [FK_Закупки (Purchases)_Оборудование (Equipment)]
GO
ALTER TABLE [dbo].[Закупки (Purchases)]  WITH CHECK ADD  CONSTRAINT [FK_Закупки (Purchases)_Поставщики (Suppliers)] FOREIGN KEY([Supplier_id])
REFERENCES [dbo].[Поставщики (Suppliers)] ([Supplier_id])
GO
ALTER TABLE [dbo].[Закупки (Purchases)] CHECK CONSTRAINT [FK_Закупки (Purchases)_Поставщики (Suppliers)]
GO
ALTER TABLE [dbo].[Назначения (Appointments)]  WITH CHECK ADD  CONSTRAINT [FK_Назначения (Appointments)_Врачи (Doctors)] FOREIGN KEY([Doctor_id])
REFERENCES [dbo].[Врачи(Doctors) ] ([Doctor_id])
GO
ALTER TABLE [dbo].[Назначения (Appointments)] CHECK CONSTRAINT [FK_Назначения (Appointments)_Врачи (Doctors)]
GO
ALTER TABLE [dbo].[Назначения (Appointments)]  WITH CHECK ADD  CONSTRAINT [FK_Назначения (Appointments)_Пациенты (Patients)1] FOREIGN KEY([Patient_id])
REFERENCES [dbo].[Пациенты (Patients)] ([Patient_id])
GO
ALTER TABLE [dbo].[Назначения (Appointments)] CHECK CONSTRAINT [FK_Назначения (Appointments)_Пациенты (Patients)1]
GO
ALTER TABLE [dbo].[Отделы (Departments)]  WITH CHECK ADD  CONSTRAINT [FK_Отделы (Departments)_Поставщики (Suppliers)] FOREIGN KEY([Supplier_id])
REFERENCES [dbo].[Поставщики (Suppliers)] ([Supplier_id])
GO
ALTER TABLE [dbo].[Отделы (Departments)] CHECK CONSTRAINT [FK_Отделы (Departments)_Поставщики (Suppliers)]
GO
ALTER TABLE [dbo].[Работа анализатора(Analyzer operation)]  WITH CHECK ADD  CONSTRAINT [FK_Работа анализатора(Analyzer operation)_Анализатор(Analyzer)] FOREIGN KEY([id_analyzer])
REFERENCES [dbo].[Анализатор(Analyzer)] ([id_analyzer])
GO
ALTER TABLE [dbo].[Работа анализатора(Analyzer operation)] CHECK CONSTRAINT [FK_Работа анализатора(Analyzer operation)_Анализатор(Analyzer)]
GO
ALTER TABLE [dbo].[Результаты анализов (Test_Results)]  WITH CHECK ADD  CONSTRAINT [FK_Результаты анализов (Test_Results)_Анализатор(Analyzer)] FOREIGN KEY([id_analyzer])
REFERENCES [dbo].[Анализатор(Analyzer)] ([id_analyzer])
GO
ALTER TABLE [dbo].[Результаты анализов (Test_Results)] CHECK CONSTRAINT [FK_Результаты анализов (Test_Results)_Анализатор(Analyzer)]
GO
ALTER TABLE [dbo].[Результаты анализов (Test_Results)]  WITH CHECK ADD  CONSTRAINT [FK_Результаты анализов (Test_Results)_Анализы (Tests)] FOREIGN KEY([Test_id])
REFERENCES [dbo].[Анализы (Analyzes)] ([Test_id])
GO
ALTER TABLE [dbo].[Результаты анализов (Test_Results)] CHECK CONSTRAINT [FK_Результаты анализов (Test_Results)_Анализы (Tests)]
GO
ALTER TABLE [dbo].[Результаты анализов (Test_Results)]  WITH CHECK ADD  CONSTRAINT [FK_Результаты анализов (Test_Results)_Врачи (Doctors)] FOREIGN KEY([Doctor_id])
REFERENCES [dbo].[Врачи(Doctors) ] ([Doctor_id])
GO
ALTER TABLE [dbo].[Результаты анализов (Test_Results)] CHECK CONSTRAINT [FK_Результаты анализов (Test_Results)_Врачи (Doctors)]
GO
ALTER TABLE [dbo].[Результаты анализов (Test_Results)]  WITH CHECK ADD  CONSTRAINT [FK_Результаты анализов (Test_Results)_Пациенты (Patients)1] FOREIGN KEY([Patient_id])
REFERENCES [dbo].[Пациенты (Patients)] ([Patient_id])
GO
ALTER TABLE [dbo].[Результаты анализов (Test_Results)] CHECK CONSTRAINT [FK_Результаты анализов (Test_Results)_Пациенты (Patients)1]
GO
USE [master]
GO
ALTER DATABASE [Medical Laboratory] SET  READ_WRITE 
GO
