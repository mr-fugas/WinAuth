USE [master]
GO
/****** Object:  Database [user26]    Script Date: 17.05.2025 9:28:17 ******/
CREATE DATABASE [user26]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'user26', FILENAME = N'D:\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\user26.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'user26_log', FILENAME = N'D:\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\user26_log.ldf' , SIZE = 2816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [user26] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [user26].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [user26] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [user26] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [user26] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [user26] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [user26] SET ARITHABORT OFF 
GO
ALTER DATABASE [user26] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [user26] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [user26] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [user26] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [user26] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [user26] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [user26] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [user26] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [user26] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [user26] SET  ENABLE_BROKER 
GO
ALTER DATABASE [user26] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [user26] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [user26] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [user26] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [user26] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [user26] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [user26] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [user26] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [user26] SET  MULTI_USER 
GO
ALTER DATABASE [user26] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [user26] SET DB_CHAINING OFF 
GO
ALTER DATABASE [user26] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [user26] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [user26] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [user26] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [user26] SET QUERY_STORE = ON
GO
ALTER DATABASE [user26] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [user26]
GO
/****** Object:  Table [dbo].[Agent]    Script Date: 17.05.2025 9:28:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent](
	[IdAgent] [int] IDENTITY(1,1) NOT NULL,
	[TypeId] [int] NOT NULL,
	[NameAgent] [nvarchar](40) NOT NULL,
	[Email] [nvarchar](40) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Logo] [nvarchar](30) NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Priority] [int] NOT NULL,
	[Director] [nvarchar](100) NOT NULL,
	[INN] [nchar](10) NOT NULL,
	[KPP] [nchar](9) NOT NULL,
 CONSTRAINT [PK_Agent] PRIMARY KEY CLUSTERED 
(
	[IdAgent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 17.05.2025 9:28:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[IdProduct] [int] IDENTITY(1,1) NOT NULL,
	[NameProduct] [nvarchar](100) NOT NULL,
	[Article] [nvarchar](10) NOT NULL,
	[MinCost] [numeric](18, 2) NOT NULL,
	[Image] [nvarchar](60) NULL,
	[TypeProductId] [int] NOT NULL,
	[QuantityPerson] [int] NOT NULL,
	[NumberPlant] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[IdProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 17.05.2025 9:28:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[IdRole] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[IdRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 17.05.2025 9:28:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[IdType] [int] IDENTITY(1,1) NOT NULL,
	[NameType] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[IdType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeAgent]    Script Date: 17.05.2025 9:28:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeAgent](
	[IdType] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nchar](3) NOT NULL,
 CONSTRAINT [PK_TypeAgent] PRIMARY KEY CLUSTERED 
(
	[IdType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 17.05.2025 9:28:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[IdUser] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[MiddleName] [nvarchar](30) NOT NULL,
	[RoleId] [int] NOT NULL,
	[Login] [nvarchar](30) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Agent] ON 

INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (5, 5, N'Компания СервисРадиоГор', N'nika.nekrasova@kovalev.ru', N'8-800-676-32-86', N'\agents\agent_40.png', N'547196, Ульяновская область, город Серебряные Пруды, въезд Балканская, 81', 491, N'Попов Вадим Александрович', N'8880473721', N'729975116')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (6, 1, N'ВодТверьХозМашина', N'tkrylov@baranova.net', N'+7 (922) 849-91-96', N'\agents\agent_56.png', N'145030, Сахалинская область, город Шатура, въезд Гоголя, 79', 1, N'Александра Дмитриевна Ждановаа', N'4174253174', N'522227145')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (7, 4, N'Тех', N'vasilisa99@belyev.ru', N'+7 (922) 427-13-31', N'\agents\agent_61.png', N'731935, Калининградская область, город Павловский Посад, наб. Гагарина, 59', 278, N'Аким Романович Логинова', N'9282924869', N'587356429')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (8, 5, N'ТверьМетизУралСнос', N'rlazareva@novikov.ru', N'(35222) 57-92-75', N'\agents\agent_109.png', N'880551, Ленинградская область, город Красногорск, ул. Гоголя, 61', 165, N'Зоя Андреевна Соболева', N'1076095397', N'947828491')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (9, 1, N'МясРеч', N'bkozlov@volkov.ru', N'8-800-453-63-45', N'\agents\agent_58.png', N'903648, Калужская область, город Воскресенск, пр. Будапештсткая, 91', 355, N'Белоусоваа Ирина Максимовна', N'9254261217', N'656363498')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (10, 1, N'Флот', N'gerasim.makarov@kornilov.ru', N'8-800-144-25-38', N'\agents\agent_87.png', N'505562, Тюменская область, город Наро-Фоминск, пр. Косиора, 11', 473, N'Василий Андреевич Ковалёв', N'1112170258', N'382584255')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (11, 1, N'CибПивОмскСнаб', N'evorontova@potapova.ru', N'+7 (922) 153-95-22', N'\agents\agent_46.png', N'816260, Ивановская область, город Москва, ул. Гагарина, 31', 477, N'Людмила Александровна Сафонова', N'5676173945', N'256512286')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (12, 1, N'ЦементАсбоцемент', N'polykov.veronika@artemeva.ru', N'(495) 184-87-92', NULL, N'619540, Курская область, город Раменское, пл. Балканская, 12', 426, N'Воронова Мария Александровна', N'4345774724', N'352469905')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (13, 1, N'ТелеГлавВекторСбыт', N'nsitnikov@kovaleva.ru', N'(35222) 56-15-37', N'\agents\agent_31.png', N'062489, Челябинская область, город Пушкино, въезд Бухарестская, 07', 185, N'Екатерина Фёдоровна Ковалёва', N'9504787157', N'419758597')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (14, 4, N'Инфо', N'arsenii.mikailova@prokorov.com', N'8-800-793-59-97', N'\agents\agent_89.png', N'100469, Рязанская область, город Ногинск, шоссе Гагарина, 57', 304, N'Баранова Виктор Романович', N'6549468639', N'718386757')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (15, 1, N'ЭлектроРемОрионЛизинг', N'anfisa.fedotova@tvetkov.ru', N'(495) 519-97-41', N'\agents\agent_68.png', N'594365, Ярославская область, город Павловский Посад, бульвар Космонавтов, 64', 198, N'Тарасова Дан Львович', N'1340072597', N'500478249')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (16, 5, N'Компания ТелекомХмельГаражПром', N'qkolesnikova@kalinina.ru', N'(812) 983-91-73', N'\agents\agent_71.png', N'126668, Ростовская область, город Зарайск, наб. Гагарина, 69', 457, N'Костина Татьяна Борисовна', N'1614623826', N'824882264')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (17, 5, N'Компания Алмаз', N'akalinina@zaitev.ru', N'+7 (922) 688-74-22', N'\agents\agent_121.png', N'016215, Воронежская область, город Зарайск, ул. Косиора, 48', 259, N'Фоминаа Лариса Романовна', N'6698862694', N'662876919')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (18, 4, N'МясТрансМоторЛизинг', N'vlad.sokolov@andreev.org', N'+7 (922) 676-34-94', N'\agents\agent_62.png', N'765320, Ивановская область, город Шатура, спуск Гоголя, 88', 268, N'Тамара Дмитриевна Семёноваа', N'6148685143', N'196332656')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (19, 3, N'Монтаж', N'zakar.sazonova@gavrilov.ru', N'(495) 867-76-15', NULL, N'066594, Магаданская область, город Шаховская, спуск Сталина, 59', 300, N'Блохина Сергей Максимович', N'6142194281', N'154457435')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (20, 5, N'ВостокГлав', N'gordei95@kirillov.ru', N'(812) 949-29-26', N'\agents\agent_63.png', N'217022, Ростовская область, город Озёры, ул. Домодедовская, 19', 107, N'Инга Фёдоровна Дмитриева', N'3580946305', N'405017349')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (21, 3, N'Газ', N'ulyna.antonov@noskov.ru', N'(35222) 22-45-58', N'\agents\agent_76.png', N'252821, Тамбовская область, город Пушкино, ул. Чехова, 40', 170, N'Терентьев Илларион Максимович', N'8876413796', N'955381891')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (22, 4, N'ЭлектроТранс', N'boleslav.zukova@nikiforova.com', N'(812) 342-24-31', N'\agents\agent_91.png', N'434616, Калининградская область, город Павловский Посад, пл. Ладыгина, 83', 129, N'Сава Александрович Титова', N'6019144874', N'450629885')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (23, 4, N'Электро', N'likacev.makar@antonov.ru', N'8-800-714-36-41', N'\agents\agent_93.png', N'966815, Новгородская область, город Одинцово, пр. Космонавтов, 19', 366, N'Шарапова Елена Дмитриевна', N'7896029866', N'786038848')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (24, 2, N'Гор', N'maiy12@koklov.net', N'(495) 973-48-55', N'\agents\agent_52.png', N'376483, Калужская область, город Сергиев Посад, ул. Славы, 09', 175, N'Нонна Львовна Одинцоваа', N'7088187045', N'440309946')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (25, 5, N'Компания Гараж', N'asiryeva@andreeva.com', N'+7 (922) 848-38-54', N'\agents\agent_66.png', N'395101, Белгородская область, город Балашиха, бульвар 1905 года, 00', 413, N'Владлена Фёдоровна Ларионоваа', N'6190244524', N'399106161')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (26, 6, N'ОрионГлав', N'sermakova@sarova.net', N'+7 (922) 684-13-74', N'\agents\agent_106.png', N'729639, Магаданская область, город Талдом, въезд Будапештсткая, 98', 482, N'Тимофеева Григорий Андреевич', N'9032455179', N'763045792')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (27, 3, N'ГлавITФлотПроф', N'savva.rybov@kolobov.ru', N'(812) 146-66-46', N'\agents\agent_64.png', N'447811, Мурманская область, город Егорьевск, ул. Ленина, 24', 62, N'Зыкова Стефан Максимович', N'2561361494', N'525678825')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (28, 6, N'ТверьМонтажОмск', N'dteterina@selezneva.ru', N'8-800-363-43-86', N'\agents\agent_128.png', N'761751, Амурская область, город Балашиха, шоссе Гоголя, 02', 272, N'Матвей Романович Большакова', N'2421347164', N'157370604')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (29, 4, N'РемСантехОмскБанк', N'anisimov.mark@vorobev.ru', N'(812) 182-44-77', N'\agents\agent_57.png', N'289468, Омская область, город Видное, пер. Балканская, 33', 442, N'Фокина Искра Максимовна', N'6823050572', N'176488617')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (30, 4, N'ЭлектроМоторТрансСнос', N'inessa.voronov@sidorova.ru', N'(35222) 43-62-19', NULL, N'913777, Самарская область, город Красногорск, ул. Бухарестская, 49', 151, N'Людмила Евгеньевна Новиковаа', N'6608362851', N'799760512')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (31, 2, N'ТверьХозМорСбыт', N'marina58@koroleva.com', N'(495) 416-75-67', N'\agents\agent_117.png', N'252101, Ростовская область, город Дорохово, пер. Ленина, 85', 207, N'Аким Львович Субботина', N'6681338084', N'460530907')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (32, 5, N'Компания ТомскХоз', N'nelli11@gureva.ru', N'+7 (922) 849-13-37', N'\agents\agent_115.png', N'861543, Томская область, город Истра, бульвар Славы, 42', 464, N'Лазарева Аркадий Сергеевич', N'8430391035', N'961540858')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (33, 5, N'Компания МясДизайнДизайн', N'gleb.gulyev@belyeva.com', N'(812) 535-17-25', N'\agents\agent_53.png', N'557264, Брянская область, город Серпухов, въезд Гоголя, 34', 491, N'Клементина Сергеевна Стрелкова', N'8004989990', N'908629456')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (34, 5, N'Компания ЖелДорТверьМонтаж', N'burova.zlata@zueva.ru', N'(495) 521-61-75', N'\agents\agent_85.png', N'152424, Рязанская область, город Сергиев Посад, ул. 1905 года, 27', 2, N'Нестор Максимович Гуляев', N'3325722996', N'665766347')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (35, 5, N'МетизТехАвтоПроф', N'anastasiy.gromov@samsonova.com', N'(495) 581-42-46', N'\agents\agent_33.png', N'713016, Брянская область, город Подольск, пл. Домодедовская, 93', 321, N'Егор Фёдорович Третьякова', N'2988890076', N'215491048')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (36, 3, N'Гараж', N'antonin51@korolev.com', N'(35222) 54-72-59', N'\agents\agent_90.png', N'585758, Самарская область, город Красногорск, бульвар Балканская, 13', 107, N'Панфилов Константин Максимович', N'2638464552', N'746822723')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (37, 2, N'ГазДизайнЖелДор', N'elizaveta.komarov@rybakov.net', N'(495) 797-97-33', N'\agents\agent_49.png', N'695230, Курская область, город Красногорск, пр. Гоголя, 64', 236, N'Лев Иванович Третьяков', N'2396029740', N'458924890')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (38, 4, N'РемГаражЛифт', N'novikova.gleb@sestakov.ru', N'8-800-772-27-53', N'\agents\agent_65.png', N'048715, Ивановская область, город Люберцы, проезд Космонавтов, 89', 374, N'Филатов Владимир Максимович', N'1656477206', N'988968838')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (39, 3, N'СантехБашкир', N'nikodim81@kiseleva.com', N'+7 (922) 155-87-39', N'\agents\agent_99.png', N'180288, Тверская область, город Одинцово, ул. Бухарестская, 37', 369, N'Виктор Иванович Молчанов', N'4159215346', N'639267493')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (40, 2, N'ЮпитерЛенГараж-М', N'larkipova@gorbunov.ru', N'(495) 327-58-25', N'\agents\agent_48.png', N'339507, Московская область, город Видное, ул. Космонавтов, 11', 470, N'Васильева Валерия Борисовна', N'2038393690', N'259672761')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (41, 1, N'ОрионСофтВодСнос', N'isukanov@sobolev.com', N'(35222) 59-75-11', N'\agents\agent_97.png', N'577227, Калужская область, город Павловский Посад, наб. Чехова, 35', 361, N'Мухина Ян Фёдорович', N'1522348613', N'977738715')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (42, 4, N'КазХоз', N'istrelkova@fomin.ru', N'+7 (922) 728-85-62', NULL, N'384162, Астраханская область, город Одинцово, бульвар Гагарина, 57', 213, N'Степанова Роман Иванович', N'6503377671', N'232279972')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (43, 6, N'БухВжух', N'valentina.bolsakova@aksenova.ru', N'(495) 367-21-41', NULL, N'481744, Амурская область, город Щёлково, пл. Сталина, 48', 327, N'Тарасов Болеслав Александрович', N'2320989197', N'359282667')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (44, 4, N'ХозЮпитер', N'jisakova@nazarova.com', N'+7 (922) 332-48-96', N'\agents\agent_114.png', N'038182, Курганская область, город Москва, спуск Космонавтов, 16', 375, N'Максимоваа Вера Фёдоровна', N'6667635058', N'380592865')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (45, 3, N'ВостокКазРыб', N'flukin@misin.org', N'(495) 987-31-63', N'\agents\agent_112.png', N'059565, Оренбургская область, город Истра, шоссе Домодедовская, 27', 361, N'Самсонов Родион Романович', N'7411284960', N'176779733')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (46, 1, N'ЦементКрепТех-М', N'yna.evdokimov@gordeeva.ru', N'(812) 838-79-58', N'\agents\agent_82.png', N'263764, Свердловская область, город Раменское, пер. Косиора, 28', 189, N'Сергеев Владлен Александрович', N'5359981084', N'680416300')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (47, 3, N'Строй', N'soloveva.adam@andreev.ru', N'(812) 447-45-59', NULL, N'763019, Омская область, город Шатура, пл. Сталина, 56', 12, N'Кудрявцев Адриан Андреевич', N'6678884759', N'279288618')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (48, 1, N'БашкирЮпитерТомск', N'dyckov.veniamin@kotova.ru', N'(812) 189-59-57', N'\agents\agent_59.png', N'035268, Сахалинская область, город Волоколамск, проезд Ладыгина, 51', 139, N'Фадеева Раиса Александровна', N'1606315697', N'217799345')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (49, 5, N'Компания КазМеталКазань', N'mmoiseev@teterin.ru', N'(495) 685-34-29', N'\agents\agent_130.png', N'532703, Пензенская область, город Чехов, наб. Чехова, 81', 252, N'Валерий Владимирович Хохлова', N'4598939812', N'303467543')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (50, 5, N'Компания Газ', N'alina56@zdanov.com', N'(35222) 75-96-85', N'\agents\agent_120.png', N'310403, Кировская область, город Солнечногорск, пл. Балканская, 76', 445, N'Давид Андреевич Фадеев', N'2262431140', N'247369527')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (51, 5, N'Компания Монтаж', N'afanasev.anastasiy@muravev.ru', N'(35222) 92-45-98', N'\agents\agent_75.png', N'036381, Брянская область, город Кашира, бульвар Гагарина, 76', 124, N'Силин Даниил Иванович', N'6206428565', N'118570048')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (52, 1, N'СервисХмельМонтаж', N'galina31@melnikov.ru', N'+7 (922) 344-73-38', N'\agents\agent_92.png', N'928260, Нижегородская область, город Балашиха, пл. Косиора, 44', 124, N'Анжелика Дмитриевна Горбунова', N'3459886235', N'356196105')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (53, 4, N'ВодГараж', N'pmaslov@fomiceva.com', N'+7 (922) 363-86-67', N'\agents\agent_67.png', N'988899, Саратовская область, город Раменское, пр. Славы, 40', 250, N'Лаврентий Фёдорович Логинова', N'5575072431', N'684290320')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (54, 2, N'CибГаз', N'inna.sarova@panfilov.ru', N'(495) 945-37-25', N'\agents\agent_103.png', N'365674, Архангельская область, город Серебряные Пруды, пр. Ленина, 29', 488, N'Вячеслав Романович Третьякова', N'6483417250', N'455013058')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (55, 2, N'БашкирФлотМотор-H', N'morozova.nika@kazakova.ru', N'(495) 793-84-82', N'\agents\agent_36.png', N'008081, Тюменская область, город Ногинск, въезд Гагарина, 94', 416, N'Марат Алексеевич Фролов', N'1657476072', N'934931159')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (56, 6, N'МеталСервисМор', N'xdanilov@titov.ru', N'(35222) 91-28-62', NULL, N'293265, Иркутская область, город Клин, пр. Славы, 12', 475, N'Коновалова Кирилл Львович', N'6922817841', N'580142825')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (57, 1, N'Рем', N'zanna25@nikiforova.com', N'(495) 987-88-53', N'\agents\agent_79.png', N'707812, Иркутская область, город Шаховская, ул. Гагарина, 17', 329, N'Шароваа Елизавета Львовна', N'3203830728', N'456254820')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (58, 5, N'СантехСеверЛенМашина', N'pgorbacev@vasilev.net', N'(812) 918-88-43', N'\agents\agent_74.png', N'606990, Новосибирская область, город Павловский Посад, въезд Домодедовская, 38', 201, N'Павел Максимович Рожков', N'3506691089', N'830713603')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (59, 5, N'Цемент', N'panova.klementina@bobrov.ru', N'8-800-517-78-47', N'\agents\agent_54.png', N'084315, Амурская область, город Шаховская, наб. Чехова, 62', 340, N'Анфиса Фёдоровна Буроваа', N'9662118663', N'650216214')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (60, 1, N'Вод', N'savva86@zaiteva.ru', N'(495) 142-19-84', N'\agents\agent_129.png', N'964386, Оренбургская область, город Чехов, пл. Косиора, 80', 359, N'Зоя Романовна Селезнёва', N'1296063939', N'447430051')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (61, 6, N'Орион', N'aleksei63@kiselev.ru', N'8-800-621-61-93', N'\agents\agent_77.png', N'951035, Ивановская область, город Ступино, шоссе Космонавтов, 73', 166, N'Мартынов Михаил Борисович', N'2670166502', N'716874456')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (62, 4, N'СтройГорНефть', N'lysy.kolesnikova@molcanova.com', N'(812) 385-21-37', N'\agents\agent_37.png', N'444539, Ульяновская область, город Лотошино, спуск Будапештсткая, 95', 161, N'Тарасова Макар Максимович', N'5916775587', N'398299418')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (63, 5, N'Компания Хмель', N'ermakov.mark@isakova.ru', N'(812) 421-77-82', NULL, N'889757, Новосибирская область, город Раменское, бульвар 1905 года, 93', 2, N'Владимир Борисович Суворова', N'9004087602', N'297273898')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (64, 5, N'Компания ВодАлмазIT', N'zakar37@nikolaeva.ru', N'(35222) 52-76-16', N'\agents\agent_111.png', N'302100, Нижегородская область, город Мытищи, пер. 1905 года, 63', 31, N'Гуляев Егор Евгеньевич', N'2345297765', N'908449277')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (65, 6, N'БашкирРечТомск', N'aleksandra77@karpov.com', N'8-800-254-71-85', N'\agents\agent_100.png', N'136886, Амурская область, город Видное, въезд Космонавтов, 39', 84, N'Назарова Вера Андреевна', N'7027724917', N'823811460')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (66, 1, N'СофтРосБух', N'ivanova.antonin@rodionov.ru', N'+7 (922) 445-69-17', N'\agents\agent_124.png', N'747695, Амурская область, город Сергиев Посад, въезд Бухарестская, 46', 69, N'Белова Полина Владимировна', N'8321561226', N'807803984')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (67, 2, N'ТелекомЮпитер', N'kulikov.adrian@zuravlev.org', N'(812) 895-67-23', N'\agents\agent_81.png', N'959793, Курская область, город Егорьевск, бульвар Ленина, 72', 302, N'Калинина Татьяна Ивановна', N'9383182378', N'944520594')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (68, 1, N'УралСтройХмель', N'aleksandr95@kolobova.ru', N'(35222) 39-23-65', N'\agents\agent_113.png', N'462632, Костромская область, город Шаховская, шоссе Сталина, 92', 372, N'Август Борисович Красильникова', N'8773558039', N'402502867')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (69, 3, N'АсбоцементТехАвто', N'matveev.yliy@kiseleva.ru', N'+7 (922) 977-68-84', N'\agents\agent_110.png', N'304975, Пензенская область, город Солнечногорск, шоссе Балканская, 76', 247, N'Сидорова Любовь Ивановна', N'7626076463', N'579234124')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (70, 5, N'Компания ФинансСервис', N'robert.serbakov@safonova.ru', N'(812) 878-42-71', N'\agents\agent_38.png', N'841700, Брянская область, город Серпухов, спуск Домодедовская, 35', 395, N'Клавдия Сергеевна Виноградова', N'7491491391', N'673621812')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (71, 4, N'Софт', N'jterentev@ersov.com', N'(35222) 12-82-65', N'\agents\agent_122.png', N'453714, Смоленская область, город Одинцово, спуск Косиора, 84', 292, N'Петухова Прохор Фёдорович', N'3889910123', N'952047511')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (72, 4, N'ТелекомГор', N'gorskov.larisa@kalinin.com', N'(35222) 78-93-21', N'\agents\agent_98.png', N'210024, Белгородская область, город Сергиев Посад, наб. Ломоносова, 43', 255, N'Ксения Андреевна Михайлова', N'3748947224', N'766431901')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (73, 6, N'РемСтрем', N'rafail96@sukin.ru', N'(35222) 55-28-24', N'\agents\agent_116.png', N'373761, Псковская область, город Наро-Фоминск, наб. Гагарина, 03', 88, N'Альбина Александровна Романова', N'9006569852', N'152177100')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (74, 5, N'Лифт', N'zinaida01@bespalova.ru', N'(812) 484-92-38', N'\agents\agent_101.png', N'479565, Курганская область, город Клин, пл. Ленина, 54', 92, N'Вера Евгеньевна Денисоваа', N'6169713039', N'848972934')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (75, 5, N'Компания МоторТелекомЦемент-М', N'larisa44@silin.org', N'(812) 857-95-57', N'\agents\agent_118.png', N'021293, Амурская область, город Наро-Фоминск, шоссе Славы, 40', 237, N'Иван Евгеньевич Белоусова', N'7326832482', N'440199498')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (76, 4, N'ЮпитерТяжОрионЭкспедиция', N'gblokin@orlov.net', N'(35222) 95-63-65', N'\agents\agent_44.png', N'960726, Томская область, город Орехово-Зуево, въезд 1905 года, 51', 446, N'Валерий Евгеньевич Виноградов', N'6843174002', N'935556458')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (77, 3, N'Транс', N'artem.fadeev@polykov.com', N'8-800-954-23-89', N'\agents\agent_127.png', N'508299, Кемеровская область, город Кашира, пер. Гагарина, 42', 38, N'Евсеева Болеслав Сергеевич', N'9604275878', N'951258069')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (78, 4, N'РемВод', N'komarov.elizaveta@agafonova.ru', N'+7 (922) 353-31-72', N'\agents\agent_126.png', N'449723, Смоленская область, город Наро-Фоминск, пер. Ломоносова, 94', 1, N'Медведеваа Ярослава Фёдоровна', N'3986603105', N'811373078')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (79, 6, N'АсбоцементЛифтРеч-H', N'vladlena58@seliverstova.ru', N'(495) 245-57-16', N'\agents\agent_105.png', N'599158, Ростовская область, город Озёры, ул. Космонавтов, 05', 407, N'Кондратьева Таисия Андреевна', N'6567878928', N'560960507')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (80, 5, N'РосАвтоМонтаж', N'lapin.inessa@isaeva.com', N'(495) 445-97-76', N'\agents\agent_55.png', N'331914, Курская область, город Ногинск, спуск Ладыгина, 66', 10, N'Диана Алексеевна Исаковаа', N'4735043946', N'263682488')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (81, 5, N'Компания СервисТелеМотор', N'veronika.egorov@bespalova.com', N'+7 (922) 461-25-29', N'\agents\agent_102.png', N'625988, Вологодская область, город Озёры, пр. Гоголя, 18', 81, N'Фролова Эдуард Борисович', N'3248454160', N'138472695')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (82, 6, N'ФинансТелеТверь', N'medvedev.klim@afanasev.com', N'(812) 115-56-93', N'\agents\agent_45.png', N'687171, Томская область, город Лотошино, пл. Славы, 59', 100, N'Зайцеваа Дарья Сергеевна', N'2646091050', N'971874277')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (83, 4, N'ВодГор', N'tvetkova.robert@sorokin.com', N'(35222) 73-72-16', N'\agents\agent_125.png', N'265653, Калужская область, город Ступино, шоссе Гоголя, 89', 72, N'Фаина Фёдоровна Филиппова', N'4463113470', N'899603778')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (84, 4, N'ТяжРадиоУралПроф', N'liliy62@grisina.ru', N'+7 (922) 885-66-15', N'\agents\agent_88.png', N'521087, Орловская область, город Егорьевск, шоссе Ладыгина, 14', 278, N'София Алексеевна Мухина', N'5688533246', N'401535045')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (85, 4, N'ГаражЛофт', N'lydmila.belyeva@karpov.ru', N'(495) 427-55-66', N'\agents\agent_108.png', N'294596, Мурманская область, город Шаховская, пр. Домодедовская, 88', 335, N'Клавдия Фёдоровна Кудряшова', N'2816939574', N'754741128')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (86, 4, N'ITСтройАлмаз', N'fokin.eduard@samoilov.com', N'8-800-185-78-91', N'\agents\agent_83.png', N'361730, Костромская область, город Волоколамск, шоссе Славы, 36', 159, N'Алексеева Валериан Андреевич', N'7689065648', N'456612755')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (87, 5, N'Асбоцемент', N'antonin19@panfilov.ru', N'8-800-211-16-23', N'\agents\agent_34.png', N'030119, Курганская область, город Дмитров, пер. Славы, 47', 273, N'Никитинаа Антонина Андреевна', N'1261407459', N'745921890')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (88, 1, N'ТекстильУралАвтоОпт', N'hkononova@pavlova.ru', N'(35222) 98-76-54', NULL, N'028936, Магаданская область, город Видное, ул. Гагарина, 54', 176, N'Алина Сергеевна Дьячковаа', N'3930950057', N'678529397')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (89, 5, N'Компания КрепЦемент', N'rusakov.efim@nikiforov.ru', N'(812) 963-77-87', N'\agents\agent_50.png', N'423477, Мурманская область, город Кашира, бульвар Домодедовская, 61', 426, N'Екатерина Львовна Суворова', N'3025099903', N'606083992')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (90, 4, N'КазаньТекстиль', N'osimonova@andreeva.com', N'(35222) 86-74-21', N'\agents\agent_47.png', N'231891, Челябинская область, город Шатура, бульвар Ладыгина, 40', 156, N'Александров Бронислав Максимович', N'4584384019', N'149680499')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (91, 4, N'КазЮпитерТомск', N'tgavrilov@frolov.ru', N'+7 (922) 772-33-58', N'\agents\agent_60.png', N'393450, Тульская область, город Кашира, пр. 1905 года, 47', 244, N'Рафаил Андреевич Копылов', N'9201745524', N'510248846')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (92, 3, N'Бух', N'belova.vikentii@konstantinova.net', N'+7 (922) 375-49-21', N'\agents\agent_78.png', N'409600, Новгородская область, город Ногинск, пл. Гагарина, 68', 82, N'Татьяна Сергеевна Королёваа', N'1953785418', N'122905583')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (93, 6, N'Радио', N'rtretykova@kozlov.ru', N'8-800-897-32-78', N'\agents\agent_43.png', N'798718, Ленинградская область, город Пушкино, бульвар Балканская, 37', 221, N'Эмма Андреевна Колесникова', N'9077613654', N'657690787')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (94, 1, N'Креп', N'savina.dominika@belousova.com', N'(495) 217-46-29', N'\agents\agent_39.png', N'336489, Калининградская область, город Можайск, наб. Славы, 35', 371, N'Назар Алексеевич Григорьева', N'4880732317', N'258673591')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (95, 4, N'Мобайл', N'dsiryev@dementeva.com', N'8-800-618-73-37', N'\agents\agent_107.png', N'606703, Амурская область, город Чехов, пл. Будапештсткая, 91', 464, N'Екатерина Сергеевна Бобылёва', N'7803888520', N'885703265')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (96, 2, N'CибБашкирТекстиль', N'vzimina@zdanova.com', N'(495) 285-78-38', N'\agents\agent_69.png', N'429540, Мурманская область, город Воскресенск, пл. Славы, 36', 218, N'Григорий Владимирович Елисеева', N'7392007090', N'576103661')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (97, 2, N'МеталТекстильЛифтТрест', N'muravev.trofim@sazonov.net', N'(812) 753-96-76', N'\agents\agent_86.png', N'786287, Свердловская область, город Волоколамск, пер. Будапештсткая, 72', 425, N'Одинцов Назар Борисович', N'2971553297', N'821859486')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (98, 6, N'ОрионТомскТех', N'faina.tikonova@veselov.com', N'+7 (922) 542-89-15', N'\agents\agent_119.png', N'738763, Курская область, город Егорьевск, спуск Чехова, 66', 73, N'Георгий Александрович Лукин', N'9351493429', N'583041591')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (99, 6, N'ЖелДорДизайнМетизТраст', N'lnikitina@kulikova.com', N'(812) 123-63-47', NULL, N'170549, Сахалинская область, город Видное, проезд Космонавтов, 89', 290, N'Игорь Львович Агафонова', N'7669116841', N'906390137')
INSERT [dbo].[Agent] ([IdAgent], [TypeId], [NameAgent], [Email], [Phone], [Logo], [Address], [Priority], [Director], [INN], [KPP]) VALUES (100, 4, N'БухМясМоторПром', N'varvara49@savin.ru', N'(35222) 83-23-59', N'\agents\agent_95.png', N'677498, Костромская область, город Зарайск, спуск Славы, 59', 158, N'Нина Дмитриевна Черноваа', N'7377410338', N'592041317')
SET IDENTITY_INSERT [dbo].[Agent] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (1, N'Полумаска "Moon" (Элипс) P3', N'59922', CAST(2690.00 AS Numeric(18, 2)), N'\products\5fb128cd1e2b9.jpg', 7, 5, -4)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (2, N'Повязка санитарно–гигиеническая многоразовая с логотипом СОЮЗСПЕЦОДЕЖДА', N'5028556', CAST(49.00 AS Numeric(18, 2)), NULL, 5, 5, 9)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (3, N'Повязка санитарно–гигиеническая многоразовая черная', N'5028272', CAST(59.00 AS Numeric(18, 2)), NULL, 5, 4, 4)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (4, N'Маска одноразовая трехслойная из нетканого материала, нестерильная', N'5028247', CAST(6.00 AS Numeric(18, 2)), N'\products\5fb128cc69235.jpg', 5, 3, 2)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (5, N'Повязка санитарно–гигиеническая многоразовая с принтом', N'5028229', CAST(49.00 AS Numeric(18, 2)), NULL, 5, 2, 10)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (6, N'Маска из нетканого материала KN95', N'5030981', CAST(59.00 AS Numeric(18, 2)), N'\products\5fb128cc719a6.jpg', 3, 3, 5)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (7, N'Маска из нетканого материала с клапаном KN95', N'5029784', CAST(79.00 AS Numeric(18, 2)), N'\products\5fb128cc753e3.jpg', 3, 3, 4)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (8, N'Респиратор У-2К', N'58953', CAST(95.00 AS Numeric(18, 2)), N'\products\5fb128cc7941f.jpg', 3, 2, 6)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (9, N'Респиратор 9101 FFP1', N'5026662', CAST(189.00 AS Numeric(18, 2)), N'\products\5fb128cc7d798.jpg', 9, 5, 8)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (10, N'Респиратор противоаэрозольный 9312', N'59043', CAST(399.00 AS Numeric(18, 2)), N'\products\5fb128cc80a10.jpg', 3, 4, 12)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (11, N'Респиратор 3M 8112 противоаэрозольный с клапаном выдоха', N'58376', CAST(299.00 AS Numeric(18, 2)), N'\products\5fb128cc84474.jpg', 9, 3, 1)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (12, N'Респиратор 3M 8101 противоаэрозольный', N'58375', CAST(149.00 AS Numeric(18, 2)), N'\products\5fb128cc87b90.jpg', 9, 1, 4)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (13, N'Респиратор "Алина" 110', N'59324', CAST(129.00 AS Numeric(18, 2)), N'\products\5fb128cc8b750.jpg', 9, 3, 9)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (14, N'Респиратор "Алина" 100', N'58827', CAST(99.00 AS Numeric(18, 2)), N'\products\5fb128cc8f4dd.jpg', 9, 2, 8)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (15, N'Респиратор "Нева" 109', N'59898', CAST(129.00 AS Numeric(18, 2)), N'\products\5fb128cc9414b.jpg', 9, 4, 1)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (16, N'Респиратор "Юлия" 109', N'59474', CAST(129.00 AS Numeric(18, 2)), N'\products\5fb128cc97ff4.jpg', 9, 4, 8)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (17, N'Респиратор "Юлия" 119', N'59472', CAST(149.00 AS Numeric(18, 2)), N'\products\5fb128cc9bd36.jpg', 9, 3, 7)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (18, N'Респиратор 3M с клапаном 9162', N'5033136', CAST(349.00 AS Numeric(18, 2)), N'\products\5fb128cc9f069.jpg', 9, 2, 9)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (19, N'Респиратор 3M 9152 FFP2', N'5028048', CAST(390.00 AS Numeric(18, 2)), N'\products\5fb128cca31d9.jpg', 9, 2, 8)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (20, N'Респиратор противоаэрозольный 9322', N'58796', CAST(449.00 AS Numeric(18, 2)), N'\products\5fb128cca6910.jpg', 9, 4, 4)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (21, N'Респиратор с клапаном 9926', N'58568', CAST(699.00 AS Numeric(18, 2)), N'\products\5fb128cca9d9b.jpg', 9, 3, 5)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (22, N'Респиратор 3M 8102 противоаэрозольный', N'58466', CAST(199.00 AS Numeric(18, 2)), N'\products\5fb128ccae21a.jpg', 9, 3, 9)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (23, N'Респиратор 3M 8122', N'58445', CAST(299.00 AS Numeric(18, 2)), N'\products\5fb128ccb1958.jpg', 9, 3, 6)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (24, N'Респиратор M1200VWC FFP2 Delta Plus (Дельта Плюс)', N'5031919', CAST(349.00 AS Numeric(18, 2)), N'\products\5fb128ccb4e8c.jpg', 9, 2, 8)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (25, N'Респиратор RK6021', N'5030026', CAST(290.00 AS Numeric(18, 2)), N'\products\5fb128ccb97a0.jpg', 9, 5, 8)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (26, N'Респиратор RK6020', N'5030020', CAST(129.00 AS Numeric(18, 2)), N'\products\5fb128ccbd227.jpg', 9, 3, 5)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (27, N'Респиратор Алина 210', N'5030072', CAST(290.00 AS Numeric(18, 2)), N'\products\5fb128ccc1592.jpg', 9, 1, 5)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (28, N'Респиратор Алина 211', N'5030062', CAST(290.00 AS Numeric(18, 2)), N'\products\5fb128ccc4a86.jpg', 9, 1, 6)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (29, N'Респиратор "Алина" 200', N'58826', CAST(149.00 AS Numeric(18, 2)), N'\products\5fb128ccc9a9e.jpg', 9, 4, 5)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (30, N'Респиратор "Алина" П', N'58825', CAST(290.00 AS Numeric(18, 2)), N'\products\5fb128cccdbee.jpg', 9, 4, 5)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (31, N'Респиратор "Алина" АВ', N'58584', CAST(249.00 AS Numeric(18, 2)), N'\products\5fb128ccd133c.jpg', 9, 2, 5)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (32, N'Респиратор "Нева" 210', N'59736', CAST(109.00 AS Numeric(18, 2)), N'\products\5fb128ccd5dc2.jpg', 9, 1, 3)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (33, N'Респиратор "Нева" 200', N'59735', CAST(79.00 AS Numeric(18, 2)), N'\products\5fb128ccd8ff6.jpg', 9, 2, 3)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (34, N'Респиратор полумаска НРЗ-0102 FFP2 NR D', N'5027238', CAST(149.00 AS Numeric(18, 2)), N'\products\5fb128ccdca1e.jpg', 9, 4, 4)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (35, N'Респиратор "Юлия" 219', N'59475', CAST(249.00 AS Numeric(18, 2)), N'\products\5fb128cce0042.jpg', 9, 4, 8)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (36, N'Респиратор "Юлия" 215', N'59473', CAST(349.00 AS Numeric(18, 2)), N'\products\5fb128cce39fa.jpg', 9, 3, 4)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (37, N'Респиратор "Юлия" 209', N'59470', CAST(179.00 AS Numeric(18, 2)), N'\products\5fb128cce7971.jpg', 9, 2, 8)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (38, N'Респиратор M1300V2С FFP3 Delta Plus (Дельта Плюс)', N'5031924', CAST(490.00 AS Numeric(18, 2)), N'\products\5fb128cceae7c.jpg', 9, 5, 2)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (39, N'Респиратор RK6030', N'5030022', CAST(390.00 AS Numeric(18, 2)), N'\products\5fb128ccef256.jpg', 9, 3, 6)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (40, N'Респиратор "Алина" 310', N'58850', CAST(490.00 AS Numeric(18, 2)), N'\products\5fb128ccf3dd2.jpg', 9, 5, 6)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (41, N'Респиратор "Нева" 310', N'59739', CAST(289.00 AS Numeric(18, 2)), N'\products\5fb128cd0544b.jpg', 9, 4, 3)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (42, N'Респиратор "Юлия" 319', N'59471', CAST(490.00 AS Numeric(18, 2)), N'\products\5fb128cd08e3f.jpg', 9, 4, 8)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (43, N'Полумаска "Elipse" (Элипс) ABEK1P3', N'5027980', CAST(4990.00 AS Numeric(18, 2)), N'\products\5fb128cd0d0b1.jpg', 9, 2, 1)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (44, N'Полумаска "Elipse" (Элипс) A2P3', N'5027965', CAST(4490.00 AS Numeric(18, 2)), N'\products\5fb128cd10ec2.jpg', 7, 4, 2)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (45, N'Полумаска "Elipse" (Элипс) А1', N'5027958', CAST(3190.00 AS Numeric(18, 2)), N'\products\5fb128cd157f9.jpg', 7, 2, 4)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (46, N'Полумаска "Elipse" (Элипс) P3 (анти-запах)', N'59923', CAST(2790.00 AS Numeric(18, 2)), N'\products\5fb128cd19baa.jpg', 7, 1, 9)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (47, N'Полумаска "Elipse" (Элипс) P3', N'59922', CAST(2690.00 AS Numeric(18, 2)), N'\products\5fb128cd1e2b9.jpg', 7, 5, 4)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (48, N'Полумаска "Elipse" (Элипс) A1P3', N'59921', CAST(5690.00 AS Numeric(18, 2)), N'\products\5fb128cd2215f.jpg', 7, 3, 9)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (49, N'Полумаска "Elipse" (Элипс) ABEK1', N'59920', CAST(5690.00 AS Numeric(18, 2)), N'\products\5fb128cd268bf.jpg', 7, 2, 8)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (50, N'Респиратор-полумаска "3М" серия 6000', N'58974', CAST(3490.00 AS Numeric(18, 2)), N'\products\5fb128cd2ab69.jpg', 7, 5, 9)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (51, N'Респиратор-полумаска Исток 300/400', N'59334', CAST(490.00 AS Numeric(18, 2)), N'\products\5fb128cd2ef7a.jpg', 7, 4, 7)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (52, N'Комплект для защиты дыхания J-SET 6500 JETA', N'4969295', CAST(2490.00 AS Numeric(18, 2)), N'\products\5fb128cd331c4.jpg', 7, 4, 4)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (53, N'Лицевая маска Elipse Integra А1P3', N'5029610', CAST(9890.00 AS Numeric(18, 2)), N'\products\5fb128cd3674d.jpg', 7, 2, 10)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (54, N'Лицевая маска Elipse Integra P3', N'5029091', CAST(7490.00 AS Numeric(18, 2)), N'\products\5fb128cd3af5c.jpg', 4, 5, 9)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (55, N'Лицевая маска Elipse Integra (Элипс интегра) P3 (анти-запах)', N'60360', CAST(7590.00 AS Numeric(18, 2)), N'\products\5fb128cd3e7e4.jpg', 4, 2, 4)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (56, N'Полнолицевая маска 5950 JETA', N'4958042', CAST(11490.00 AS Numeric(18, 2)), N'\products\5fb128cd41ece.jpg', 4, 1, 5)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (57, N'Сменный патрон с фильтром 6054 для масок и полумасок "3М" серии 6000', N'59271', CAST(1890.00 AS Numeric(18, 2)), N'\products\5fb128cd4672c.jpg', 6, 4, 2)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (58, N'Сменный патрон с фильтром 6059 для масок и полумасок "3М" серии 6000', N'59253', CAST(2290.00 AS Numeric(18, 2)), N'\products\5fb128cd4c99d.jpg', 10, 2, 9)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (59, N'Сменный фильтр 6510 A1 JETA', N'5028197', CAST(990.00 AS Numeric(18, 2)), N'\products\5fb128cd50a70.jpg', 10, 5, 9)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (60, N'Запасные фильтры к полумаске Elipse ABEK1P3', N'5027978', CAST(2990.00 AS Numeric(18, 2)), N'\products\5fb128cd5433e.jpg', 10, 3, 6)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (61, N'Запасные фильтры к полумаске Elipse A2P3', N'5027961', CAST(2590.00 AS Numeric(18, 2)), N'\products\5fb128cd5838d.jpg', 2, 2, 9)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (62, N'Запасные фильтры к полумаске Elipse (Элипс) А1', N'5027921', CAST(1290.00 AS Numeric(18, 2)), N'\products\5fb128cd5bb7d.jpg', 2, 3, 4)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (63, N'Сменный фильтр 6541 ABEK1 JETA', N'4958040', CAST(1290.00 AS Numeric(18, 2)), N'\products\5fb128cd5ff78.jpg', 10, 4, 6)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (64, N'Запасные фильтры к полумаске "Elipse" (Элипс) P3 (анти-запах)', N'59919', CAST(1690.00 AS Numeric(18, 2)), N'\products\5fb128cd63666.jpg', 2, 4, 4)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (65, N'Запасные фильтры к полумаске "Elipse" (Элипс) P3', N'59918', CAST(1390.00 AS Numeric(18, 2)), N'\products\5fb128cd66df6.jpg', 2, 4, 7)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (66, N'Запасные фильтры к полумаске "Elipse" (Элипс) A1P3', N'59917', CAST(2190.00 AS Numeric(18, 2)), N'\products\5fb128cd6a2b6.jpg', 2, 1, 3)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (67, N'Запасные фильтры к полумаске "Elipse" (Элипс) ABEK1', N'59916', CAST(2590.00 AS Numeric(18, 2)), N'\products\5fb128cd6e4ee.jpg', 2, 3, 10)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (68, N'Запасные фильтры (пара) АВЕ1 к полумаскам "Адвантейдж"', N'59708', CAST(1490.00 AS Numeric(18, 2)), N'\products\5fb128cd71db3.jpg', 2, 2, 3)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (69, N'Запасной фильтр к полумаске Исток-300 (РПГ-67) марка В', N'67661', CAST(110.00 AS Numeric(18, 2)), N'\products\5fb128cd7518c.jpg', 2, 5, 9)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (70, N'Запасной фильтр к полумаске Исток-300 (РПГ-67) марка А', N'67660', CAST(110.00 AS Numeric(18, 2)), N'\products\5fb128cd78fce.jpg', 2, 3, 1)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (71, N'Держатель предфильтра 5101 JETA', N'4958041', CAST(199.00 AS Numeric(18, 2)), N'\products\5fb128cd7d2cd.jpg', 2, 1, 7)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (72, N'Держатели предфильтра для масок и полумасок "3М" серии 6000', N'58431', CAST(264.00 AS Numeric(18, 2)), N'\products\5fb128cd80a06.jpg', 1, 1, 4)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (73, N'Предфильтр Р2 (4 шт) 6020 JETA', N'4958039', CAST(380.00 AS Numeric(18, 2)), N'\products\5fb128cd8417e.jpg', 1, 1, 7)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (74, N'Предфильтры для масок и полумасок "3М" серии 6000', N'58917', CAST(409.00 AS Numeric(18, 2)), N'\products\5fb128cd8818d.jpg', 8, 5, 3)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (75, N'Респиратор "Мадонна" 110', N'59324', CAST(129.00 AS Numeric(18, 2)), N'\products\5fb128cc8b750.jpg', 9, 3, 9)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (76, N'Респиратор "Витязь" 100', N'58827', CAST(99.00 AS Numeric(18, 2)), N'\products\5fb128cc8f4dd.jpg', 9, 2, 8)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (77, N'Респиратор "Серёга" 109', N'59898', CAST(129.00 AS Numeric(18, 2)), N'\products\5fb128cc9414b.jpg', 9, 4, 1)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (78, N'Респиратор "Амперметр" 109', N'59474', CAST(129.00 AS Numeric(18, 2)), N'\products\5fb128cc97ff4.jpg', 9, 4, 8)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (79, N'Респиратор "Фирюза" 110', N'59324', CAST(129.00 AS Numeric(18, 2)), N'\products\5fb128cc8b750.jpg', 9, 3, 9)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (80, N'Респиратор "Красный" 100', N'58827', CAST(99.00 AS Numeric(18, 2)), N'\products\5fb128cc8f4dd.jpg', 9, 2, 8)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (81, N'Респиратор "Волга" 109', N'59898', CAST(129.00 AS Numeric(18, 2)), N'\products\5fb128cc9414b.jpg', 9, 4, 1)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (82, N'Респиратор "Мадонна" 220', N'59474', CAST(129.00 AS Numeric(18, 2)), N'\products\5fb128cc97ff4.jpg', 9, 4, 8)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (83, N'Респиратор "Витязь" 220', N'59324', CAST(129.00 AS Numeric(18, 2)), N'\products\5fb128cc8b750.jpg', 9, 3, 9)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (84, N'Респиратор "Серёга" 220', N'58827', CAST(99.00 AS Numeric(18, 2)), N'\products\5fb128cc8f4dd.jpg', 9, 2, 8)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (85, N'Респиратор "Амперметр" 220', N'59898', CAST(129.00 AS Numeric(18, 2)), N'\products\5fb128cc9414b.jpg', 9, 4, 1)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (86, N'Респиратор "Фирюза" 220', N'59474', CAST(129.00 AS Numeric(18, 2)), N'\products\5fb128cc97ff4.jpg', 9, 4, 8)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (87, N'Респиратор "Красный" 220', N'59324', CAST(129.00 AS Numeric(18, 2)), N'\products\5fb128cc8b750.jpg', 9, 3, 9)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (88, N'Респиратор "Волга" 220', N'58827', CAST(99.00 AS Numeric(18, 2)), N'\products\5fb128cc8f4dd.jpg', 9, 2, 8)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (89, N'Полумаска "Sunset" ABEK1P3', N'5027980', CAST(4990.00 AS Numeric(18, 2)), N'\products\5fb128cd0d0b1.jpg', 9, 2, 1)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (90, N'Полумаска "Sunset" A2P3', N'5027965', CAST(4490.00 AS Numeric(18, 2)), N'\products\5fb128cd10ec2.jpg', 7, 4, 2)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (91, N'Полумаска "Sunset" А1', N'5027958', CAST(3190.00 AS Numeric(18, 2)), N'\products\5fb128cd157f9.jpg', 7, 2, 4)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (92, N'Полумаска "Sunset" P3 (анти-запах)', N'59923', CAST(2790.00 AS Numeric(18, 2)), N'\products\5fb128cd19baa.jpg', 7, 1, 9)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (93, N'Полумаска "Sunset" (Элипс) P3', N'59922', CAST(2690.00 AS Numeric(18, 2)), N'\products\5fb128cd1e2b9.jpg', 7, 5, 4)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (94, N'Полумаска "Sunset" A1P3', N'59921', CAST(5690.00 AS Numeric(18, 2)), N'\products\5fb128cd2215f.jpg', 7, 3, 9)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (95, N'Полумаска "Sunset" ABEK1', N'59920', CAST(5690.00 AS Numeric(18, 2)), N'\products\5fb128cd268bf.jpg', 7, 2, 8)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (96, N'Полумаска "Moon" ABEK1', N'59920', CAST(5690.00 AS Numeric(18, 2)), N'\products\5fb128cd268bf.jpg', 7, 2, 8)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (97, N'Полумаска "Moon" ABEK1P3', N'5027980', CAST(4990.00 AS Numeric(18, 2)), N'\products\5fb128cd0d0b1.jpg', 9, 2, 1)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (98, N'Полумаска "Moon" A2P3', N'5027965', CAST(4490.00 AS Numeric(18, 2)), N'\products\5fb128cd10ec2.jpg', 7, 4, 2)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (99, N'Полумаска "Moon" А1', N'5027958', CAST(3190.00 AS Numeric(18, 2)), N'\products\5fb128cd157f9.jpg', 7, 2, 4)
GO
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (100, N'Полумаска "Moon" P3 (анти-запах)', N'59923', CAST(2790.00 AS Numeric(18, 2)), N'\products\5fb128cd19baa.jpg', 7, 1, 9)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (101, N'asdasdasda', N'12312', CAST(4.00 AS Numeric(18, 2)), NULL, 5, 3, 2)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (102, N'asdasd', N'123', CAST(3245.00 AS Numeric(18, 2)), NULL, 4, 2, 1)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (103, N'234234', N'123', CAST(4.00 AS Numeric(18, 2)), NULL, 5, 3, 2)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (104, N'123', N'342', CAST(4.00 AS Numeric(18, 2)), NULL, 3, 123, 123)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (105, N'awsedrf', N'123456', CAST(3.00 AS Numeric(18, 2)), NULL, 1, 2, 1)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (106, N'12312wer', N'134123', CAST(1234.00 AS Numeric(18, 2)), NULL, 3, 0, 23)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (107, N'ddswd', N'3123', CAST(234.00 AS Numeric(18, 2)), NULL, 5, 0, 123)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (108, N'123144', N'2134', CAST(2123.00 AS Numeric(18, 2)), NULL, 3, 0, 1)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (109, N',fpf1', N'3423', CAST(234134.00 AS Numeric(18, 2)), NULL, 4, 0, 228)
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Article], [MinCost], [Image], [TypeProductId], [QuantityPerson], [NumberPlant]) VALUES (110, N'123', N'аыва', CAST(123.00 AS Numeric(18, 2)), NULL, 4, 0, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([IdRole], [RoleName]) VALUES (1, N'Заказчик')
INSERT [dbo].[Role] ([IdRole], [RoleName]) VALUES (2, N'Кладовщик')
INSERT [dbo].[Role] ([IdRole], [RoleName]) VALUES (3, N'Менеджер')
INSERT [dbo].[Role] ([IdRole], [RoleName]) VALUES (4, N'Директор')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Type] ON 

INSERT [dbo].[Type] ([IdType], [NameType]) VALUES (1, N'Держители')
INSERT [dbo].[Type] ([IdType], [NameType]) VALUES (2, N'Запасные части')
INSERT [dbo].[Type] ([IdType], [NameType]) VALUES (3, N'Маски')
INSERT [dbo].[Type] ([IdType], [NameType]) VALUES (4, N'На лицо')
INSERT [dbo].[Type] ([IdType], [NameType]) VALUES (5, N'Повязки')
INSERT [dbo].[Type] ([IdType], [NameType]) VALUES (6, N'Полнолицевые')
INSERT [dbo].[Type] ([IdType], [NameType]) VALUES (7, N'Полумаски')
INSERT [dbo].[Type] ([IdType], [NameType]) VALUES (8, N'Предфильтры')
INSERT [dbo].[Type] ([IdType], [NameType]) VALUES (9, N'Респираторы')
INSERT [dbo].[Type] ([IdType], [NameType]) VALUES (10, N'Сменные части')
INSERT [dbo].[Type] ([IdType], [NameType]) VALUES (11, N'Тип продукции')
SET IDENTITY_INSERT [dbo].[Type] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeAgent] ON 

INSERT [dbo].[TypeAgent] ([IdType], [TypeName]) VALUES (1, N'ЗАО')
INSERT [dbo].[TypeAgent] ([IdType], [TypeName]) VALUES (2, N'МКК')
INSERT [dbo].[TypeAgent] ([IdType], [TypeName]) VALUES (3, N'МФО')
INSERT [dbo].[TypeAgent] ([IdType], [TypeName]) VALUES (4, N'ОАО')
INSERT [dbo].[TypeAgent] ([IdType], [TypeName]) VALUES (5, N'ООО')
INSERT [dbo].[TypeAgent] ([IdType], [TypeName]) VALUES (6, N'ПАО')
SET IDENTITY_INSERT [dbo].[TypeAgent] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([IdUser], [LastName], [FirstName], [MiddleName], [RoleId], [Login], [Password]) VALUES (1, N'Иванов', N'Иван', N'Иванович', 1, N'iii', N'qwerty')
INSERT [dbo].[User] ([IdUser], [LastName], [FirstName], [MiddleName], [RoleId], [Login], [Password]) VALUES (2, N'Петров', N'Пётр', N'Петрович', 2, N'ppp', N'asdfg')
INSERT [dbo].[User] ([IdUser], [LastName], [FirstName], [MiddleName], [RoleId], [Login], [Password]) VALUES (3, N'Иванова', N'Мария', N'Петровна', 3, N'imp', N'zxcvb')
INSERT [dbo].[User] ([IdUser], [LastName], [FirstName], [MiddleName], [RoleId], [Login], [Password]) VALUES (4, N'Сидоров', N'Илья', N'Сергеевич', 4, N'ddd', N'aezakmi')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_TypeAgent] FOREIGN KEY([TypeId])
REFERENCES [dbo].[TypeAgent] ([IdType])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_TypeAgent]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Type] FOREIGN KEY([TypeProductId])
REFERENCES [dbo].[Type] ([IdType])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Type]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([IdRole])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [user26] SET  READ_WRITE 
GO
