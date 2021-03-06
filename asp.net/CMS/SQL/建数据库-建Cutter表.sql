USE [master]
GO
/****** Object:  Database [CMSDB]    Script Date: 2017/3/14 22:55:21 ******/
CREATE DATABASE [CMSDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CMSDB', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\CMSDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CMSDB_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\CMSDB_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CMSDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CMSDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CMSDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CMSDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CMSDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CMSDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CMSDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CMSDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CMSDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CMSDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CMSDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CMSDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CMSDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CMSDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CMSDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CMSDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CMSDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CMSDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CMSDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CMSDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CMSDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CMSDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CMSDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CMSDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CMSDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CMSDB] SET  MULTI_USER 
GO
ALTER DATABASE [CMSDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CMSDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CMSDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CMSDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CMSDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [CMSDB]
GO
/****** Object:  Table [dbo].[Applications]    Script Date: 2017/3/14 22:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applications](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[ApplicationName] [nvarchar](235) NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cutter3DImages]    Script Date: 2017/3/14 22:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cutter3DImages](
	[ID] [int] NOT NULL,
	[ClassID] [int] NULL,
	[UserName] [nvarchar](50) NULL,
	[Name] [nvarchar](30) NULL,
	[ImagePath] [nvarchar](100) NULL,
 CONSTRAINT [PK_Cutter3DImages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CutterClass]    Script Date: 2017/3/14 22:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CutterClass](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](30) NULL,
 CONSTRAINT [PK_CutterClass] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CutterDetailClass]    Script Date: 2017/3/14 22:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CutterDetailClass](
	[ID] [int] NOT NULL,
	[ClassID] [int] NULL,
	[UserName] [nvarchar](50) NULL,
	[Name] [nvarchar](30) NULL,
 CONSTRAINT [PK_CutterDetailClass] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CutterElectricTestRecord]    Script Date: 2017/3/14 22:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CutterElectricTestRecord](
	[ID] [int] NOT NULL,
	[DateTime] [datetime] NULL,
	[Value] [float] NULL,
	[TestLocation] [nvarchar](100) NULL,
	[DangerousValue] [float] NULL,
 CONSTRAINT [PK_CutterElectricTestRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CutterEvents]    Script Date: 2017/3/14 22:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CutterEvents](
	[ID] [int] NOT NULL,
	[EventID] [int] NULL,
	[Event] [text] NULL,
 CONSTRAINT [PK_CutterEvent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CutterImages]    Script Date: 2017/3/14 22:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CutterImages](
	[ID] [int] NOT NULL,
	[ImageID] [int] NULL,
	[DateTime] [datetime] NULL,
	[ImagePath] [nvarchar](100) NULL,
 CONSTRAINT [PK_CutterImages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CutterMaterial]    Script Date: 2017/3/14 22:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CutterMaterial](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](30) NULL,
 CONSTRAINT [PK_CutterMaterial] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CutterNotes]    Script Date: 2017/3/14 22:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CutterNotes](
	[ID] [int] NOT NULL,
	[NoteID] [int] NULL,
	[Note] [text] NULL,
 CONSTRAINT [PK_CutterNote] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cutters]    Script Date: 2017/3/14 22:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cutters](
	[ID] [uniqueidentifier] NOT NULL,
	[number] [nvarchar](50) NULL,
	[ClassID] [int] NULL,
	[DetailClassID] [int] NULL,
	[MaterialID] [int] NULL,
 CONSTRAINT [PK_Cutters] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CuttersDetail]    Script Date: 2017/3/14 22:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuttersDetail](
	[ID] [uniqueidentifier] NOT NULL,
	[UsersGroupID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[LastUseDate] [datetime] NULL,
	[ExpectLife] [int] NULL,
	[WearProcess] [float] NULL,
	[IsWorking] [bit] NULL CONSTRAINT [DF_CuttersDetail_IsWorking]  DEFAULT ((0)),
	[StartTime] [datetime] NULL,
	[StopTime] [datetime] NULL,
	[Location] [nvarchar](100) NULL,
	[NoteID] [int] NULL,
	[EventID] [int] NULL,
	[ElectricTestRecordID] [int] NULL,
	[Cutter3DImageID] [int] NULL,
	[ImageID] [int] NULL,
 CONSTRAINT [PK_CuttersDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CutterUsersGroup]    Script Date: 2017/3/14 22:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CutterUsersGroup](
	[ID] [int] NOT NULL,
	[GroupID] [int] NULL,
	[UserName] [nvarchar](50) NULL,
 CONSTRAINT [PK_CutterUsersGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Memberships]    Script Date: 2017/3/14 22:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Memberships](
	[UserId] [uniqueidentifier] NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowsStart] [datetime] NOT NULL,
	[Comment] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 2017/3/14 22:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profiles](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [nvarchar](max) NOT NULL,
	[PropertyValueStrings] [nvarchar](max) NOT NULL,
	[PropertyValueBinary] [varbinary](max) NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2017/3/14 22:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [uniqueidentifier] NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 2017/3/14 22:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [uniqueidentifier] NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsersInRoles]    Script Date: 2017/3/14 22:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[PersonalInfo]    Script Date: 2017/3/14 22:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PersonalInfo]
AS
SELECT   dbo.Users.UserName AS 用户名, dbo.Roles.RoleName AS 权限, dbo.Memberships.Email AS 邮箱, 
                dbo.Users.LastActivityDate AS 活跃
FROM      dbo.Users INNER JOIN
                dbo.Memberships ON dbo.Users.UserId = dbo.Memberships.UserId INNER JOIN
                dbo.UsersInRoles ON dbo.Users.UserId = dbo.UsersInRoles.UserId INNER JOIN
                dbo.Roles ON dbo.UsersInRoles.RoleId = dbo.Roles.RoleId

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_UserName]    Script Date: 2017/3/14 22:55:21 ******/
CREATE NONCLUSTERED INDEX [IDX_UserName] ON [dbo].[Users]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cutters]  WITH CHECK ADD  CONSTRAINT [FK_Cutters_CutterClass] FOREIGN KEY([ClassID])
REFERENCES [dbo].[CutterClass] ([ID])
GO
ALTER TABLE [dbo].[Cutters] CHECK CONSTRAINT [FK_Cutters_CutterClass]
GO
ALTER TABLE [dbo].[Cutters]  WITH CHECK ADD  CONSTRAINT [FK_Cutters_CutterDetailClass] FOREIGN KEY([DetailClassID])
REFERENCES [dbo].[CutterDetailClass] ([ID])
GO
ALTER TABLE [dbo].[Cutters] CHECK CONSTRAINT [FK_Cutters_CutterDetailClass]
GO
ALTER TABLE [dbo].[Cutters]  WITH CHECK ADD  CONSTRAINT [FK_Cutters_CutterMaterial] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[CutterMaterial] ([ID])
GO
ALTER TABLE [dbo].[Cutters] CHECK CONSTRAINT [FK_Cutters_CutterMaterial]
GO
ALTER TABLE [dbo].[CuttersDetail]  WITH CHECK ADD  CONSTRAINT [FK_CuttersDetail_Cutters] FOREIGN KEY([ID])
REFERENCES [dbo].[Cutters] ([ID])
GO
ALTER TABLE [dbo].[CuttersDetail] CHECK CONSTRAINT [FK_CuttersDetail_Cutters]
GO
ALTER TABLE [dbo].[Memberships]  WITH CHECK ADD  CONSTRAINT [MembershipEntity_Application] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[Memberships] CHECK CONSTRAINT [MembershipEntity_Application]
GO
ALTER TABLE [dbo].[Memberships]  WITH CHECK ADD  CONSTRAINT [MembershipEntity_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Memberships] CHECK CONSTRAINT [MembershipEntity_User]
GO
ALTER TABLE [dbo].[Profiles]  WITH CHECK ADD  CONSTRAINT [ProfileEntity_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Profiles] CHECK CONSTRAINT [ProfileEntity_User]
GO
ALTER TABLE [dbo].[Roles]  WITH CHECK ADD  CONSTRAINT [RoleEntity_Application] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[Roles] CHECK CONSTRAINT [RoleEntity_Application]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [User_Application] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [User_Application]
GO
ALTER TABLE [dbo].[UsersInRoles]  WITH CHECK ADD  CONSTRAINT [UsersInRole_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[UsersInRoles] CHECK CONSTRAINT [UsersInRole_Role]
GO
ALTER TABLE [dbo].[UsersInRoles]  WITH CHECK ADD  CONSTRAINT [UsersInRole_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[UsersInRoles] CHECK CONSTRAINT [UsersInRole_User]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所有拥有此刀具的用户组ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CuttersDetail', @level2type=N'COLUMN',@level2name=N'UsersGroupID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加刀具日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CuttersDetail', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后使用刀具的日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CuttersDetail', @level2type=N'COLUMN',@level2name=N'LastUseDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预期寿命' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CuttersDetail', @level2type=N'COLUMN',@level2name=N'ExpectLife'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'磨损进度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CuttersDetail', @level2type=N'COLUMN',@level2name=N'WearProcess'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否在工作' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CuttersDetail', @level2type=N'COLUMN',@level2name=N'IsWorking'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始工作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CuttersDetail', @level2type=N'COLUMN',@level2name=N'StartTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'停止工作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CuttersDetail', @level2type=N'COLUMN',@level2name=N'StopTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'现在位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CuttersDetail', @level2type=N'COLUMN',@level2name=N'Location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志记录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CuttersDetail', @level2type=N'COLUMN',@level2name=N'NoteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'事故ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CuttersDetail', @level2type=N'COLUMN',@level2name=N'EventID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电测量ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CuttersDetail', @level2type=N'COLUMN',@level2name=N'ElectricTestRecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'照片ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CuttersDetail', @level2type=N'COLUMN',@level2name=N'Cutter3DImageID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Users"
            Begin Extent = 
               Top = 19
               Left = 38
               Bottom = 159
               Right = 217
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Memberships"
            Begin Extent = 
               Top = 0
               Left = 448
               Bottom = 140
               Right = 795
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UsersInRoles"
            Begin Extent = 
               Top = 233
               Left = 246
               Bottom = 335
               Right = 388
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Roles"
            Begin Extent = 
               Top = 175
               Left = 440
               Bottom = 315
               Right = 606
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PersonalInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PersonalInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PersonalInfo'
GO
USE [master]
GO
ALTER DATABASE [CMSDB] SET  READ_WRITE 
GO
