USE [LanguageSchool]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 15-May-23 23:47:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[Patronymic] [nvarchar](max) NULL,
	[Birthday] [datetime] NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[FirstEnterDate] [datetime] NULL,
	[Photo] [nvarchar](max) NULL,
	[ClientTagId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientTag]    Script Date: 15-May-23 23:47:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientTag](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Color] [nvarchar](max) NULL,
 CONSTRAINT [PK_ClientTag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Document]    Script Date: 15-May-23 23:47:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Document](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Photo] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 15-May-23 23:47:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[Patronymic] [nvarchar](max) NULL,
	[PasportSeries] [nvarchar](max) NULL,
	[PasportNumber] [nvarchar](max) NULL,
	[DivisionCode] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[PayCoefficient] [nvarchar](max) NULL,
	[Birthday] [datetime] NULL,
	[EmployeeCategoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeCategory]    Script Date: 15-May-23 23:47:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeService]    Script Date: 15-May-23 23:47:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeService](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ServiceId] [int] NULL,
	[EmployeeId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacter]    Script Date: 15-May-23 23:47:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StartWorkDate] [datetime] NULL,
	[MainPhoto] [nvarchar](max) NULL,
	[AdvancedPhoto] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photo]    Script Date: 15-May-23 23:47:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo](
	[Id] [int] NOT NULL,
	[ProductName] [nvarchar](max) NULL,
	[InsertDate] [datetime] NULL,
 CONSTRAINT [PK_Photo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 15-May-23 23:47:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Cost] [nvarchar](max) NULL,
	[Haracteristics] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Weight] [int] NULL,
	[Width] [int] NULL,
	[Length] [int] NULL,
	[Height] [int] NULL,
	[ManufacturerId] [int] NULL,
	[IsNotActual] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleProduct]    Script Date: 15-May-23 23:47:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SalesHistoryId] [int] NULL,
	[ProductId] [int] NULL,
	[Count] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesHistory]    Script Date: 15-May-23 23:47:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NULL,
	[ServiceId] [int] NULL,
	[TransactionDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 15-May-23 23:47:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[GenderRecomented] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Cost] [nvarchar](max) NULL,
	[Sale] [int] NULL,
	[Duration] [nvarchar](max) NULL,
	[MainPhoto] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServicePhoto]    Script Date: 15-May-23 23:47:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServicePhoto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ServiceId] [int] NULL,
	[PhotoId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SignUpService]    Script Date: 15-May-23 23:47:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SignUpService](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NULL,
	[ServiceId] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[StartDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SignUpServiceDocument]    Script Date: 15-May-23 23:47:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SignUpServiceDocument](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SignUpServiceId] [int] NULL,
	[DocumentId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (1, N'Абрамов', N'Станислав', N'Филатович', CAST(N'1989-05-18T00:00:00.000' AS DateTime), N'7(6545)478-87-79 ', N'solomon@att.net', N'м', CAST(N'2016-12-08T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (2, N'Агафонов', N'Юстиниан', N'Олегович', CAST(N'1997-02-02T00:00:00.000' AS DateTime), N'7(303)810-28-78 ', N'staffelb@sbcglobal.net', N'м', CAST(N'2016-06-08T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (3, N'Александров', N'Станислав', N'Эдуардович', CAST(N'1981-07-04T00:00:00.000' AS DateTime), N'7(18)164-05-12 ', N'bigmauler@aol.com', N'м', CAST(N'2018-11-08T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (4, N'Андреев', N'Станислав', N'Максович', CAST(N'1975-10-10T00:00:00.000' AS DateTime), N'7(02)993-91-28 ', N'budinger@mac.com', N'м', CAST(N'2017-12-26T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (5, N'Андреева', N'Патрисия', N'Валерьевна', CAST(N'1993-11-18T00:00:00.000' AS DateTime), N'7(9648)953-81-26 ', N'jigsaw@aol.com', N'ж', CAST(N'2016-07-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (6, N'Баранова', N'Эльмира', N'Дмитриевна', CAST(N'1977-01-15T00:00:00.000' AS DateTime), N'7(9240)643-15-50 ', N'jgmyers@comcast.net', N'ж', CAST(N'2016-07-08T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (7, N'Беляева', N'Сабрина', N'Федосеевна', CAST(N'1972-07-26T00:00:00.000' AS DateTime), N'7(6580)534-32-58 ', N'agapow@gmail.com', N'ж', CAST(N'2017-06-14T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (8, N'Блинов', N'Евгений', N'Мэлсович', CAST(N'1994-01-05T00:00:00.000' AS DateTime), N'7(0852)321-82-64 ', N'moxfulder@outlook.com', N'м', CAST(N'2017-05-07T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (9, N'Блохин', N'Пантелеймон', N'Феликсович', CAST(N'1978-03-06T00:00:00.000' AS DateTime), N'7(9524)556-48-98 ', N'balchen@comcast.net', N'м', CAST(N'2018-02-14T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (10, N'Бобров', N'Агафон', N'Лаврентьевич', CAST(N'1995-07-29T00:00:00.000' AS DateTime), N'7(2159)507-39-57 ', N'petersen@comcast.net', N'м', CAST(N'2017-05-09T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (11, N'Бобылёв', N'Георгий', N'Витальевич', CAST(N'1983-12-19T00:00:00.000' AS DateTime), N'7(88)685-13-51 ', N'csilvers@mac.com', N'м', CAST(N'2018-04-06T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (12, N'Большаков', N'Вадим', N'Данилович', CAST(N'1970-05-15T00:00:00.000' AS DateTime), N'7(386)641-13-37 ', N'uncle@gmail.com', N'м', CAST(N'2018-08-04T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (13, N'Васильев', N'Оскар', N'Богданович', CAST(N'1971-01-30T00:00:00.000' AS DateTime), N'7(585)801-94-29 ', N'miturria@verizon.net', N'м', CAST(N'2017-05-28T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (14, N'Волков', N'Людвиг', N'Витальевич', CAST(N'1977-12-27T00:00:00.000' AS DateTime), N'7(8459)592-05-58 ', N'jrkorson@msn.com', N'м', CAST(N'2016-04-27T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (15, N'Воронова', N'Изабелла', N'Вячеславовна', CAST(N'1999-09-24T00:00:00.000' AS DateTime), N'7(17)433-44-98 ', N'kildjean@sbcglobal.net', N'ж', CAST(N'2017-12-21T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (16, N'Голубев', N'Иосиф', N'Тимофеевич', CAST(N'1982-05-06T00:00:00.000' AS DateTime), N'7(78)972-73-11 ', N'smcnabb@att.net', N'м', CAST(N'2018-08-18T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (17, N'Горбачёв', N'Давид', N'Тимурович', CAST(N'1983-05-22T00:00:00.000' AS DateTime), N'7(53)602-85-41 ', N'hedwig@att.net', N'м', CAST(N'2018-12-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (18, N'Гущина', N'Янита', N'Федоровна', CAST(N'1999-03-02T00:00:00.000' AS DateTime), N'7(4544)716-68-96 ', N'lishoy@att.net', N'ж', CAST(N'2018-02-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (19, N'Дмитриева', N'Элина', N'Даниловна', CAST(N'1988-12-10T00:00:00.000' AS DateTime), N'7(787)140-48-84 ', N'vmalik@live.com', N'ж', CAST(N'2017-02-11T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (20, N'Евсеев', N'Макар', N'Васильевич', CAST(N'1977-09-13T00:00:00.000' AS DateTime), N'7(2141)077-85-70 ', N'parsimony@sbcglobal.net', N'м', CAST(N'2018-12-05T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (21, N'Егорова', N'Амалия', N'Дамировна', CAST(N'1999-09-28T00:00:00.000' AS DateTime), N'7(7486)408-12-26 ', N'drezet@yahoo.com', N'ж', CAST(N'2016-06-30T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (22, N'Ершов', N'Глеб', N'Федорович', CAST(N'1970-06-14T00:00:00.000' AS DateTime), N'7(2608)298-40-82 ', N'sjava@aol.com', N'м', CAST(N'2016-09-14T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (23, N'Ефимова', N'Магда', N'Платоновна', CAST(N'1995-08-16T00:00:00.000' AS DateTime), N'7(9261)386-15-92 ', N'rbarreira@me.com', N'ж', CAST(N'2017-08-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (24, N'Ефремов', N'Витольд', N'Авксентьевич', CAST(N'1975-12-02T00:00:00.000' AS DateTime), N'7(93)922-14-03 ', N'kwilliams@yahoo.ca', N'м', CAST(N'2018-04-09T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (25, N'Журавлёв', N'Леонтий', N'Яковлевич', CAST(N'2000-03-02T00:00:00.000' AS DateTime), N'7(4403)308-56-96 ', N'cmdrgravy@me.com', N'м', CAST(N'2018-01-15T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (26, N'Зуев', N'Матвей', N'Иванович', CAST(N'1981-03-28T00:00:00.000' AS DateTime), N'7(5383)893-04-66 ', N'brickbat@verizon.net', N'м', CAST(N'2018-12-18T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (27, N'Игнатов', N'Захар', N'Павлович', CAST(N'1998-10-07T00:00:00.000' AS DateTime), N'7(578)574-73-36 ', N'dieman@icloud.com', N'м', CAST(N'2017-11-10T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (28, N'Казаков', N'Дмитрий', N'Русланович', CAST(N'1978-12-15T00:00:00.000' AS DateTime), N'7(51)682-19-40 ', N'ozawa@verizon.net', N'м', CAST(N'2016-05-21T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (29, N'Калашников', N'Артур', N'Юрьевич', CAST(N'1972-12-13T00:00:00.000' AS DateTime), N'7(147)947-47-21 ', N'oevans@aol.com', N'м', CAST(N'2017-08-20T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (30, N'Калинин', N'Петр', N'Иванович', CAST(N'1993-09-08T00:00:00.000' AS DateTime), N'7(90)316-07-17 ', N'aschmitz@hotmail.com', N'м', CAST(N'2016-05-26T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (31, N'Киселёв', N'Устин', N'Яковлевич', CAST(N'1985-01-08T00:00:00.000' AS DateTime), N'7(83)334-52-76 ', N'dalamb@verizon.net', N'м', CAST(N'2018-06-21T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (32, N'Колобов', N'Орест', N'Юлианович', CAST(N'2001-07-14T00:00:00.000' AS DateTime), N'7(1680)508-58-26 ', N'parkes@verizon.net', N'м', CAST(N'2017-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (33, N'Колобова', N'Злата', N'Романовна', CAST(N'1994-08-25T00:00:00.000' AS DateTime), N'7(50)884-07-35 ', N'sinkou@aol.com', N'ж', CAST(N'2016-12-03T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (34, N'Комиссарова', N'Амалия', N'Робертовна', CAST(N'1971-08-18T00:00:00.000' AS DateTime), N'7(22)647-46-32 ', N'jorgb@msn.com', N'ж', CAST(N'2017-08-04T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (35, N'Корнилова', N'Анэля', N'Михайловна', CAST(N'1973-04-02T00:00:00.000' AS DateTime), N'7(20)980-01-60 ', N'jonathan@aol.com', N'ж', CAST(N'2016-05-22T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (36, N'Костина', N'Любава', N'Авксентьевна', CAST(N'1972-07-13T00:00:00.000' AS DateTime), N'7(6419)959-21-87 ', N'gordonjcp@hotmail.com', N'ж', CAST(N'2016-02-26T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (37, N'Кузьмина', N'Дэнна', N'Витальевна', CAST(N'1993-08-24T00:00:00.000' AS DateTime), N'7(9940)977-45-73 ', N'nichoj@mac.com', N'ж', CAST(N'2016-03-27T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (38, N'Куликова', N'Эвелина', N'Вячеславовна', CAST(N'1997-11-14T00:00:00.000' AS DateTime), N'7(0236)682-42-78 ', N'ilikered@hotmail.com', N'ж', CAST(N'2018-02-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (39, N'Лазарев', N'Алексей', N'Богданович', CAST(N'1977-03-10T00:00:00.000' AS DateTime), N'7(0055)737-37-48 ', N'claesjac@me.com', N'м', CAST(N'2017-01-02T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (40, N'Мамонтова', N'Марфа', N'Мироновна', CAST(N'1984-10-19T00:00:00.000' AS DateTime), N'7(38)095-64-18 ', N'rfoley@verizon.net', N'ж', CAST(N'2018-02-27T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (41, N'Медведев', N'Святослав', N'Юлианович', CAST(N'1972-10-04T00:00:00.000' AS DateTime), N'7(3520)435-21-20 ', N'hllam@comcast.net', N'м', CAST(N'2018-10-13T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (42, N'Морозов', N'Наум', N'Валерьянович', CAST(N'1985-07-04T00:00:00.000' AS DateTime), N'7(636)050-96-13 ', N'salesgeek@mac.com', N'м', CAST(N'2016-05-02T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (43, N'Некрасов', N'Варлам', N'Михайлович', CAST(N'2000-11-12T00:00:00.000' AS DateTime), N'7(019)258-06-35 ', N'dogdude@verizon.net', N'м', CAST(N'2017-12-03T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (44, N'Орлова', N'Влада', N'Мартыновна', CAST(N'1990-06-26T00:00:00.000' AS DateTime), N'7(2506)433-38-35 ', N'rnelson@yahoo.ca', N'ж', CAST(N'2016-03-21T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (45, N'Попова', N'Харита', N'Якуновна', CAST(N'1997-12-16T00:00:00.000' AS DateTime), N'7(335)386-81-06 ', N'firstpr@verizon.net', N'ж', CAST(N'2016-07-05T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (46, N'Селиверстов', N'Глеб', N'Максимович', CAST(N'1999-06-20T00:00:00.000' AS DateTime), N'7(20)554-28-68 ', N'jigsaw@sbcglobal.net', N'м', CAST(N'2016-01-07T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (47, N'Степанова', N'Амелия', N'Робертовна', CAST(N'1970-06-06T00:00:00.000' AS DateTime), N'7(1217)441-28-42 ', N'rasca@hotmail.com', N'ж', CAST(N'2017-09-27T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (48, N'Суворова', N'Божена', N'Анатольевна', CAST(N'1981-03-09T00:00:00.000' AS DateTime), N'7(347)895-86-57 ', N'attwood@aol.com', N'ж', CAST(N'2016-01-28T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (49, N'Турова', N'Георгина', N'Семёновна', CAST(N'1974-05-28T00:00:00.000' AS DateTime), N'7(555)321-42-99 ', N'yruan@optonline.net', N'ж', CAST(N'2018-02-22T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([Id], [LastName], [FirstName], [Patronymic], [Birthday], [Phone], [Email], [Gender], [FirstEnterDate], [Photo], [ClientTagId]) VALUES (50, N'Федотова', N'Сандра', N'Владленовна', CAST(N'1985-03-29T00:00:00.000' AS DateTime), N'7(126)195-25-86 ', N'penna@verizon.net', N'ж', CAST(N'2016-11-08T00:00:00.000' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (1, N'Занятие с репетитором-носителем английского языка', N'', N'', N'920', 0, N'110', N' Photos\Английский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (2, N'Занятие с репетитором-носителем испанского языка', N'', N'', N'1090', 5, N'50', N' Photos\Испанский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (3, N'Занятие с репетитором-носителем итальянского языка', N'', N'', N'1370', 5, N'120', N' Photos\Итальянский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (4, N'Занятие с репетитором-носителем китайского языка', N'', N'', N'1950', NULL, N'120', N' Photos\Китайский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (5, N'Занятие с репетитором-носителем немецкого языка', N'', N'', N'1120', 0, N'120', N' Photos\Немецкий язык.png')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (6, N'Занятие с репетитором-носителем французского языка', N'', N'', N'2040', 0, N'50', N' Photos\Французский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (7, N'Занятие с репетитором-носителем японского языка', N'', N'', N'1100', 25, N'50', N' Photos\Японский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (8, N'Занятие с русскоязычным репетитором английского языка', N'', N'', N'1950', 15, N'90', N' Photos\Английский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (9, N'Занятие с русскоязычным репетитором испанского языка', N'', N'', N'1450', 15, N'50', N' Photos\Испанский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (10, N'Занятие с русскоязычным репетитором итальянского языка', N'', N'', N'1620', 20, N'70', N' Photos\Итальянский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (11, N'Занятие с русскоязычным репетитором китайского языка', N'', N'', N'940', 15, N'110', N' Photos\Китайский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (12, N'Занятие с русскоязычным репетитором немецкого языка', N'', N'', N'1420', 0, N'30', N' Photos\Немецкий язык.png')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (13, N'Занятие с русскоязычным репетитором португальского языка', N'', N'', N'1970', 10, N'50', N' Photos\Португальский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (14, N'Занятие с русскоязычным репетитором французского языка', N'', N'', N'1870', 20, N'100', N' Photos\Французский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (15, N'Занятие с русскоязычным репетитором японского языка', N'', N'', N'1260', 10, N'40', N' Photos\Японский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (16, N'Индивидуальный онлайн-урок английского языка по Skype', N'', N'', N'1880', 0, N'100', N' Photos\online lessons.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (17, N'Индивидуальный онлайн-урок испанского языка по Skype', N'', N'', N'1780', 5, N'70', N' Photos\online lessons.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (18, N'Индивидуальный онлайн-урок китайского языка по Skype', N'', N'', N'1410', 0, N'70', N' Photos\online lessons.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (19, N'Индивидуальный онлайн-урок немецкого языка по Skype', N'', N'', N'970', 0, N'90', N' Photos\online lessons.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (20, N'Индивидуальный онлайн-урок французского языка по Skype', N'', N'', N'2010', 0, N'120', N' Photos\online lessons.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (21, N'Индивидуальный онлайн-урок японского языка по Skype', N'', N'', N'1000', 20, N'80', N' Photos\online lessons.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (22, N'Индивидуальный урок английского языка с преподавателем-носителем языка', N'', N'', N'1300', 0, N'120', N' Photos\Английский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (23, N'Индивидуальный урок английского языка с русскоязычным преподавателем', N'', N'', N'1910', 10, N'30', N' Photos\Английский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (24, N'Индивидуальный урок испанского языка с преподавателем-носителем языка', N'', N'', N'1200', 10, N'90', N' Photos\Испанский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (25, N'Индивидуальный урок испанского языка с русскоязычным преподавателем', N'', N'', N'', 15, N'60', N' Photos\Испанский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (26, N'Индивидуальный урок итальянского языка с преподавателем-носителем языка', N'', N'', N'1690', 0, N'80', N' Photos\Итальянский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (27, N'Индивидуальный урок итальянского языка с русскоязычным преподавателем', N'', N'', N'1330', 20, N'30', N' Photos\Итальянский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (28, N'Индивидуальный урок китайского языка с преподавателем-носителем языка', N'', N'', N'1480', 20, N'90', N' Photos\Китайский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (29, N'Индивидуальный урок китайского языка с русскоязычным преподавателем', N'', N'', N'1860', 10, N'120', N' Photos\Китайский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (30, N'Индивидуальный урок немецкого языка с преподавателем-носителем языка', N'', N'', N'1340', NULL, N'110', N' Photos\Немецкий язык.png')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (31, N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', N'', N'', N'990', 5, N'30', N' Photos\Немецкий язык.png')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (32, N'Индивидуальный урок французского языка с преподавателем-носителем языка', N'', N'', N'', 20, N'40', N' Photos\Французский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (33, N'Индивидуальный урок французского языка с русскоязычным преподавателем', N'', N'', N'1390', 0, N'70', N' Photos\Французский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (34, N'Интенсивный курс английского языка с русскоязычным преподавателем для компаний', N'', N'', N'1210', 0, N'80', N' Photos\for company.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (35, N'Интенсивный курс испанского языка с русскоязычным преподавателем для компаний', N'', N'', N'', 25, N'90', N' Photos\for company.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (36, N'Интенсивный курс итальянского языка с русскоязычным преподавателем для компаний', N'', N'', N'900', 0, N'110', N' Photos\for company.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (37, N'Интенсивный курс китайского языка с русскоязычным преподавателем для компаний', N'', N'', N'1470', 0, N'110', N' Photos\for company.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (38, N'Интенсивный курс португальского языка с русскоязычным преподавателем для компаний', N'', N'', N'2010', 25, N'60', N' Photos\for company.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (39, N'Интенсивный курс с преподавателем-носителем английского языка для компаний', N'', N'', N'1670', 10, N'110', N' Photos\for company.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (40, N'Интенсивный курс с преподавателем-носителем испанского языка для компаний', N'', N'', N'1660', 0, N'90', N' Photos\for company.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (41, N'Интенсивный курс с преподавателем-носителем итальянского языка для компаний', N'', N'', N'1190', 20, N'40', N' Photos\for company.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (42, N'Интенсивный курс с преподавателем-носителем немецкого языка для компаний', N'', N'', N'1180', 20, N'120', N' Photos\for company.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (43, N'Интенсивный курс с преподавателем-носителем португальского языка для компаний', N'', N'', N'1580', 0, N'30', N' Photos\for company.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (44, N'Интенсивный курс с преподавателем-носителем французского языка для компаний', N'', N'', N'1630', 15, N'70', N' Photos\for company.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (45, N'Интенсивный курс с преподавателем-носителем японского языка для компаний', N'', N'', N'1380', 20, N'70', N' Photos\for company.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (46, N'Интенсивный курс французского языка с русскоязычным преподавателем для компаний', N'', N'', N'1940', 0, N'40', N' Photos\for company.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (47, N'Интенсивный курс японского языка с русскоязычным преподавателем для компаний', N'', N'', N'1500', 0, N'80', N' Photos\for company.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (48, N'Интенсивный онлайн-курс английского языка для компаний по Skype', N'', N'', N'1160', 0, N'50', N' Photos\online lessons.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (49, N'Интенсивный онлайн-курс испанского языка для компаний по Skype', N'', N'', N'1510', 0, N'120', N' Photos\online lessons.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (50, N'Интенсивный онлайн-курс итальянского языка для компаний по Skype', N'', N'', N'1230', 10, N'70', N' Photos\online lessons.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (51, N'Интенсивный онлайн-курс китайского языка для компаний по Skype', N'', N'', N'1760', 15, N'120', N' Photos\online lessons.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (52, N'Интенсивный онлайн-курс немецкого языка для компаний по Skype', N'', N'', N'1840', 10, N'70', N' Photos\online lessons.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (53, N'Интенсивный онлайн-курс португальского языка для компаний по Skype', N'', N'', N'1610', 5, N'70', N' Photos\online lessons.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (54, N'Интенсивный онлайн-курс французского языка для компаний по Skype', N'', N'', N'1180', 10, N'40', N' Photos\online lessons.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (55, N'Киноклуб английского языка для взрослых', N'', N'', N'1250', 5, N'70', N' Photos\киноклуб.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (56, N'Киноклуб английского языка для детей', N'', N'', N'1280', 5, N'40', N' Photos\киноклуб.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (57, N'Киноклуб английского языка для студентов', N'', N'', N'980', 0, N'80', N' Photos\киноклуб.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (58, N'Киноклуб испанского языка для студентов', N'', N'', N'1050', 10, N'40', N' Photos\киноклуб.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (59, N'Киноклуб итальянского языка для взрослых', N'', N'', N'1760', 0, N'110', N' Photos\киноклуб.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (60, N'Киноклуб итальянского языка для детей', N'', N'', N'1480', 0, N'70', N' Photos\киноклуб.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (61, N'Киноклуб итальянского языка для студентов', N'', N'', N'1760', 0, N'30', N' Photos\киноклуб.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (62, N'Киноклуб китайского языка для взрослых', N'', N'', N'1800', 25, N'70', N' Photos\киноклуб.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (63, N'Киноклуб китайского языка для детей', N'', N'', N'1120', 10, N'100', N' Photos\киноклуб.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (64, N'Киноклуб китайского языка для студентов', N'', N'', N'1990', NULL, N'100', N' Photos\киноклуб.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (65, N'Киноклуб немецкого языка для взрослых', N'', N'', N'1560', 10, N'100', N' Photos\киноклуб.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (66, N'Киноклуб немецкого языка для детей', N'', N'', N'1670', 5, N'120', N' Photos\киноклуб.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (67, N'Киноклуб немецкого языка для студентов', N'', N'', N'1140', 15, N'50', N' Photos\киноклуб.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (68, N'Киноклуб португальского языка для взрослых', N'', N'', N'950', 5, N'30', N' Photos\киноклуб.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (69, N'Киноклуб португальского языка для детей', N'', N'', N'1710', 15, N'90', N' Photos\киноклуб.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (70, N'Киноклуб португальского языка для студентов', N'', N'', N'1170', 15, N'30', N' Photos\киноклуб.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (71, N'Киноклуб французского языка для взрослых', N'', N'', N'1770', 10, N'90', N' Photos\киноклуб.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (72, N'Киноклуб французского языка для детей', N'', N'', N'1600', 10, N'90', N' Photos\киноклуб.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (73, N'Подготовка к экзамену ACT', N'', N'', N'1440', 0, N'50', N' Photos\Подготовка к экзамену ACT.png')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (74, N'Подготовка к экзамену GMAT', N'', N'', N'1150', 5, N'70', N' Photos\Подготовка к экзамену GMAT.png')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (75, N'Подготовка к экзамену GRE', N'', N'', N'1300', 20, N'80', N' Photos\Подготовка к экзамену GRE.jpeg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (76, N'Подготовка к экзамену IELTS', N'', N'', N'1730', 0, N'120', N' Photos\Подготовка к экзамену IELTS.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (77, N'Подготовка к экзамену IELTS Speaking Club', N'', N'', N'1430', 20, N'90', N' Photos\Подготовка к экзамену IELTS.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (78, N'Подготовка к экзамену SAT', N'', N'', N'1560', 0, N'40', N' Photos\Подготовка к экзамену SAT.png')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (79, N'Подготовка к экзамену TOEFL', N'', N'', N'1070', 5, N'100', N' Photos\Подготовка к экзамену TOEFL.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (80, N'Урок в группе английского языка для взрослых', N'', N'', N'1010', 25, N'50', N' Photos\Английский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (81, N'Урок в группе английского языка для студентов', N'', N'', N'960', 25, N'80', N' Photos\Английский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (82, N'Урок в группе английского языка для школьников', N'', N'', N'900', 0, N'110', N' Photos\Английский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (83, N'Урок в группе испанского языка для взрослых', N'', N'', N'1730', 5, N'30', N' Photos\Испанский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (84, N'Урок в группе испанского языка для студентов', N'', N'', N'1310', 20, N'100', N' Photos\Испанский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (85, N'Урок в группе испанского языка для школьников', N'', N'', N'1910', 0, N'120', N' Photos\Испанский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (86, N'Урок в группе итальянского языка для взрослых', N'', N'', N'1290', 0, N'40', N' Photos\Итальянский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (87, N'Урок в группе итальянского языка для студентов', N'', N'', N'1020', 0, N'110', N' Photos\Итальянский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (88, N'Урок в группе итальянского языка для школьников', N'', N'', N'1410', 15, N'100', N' Photos\Итальянский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (89, N'Урок в группе китайского языка для взрослых', N'', N'', N'1730', 25, N'70', N' Photos\Китайский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (90, N'Урок в группе китайского языка для студентов', N'', N'', N'2000', 20, N'40', N' Photos\Китайский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (91, N'Урок в группе китайского языка для школьников', N'', N'', N'1180', 15, N'50', N' Photos\Китайский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (92, N'Урок в группе немецкого языка для взрослых', N'', N'', N'930', 5, N'60', N' Photos\Немецкий язык.png')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (93, N'Урок в группе немецкого языка для студентов', N'', N'', N'1240', 0, N'70', N' Photos\Немецкий язык.png')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (94, N'Урок в группе немецкого языка для школьников', N'', N'', N'1570', 15, N'30', N' Photos\Немецкий язык.png')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (95, N'Урок в группе французского языка для взрослых', N'', N'', N'960', 15, N'120', N' Photos\Французский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (96, N'Урок в группе французского языка для студентов', N'', N'', N'1910', 0, N'30', N' Photos\Французский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (97, N'Урок в группе французского языка для школьников', N'', N'', N'1970', 0, N'100', N' Photos\Французский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (98, N'Урок в группе японского языка для взрослых', N'', N'', N'1420', 5, N'80', N' Photos\Японский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (99, N'Урок в группе японского языка для студентов', N'', N'', N'1860', 0, N'50', N' Photos\Японский язык.jpg')
GO
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (100, N'Урок в группе японского языка для школьников', N'', N'', N'1300', 5, N'80', N' Photos\Японский язык.jpg')
INSERT [dbo].[Service] ([Id], [Name], [GenderRecomented], [Description], [Cost], [Sale], [Duration], [MainPhoto]) VALUES (103, N'Дамир', N'M', N'Опсми', N'11', 16, N'11', N'Photos/2733208746.jpg')
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
SET IDENTITY_INSERT [dbo].[SignUpService] ON 

INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (1, 49, 10, N'', CAST(N'2019-11-16T11:20:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (2, 37, 41, N'', CAST(N'2019-01-11T18:10:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (3, 37, 19, N'', CAST(N'2019-12-01T14:40:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (4, 37, 28, N'', CAST(N'2019-02-11T13:30:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (5, 20, 30, N'', CAST(N'2019-09-10T18:20:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (6, 48, 26, N'', CAST(N'2019-02-12T19:40:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (7, 24, 92, N'', CAST(N'2019-04-04T09:10:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (8, 21, 20, N'', CAST(N'2019-05-15T09:20:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (9, 16, 52, N'', CAST(N'2019-01-16T14:20:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (10, 30, 34, N'', CAST(N'2019-01-16T09:00:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (11, 3, 52, N'', CAST(N'2019-03-15T10:50:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (12, 26, 41, N'', CAST(N'2019-01-31T12:00:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (13, 6, 64, N'', CAST(N'2019-11-19T15:50:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (14, 33, 32, N'', CAST(N'2019-01-10T08:30:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (15, 35, 52, N'', CAST(N'2019-04-29T15:00:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (16, 43, 80, N'', CAST(N'2019-10-12T08:50:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (17, 48, 48, N'', CAST(N'2019-02-13T18:00:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (18, 33, 64, N'', CAST(N'2019-02-01T18:00:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (19, 30, 63, N'', CAST(N'2019-11-12T18:50:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (20, 17, 83, N'', CAST(N'2019-01-11T12:50:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (21, 9, 50, N'', CAST(N'2019-03-23T19:50:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (22, 43, 12, N'', CAST(N'2019-06-23T08:00:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (23, 38, 18, N'', CAST(N'2019-05-25T17:10:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (24, 17, 67, N'', CAST(N'2019-02-18T18:20:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (25, 35, 13, N'', CAST(N'2019-07-17T08:20:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (26, 35, 92, N'', CAST(N'2019-08-06T16:50:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (27, 1, 77, N'', CAST(N'2019-12-14T08:40:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (28, 22, 76, N'', CAST(N'2019-06-28T14:20:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (29, 48, 97, N'', CAST(N'2019-06-06T19:20:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (30, 24, 50, N'', CAST(N'2019-06-07T17:20:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (31, 46, 23, N'', CAST(N'2019-04-30T18:10:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (32, 6, 83, N'', CAST(N'2019-08-30T11:40:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (33, 25, 20, N'', CAST(N'2019-05-08T14:10:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (34, 42, 66, N'', CAST(N'2019-10-27T16:20:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (35, 30, 13, N'', CAST(N'2019-01-05T08:40:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (36, 22, 27, N'', CAST(N'2019-03-04T17:20:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (37, 50, 69, N'', CAST(N'2019-09-29T13:40:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (38, 27, 3, N'', CAST(N'2019-01-22T10:50:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (39, 30, 64, N'', CAST(N'2019-12-19T19:30:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (40, 32, 29, N'', CAST(N'2019-11-15T17:50:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (41, 12, 9, N'', CAST(N'2019-07-04T17:10:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (42, 21, 41, N'', CAST(N'2019-08-06T11:50:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (43, 35, 80, N'', CAST(N'2019-11-09T13:00:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (44, 24, 62, N'', CAST(N'2019-02-16T18:50:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (45, 23, 69, N'', CAST(N'2019-03-03T17:20:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (46, 13, 23, N'', CAST(N'2019-05-22T16:10:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (47, 36, 10, N'', CAST(N'2019-07-31T18:10:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (48, 16, 27, N'', CAST(N'2019-08-29T19:00:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (49, 21, 13, N'', CAST(N'2019-10-02T10:10:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (50, 8, 41, N'', CAST(N'2019-03-16T11:30:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (51, 43, 29, N'', CAST(N'2019-08-27T11:40:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (52, 18, 66, N'', CAST(N'2019-06-13T11:30:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (53, 4, 80, N'', CAST(N'2019-08-18T16:00:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (54, 14, 34, N'', CAST(N'2019-12-26T16:30:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (55, 11, 7, N'', CAST(N'2019-11-27T18:50:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (56, 47, 13, N'', CAST(N'2019-09-06T19:20:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (57, 46, 98, N'', CAST(N'2019-09-24T13:40:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (58, 32, 89, N'', CAST(N'2019-03-01T11:50:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (59, 5, 7, N'', CAST(N'2019-09-28T10:00:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (60, 15, 92, N'', CAST(N'2019-03-20T10:40:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (61, 10, 80, N'', CAST(N'2019-11-27T11:30:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (62, 3, 60, N'', CAST(N'2019-01-23T18:30:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (63, 27, 27, N'', CAST(N'2019-10-21T10:20:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (64, 28, 92, N'', CAST(N'2019-08-11T12:50:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (65, 7, 13, N'', CAST(N'2019-01-03T14:40:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (66, 33, 64, N'', CAST(N'2019-12-31T08:30:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (67, 41, 20, N'', CAST(N'2019-08-29T10:10:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (68, 13, 19, N'', CAST(N'2019-01-03T18:50:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (69, 14, 30, N'', CAST(N'2019-04-09T11:10:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (70, 27, 12, N'', CAST(N'2019-12-31T19:10:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (71, 2, 19, N'', CAST(N'2019-10-17T13:30:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (72, 46, 69, N'', CAST(N'2019-05-17T13:30:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (73, 11, 14, N'', CAST(N'2019-11-23T18:40:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (74, 10, 83, N'', CAST(N'2019-07-10T15:30:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (75, 37, 40, N'', CAST(N'2019-06-09T13:40:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (76, 23, 69, N'', CAST(N'2019-01-09T10:20:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (77, 2, 60, N'', CAST(N'2019-08-15T18:30:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (78, 29, 83, N'', CAST(N'2019-07-15T14:10:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (79, 21, 14, N'', CAST(N'2019-12-31T18:00:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (80, 32, 7, N'', CAST(N'2019-12-22T09:20:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (81, 14, 51, N'', CAST(N'2019-12-28T16:00:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (82, 33, 69, N'', CAST(N'2019-06-26T10:10:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (83, 10, 10, N'', CAST(N'2019-04-29T12:40:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (84, 48, 10, N'', CAST(N'2019-04-13T09:00:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (85, 23, 48, N'', CAST(N'2019-01-05T16:00:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (86, 5, 40, N'', CAST(N'2019-03-25T18:20:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (87, 29, 18, N'', CAST(N'2019-11-09T18:50:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (88, 31, 41, N'', CAST(N'2019-04-07T10:40:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (89, 49, 67, N'', CAST(N'2019-11-11T18:50:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (90, 34, 13, N'', CAST(N'2019-01-06T15:00:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (91, 4, 48, N'', CAST(N'2019-08-20T19:10:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (92, 45, 48, N'', CAST(N'2019-04-16T13:20:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (93, 27, 52, N'', CAST(N'2019-12-22T15:10:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (94, 40, 83, N'', CAST(N'2019-01-22T16:50:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (95, 8, 18, N'', CAST(N'2019-09-04T08:10:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (96, 41, 77, N'', CAST(N'2019-01-01T14:50:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (97, 35, 14, N'', CAST(N'2019-01-29T16:30:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (98, 40, 49, N'', CAST(N'2019-07-06T11:30:00.000' AS DateTime))
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (99, 28, 98, N'', CAST(N'2019-12-05T10:20:00.000' AS DateTime))
GO
INSERT [dbo].[SignUpService] ([Id], [ClientId], [ServiceId], [Description], [StartDate]) VALUES (100, 20, 48, N'', CAST(N'2019-04-05T13:20:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[SignUpService] OFF
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD FOREIGN KEY([ClientTagId])
REFERENCES [dbo].[ClientTag] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([EmployeeCategoryId])
REFERENCES [dbo].[EmployeeCategory] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmployeeService]  WITH CHECK ADD FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmployeeService]  WITH CHECK ADD FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ManufacturerId])
REFERENCES [dbo].[Manufacter] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SaleProduct]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SaleProduct]  WITH CHECK ADD FOREIGN KEY([SalesHistoryId])
REFERENCES [dbo].[SalesHistory] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SalesHistory]  WITH CHECK ADD FOREIGN KEY([ClientId])
REFERENCES [dbo].[Client] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SalesHistory]  WITH CHECK ADD FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ServicePhoto]  WITH CHECK ADD FOREIGN KEY([PhotoId])
REFERENCES [dbo].[Photo] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ServicePhoto]  WITH CHECK ADD FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SignUpService]  WITH CHECK ADD FOREIGN KEY([ClientId])
REFERENCES [dbo].[Client] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SignUpService]  WITH CHECK ADD FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SignUpServiceDocument]  WITH CHECK ADD FOREIGN KEY([DocumentId])
REFERENCES [dbo].[Document] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SignUpServiceDocument]  WITH CHECK ADD FOREIGN KEY([SignUpServiceId])
REFERENCES [dbo].[SignUpService] ([Id])
ON DELETE CASCADE
GO
