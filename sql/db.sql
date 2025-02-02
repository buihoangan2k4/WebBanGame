USE [db_game]
GO
/****** Object:  Table [dbo].[game_genres]    Script Date: 07/06/2024 11:36:24 CH ******/
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
/****** Object:  Table [dbo].[games]    Script Date: 07/06/2024 11:36:24 CH ******/
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
/****** Object:  Table [dbo].[genres]    Script Date: 07/06/2024 11:36:24 CH ******/
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
/****** Object:  Table [dbo].[order_details]    Script Date: 07/06/2024 11:36:24 CH ******/
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
/****** Object:  Table [dbo].[orders]    Script Date: 07/06/2024 11:36:24 CH ******/
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
/****** Object:  Table [dbo].[reviews]    Script Date: 07/06/2024 11:36:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviews](
	[review_id] [int] IDENTITY(1,1) NOT NULL,
	[comment] [text] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[rating] [int] NOT NULL,
	[game_id] [int] NULL,
	[user_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[review_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 07/06/2024 11:36:24 CH ******/
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
GO
SET IDENTITY_INSERT [dbo].[games] ON 

INSERT [dbo].[games] ([game_id], [description], [developer], [duration], [poster_url], [price], [rating], [release_date], [title], [trailer_url], [qty]) VALUES (1, N'Trong Marvel’s Spider-Man Remastered, th? gi?i c?a Peter Parker và Spider-Man s? du?c l?ng ghép vào tr?i nghi?m phiêu luu hành d?ng di?n hình. Trong vai Peter Parker d?y kinh nghi?m, ngu?i choi s? chi?n d?u v?i nh?ng tên t?i ph?m ‘khó nh?n’ và dàn nhân v?t ph?n di?n mang tính bi?u tu?ng trong thành ph? New York. Ðu to nh?n qua nhi?u khu ph? dông dúc và h? g?c m?c tiêu b?ng nh?ng cu?c tàn sát hoành tráng.', N'MARVEL', 180, N'2022_08_24_14_33_42_95d2a4cbcad5ba90815e72155f9e712b8ba07324.jpg', CAST(100.00 AS Numeric(10, 2)), 5, CAST(N'2024-06-07' AS Date), N' MARVEL’S SPIDER-MAN REMASTERED', N'https://youtu.be/ISU6oxDJZpo?si=6AA3ifKEmB7IoinS', 1)
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
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([user_id], [email], [fullname], [password], [role], [username]) VALUES (1, N'admin@gmail.com', N'Admin', N'123', N'ADMIN', N'admin')
INSERT [dbo].[users] ([user_id], [email], [fullname], [password], [role], [username]) VALUES (2, N'user@gmail.com', N'User', N'123', N'USER', N'user')
INSERT [dbo].[users] ([user_id], [email], [fullname], [password], [role], [username]) VALUES (3, N'thainhattien3011@gmail.com', N'Thái Nh?t Ti?n', N'123', N'USER', N'tien')
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
