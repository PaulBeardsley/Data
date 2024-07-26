/* Create the QAIQGames database */
IF EXISTS (SELECT name FROM sys.databases WHERE name = N'QAStore')
   DROP DATABASE QAStore
GO

CREATE DATABASE QAStore
GO


/* Setup options (needed for notifications */
USE [QAStore]
GO
/****** Object:  Table [dbo].[company]    Script Date: 12/16/2010 10:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[company](
	[company_no] [int] NOT NULL,
	[name] [varchar](20) NOT NULL,
	[tel] [char](15) NULL,
	[county] [varchar](15) NULL,
	[post_code] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[company_no] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[company] ([company_no], [name], [tel], [county], [post_code]) VALUES (1000, N'Happy Heaters PLC', N'(01306)345672  ', N'London', N'SE3 89L   ')
INSERT [dbo].[company] ([company_no], [name], [tel], [county], [post_code]) VALUES (2000, N'Icicle Igloos Inc', N'0181-987-1265  ', N'London', N'N1 4LH    ')
INSERT [dbo].[company] ([company_no], [name], [tel], [county], [post_code]) VALUES (3000, N'Judo Jeans PLC', N'0171-478-2990  ', N'London', N'N9 2FG    ')
INSERT [dbo].[company] ([company_no], [name], [tel], [county], [post_code]) VALUES (4000, N'Kipper Kickers Inc', N'01254-987766   ', N'Devon', N'PL4 9RT   ')
/****** Object:  Table [dbo].[dept]    Script Date: 12/16/2010 10:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dept](
	[dept_no] [int] NOT NULL,
	[dept_name] [char](20) NOT NULL,
	[manager] [char](20) NULL,
	[sales_target] [decimal](12, 4) NULL,
PRIMARY KEY CLUSTERED 
(
	[dept_no] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[dept] ([dept_no], [dept_name], [manager], [sales_target]) VALUES (1, N'Animal Products     ', N'Adam Apricot        ', CAST(5.00 AS Decimal(5, 2)))
INSERT [dbo].[dept] ([dept_no], [dept_name], [manager], [sales_target]) VALUES (2, N'Business Systems    ', N'Barbara Banana      ', CAST(15.00 AS Decimal(5, 2)))
INSERT [dbo].[dept] ([dept_no], [dept_name], [manager], [sales_target]) VALUES (3, N'Credit Control      ', N'Paul Peach          ', CAST(25.00 AS Decimal(5, 2)))
INSERT [dbo].[dept] ([dept_no], [dept_name], [manager], [sales_target]) VALUES (4, N'Desktop Systems     ', N'Diver Dan           ', CAST(5.00 AS Decimal(5, 2)))
INSERT [dbo].[dept] ([dept_no], [dept_name], [manager], [sales_target]) VALUES (5, N'Electrical Repairs  ', N'Xavier Xylophone    ', CAST(45.00 AS Decimal(5, 2)))
/****** Object:  Table [dbo].[contact]    Script Date: 12/16/2010 10:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[contact](
	[company_no] [int] NOT NULL,
	[contact_code] [char](3) NOT NULL,
	[name] [varchar](20) NULL,
	[job_title] [varchar](30) NULL,
	[tel] [char](25) NULL,
	[notes] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[company_no] ASC,
	[contact_code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[contact] ([company_no], [contact_code], [name], [job_title], [tel], [notes]) VALUES (1000, N'MM ', N'Munching Mike', N'Accounts Officer', N'(0207)223-9887           ', N'We first visited her in January 1988')
INSERT [dbo].[contact] ([company_no], [contact_code], [name], [job_title], [tel], [notes]) VALUES (2000, N'NN ', N'Naughty Nick', N'Bought Ledger Manager', N'01546-456566 Ext 22      ', N'Works only on Monday and Wednesdays')
INSERT [dbo].[contact] ([company_no], [contact_code], [name], [job_title], [tel], [notes]) VALUES (2000, N'OO ', N'Ollie Octopus', N'Chief Executive Officer', N'0207-341-566670 ext 10   ', N'')
INSERT [dbo].[contact] ([company_no], [contact_code], [name], [job_title], [tel], [notes]) VALUES (3000, N'PP ', N'Purposeful Peter', N'Development Director', N'0131 324545 ext 213      ', N'Insists on personally signing all orders')
INSERT [dbo].[contact] ([company_no], [contact_code], [name], [job_title], [tel], [notes]) VALUES (3000, N'QQ ', N'Quentin Quail', N'Electrical Manager', N'01456 801711 ext 44      ', N'Has been in his job a long time')
INSERT [dbo].[contact] ([company_no], [contact_code], [name], [job_title], [tel], [notes]) VALUES (3000, N'RR ', N'Robber Red', N'Federal Reporting Officer', N'0208-111-11111           ', N'Has a preference for Apple Macintosh systems')
INSERT [dbo].[contact] ([company_no], [contact_code], [name], [job_title], [tel], [notes]) VALUES (4000, N'SS ', N'Sammy Snake', N'Gourmet Foods Purchaser', N'0207-988-0777            ', N'')
INSERT [dbo].[contact] ([company_no], [contact_code], [name], [job_title], [tel], [notes]) VALUES (4000, N'TT ', N'Terrible Tim', N'Head of Inter Office Systems', N'05673-476878 ext 221     ', N'Is listed in Whos Who 1988 onwards')
INSERT [dbo].[contact] ([company_no], [contact_code], [name], [job_title], [tel], [notes]) VALUES (4000, N'UU ', N'Uppy Umbrella', N'Accounts Officer', N'0823-598494 ext 1        ', N'Is upset becuase he is not chief executive!')
/****** Object:  Table [dbo].[salesperson]    Script Date: 12/16/2010 10:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[salesperson](
	[emp_no] [int] NOT NULL,
	[fname] [varchar](15) NULL,
	[lname] [varchar](15) NOT NULL,
	[dept_no] [int] NULL,
	[sales_target] [decimal](5,2) NULL,
	[county] [varchar](15) NULL,
	[post_code] [char](10) NULL,
	[tel] [varchar](15) NULL,
	[notes] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[emp_no] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[salesperson] ([emp_no], [fname], [lname], [dept_no], [sales_target], [county], [post_code], [tel], [notes]) VALUES (10, N'Alan', N'Brick', 1, CAST(9.0000 AS Decimal(12, 4)), N'Surrey', N'RT8 8LP   ', N'0171-908-8765', N'Joined in Sept 1996')
INSERT [dbo].[salesperson] ([emp_no], [fname], [lname], [dept_no], [sales_target], [county], [post_code], [tel], [notes]) VALUES (20, N'Billy', N'Custard', 2, CAST(14.0000 AS Decimal(12, 4)), N'Hampshire', N'RF3 9UD   ', N'(0306)7871', N'Bright Prospect')
INSERT [dbo].[salesperson] ([emp_no], [fname], [lname], [dept_no], [sales_target], [county], [post_code], [tel], [notes]) VALUES (30, N'Chris', N'Digger', 2, CAST(7.0000 AS Decimal(12, 4)), N'Hampshire', N'W45 TY3   ', N'(0908)922211', N'Should be promoted within the next 4 months')
INSERT [dbo].[salesperson] ([emp_no], [fname], [lname], [dept_no], [sales_target], [county], [post_code], [tel], [notes]) VALUES (40, N'Dick', N'Ernst', 3, CAST(11.0000 AS Decimal(12, 4)), N'London', NULL, N'0171-898-9656', NULL)
INSERT [dbo].[salesperson] ([emp_no], [fname], [lname], [dept_no], [sales_target], [county], [post_code], [tel], [notes]) VALUES (50, N'Ernest', N'Flipper', 3, CAST(12.0000 AS Decimal(12, 4)), N'Surrey', N'CR1 2GH   ', N'0181-898-1126', NULL)
INSERT [dbo].[salesperson] ([emp_no], [fname], [lname], [dept_no], [sales_target], [county], [post_code], [tel], [notes]) VALUES (60, N'Fred', N'Goalie', 3, CAST(13.0000 AS Decimal(12, 4)), N'Surrey', NULL, N'0181-877-0123', N'Dislikes international travel')
/****** Object:  Table [dbo].[sale]    Script Date: 12/16/2010 10:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sale](
	[order_no] [int] NOT NULL,
	[emp_no] [int] NOT NULL,
	[their_order_no] [varchar](15) NULL,
	[company_no] [int] NOT NULL,
	[contact_code] [char](3) NOT NULL,
	[order_value] [int] NULL,
	[order_date] [datetime] NULL,
	[description] [varchar](140) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[order_no] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[sale] ([order_no], [emp_no], [their_order_no], [company_no], [contact_code], [order_value], [order_date], [description]) VALUES (100, 60, N'AA1', 1000, N'MM ', 7, CAST(0x00008F5B00000000 AS DateTime), N'IBM Thinkpad 755CE')
INSERT [dbo].[sale] ([order_no], [emp_no], [their_order_no], [company_no], [contact_code], [order_value], [order_date], [description]) VALUES (200, 60, N'Ord34', 3000, N'QQ ', 6, CAST(0x00008F2500000000 AS DateTime), N'MS Office Professional * 30')
INSERT [dbo].[sale] ([order_no], [emp_no], [their_order_no], [company_no], [contact_code], [order_value], [order_date], [description]) VALUES (300, 60, N'Ord39', 2000, N'OO ', 12, CAST(0x00008F6F00000000 AS DateTime), N'25 ScanPRO 4800 Scanner')
INSERT [dbo].[sale] ([order_no], [emp_no], [their_order_no], [company_no], [contact_code], [order_value], [order_date], [description]) VALUES (400, 10, N'DGG5', 1000, N'MM ', 5, CAST(0x00008F8900000000 AS DateTime), N'Modems and Cables etc')
INSERT [dbo].[sale] ([order_no], [emp_no], [their_order_no], [company_no], [contact_code], [order_value], [order_date], [description]) VALUES (500, 60, N'DPF78', 4000, N'TT ', 2, CAST(0x00008F7800000000 AS DateTime), N'Laser printer')
INSERT [dbo].[sale] ([order_no], [emp_no], [their_order_no], [company_no], [contact_code], [order_value], [order_date], [description]) VALUES (600, 50, N'AC12', 3000, N'PP ', 27, CAST(0x00008F3B00000000 AS DateTime), N'Complete Desktop Publishing System')
INSERT [dbo].[sale] ([order_no], [emp_no], [their_order_no], [company_no], [contact_code], [order_value], [order_date], [description]) VALUES (700, 10, N'23', 2000, N'OO ', 3, CAST(0x00008EC200000000 AS DateTime), N'SQL Server 7.0 20 user licence')
INSERT [dbo].[sale] ([order_no], [emp_no], [their_order_no], [company_no], [contact_code], [order_value], [order_date], [description]) VALUES (800, 60, N'B-123E', 3000, N'RR ', 3, CAST(0x0000900900000000 AS DateTime), N'Printer cartridges')
/****** Object:  ForeignKey [FK__contact__company__24927208]    Script Date: 12/16/2010 10:45:46 ******/
ALTER TABLE [dbo].[contact]  WITH CHECK ADD FOREIGN KEY([company_no])
REFERENCES [dbo].[company] ([company_no])
GO
/****** Object:  ForeignKey [FK__salespers__dept___1BFD2C07]    Script Date: 12/16/2010 10:45:46 ******/
ALTER TABLE [dbo].[salesperson]  WITH CHECK ADD FOREIGN KEY([dept_no])
REFERENCES [dbo].[dept] ([dept_no])
GO
/****** Object:  ForeignKey [FK__sale__2A4B4B5E]    Script Date: 12/16/2010 10:45:46 ******/
ALTER TABLE [dbo].[sale]  WITH CHECK ADD FOREIGN KEY([company_no], [contact_code])
REFERENCES [dbo].[contact] ([company_no], [contact_code])
GO
/****** Object:  ForeignKey [FK__sale__emp_no__29572725]    Script Date: 12/16/2010 10:45:46 ******/
ALTER TABLE [dbo].[sale]  WITH CHECK ADD FOREIGN KEY([emp_no])
REFERENCES [dbo].[salesperson] ([emp_no])
GO
