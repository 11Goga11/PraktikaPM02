USE [МедицинскаяЛаборатория]
GO
/****** Object:  Table [dbo].[Авторизация]    Script Date: 06.05.2024 16:28:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Авторизация](
	[ID] [int] NOT NULL,
	[Логин] [nvarchar](50) NULL,
	[Пароль] [nvarchar](50) NULL,
 CONSTRAINT [PK_Авторизация] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Данные бухгалтеров]    Script Date: 06.05.2024 16:28:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Данные бухгалтеров](
	[ID] [int] NULL,
	[Фамилия] [nvarchar](70) NULL,
	[Имя] [nvarchar](70) NULL,
	[Отчество] [nvarchar](70) NULL,
	[Логин] [nvarchar](70) NULL,
	[Пароль] [nvarchar](70) NULL,
	[Код_услуги] [int] NULL,
	[Выставленные_счета_страховым_компаниям] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Данные лаборантов]    Script Date: 06.05.2024 16:28:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Данные лаборантов](
	[ID] [int] NOT NULL,
	[Фамилия] [nvarchar](70) NULL,
	[Имя] [nvarchar](70) NULL,
	[Отчество] [nvarchar](70) NULL,
	[Логин] [nvarchar](70) NULL,
	[Пароль] [nvarchar](70) NULL,
	[Код_услуги] [int] NULL,
	[Последная_дата_входа] [nvarchar](50) NULL,
	[Последнее_время_входа] [nvarchar](50) NULL,
 CONSTRAINT [PK_Данные лаборантов] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Пациент]    Script Date: 06.05.2024 16:28:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Пациент](
	[ID] [int] NOT NULL,
	[Фамилия] [nvarchar](70) NULL,
	[Имя] [nvarchar](70) NULL,
	[Отчество] [nvarchar](70) NULL,
	[Дата_рождения] [nvarchar](70) NULL,
	[Серия_паспорта] [int] NULL,
	[Номер_паспорта] [int] NULL,
	[Телефон] [nvarchar](10) NULL,
	[Email] [nvarchar](70) NULL,
	[Номер_страхового_полиса] [int] NULL,
 CONSTRAINT [PK_Пациент] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Пользователь]    Script Date: 06.05.2024 16:28:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Пользователь](
	[id] [int] NOT NULL,
	[name] [nvarchar](70) NULL,
	[login] [nvarchar](70) NULL,
	[password] [nvarchar](70) NULL,
	[ip] [nvarchar](70) NULL,
	[lastenter] [nvarchar](70) NULL,
	[services] [nvarchar](150) NULL,
	[type] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Страховая компания]    Script Date: 06.05.2024 16:28:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Страховая компания](
	[Номер_страховой_компании] [int] NOT NULL,
	[Адрес] [nvarchar](70) NULL,
	[ИНН] [nvarchar](70) NULL,
	[Р/C] [nvarchar](70) NULL,
	[БИК] [nvarchar](70) NULL,
 CONSTRAINT [PK_Страховая компания] PRIMARY KEY CLUSTERED 
(
	[Номер_страховой_компании] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Страховой полис]    Script Date: 06.05.2024 16:28:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Страховой полис](
	[Номер_страхового_полиса] [int] NOT NULL,
	[Тип_полиса] [nvarchar](70) NULL,
	[Номер_страховой_компании] [int] NULL,
 CONSTRAINT [PK_Страховой полис] PRIMARY KEY CLUSTERED 
(
	[Номер_страхового_полиса] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Услуги]    Script Date: 06.05.2024 16:28:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Услуги](
	[Code] [int] NOT NULL,
	[Service] [nvarchar](80) NULL,
	[Price] [nvarchar](30) NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Услуги лаборатории]    Script Date: 06.05.2024 16:28:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Услуги лаборатории](
	[ID_Услуги] [int] NULL,
	[Наименование] [nvarchar](70) NULL,
	[Срок_выполнения] [nvarchar](70) NULL,
	[Стоимость] [money] NULL,
	[Среднее_отклонение] [nvarchar](70) NULL
) ON [PRIMARY]
GO
