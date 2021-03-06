USE [PermissionManage]
GO
/****** Object:  Table [dbo].[project]    Script Date: 2019-04-30 16:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[project](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_project_Power] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[project_Power]    Script Date: 2019-04-30 16:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[project_Power](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[parentId] [int] NULL CONSTRAINT [DF_project_Power_parentId]  DEFAULT ((0)),
	[description] [varchar](500) NULL,
	[enabled] [bit] NOT NULL CONSTRAINT [DF_users_Power_enabled]  DEFAULT ((0)),
	[createDate] [date] NULL CONSTRAINT [DF_users_Power_createDate]  DEFAULT (getdate()),
	[createUsers] [varchar](50) NOT NULL,
	[projectId] [int] NULL,
 CONSTRAINT [PK_users_Power] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[project_Role]    Script Date: 2019-04-30 16:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[project_Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[parentId] [int] NULL CONSTRAINT [DF_project_Role_parentId]  DEFAULT ((0)),
	[description] [varchar](500) NULL,
	[enabled] [bit] NOT NULL CONSTRAINT [DF_users_Role_enabled]  DEFAULT ((0)),
	[createDate] [date] NULL CONSTRAINT [DF_users_Role_createDate]  DEFAULT (getdate()),
	[createUsers] [varchar](50) NOT NULL,
	[projectId] [int] NULL,
 CONSTRAINT [PK_users_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[role_Power]    Script Date: 2019-04-30 16:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[role_Power](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roleId] [int] NOT NULL,
	[powerId] [int] NOT NULL,
	[createDate] [date] NULL CONSTRAINT [DF_role_power_createDate]  DEFAULT (getdate()),
	[createUsers] [varchar](50) NULL,
 CONSTRAINT [PK_role_power] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[test]    Script Date: 2019-04-30 16:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[test](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[filed1] [varchar](50) NULL,
	[number] [int] NULL,
 CONSTRAINT [PK_test] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users]    Script Date: 2019-04-30 16:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[createWay] [int] NOT NULL CONSTRAINT [DF_users_createWay]  DEFAULT ((0)),
	[createDate] [date] NULL CONSTRAINT [DF_users_createDate]  DEFAULT (getdate()),
	[createUsers] [varchar](50) NULL,
	[roleId] [int] NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[project] ON 

GO
INSERT [dbo].[project] ([id], [name]) VALUES (2, N'VideoManage')
GO
INSERT [dbo].[project] ([id], [name]) VALUES (3, N'Report')
GO
INSERT [dbo].[project] ([id], [name]) VALUES (4, N'GLS')
GO
INSERT [dbo].[project] ([id], [name]) VALUES (5, N'GLSS')
GO
SET IDENTITY_INSERT [dbo].[project] OFF
GO
SET IDENTITY_INSERT [dbo].[project_Power] ON 

GO
INSERT [dbo].[project_Power] ([id], [name], [parentId], [description], [enabled], [createDate], [createUsers], [projectId]) VALUES (1, N'视频管理', 0, N'视频管理', 1, CAST(N'2018-12-12' AS Date), N'2', 2)
GO
INSERT [dbo].[project_Power] ([id], [name], [parentId], [description], [enabled], [createDate], [createUsers], [projectId]) VALUES (2, N'新增', 1, N'新增', 1, CAST(N'2018-12-12' AS Date), N'2', 2)
GO
INSERT [dbo].[project_Power] ([id], [name], [parentId], [description], [enabled], [createDate], [createUsers], [projectId]) VALUES (3, N'删除', 1, N'删除3', 1, CAST(N'2018-12-12' AS Date), N'1', 2)
GO
INSERT [dbo].[project_Power] ([id], [name], [parentId], [description], [enabled], [createDate], [createUsers], [projectId]) VALUES (5, N'修改', 1, N'修改', 0, CAST(N'2018-12-12' AS Date), N'1', 2)
GO
INSERT [dbo].[project_Power] ([id], [name], [parentId], [description], [enabled], [createDate], [createUsers], [projectId]) VALUES (6, N'查询', 1, N'查询', 0, CAST(N'2018-12-12' AS Date), N'1', 2)
GO
INSERT [dbo].[project_Power] ([id], [name], [parentId], [description], [enabled], [createDate], [createUsers], [projectId]) VALUES (7, N'界面管理', 0, N'界面管理', 0, CAST(N'2018-12-12' AS Date), N'1', 3)
GO
INSERT [dbo].[project_Power] ([id], [name], [parentId], [description], [enabled], [createDate], [createUsers], [projectId]) VALUES (8, N'视频类型', 1, N'视频类型', 0, CAST(N'2018-12-17' AS Date), N'1', 2)
GO
INSERT [dbo].[project_Power] ([id], [name], [parentId], [description], [enabled], [createDate], [createUsers], [projectId]) VALUES (9, N'新增类型', 8, N'新增类型', 0, CAST(N'2018-12-17' AS Date), N'1', 2)
GO
SET IDENTITY_INSERT [dbo].[project_Power] OFF
GO
SET IDENTITY_INSERT [dbo].[project_Role] ON 

GO
INSERT [dbo].[project_Role] ([id], [name], [parentId], [description], [enabled], [createDate], [createUsers], [projectId]) VALUES (2, N'超级管理员', 0, N'超级管理员', 1, CAST(N'2018-12-18' AS Date), N'1', 2)
GO
INSERT [dbo].[project_Role] ([id], [name], [parentId], [description], [enabled], [createDate], [createUsers], [projectId]) VALUES (3, N'管理员', 2, N'管理员22', 1, CAST(N'2019-01-08' AS Date), N'1', 2)
GO
INSERT [dbo].[project_Role] ([id], [name], [parentId], [description], [enabled], [createDate], [createUsers], [projectId]) VALUES (5, N'子管理员', 3, N'子管理员', 1, CAST(N'2018-12-10' AS Date), N'1', 2)
GO
INSERT [dbo].[project_Role] ([id], [name], [parentId], [description], [enabled], [createDate], [createUsers], [projectId]) VALUES (6, N'超级管理员2', 0, N'超级管理员2', 1, CAST(N'2018-12-18' AS Date), N'1', 2)
GO
INSERT [dbo].[project_Role] ([id], [name], [parentId], [description], [enabled], [createDate], [createUsers], [projectId]) VALUES (7, N'管理员2', 6, NULL, 0, CAST(N'2018-12-11' AS Date), N'1', 2)
GO
INSERT [dbo].[project_Role] ([id], [name], [parentId], [description], [enabled], [createDate], [createUsers], [projectId]) VALUES (8, N'管理员2', 6, NULL, 0, CAST(N'2018-12-11' AS Date), N'1', 2)
GO
INSERT [dbo].[project_Role] ([id], [name], [parentId], [description], [enabled], [createDate], [createUsers], [projectId]) VALUES (9, N'子管理员', 8, NULL, 0, CAST(N'2018-12-11' AS Date), N'1', 2)
GO
INSERT [dbo].[project_Role] ([id], [name], [parentId], [description], [enabled], [createDate], [createUsers], [projectId]) VALUES (10, N'管理员3', 6, NULL, 0, CAST(N'2018-12-12' AS Date), N'1', 2)
GO
INSERT [dbo].[project_Role] ([id], [name], [parentId], [description], [enabled], [createDate], [createUsers], [projectId]) VALUES (11, N'超级管理员', 0, NULL, 0, CAST(N'2018-12-12' AS Date), N'1', 3)
GO
SET IDENTITY_INSERT [dbo].[project_Role] OFF
GO
SET IDENTITY_INSERT [dbo].[role_Power] ON 

GO
INSERT [dbo].[role_Power] ([id], [roleId], [powerId], [createDate], [createUsers]) VALUES (12, 2, 1, CAST(N'2018-12-18' AS Date), NULL)
GO
INSERT [dbo].[role_Power] ([id], [roleId], [powerId], [createDate], [createUsers]) VALUES (13, 2, 2, CAST(N'2018-12-18' AS Date), NULL)
GO
INSERT [dbo].[role_Power] ([id], [roleId], [powerId], [createDate], [createUsers]) VALUES (14, 2, 3, CAST(N'2018-12-18' AS Date), NULL)
GO
INSERT [dbo].[role_Power] ([id], [roleId], [powerId], [createDate], [createUsers]) VALUES (15, 2, 5, CAST(N'2018-12-18' AS Date), NULL)
GO
INSERT [dbo].[role_Power] ([id], [roleId], [powerId], [createDate], [createUsers]) VALUES (16, 2, 6, CAST(N'2018-12-18' AS Date), NULL)
GO
INSERT [dbo].[role_Power] ([id], [roleId], [powerId], [createDate], [createUsers]) VALUES (17, 2, 8, CAST(N'2018-12-18' AS Date), NULL)
GO
INSERT [dbo].[role_Power] ([id], [roleId], [powerId], [createDate], [createUsers]) VALUES (18, 2, 9, CAST(N'2018-12-18' AS Date), NULL)
GO
INSERT [dbo].[role_Power] ([id], [roleId], [powerId], [createDate], [createUsers]) VALUES (19, 6, 1, CAST(N'2018-12-18' AS Date), NULL)
GO
INSERT [dbo].[role_Power] ([id], [roleId], [powerId], [createDate], [createUsers]) VALUES (20, 6, 2, CAST(N'2018-12-18' AS Date), NULL)
GO
INSERT [dbo].[role_Power] ([id], [roleId], [powerId], [createDate], [createUsers]) VALUES (21, 6, 3, CAST(N'2018-12-18' AS Date), NULL)
GO
INSERT [dbo].[role_Power] ([id], [roleId], [powerId], [createDate], [createUsers]) VALUES (22, 6, 5, CAST(N'2018-12-18' AS Date), NULL)
GO
INSERT [dbo].[role_Power] ([id], [roleId], [powerId], [createDate], [createUsers]) VALUES (23, 6, 6, CAST(N'2018-12-18' AS Date), NULL)
GO
INSERT [dbo].[role_Power] ([id], [roleId], [powerId], [createDate], [createUsers]) VALUES (24, 6, 8, CAST(N'2018-12-18' AS Date), NULL)
GO
INSERT [dbo].[role_Power] ([id], [roleId], [powerId], [createDate], [createUsers]) VALUES (25, 6, 9, CAST(N'2018-12-18' AS Date), NULL)
GO
INSERT [dbo].[role_Power] ([id], [roleId], [powerId], [createDate], [createUsers]) VALUES (32, 3, 1, CAST(N'2019-01-08' AS Date), NULL)
GO
INSERT [dbo].[role_Power] ([id], [roleId], [powerId], [createDate], [createUsers]) VALUES (33, 3, 2, CAST(N'2019-01-08' AS Date), NULL)
GO
INSERT [dbo].[role_Power] ([id], [roleId], [powerId], [createDate], [createUsers]) VALUES (34, 3, 8, CAST(N'2019-01-08' AS Date), NULL)
GO
INSERT [dbo].[role_Power] ([id], [roleId], [powerId], [createDate], [createUsers]) VALUES (35, 3, 9, CAST(N'2019-01-08' AS Date), NULL)
GO
SET IDENTITY_INSERT [dbo].[role_Power] OFF
GO
SET IDENTITY_INSERT [dbo].[test] ON 

GO
INSERT [dbo].[test] ([id], [name], [filed1], [number]) VALUES (1, N'明哥', N'语文', 10)
GO
INSERT [dbo].[test] ([id], [name], [filed1], [number]) VALUES (2, N'明哥', N'英语', 20)
GO
INSERT [dbo].[test] ([id], [name], [filed1], [number]) VALUES (3, N'明哥', N'数学', 30)
GO
INSERT [dbo].[test] ([id], [name], [filed1], [number]) VALUES (4, N'皮皮龟', N'语文', 5)
GO
INSERT [dbo].[test] ([id], [name], [filed1], [number]) VALUES (5, N'皮皮龟', N'英语', 50)
GO
INSERT [dbo].[test] ([id], [name], [filed1], [number]) VALUES (6, N'皮皮龟', N'数学', 3)
GO
SET IDENTITY_INSERT [dbo].[test] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (1, N'1', N'Y11', 1, CAST(N'2018-12-17' AS Date), N'1', 2)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (2, N'2', N'Y11', 1, CAST(N'2018-12-17' AS Date), N'1', 2)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (3, N'3', N'Y11', 1, CAST(N'2018-12-18' AS Date), N'1', 3)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (4, N'1', N'4b1e7710-c900-4eee-a9bf-19361133ab3a', 1, CAST(N'2019-04-30' AS Date), N'1', 2)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (25, N'b146ac08-dde3-4342-ac07-30d511431ee9', N'Y11', 1, CAST(N'2019-04-26' AS Date), NULL, 2)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (26, N'38fb1b5c-bb0c-4161-a860-1e636ca3d329', N'Y11', 1, CAST(N'2019-04-26' AS Date), NULL, 2)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (27, N'ec21fdfc-4cdc-4f8f-a87b-1f1e53720634', N'Y11', 1, CAST(N'2019-04-26' AS Date), NULL, 2)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (28, N'fe31b163-5e69-4241-8ada-ece373dbce38', N'Y11', 1, CAST(N'2019-04-26' AS Date), NULL, 2)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (29, N'db4dc345-387e-4205-9d2e-6ba852ced5b0', N'Y11', 1, CAST(N'2019-04-26' AS Date), NULL, 2)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (30, N'8342e298-a563-4400-9bfc-5a052deb8bd0', N'Y11', 1, CAST(N'2019-04-26' AS Date), NULL, 2)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (31, N'607c4807-a2e2-4ad4-b29e-e7353bd8b6b1', N'Y11', 1, CAST(N'2019-04-26' AS Date), NULL, 2)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (32, N'a2ffcb4f-7118-42b8-906e-43fae428d683', N'Y11', 1, CAST(N'2019-04-26' AS Date), NULL, 2)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (33, N'2bbd9fc4-b2cc-46a7-ad27-20ecb31a6cbd', N'Y11', 1, CAST(N'2019-04-26' AS Date), NULL, 2)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (34, N'60eadfc6-0041-4ff3-8026-317059ad5645', N'Y11', 1, CAST(N'2019-04-26' AS Date), NULL, 2)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (35, N'eb05cc83-b25e-4155-960b-19cca69c35b5', N'Y11', 1, CAST(N'2019-04-26' AS Date), NULL, 2)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (36, N'834a3c99-cdf8-46f3-81a6-6e6b7e69e5c6', N'Y11', 1, CAST(N'2019-04-26' AS Date), NULL, 2)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (37, N'fc1341f3-0403-4ec3-b795-beb07426d185', N'test', 1, CAST(N'2019-04-29' AS Date), NULL, 2)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (38, N'713dd246-c084-4f37-8ffb-4e86b7ec7ba8', N'test', 1, CAST(N'2019-04-29' AS Date), NULL, 2)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (39, N'e1a02c3b-dcf5-4e80-87b2-150bc5943164', N'test', 1, CAST(N'2019-04-29' AS Date), NULL, 2)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (40, N'13506d7f-3185-410f-aa3d-de877449441b', N'test', 1, CAST(N'2019-04-29' AS Date), NULL, 2)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (41, N'1df4a6d2-644f-4f68-952b-8e871e2993dd', N'test', 1, CAST(N'2019-04-30' AS Date), NULL, 2)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (42, N'0ad1cd47-4402-464a-82cc-d2735fecc4a7', N'test', 1, CAST(N'2019-04-30' AS Date), NULL, 2)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (43, N'26b514c2-4b8d-4325-9fb8-a36bff20f026', N'test', 1, CAST(N'2019-04-30' AS Date), NULL, 2)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (44, N'24420811-990b-4178-a175-965f8b9be3b0', N'test', 1, CAST(N'2019-04-30' AS Date), NULL, 2)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (45, N'51dd8e59-b80a-4205-b82c-baeabe2b72a4', N'test', 1, CAST(N'2019-04-30' AS Date), NULL, 2)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (1019, N'08f7f1bb-d441-4fbd-8cc1-808bbc022e14', N'test', 1, CAST(N'2019-04-30' AS Date), NULL, 2)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (1020, N'074852ae-7ca9-4244-8b53-63dc8c0bf9f6', N'test', 1, CAST(N'2019-04-30' AS Date), NULL, 2)
GO
INSERT [dbo].[users] ([id], [code], [name], [createWay], [createDate], [createUsers], [roleId]) VALUES (1021, N'5e536d3d-7563-459e-8f8b-ec1f32fd8d40', N'test', 1, CAST(N'2019-04-30' AS Date), NULL, 2)
GO
SET IDENTITY_INSERT [dbo].[users] OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'project', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'project', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'project_Power', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'project_Power', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级权限id,0为最顶部权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'project_Power', @level2type=N'COLUMN',@level2name=N'parentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'project_Power', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'project_Power', @level2type=N'COLUMN',@level2name=N'enabled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'project_Power', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'project_Power', @level2type=N'COLUMN',@level2name=N'createUsers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'project_Role', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'project_Role', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色父级id,0为最高等级角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'project_Role', @level2type=N'COLUMN',@level2name=N'parentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'project_Role', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'project_Role', @level2type=N'COLUMN',@level2name=N'enabled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'project_Role', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'project_Role', @level2type=N'COLUMN',@level2name=N'createUsers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'project_Role', @level2type=N'COLUMN',@level2name=N'projectId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建方式(1自定义角色 2通用角色)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users', @level2type=N'COLUMN',@level2name=N'createWay'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users', @level2type=N'COLUMN',@level2name=N'createUsers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users', @level2type=N'COLUMN',@level2name=N'roleId'
GO
