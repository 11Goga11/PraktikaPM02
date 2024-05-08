USE [МедицинскаяЛаборатория]
GO
/****** Object:  Table [dbo].[Авторизация]    Script Date: 08.05.2024 14:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Авторизация](
	[ID] [int] NOT NULL,
	[Код_пользователя] [int] NULL,
	[Логин] [nvarchar](50) NULL,
	[Пароль] [nvarchar](50) NULL,
	[IP_адрес] [nvarchar](150) NULL,
 CONSTRAINT [PK_Авторизация] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Анализатор]    Script Date: 08.05.2024 14:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Анализатор](
	[Код_анализатора] [int] NOT NULL,
	[Наименование] [nvarchar](50) NULL,
 CONSTRAINT [PK_Анализатор] PRIMARY KEY CLUSTERED 
(
	[Код_анализатора] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Должность]    Script Date: 08.05.2024 14:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Должность](
	[Код_должности] [int] NOT NULL,
	[Наименование] [nvarchar](50) NULL,
 CONSTRAINT [PK_Должность] PRIMARY KEY CLUSTERED 
(
	[Код_должности] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Допольнительная информация]    Script Date: 08.05.2024 14:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Допольнительная информация](
	[Код_допольнительной_информации] [int] NOT NULL,
	[Код_пользователя] [int] NULL,
	[Серия_паспорта] [int] NULL,
	[Номер_паспорта] [int] NULL,
	[Email] [nvarchar](70) NULL,
	[Номер_страховой_компании] [int] NULL,
	[Номер_страхового_полиса] [int] NULL,
	[Код_типа_страхового_полиса] [int] NULL,
 CONSTRAINT [PK_Допольнительная информация] PRIMARY KEY CLUSTERED 
(
	[Код_допольнительной_информации] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Заказ]    Script Date: 08.05.2024 14:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Заказ](
	[Код_заказа] [int] NOT NULL,
	[Код_услуги] [int] NULL,
	[Дата_создания_заказа] [date] NULL,
	[Код_статуса_заказа] [int] NULL,
	[Время_выполнения_заказа] [nvarchar](50) NULL,
	[Код_пользователя] [int] NULL,
 CONSTRAINT [PK_Заказ] PRIMARY KEY CLUSTERED 
(
	[Код_заказа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Оказанные услуги]    Script Date: 08.05.2024 14:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Оказанные услуги](
	[Код_оказанной_услуги] [int] NOT NULL,
	[Дата_оказаной_услуги] [date] NULL,
	[Код_заказа] [int] NULL,
	[Код_сотрудника] [int] NULL,
	[Код_анализатора] [int] NULL,
	[Код_услуги] [int] NULL,
	[Результат] [nvarchar](50) NULL,
 CONSTRAINT [PK_Оказанные услуги] PRIMARY KEY CLUSTERED 
(
	[Код_оказанной_услуги] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Пациент]    Script Date: 08.05.2024 14:48:17 ******/
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
/****** Object:  Table [dbo].[Пользователи]    Script Date: 08.05.2024 14:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Пользователи](
	[Код_пользователя] [int] NOT NULL,
	[Код_должности] [int] NULL,
	[Фамилия] [nvarchar](50) NULL,
	[Имя] [nvarchar](50) NULL,
	[Отчество] [nvarchar](50) NULL,
 CONSTRAINT [PK_Пользователи] PRIMARY KEY CLUSTERED 
(
	[Код_пользователя] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Работа с биоматериаломи]    Script Date: 08.05.2024 14:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Работа с биоматериаломи](
	[Код_взятия_материала] [int] NOT NULL,
	[Дата_взятия] [date] NULL,
	[Вид_биоматериала] [nvarchar](50) NULL,
	[Код_сотрудника_взявшего_биоматериал] [int] NULL,
	[Код_должности] [int] NULL,
	[Наименование] [nvarchar](50) NULL,
 CONSTRAINT [PK_Работа с биоматериаломи] PRIMARY KEY CLUSTERED 
(
	[Код_взятия_материала] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Работа_анализатора]    Script Date: 08.05.2024 14:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Работа_анализатора](
	[Код_анализатора] [int] NOT NULL,
	[Дата_и_время_поступления_заказа_на_анализатор] [datetime] NULL,
	[Дата_и_время_выполнения] [datetime] NULL,
	[Код_оказанной_услуги] [int] NULL,
 CONSTRAINT [PK_Работа_анализатора] PRIMARY KEY CLUSTERED 
(
	[Код_анализатора] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Статус заказа]    Script Date: 08.05.2024 14:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Статус заказа](
	[Код_статуса_заказа] [int] NOT NULL,
	[Статус_заказа] [nvarchar](50) NULL,
	[Код_заказа] [int] NULL,
 CONSTRAINT [PK_Статус заказа] PRIMARY KEY CLUSTERED 
(
	[Код_статуса_заказа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Статус услуги]    Script Date: 08.05.2024 14:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Статус услуги](
	[Код_статуса_услуги] [int] NOT NULL,
	[Статус_услуги] [nvarchar](50) NULL,
	[Код_услуги] [int] NULL,
 CONSTRAINT [PK_Статус услуги] PRIMARY KEY CLUSTERED 
(
	[Код_статуса_услуги] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Страховая компания]    Script Date: 08.05.2024 14:48:17 ******/
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
/****** Object:  Table [dbo].[Страховой полис]    Script Date: 08.05.2024 14:48:17 ******/
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
/****** Object:  Table [dbo].[Услуги]    Script Date: 08.05.2024 14:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Услуги](
	[Код_услуги] [int] NOT NULL,
	[Наименование_услуги] [nvarchar](50) NULL,
	[Стоимость_услуги] [money] NULL,
	[Код_сотрудника_ответственного_за_услугу] [int] NULL,
	[Код_должности_сотрудника] [int] NULL,
 CONSTRAINT [PK_Услуги] PRIMARY KEY CLUSTERED 
(
	[Код_услуги] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Допольнительная информация]  WITH CHECK ADD  CONSTRAINT [FK_Допольнительная информация_Пользователи] FOREIGN KEY([Код_пользователя])
REFERENCES [dbo].[Пользователи] ([Код_пользователя])
GO
ALTER TABLE [dbo].[Допольнительная информация] CHECK CONSTRAINT [FK_Допольнительная информация_Пользователи]
GO
ALTER TABLE [dbo].[Допольнительная информация]  WITH CHECK ADD  CONSTRAINT [FK_Допольнительная информация_Страховой полис] FOREIGN KEY([Номер_страховой_компании])
REFERENCES [dbo].[Страховой полис] ([Номер_страхового_полиса])
GO
ALTER TABLE [dbo].[Допольнительная информация] CHECK CONSTRAINT [FK_Допольнительная информация_Страховой полис]
GO
ALTER TABLE [dbo].[Заказ]  WITH CHECK ADD  CONSTRAINT [FK_Заказ_Пользователи] FOREIGN KEY([Код_пользователя])
REFERENCES [dbo].[Пользователи] ([Код_пользователя])
GO
ALTER TABLE [dbo].[Заказ] CHECK CONSTRAINT [FK_Заказ_Пользователи]
GO
ALTER TABLE [dbo].[Заказ]  WITH CHECK ADD  CONSTRAINT [FK_Заказ_Статус заказа] FOREIGN KEY([Код_статуса_заказа])
REFERENCES [dbo].[Статус заказа] ([Код_статуса_заказа])
GO
ALTER TABLE [dbo].[Заказ] CHECK CONSTRAINT [FK_Заказ_Статус заказа]
GO
ALTER TABLE [dbo].[Оказанные услуги]  WITH CHECK ADD  CONSTRAINT [FK_Оказанные услуги_Анализатор] FOREIGN KEY([Код_анализатора])
REFERENCES [dbo].[Анализатор] ([Код_анализатора])
GO
ALTER TABLE [dbo].[Оказанные услуги] CHECK CONSTRAINT [FK_Оказанные услуги_Анализатор]
GO
ALTER TABLE [dbo].[Оказанные услуги]  WITH CHECK ADD  CONSTRAINT [FK_Оказанные услуги_Статус услуги] FOREIGN KEY([Код_услуги])
REFERENCES [dbo].[Статус услуги] ([Код_статуса_услуги])
GO
ALTER TABLE [dbo].[Оказанные услуги] CHECK CONSTRAINT [FK_Оказанные услуги_Статус услуги]
GO
ALTER TABLE [dbo].[Оказанные услуги]  WITH CHECK ADD  CONSTRAINT [FK_Оказанные услуги_Услуги] FOREIGN KEY([Код_услуги])
REFERENCES [dbo].[Услуги] ([Код_услуги])
GO
ALTER TABLE [dbo].[Оказанные услуги] CHECK CONSTRAINT [FK_Оказанные услуги_Услуги]
GO
ALTER TABLE [dbo].[Пользователи]  WITH CHECK ADD  CONSTRAINT [FK_Пользователи_Должность] FOREIGN KEY([Код_должности])
REFERENCES [dbo].[Должность] ([Код_должности])
GO
ALTER TABLE [dbo].[Пользователи] CHECK CONSTRAINT [FK_Пользователи_Должность]
GO
ALTER TABLE [dbo].[Пользователи]  WITH CHECK ADD  CONSTRAINT [FK_Пользователи_Работа с биоматериаломи] FOREIGN KEY([Код_должности])
REFERENCES [dbo].[Работа с биоматериаломи] ([Код_взятия_материала])
GO
ALTER TABLE [dbo].[Пользователи] CHECK CONSTRAINT [FK_Пользователи_Работа с биоматериаломи]
GO
ALTER TABLE [dbo].[Работа с биоматериаломи]  WITH CHECK ADD  CONSTRAINT [FK_Работа с биоматериаломи_Должность] FOREIGN KEY([Код_должности])
REFERENCES [dbo].[Должность] ([Код_должности])
GO
ALTER TABLE [dbo].[Работа с биоматериаломи] CHECK CONSTRAINT [FK_Работа с биоматериаломи_Должность]
GO
ALTER TABLE [dbo].[Работа_анализатора]  WITH CHECK ADD  CONSTRAINT [FK_Работа_анализатора_Анализатор] FOREIGN KEY([Код_анализатора])
REFERENCES [dbo].[Анализатор] ([Код_анализатора])
GO
ALTER TABLE [dbo].[Работа_анализатора] CHECK CONSTRAINT [FK_Работа_анализатора_Анализатор]
GO
ALTER TABLE [dbo].[Статус заказа]  WITH CHECK ADD  CONSTRAINT [FK_Статус заказа_Оказанные услуги] FOREIGN KEY([Код_заказа])
REFERENCES [dbo].[Оказанные услуги] ([Код_оказанной_услуги])
GO
ALTER TABLE [dbo].[Статус заказа] CHECK CONSTRAINT [FK_Статус заказа_Оказанные услуги]
GO
ALTER TABLE [dbo].[Страховой полис]  WITH CHECK ADD  CONSTRAINT [FK_Страховой полис_Страховая компания] FOREIGN KEY([Номер_страховой_компании])
REFERENCES [dbo].[Страховая компания] ([Номер_страховой_компании])
GO
ALTER TABLE [dbo].[Страховой полис] CHECK CONSTRAINT [FK_Страховой полис_Страховая компания]
GO
