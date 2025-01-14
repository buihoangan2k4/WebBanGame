USE [db_game]
GO
/****** Object:  Table [dbo].[game_genres]    Script Date: 08/06/2024 10:24:02 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[game_genres](
	[game_id] [int] NOT NULL,
	[genre_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[game_id] ASC,
	[genre_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[games]    Script Date: 08/06/2024 10:24:02 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[games](
	[game_id] [int] IDENTITY(1,1) NOT NULL,
	[description] [text] NULL,
	[developer] [varchar](255) NULL,
	[duration] [int] NOT NULL,
	[poster_url] [varchar](255) NULL,
	[price] [numeric](10, 2) NOT NULL,
	[rating] [real] NOT NULL,
	[release_date] [date] NULL,
	[title] [varchar](255) NOT NULL,
	[trailer_url] [varchar](255) NULL,
	[qty] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[game_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[genres]    Script Date: 08/06/2024 10:24:02 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[genres](
	[genre_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[genre_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_details]    Script Date: 08/06/2024 10:24:02 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_details](
	[order_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[price] [numeric](10, 2) NOT NULL,
	[quantity] [int] NOT NULL,
	[game_id] [int] NULL,
	[order_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 08/06/2024 10:24:02 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[order_date] [datetime2](6) NOT NULL,
	[total_amount] [numeric](10, 2) NOT NULL,
	[user_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reviews]    Script Date: 08/06/2024 10:24:02 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviews](
	[review_id] [int] IDENTITY(1,1) NOT NULL,
	[comment] [text] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[game_id] [int] NULL,
	[user_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[review_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 08/06/2024 10:24:02 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[fullname] [varchar](100) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[role] [varchar](20) NULL,
	[username] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[game_genres] ([game_id], [genre_id]) VALUES (1, 1)
INSERT [dbo].[game_genres] ([game_id], [genre_id]) VALUES (1, 4)
INSERT [dbo].[game_genres] ([game_id], [genre_id]) VALUES (11, 2)
GO
SET IDENTITY_INSERT [dbo].[games] ON 

INSERT [dbo].[games] ([game_id], [description], [developer], [duration], [poster_url], [price], [rating], [release_date], [title], [trailer_url], [qty]) VALUES (1, N'Trong Marvel’s Spider-Man Remastered, th? gi?i c?a Peter Parker và Spider-Man s? du?c l?ng ghép vào tr?i nghi?m phiêu luu hành d?ng di?n hình. Trong vai Peter Parker d?y kinh nghi?m, ngu?i choi s? chi?n d?u v?i nh?ng tên t?i ph?m ‘khó nh?n’ và dàn nhân v?t ph?n di?n mang tính bi?u tu?ng trong thành ph? New York. Ðu to nh?n qua nhi?u khu ph? dông dúc và h? g?c m?c tiêu b?ng nh?ng cu?c tàn sát hoành tráng.', N'MARVEL', 180, N'2022_08_24_14_33_42_95d2a4cbcad5ba90815e72155f9e712b8ba07324.jpg', CAST(100.00 AS Numeric(10, 2)), 5, CAST(N'2024-06-07' AS Date), N' MARVEL’S SPIDER-MAN REMASTERED', N'https://youtu.be/ISU6oxDJZpo?si=6AA3ifKEmB7IoinS', 1)
INSERT [dbo].[games] ([game_id], [description], [developer], [duration], [poster_url], [price], [rating], [release_date], [title], [trailer_url], [qty]) VALUES (2, N'An open-world RPG set in a fantasy universe full of meaningful choices and impactful consequences.', N'CD Projekt Red', 100, N'sp1.jpg', CAST(49.99 AS Numeric(10, 2)), 9.5, CAST(N'2015-05-19' AS Date), N'The Witcher 3: Wild Hunt', N'url_to_trailer1', 100)
INSERT [dbo].[games] ([game_id], [description], [developer], [duration], [poster_url], [price], [rating], [release_date], [title], [trailer_url], [qty]) VALUES (3, N'An open-world, action-adventure story set in Night City, a megalopolis obsessed with power, glamour and body modification.', N'CD Projekt Red', 90, N'sp2.jpg', CAST(59.99 AS Numeric(10, 2)), 7, CAST(N'2020-12-10' AS Date), N'Cyberpunk 2077', N'url_to_trailer2', 100)
INSERT [dbo].[games] ([game_id], [description], [developer], [duration], [poster_url], [price], [rating], [release_date], [title], [trailer_url], [qty]) VALUES (4, N'An epic tale of life in America at the dawn of the modern age.', N'Rockstar Games', 80, N'sp3.jpg', CAST(59.99 AS Numeric(10, 2)), 9.7, CAST(N'2018-10-26' AS Date), N'Red Dead Redemption 2', N'url_to_trailer3', 100)
INSERT [dbo].[games] ([game_id], [description], [developer], [duration], [poster_url], [price], [rating], [release_date], [title], [trailer_url], [qty]) VALUES (5, N'Living as a man, outside the shadow of the gods, Kratos must adapt to the unfamiliar Norse lands, unexpected threats, and a second chance at being a father.', N'Santa Monica Studio', 50, N'sp4.jpg', CAST(39.99 AS Numeric(10, 2)), 9.6, CAST(N'2018-04-20' AS Date), N'God of War', N'url_to_trailer4', 100)
INSERT [dbo].[games] ([game_id], [description], [developer], [duration], [poster_url], [price], [rating], [release_date], [title], [trailer_url], [qty]) VALUES (6, N'Defy the god of the dead as you hack and slash out of the Underworld in this rogue-like dungeon crawler.', N'Supergiant Games', 25, N'sp5.jpg', CAST(24.99 AS Numeric(10, 2)), 9, CAST(N'2020-09-17' AS Date), N'Hades', N'url_to_trailer5', 100)
INSERT [dbo].[games] ([game_id], [description], [developer], [duration], [poster_url], [price], [rating], [release_date], [title], [trailer_url], [qty]) VALUES (7, N'Five years after their dangerous journey across the post-pandemic United States, Ellie and Joel have settled down in Wyoming.', N'Naughty Dog', 30, N'sp6.jpg', CAST(59.99 AS Numeric(10, 2)), 8.7, CAST(N'2020-06-19' AS Date), N'The Last of Us Part II', N'url_to_trailer6', 100)
INSERT [dbo].[games] ([game_id], [description], [developer], [duration], [poster_url], [price], [rating], [release_date], [title], [trailer_url], [qty]) VALUES (8, N'In the late 13th century, the Mongol empire has laid waste to entire nations along their campaign to conquer the East.', N'Sucker Punch Productions', 50, N'sp7.jpg', CAST(59.99 AS Numeric(10, 2)), 9.1, CAST(N'2020-07-17' AS Date), N'Ghost of Tsushima', N'url_to_trailer7', 100)
INSERT [dbo].[games] ([game_id], [description], [developer], [duration], [poster_url], [price], [rating], [release_date], [title], [trailer_url], [qty]) VALUES (9, N'Experience survival horror like never before in the eighth major installment in the storied Resident Evil franchise.', N'Capcom', 20, N'sp8.jpg', CAST(59.99 AS Numeric(10, 2)), 8.5, CAST(N'2021-05-07' AS Date), N'Resident Evil Village', N'url_to_trailer8', 100)
INSERT [dbo].[games] ([game_id], [description], [developer], [duration], [poster_url], [price], [rating], [release_date], [title], [trailer_url], [qty]) VALUES (10, N'Become Eivor, a legendary Viking raider on a quest for glory.', N'Ubisoft', 60, N'sp9.jpg', CAST(59.99 AS Numeric(10, 2)), 8.2, CAST(N'2020-11-10' AS Date), N'Assassin’s Creed Valhalla', N'url_to_trailer9', 100)
INSERT [dbo].[games] ([game_id], [description], [developer], [duration], [poster_url], [price], [rating], [release_date], [title], [trailer_url], [qty]) VALUES (11, N'Experience the rise of Miles Morales as the new hero masters incredible, explosive new powers to become his own Spider-Man.', N'Insomniac Games', 15, N'sp10.jpg', CAST(49.99 AS Numeric(10, 2)), 8.9, CAST(N'2020-11-12' AS Date), N'Marvel’s Spider-Man: Miles Morales', N'url_to_trailer10', 1)
SET IDENTITY_INSERT [dbo].[games] OFF
GO
SET IDENTITY_INSERT [dbo].[genres] ON 

INSERT [dbo].[genres] ([genre_id], [name]) VALUES (1, N'Hành d?ng')
INSERT [dbo].[genres] ([genre_id], [name]) VALUES (2, N'B?n súng')
INSERT [dbo].[genres] ([genre_id], [name]) VALUES (3, N'Chi?n thu?t')
INSERT [dbo].[genres] ([genre_id], [name]) VALUES (4, N'Nh?p vai')
INSERT [dbo].[genres] ([genre_id], [name]) VALUES (5, N'Chi?n tranh')
SET IDENTITY_INSERT [dbo].[genres] OFF
GO
SET IDENTITY_INSERT [dbo].[order_details] ON 

INSERT [dbo].[order_details] ([order_detail_id], [price], [quantity], [game_id], [order_id]) VALUES (1, CAST(100.00 AS Numeric(10, 2)), 2, 1, 1)
INSERT [dbo].[order_details] ([order_detail_id], [price], [quantity], [game_id], [order_id]) VALUES (2, CAST(49.99 AS Numeric(10, 2)), 2, 2, 2)
INSERT [dbo].[order_details] ([order_detail_id], [price], [quantity], [game_id], [order_id]) VALUES (3, CAST(59.99 AS Numeric(10, 2)), 2, 3, 2)
INSERT [dbo].[order_details] ([order_detail_id], [price], [quantity], [game_id], [order_id]) VALUES (4, CAST(24.99 AS Numeric(10, 2)), 3, 6, 3)
SET IDENTITY_INSERT [dbo].[order_details] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([order_id], [order_date], [total_amount], [user_id]) VALUES (1, CAST(N'2024-06-08T09:43:30.2070000' AS DateTime2), CAST(200.00 AS Numeric(10, 2)), 2)
INSERT [dbo].[orders] ([order_id], [order_date], [total_amount], [user_id]) VALUES (2, CAST(N'2024-06-08T12:18:21.6330000' AS DateTime2), CAST(219.96 AS Numeric(10, 2)), 2)
INSERT [dbo].[orders] ([order_id], [order_date], [total_amount], [user_id]) VALUES (3, CAST(N'2024-06-08T12:31:46.3250000' AS DateTime2), CAST(74.97 AS Numeric(10, 2)), 3)
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[reviews] ON 

INSERT [dbo].[reviews] ([review_id], [comment], [created_at], [game_id], [user_id]) VALUES (3, N'Game r?t hay', CAST(N'2024-06-08T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[reviews] ([review_id], [comment], [created_at], [game_id], [user_id]) VALUES (4, N'hay', CAST(N'2024-06-08T13:15:49.6030000' AS DateTime2), 2, 3)
INSERT [dbo].[reviews] ([review_id], [comment], [created_at], [game_id], [user_id]) VALUES (5, N'Good', CAST(N'2024-06-08T13:22:04.3650000' AS DateTime2), 2, 3)
INSERT [dbo].[reviews] ([review_id], [comment], [created_at], [game_id], [user_id]) VALUES (6, N'Good', CAST(N'2024-06-08T13:24:07.3540000' AS DateTime2), 2, 3)
INSERT [dbo].[reviews] ([review_id], [comment], [created_at], [game_id], [user_id]) VALUES (7, N'Good', CAST(N'2024-06-08T13:25:26.2770000' AS DateTime2), 2, 3)
INSERT [dbo].[reviews] ([review_id], [comment], [created_at], [game_id], [user_id]) VALUES (8, N'hay', CAST(N'2024-06-08T13:39:15.4990000' AS DateTime2), 2, NULL)
INSERT [dbo].[reviews] ([review_id], [comment], [created_at], [game_id], [user_id]) VALUES (9, N'', CAST(N'2024-06-08T16:04:18.6910000' AS DateTime2), 1, NULL)
SET IDENTITY_INSERT [dbo].[reviews] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([user_id], [email], [fullname], [password], [role], [username]) VALUES (1, N'admin@gmail.com', N'Admin', N'123', N'ADMIN', N'admin')
INSERT [dbo].[users] ([user_id], [email], [fullname], [password], [role], [username]) VALUES (2, N'user@gmail.com', N'User', N'123', N'USER', N'user')
INSERT [dbo].[users] ([user_id], [email], [fullname], [password], [role], [username]) VALUES (3, N'thainhattien3011@gmail.com', N'Thái Nh?t Ti?n', N'1234', N'USER', N'tien')
INSERT [dbo].[users] ([user_id], [email], [fullname], [password], [role], [username]) VALUES (4, N'thainhattien3011@gmail.com', N'Thái Nh?t Ti?n', N'123', N'USER', N'tientn')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[game_genres]  WITH CHECK ADD  CONSTRAINT [FK61pffxhqw7ijuxpjra43eudj2] FOREIGN KEY([genre_id])
REFERENCES [dbo].[genres] ([genre_id])
GO
ALTER TABLE [dbo].[game_genres] CHECK CONSTRAINT [FK61pffxhqw7ijuxpjra43eudj2]
GO
ALTER TABLE [dbo].[game_genres]  WITH CHECK ADD  CONSTRAINT [FKql4d2eq6sbei0cfghuu8ard2i] FOREIGN KEY([game_id])
REFERENCES [dbo].[games] ([game_id])
GO
ALTER TABLE [dbo].[game_genres] CHECK CONSTRAINT [FKql4d2eq6sbei0cfghuu8ard2i]
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD  CONSTRAINT [FKjyu2qbqt8gnvno9oe9j2s2ldk] FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([order_id])
GO
ALTER TABLE [dbo].[order_details] CHECK CONSTRAINT [FKjyu2qbqt8gnvno9oe9j2s2ldk]
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD  CONSTRAINT [FKo296hlsx62lbrifbvmn37hlqs] FOREIGN KEY([game_id])
REFERENCES [dbo].[games] ([game_id])
GO
ALTER TABLE [dbo].[order_details] CHECK CONSTRAINT [FKo296hlsx62lbrifbvmn37hlqs]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK32ql8ubntj5uh44ph9659tiih] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK32ql8ubntj5uh44ph9659tiih]
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD  CONSTRAINT [FK1cmcqkmc8g630wpn52m1mv8re] FOREIGN KEY([game_id])
REFERENCES [dbo].[games] ([game_id])
GO
ALTER TABLE [dbo].[reviews] CHECK CONSTRAINT [FK1cmcqkmc8g630wpn52m1mv8re]
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD  CONSTRAINT [FKcgy7qjc1r99dp117y9en6lxye] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[reviews] CHECK CONSTRAINT [FKcgy7qjc1r99dp117y9en6lxye]
GO
