USE [master]
GO
/****** Object:  Database [LabSystemClient_RajLab]    Script Date: 3/4/2021 1:19:05 PM ******/
CREATE DATABASE [LabSystemClient_RajLab]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LabSystemClient_RajLab', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS2017\MSSQL\DATA\LabSystemClient_RajLab.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LabSystemClient_RajLab_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS2017\MSSQL\DATA\LabSystemClient_RajLab_log.ldf' , SIZE = 1856KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LabSystemClient_RajLab] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LabSystemClient_RajLab].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LabSystemClient_RajLab] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET ARITHABORT OFF 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET  MULTI_USER 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LabSystemClient_RajLab] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LabSystemClient_RajLab] SET QUERY_STORE = OFF
GO
USE [LabSystemClient_RajLab]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [LabSystemClient_RajLab]
GO
/****** Object:  Table [dbo].[Tbl_Cl_AdminDetail]    Script Date: 3/4/2021 1:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_AdminDetail](
	[AdminDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ClientUserID] [int] NULL,
	[SystemClientID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Tbl_Cl_AdminDetail] PRIMARY KEY CLUSTERED 
(
	[AdminDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_ClientUser]    Script Date: 3/4/2021 1:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_ClientUser](
	[ClientUserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](250) NULL,
	[Password] [varchar](max) NULL,
	[FirstName] [varchar](max) NULL,
	[LastName] [varchar](max) NULL,
	[Email] [varchar](max) NULL,
	[MobileNo] [varchar](max) NULL,
	[Address] [varchar](max) NULL,
	[IsActive] [bit] NULL,
	[ProfilePic] [varchar](max) NULL,
	[DetailID] [int] NULL,
	[DetailType] [int] NULL,
	[IsBlock] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[HospitalDetailID] [int] NULL,
 CONSTRAINT [PK_Tbl_Cl_ClientUser] PRIMARY KEY CLUSTERED 
(
	[ClientUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_ClientUserAttachmentDetail]    Script Date: 3/4/2021 1:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_ClientUserAttachmentDetail](
	[AttachmentID] [int] IDENTITY(1,1) NOT NULL,
	[AttachmentName] [varchar](max) NULL,
	[Link] [varchar](max) NULL,
	[Extension] [varchar](50) NULL,
	[UserDetailID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Tbl_Cl_ClientUserAttachmentDetail] PRIMARY KEY CLUSTERED 
(
	[AttachmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_ClientUserDetail]    Script Date: 3/4/2021 1:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_ClientUserDetail](
	[UserDetailID] [int] IDENTITY(1,1) NOT NULL,
	[JoiningDate] [date] NULL,
	[TerminationDate] [date] NULL,
	[TerminationReason] [varchar](max) NULL,
	[Qualifications] [varchar](max) NULL,
	[TypeOfCollection] [varchar](max) NULL,
	[License] [varchar](max) NULL,
	[IsFulltime] [bit] NULL,
	[PdfLink] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Tbl_Cl_ClientUserDetail] PRIMARY KEY CLUSTERED 
(
	[UserDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_ClientUserType]    Script Date: 3/4/2021 1:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_ClientUserType](
	[ClientUserTypeID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_Tbl_Cl_ClientUserType] PRIMARY KEY CLUSTERED 
(
	[ClientUserTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_ExtraWorkAttachment]    Script Date: 3/4/2021 1:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_ExtraWorkAttachment](
	[ExtraWorkAttachmentID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Extension] [varchar](250) NULL,
	[Link] [varchar](max) NULL,
	[ExtraWorkID] [int] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Tbl_Cl_ExtraWorkAttachment] PRIMARY KEY CLUSTERED 
(
	[ExtraWorkAttachmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_ExtraWorkRequest]    Script Date: 3/4/2021 1:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_ExtraWorkRequest](
	[ExtraWorkID] [int] IDENTITY(1,1) NOT NULL,
	[TestID] [int] NOT NULL,
	[H_ELevels] [varchar](max) NULL,
	[SpecialStains] [varchar](max) NULL,
	[ImmunoHistoChemistry] [varchar](max) NULL,
	[Others] [varchar](max) NULL,
	[StatusID] [int] NULL,
	[RequestCreatedDate] [datetime] NULL,
	[RequestCreatedBy] [int] NULL,
	[NewActionDate] [datetime] NULL,
	[NewActionBy] [int] NULL,
	[NewActionStatusID] [int] NULL,
	[NewActionComments] [varchar](max) NULL,
	[PendingActionBy] [int] NULL,
	[PendingActionDate] [datetime] NULL,
	[PendingActionComments] [varchar](max) NULL,
 CONSTRAINT [PK_Tbl_Cl_ExtraWork] PRIMARY KEY CLUSTERED 
(
	[ExtraWorkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_ExtraWorkRequestStatus]    Script Date: 3/4/2021 1:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_ExtraWorkRequestStatus](
	[WorkRequestStatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [varchar](250) NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_Tbl_Cl_ExtraWorkRequestStatus] PRIMARY KEY CLUSTERED 
(
	[WorkRequestStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_ForgetPassword]    Script Date: 3/4/2021 1:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_ForgetPassword](
	[ForgetPasswordID] [int] IDENTITY(1,1) NOT NULL,
	[UniqueCode] [varchar](max) NULL,
	[ClientUserID] [int] NULL,
	[ExpiresInMinutes] [int] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Tbl_Cl_ForgetPassword] PRIMARY KEY CLUSTERED 
(
	[ForgetPasswordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_HospitalDetail]    Script Date: 3/4/2021 1:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_HospitalDetail](
	[HospitalDetailID] [int] IDENTITY(1,1) NOT NULL,
	[HospitalName] [varchar](max) NULL,
	[Address] [varchar](max) NULL,
	[City] [varchar](max) NULL,
	[PhoneNo] [varchar](max) NULL,
	[FaxNo] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[ClientUserID] [int] NULL,
	[HospitalCode] [varchar](100) NULL,
 CONSTRAINT [PK_Tbl_Cl_HospitalDetail] PRIMARY KEY CLUSTERED 
(
	[HospitalDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_IncorrectPasswordAttempt]    Script Date: 3/4/2021 1:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_IncorrectPasswordAttempt](
	[IncorrectPasswordID] [int] IDENTITY(1,1) NOT NULL,
	[ClientUserID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[Password] [varchar](max) NULL,
	[IsInclude] [bit] NULL,
 CONSTRAINT [PK_Tbl_Cl_IncorrectPasswordAttempt] PRIMARY KEY CLUSTERED 
(
	[IncorrectPasswordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_Inventory]    Script Date: 3/4/2021 1:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_Inventory](
	[InventoryID] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [varchar](max) NULL,
	[Code] [varchar](50) NULL,
	[Description] [varchar](max) NULL,
	[QuantityOrdered] [varchar](100) NULL,
	[QuantityLeft] [varchar](100) NULL,
	[OrderedHistory] [varchar](max) NULL,
	[ExpiryDate] [date] NULL,
	[InventoryStatusID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Tbl_Cl_Inventory] PRIMARY KEY CLUSTERED 
(
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_InventoryRequest]    Script Date: 3/4/2021 1:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_InventoryRequest](
	[InventoryRequestID] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[Comments] [varchar](max) NULL,
	[Quantity] [varchar](100) NULL,
	[StatusID] [int] NULL,
	[RequestCreatedDate] [datetime] NULL,
	[RequestCreatedBy] [int] NULL,
	[OpenActionBy] [int] NULL,
	[OpenActionDate] [datetime] NULL,
	[OpenActionStatusID] [int] NULL,
	[OpenActionComments] [varchar](max) NULL,
	[ProgressActionBy] [int] NULL,
	[ProgressActionDate] [datetime] NULL,
	[ProgressActionComments] [varchar](max) NULL,
 CONSTRAINT [PK_Tbl_Cl_InventoryRequest] PRIMARY KEY CLUSTERED 
(
	[InventoryRequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_InventoryRequestStatus]    Script Date: 3/4/2021 1:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_InventoryRequestStatus](
	[InventoryRequestStatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_Tbl_Cl_InventoryRequestStatus] PRIMARY KEY CLUSTERED 
(
	[InventoryRequestStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_InventoryStatusType]    Script Date: 3/4/2021 1:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_InventoryStatusType](
	[InventoryStatusTypeID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [varchar](150) NULL,
	[Description] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Tbl_Cl_InventoryStatusType] PRIMARY KEY CLUSTERED 
(
	[InventoryStatusTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_Invoice]    Script Date: 3/4/2021 1:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_Invoice](
	[InvoiceID] [int] IDENTITY(1,1) NOT NULL,
	[HospitalId] [int] NULL,
	[Amount] [int] NULL,
	[InvoiceDate] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[PDFLink] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_LabReportConfiguration]    Script Date: 3/4/2021 1:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_LabReportConfiguration](
	[ConfigID] [int] IDENTITY(1,1) NOT NULL,
	[LabID] [int] NULL,
	[LabImage] [varchar](max) NULL,
	[LabName] [varchar](max) NULL,
	[LabAddress] [varchar](max) NULL,
	[LabCompanyNumber] [varchar](100) NULL,
	[LabUniqueCode] [varchar](50) NULL,
	[LabHeadOfficeAddress] [varchar](max) NULL,
	[labEmail] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[RegistrationNumber] [varchar](250) NULL,
	[VatRate] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ConfigID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_Menu]    Script Date: 3/4/2021 1:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_Menu](
	[MenuID] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [varchar](400) NULL,
	[Description] [varchar](400) NULL,
	[ParentID] [int] NULL,
	[Icon] [varchar](400) NULL,
	[ToolTip] [varchar](500) NULL,
	[Link] [varchar](400) NULL,
	[IsViewable] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Tbl_Cl_Menu] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_MenuAssignment]    Script Date: 3/4/2021 1:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_MenuAssignment](
	[AssignmentID] [int] IDENTITY(1,1) NOT NULL,
	[MenuID] [int] NULL,
	[RoleID] [int] NULL,
	[EmployeeID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Tbl_Cl_MenuAssignment] PRIMARY KEY CLUSTERED 
(
	[AssignmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_Notification]    Script Date: 3/4/2021 1:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_Notification](
	[NotificationID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](400) NULL,
	[Description] [varchar](max) NULL,
	[Icon] [varchar](max) NULL,
	[Type] [varchar](400) NULL,
	[ClickLink] [varchar](400) NULL,
	[CreatedDatetime] [datetime] NULL,
	[Isviewed] [bit] NULL,
	[ViewedDatetime] [datetime] NULL,
	[EmployeeID] [int] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK_Tbl_Cl_Notification] PRIMARY KEY CLUSTERED 
(
	[NotificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_OpinionRequest]    Script Date: 3/4/2021 1:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_OpinionRequest](
	[OpinionRequestID] [int] IDENTITY(1,1) NOT NULL,
	[PatientDetails] [varchar](max) NULL,
	[SampleAnalysisDetails] [varchar](max) NULL,
	[OpinionNeededDescription] [varchar](max) NULL,
	[ConsultationOpinion] [varchar](max) NULL,
	[SystemOpinionRequestID] [int] NULL,
	[StatusID] [int] NULL,
	[OpinionBy] [varchar](max) NULL,
	[CommentForRequester] [varchar](max) NULL,
	[IsPublish] [bit] NULL,
	[RequestCreatedDate] [datetime] NULL,
	[RequestCreatedBy] [int] NULL,
	[NewActionDate] [datetime] NULL,
	[NewActionBy] [int] NULL,
	[NewActionStatusID] [int] NULL,
	[NewActionComments] [varchar](max) NULL,
	[PendingActionBy] [int] NULL,
	[PendingActionDate] [datetime] NULL,
	[PendingActionComments] [varchar](max) NULL,
 CONSTRAINT [PK_Tbl_Cl_OpinionRequest] PRIMARY KEY CLUSTERED 
(
	[OpinionRequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_OpinionRequestStatus]    Script Date: 3/4/2021 1:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_OpinionRequestStatus](
	[OpinionRequestStatusID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_Tbl_Cl_OpinionRequestStatus] PRIMARY KEY CLUSTERED 
(
	[OpinionRequestStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_PatientDetail]    Script Date: 3/4/2021 1:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_PatientDetail](
	[PatientDetailID] [int] IDENTITY(1,1) NOT NULL,
	[MiddleName] [varchar](max) NULL,
	[Age] [varchar](50) NULL,
	[Sex] [varchar](50) NULL,
	[Streetname] [varchar](max) NULL,
	[City] [varchar](max) NULL,
	[AlternateAddress] [varchar](max) NULL,
	[AlternatePhoneNo] [varchar](max) NULL,
	[ReferingDoctor] [varchar](250) NULL,
	[ReferingHospital] [varchar](max) NULL,
	[PaymentMode] [varchar](250) NULL,
	[Payment] [decimal](10, 2) NULL,
	[PdfLink] [varchar](max) NULL,
	[PaymentReceiptPdfLink] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[NHSnumber] [varchar](max) NULL,
	[HospitalID] [int] NULL,
 CONSTRAINT [PK_Tbl_Cl_PatientDetail] PRIMARY KEY CLUSTERED 
(
	[PatientDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_Role]    Script Date: 3/4/2021 1:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](400) NULL,
	[Description] [varchar](400) NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Tbl_Cl_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_RoleMapping]    Script Date: 3/4/2021 1:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_RoleMapping](
	[RoleMappingID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NULL,
	[UserID] [int] NULL,
	[IsDefault] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Tbl_Cl_RoleMapping] PRIMARY KEY CLUSTERED 
(
	[RoleMappingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_SectionRestriction]    Script Date: 3/4/2021 1:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_SectionRestriction](
	[SectionID] [int] IDENTITY(1,1) NOT NULL,
	[SectionSelector] [varchar](max) NULL,
	[MenuID] [int] NULL,
	[EmployeeID] [int] NULL,
	[RoleID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Tbl_Cl_SectionRestriction] PRIMARY KEY CLUSTERED 
(
	[SectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_Test]    Script Date: 3/4/2021 1:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_Test](
	[TestID] [int] IDENTITY(1,1) NOT NULL,
	[TestName] [varchar](max) NULL,
	[IsSampleRequired] [bit] NULL,
	[ComplaintHistory] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[PatientUserID] [int] NULL,
	[TestStatusID] [int] NULL,
	[IsSampleCollected] [bit] NULL,
	[SampleLabel] [varchar](max) NULL,
	[SampleCode] [varchar](max) NULL,
	[SampleType] [varchar](max) NULL,
	[IsPublish] [bit] NULL,
	[PdfLink] [varchar](max) NULL,
	[TestCreatedDate] [datetime] NULL,
	[TestCreatedBy] [int] NULL,
	[SampleCollectionDate] [datetime] NULL,
	[SampleCollectionBy] [int] NULL,
	[AnalysisDate] [datetime] NULL,
	[AnalysisBy] [int] NULL,
	[ConclusionDate] [datetime] NULL,
	[ConclusionBy] [int] NULL,
	[Cost] [varchar](max) NULL,
	[IsInvoiceGenerated] [bit] NULL,
	[AurthorizeDate] [datetime] NULL,
	[ExternalConsultantBy] [int] NULL,
	[IsTranscribed] [bit] NULL,
 CONSTRAINT [PK_Tbl_Cl_Test] PRIMARY KEY CLUSTERED 
(
	[TestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_TestAttachment]    Script Date: 3/4/2021 1:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_TestAttachment](
	[TestAttachmentID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Extension] [varchar](100) NULL,
	[Link] [varchar](max) NULL,
	[TestID] [int] NULL,
	[AttachmentTypeID] [int] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Tbl_Cl_TestAttachment] PRIMARY KEY CLUSTERED 
(
	[TestAttachmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_TestAttachmentType]    Script Date: 3/4/2021 1:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_TestAttachmentType](
	[TestAttachmentTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_Tbl_Cl_TestAttachmentType] PRIMARY KEY CLUSTERED 
(
	[TestAttachmentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_TestConclusion]    Script Date: 3/4/2021 1:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_TestConclusion](
	[TestConclusionID] [int] IDENTITY(1,1) NOT NULL,
	[TestReportTypeID] [int] NULL,
	[TestID] [int] NULL,
	[SpecimenDetails] [varchar](max) NULL,
	[ClinicalDetails] [varchar](max) NULL,
	[Microscopy] [varchar](max) NULL,
	[Macroscopy] [varchar](max) NULL,
	[Conclusion] [varchar](max) NULL,
	[SnomedCoding] [varchar](max) NULL,
	[SampleDescription] [varchar](max) NULL,
	[Report] [varchar](max) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Tbl_Cl_TestConclusion] PRIMARY KEY CLUSTERED 
(
	[TestConclusionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_TestInvestigation]    Script Date: 3/4/2021 1:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_TestInvestigation](
	[InvestigationID] [int] IDENTITY(1,1) NOT NULL,
	[InvestigationName] [varchar](max) NULL,
	[Value] [varchar](max) NULL,
	[Range] [varchar](max) NULL,
	[InvestigationResult] [varchar](max) NULL,
	[ExtraWorkID] [int] NULL,
	[TestID] [int] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Tbl_Cl_TestInvestigation] PRIMARY KEY CLUSTERED 
(
	[InvestigationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_TestRate]    Script Date: 3/4/2021 1:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_TestRate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TestName] [varchar](max) NULL,
	[Cost] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_TestReportType]    Script Date: 3/4/2021 1:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_TestReportType](
	[TestReportTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_Tbl_Cl_TestReportType] PRIMARY KEY CLUSTERED 
(
	[TestReportTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_TestStatus]    Script Date: 3/4/2021 1:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_TestStatus](
	[TestStatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_Tbl_Cl_TestStatus] PRIMARY KEY CLUSTERED 
(
	[TestStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cl_TestSupplementReport]    Script Date: 3/4/2021 1:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cl_TestSupplementReport](
	[TestSupplementReportID] [int] IDENTITY(1,1) NOT NULL,
	[TestReportTypeID] [int] NULL,
	[TestID] [int] NULL,
	[SpecimenDetails] [varchar](max) NULL,
	[ClinicalDetails] [varchar](max) NULL,
	[Microscopy] [varchar](max) NULL,
	[Macroscopy] [varchar](max) NULL,
	[SupplementReportConclusion] [varchar](max) NULL,
	[SnomedCoding] [varchar](max) NULL,
	[SampleDescription] [varchar](max) NULL,
	[Report] [varchar](max) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsPublished] [bit] NULL,
 CONSTRAINT [PK_Tbl_Cl_TestSupplementReport] PRIMARY KEY CLUSTERED 
(
	[TestSupplementReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tbl_Cl_AdminDetail] ON 

INSERT [dbo].[Tbl_Cl_AdminDetail] ([AdminDetailID], [ClientUserID], [SystemClientID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, 0, 43, CAST(N'2020-02-02T22:05:13.650' AS DateTime), -41, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Cl_AdminDetail] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_ClientUser] ON 

INSERT [dbo].[Tbl_Cl_ClientUser] ([ClientUserID], [Username], [Password], [FirstName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HospitalDetailID]) VALUES (1, N'admin@Lgpathlab', N'ZmJDWVpIRWE=', N'Limci', N'Gupta', N'lgpathlab01@gmail.com', N'', N'Delhi, India', 1, NULL, 1, 1, 0, CAST(N'2020-02-02T22:04:27.217' AS DateTime), -41, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_ClientUser] ([ClientUserID], [Username], [Password], [FirstName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HospitalDetailID]) VALUES (2, N'Nia@Lgpathlab', N'SVVJSDIwMjAh', N'Tharounnia', N'Nadarajan', N'Tharounnia.Nadarajan@iuih.co.uk', N'7946534735', N'London, UK', 1, NULL, 1, 2, 0, CAST(N'2020-02-03T13:09:45.297' AS DateTime), 1, CAST(N'2020-03-16T01:30:40.427' AS DateTime), 1, NULL)
INSERT [dbo].[Tbl_Cl_ClientUser] ([ClientUserID], [Username], [Password], [FirstName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HospitalDetailID]) VALUES (3, N'Limci@Lgpathlab', N'S2FtbGVzaDAwNw==', N'Limci', N'Gupta', N'limci.gupta2@nhs.net', N'7841584103', N'London, UK', 1, NULL, 2, 5, 0, CAST(N'2020-02-03T13:13:36.920' AS DateTime), 1, CAST(N'2020-02-03T16:05:46.963' AS DateTime), 1, NULL)
INSERT [dbo].[Tbl_Cl_ClientUser] ([ClientUserID], [Username], [Password], [FirstName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HospitalDetailID]) VALUES (4, N'recep@Lgpathlab', N'NXBKYSZuPyg=', N'Alan', N'Barber', N'blackaleuser1@gmail.com', N'9876543210', N'London', 1, NULL, 3, 2, 0, CAST(N'2020-02-03T13:15:24.307' AS DateTime), 1, CAST(N'2020-02-18T01:18:33.887' AS DateTime), 1, NULL)
INSERT [dbo].[Tbl_Cl_ClientUser] ([ClientUserID], [Username], [Password], [FirstName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HospitalDetailID]) VALUES (6, N'labtech@Lgpathlab', N'WXRPOnJ9aEk=', N'Bob', N'Dixon', N'blackaleuser2@gmail.com', N'9874563210', N'London', 1, NULL, 4, 3, 0, CAST(N'2020-02-03T13:34:46.353' AS DateTime), 1, CAST(N'2020-03-02T01:38:36.317' AS DateTime), 1, NULL)
INSERT [dbo].[Tbl_Cl_ClientUser] ([ClientUserID], [Username], [Password], [FirstName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HospitalDetailID]) VALUES (7, N'scientist@Lgpathlab', N'OW49LzVKdw==', N'Julius', N'Parker', N'blackaleuser7@gmail.com', N'9784651320', N'London', 1, NULL, 5, 4, 0, CAST(N'2020-02-03T13:49:44.173' AS DateTime), 1, CAST(N'2020-04-13T12:03:13.413' AS DateTime), 1, NULL)
INSERT [dbo].[Tbl_Cl_ClientUser] ([ClientUserID], [Username], [Password], [FirstName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HospitalDetailID]) VALUES (8, N'scientist1@Lgpathlab', N'QnBMRnU3amw=', N'Saul', N'Mckenzie', N'blackaleuser3@gmail.com', N'9784562501', N'London', 1, NULL, 6, 4, 0, CAST(N'2020-02-03T13:53:49.093' AS DateTime), 1, CAST(N'2020-03-07T12:44:06.740' AS DateTime), 1, NULL)
INSERT [dbo].[Tbl_Cl_ClientUser] ([ClientUserID], [Username], [Password], [FirstName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HospitalDetailID]) VALUES (9, N'consultant@Lgpathlab', N'UkFibl09X3o=', N'Andrew', N'Jones', N'blackaleuser4@gmail.com', N'9874563210', N'London', 1, NULL, 7, 5, 0, CAST(N'2020-02-03T14:07:51.543' AS DateTime), 1, CAST(N'2020-02-05T00:20:39.207' AS DateTime), 1, NULL)
INSERT [dbo].[Tbl_Cl_ClientUser] ([ClientUserID], [Username], [Password], [FirstName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HospitalDetailID]) VALUES (10, N'Inven@Lgpathlab', N'aGgjRHcvZUo=', N'Orville', N'Cruz', N'blackaleuser5@gmail.com', N'9786453120', N'London', 1, NULL, 8, 7, 0, CAST(N'2020-02-05T00:32:23.740' AS DateTime), 1, CAST(N'2020-02-05T00:41:28.937' AS DateTime), 1, NULL)
INSERT [dbo].[Tbl_Cl_ClientUser] ([ClientUserID], [Username], [Password], [FirstName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HospitalDetailID]) VALUES (11, N'Limci G@Lgpathlab', N'MGVBbWhXJVs=', N'Limci', N'Gupta', N'limcigupta@hotmail.com', N'00447841584103', N'Chalgrove
30 Peterborough Road
Harrow on the Hill, HA1 3DX', 1, NULL, 9, 6, 0, CAST(N'2020-02-05T02:01:45.797' AS DateTime), 1, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_ClientUser] ([ClientUserID], [Username], [Password], [FirstName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HospitalDetailID]) VALUES (12, N'head@Lgpathlab', N'XSpdZ31YJTQ=', N'Reggie', N'Fishman', N'blackaleuser8@gmail.com', N'9874561130', N'London', 1, NULL, 10, 6, 0, CAST(N'2020-02-05T02:07:38.640' AS DateTime), 1, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_ClientUser] ([ClientUserID], [Username], [Password], [FirstName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HospitalDetailID]) VALUES (26, N'test@Lgpathlab', N'X2s1d0x4VzY=', N'test', N'test', N'piyushshrm211@gmail.com', N'9889887', N'aaaa
aaa', 1, NULL, 11, 2, 0, CAST(N'2020-03-24T20:20:11.453' AS DateTime), 1, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_ClientUser] ([ClientUserID], [Username], [Password], [FirstName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HospitalDetailID]) VALUES (27, N'akhilesh@Lgpathlab', N'NXBKYSZuPyg=', N'Akhilesh', N'Kumar', N'aksrivastava1@virtualemployee.com', N'9891361660', N'Hosiyarpur,Sector 51', 1, NULL, 3, 2, 0, CAST(N'2020-03-26T16:50:01.640' AS DateTime), 1, NULL, NULL, 6)
INSERT [dbo].[Tbl_Cl_ClientUser] ([ClientUserID], [Username], [Password], [FirstName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HospitalDetailID]) VALUES (29, N'maxadmin', N'YWRtaW5AMTIz', N'max', N'admin', N'max@hopsital.com', N'988877777', N'Sector 18 Noida', 1, NULL, 3, 9, 0, CAST(N'2020-03-27T14:42:17.477' AS DateTime), 1, NULL, NULL, 7)
INSERT [dbo].[Tbl_Cl_ClientUser] ([ClientUserID], [Username], [Password], [FirstName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HospitalDetailID]) VALUES (32, N'apoloadmin', N'YWRtaW5AMTIz', N'Apolo', N'admin', N'admin@apolo.com', N'987765', N'Delhi', 1, NULL, 3, 9, 0, CAST(N'2020-04-03T12:40:25.083' AS DateTime), 1, NULL, NULL, 8)
INSERT [dbo].[Tbl_Cl_ClientUser] ([ClientUserID], [Username], [Password], [FirstName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HospitalDetailID]) VALUES (37, N'secretary@Lgpathlab', N'YWRtaW5AMTIz', N'Secretary', N'last', N'Secretary@xyz.com', N'99989899999', N'UK', 1, NULL, 12, 10, 0, CAST(N'2020-04-14T19:30:11.087' AS DateTime), 1, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_ClientUser] ([ClientUserID], [Username], [Password], [FirstName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HospitalDetailID]) VALUES (1039, N'exconsultant@RajLab', N'bEtVfXBqWGc=', N'External', N'Consultant', N'abc@sbbs.ocm', N'98988798787', N'Delhi', 1, NULL, 13, 11, 0, CAST(N'2020-04-21T20:02:49.567' AS DateTime), 1, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_ClientUser] ([ClientUserID], [Username], [Password], [FirstName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HospitalDetailID]) VALUES (1040, N'external2@RajLab', N'ckVUNHBSaTU=', N'Roz', N'Marry', N'roc@roc.com', N'876786722', N'London', 1, NULL, 14, 11, 0, CAST(N'2020-04-22T18:15:37.063' AS DateTime), 1, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_ClientUser] ([ClientUserID], [Username], [Password], [FirstName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HospitalDetailID]) VALUES (1042, N'testp@RajLab', N'QDUydSZTV2Y=', N'Test', N'STest', N'test@test.com', N'98979778', N'delhi', 1, NULL, 1, 8, 0, CAST(N'2020-06-12T19:06:36.107' AS DateTime), 2, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_ClientUser] ([ClientUserID], [Username], [Password], [FirstName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HospitalDetailID]) VALUES (1043, N'asdf', N'YXNkZkAxMjM0NQ==', N'ddd', N'dd', N'aaaa@aaa.com', N'44444444', N'aaaa
aaa', 1, NULL, 3, 9, 0, CAST(N'2020-06-15T16:04:51.990' AS DateTime), 1, NULL, NULL, 1)
INSERT [dbo].[Tbl_Cl_ClientUser] ([ClientUserID], [Username], [Password], [FirstName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HospitalDetailID]) VALUES (1044, N'WERTY', N'UVdFUlRZMTIzNDU=', N'QWERTY', N'QWERTY', N'QWERTY@QWERT.COM', N'4444', N'tret', 1, NULL, 3, 9, 0, CAST(N'2020-06-15T16:12:22.730' AS DateTime), 1, NULL, NULL, 2)
INSERT [dbo].[Tbl_Cl_ClientUser] ([ClientUserID], [Username], [Password], [FirstName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HospitalDetailID]) VALUES (1045, N'pawan@RajLab', N'RHdWQ1lLeUA=', N'paititi', N'pawan', N'', N'', N'ddelji', 1, NULL, 2, 8, 0, CAST(N'2020-06-16T16:28:03.550' AS DateTime), 1043, NULL, NULL, 1)
INSERT [dbo].[Tbl_Cl_ClientUser] ([ClientUserID], [Username], [Password], [FirstName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HospitalDetailID]) VALUES (1046, N'akks@RajLab', N'XS1lazdGXl4=', N'AKhilesh', N'Srivastava', N'akhileshsrivastav31@gmail.com', N'9891361660', N'delhi', 1, NULL, 15, 11, 0, CAST(N'2020-08-04T13:30:51.703' AS DateTime), 1, CAST(N'2020-08-04T13:36:17.337' AS DateTime), 1, NULL)
INSERT [dbo].[Tbl_Cl_ClientUser] ([ClientUserID], [Username], [Password], [FirstName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HospitalDetailID]) VALUES (1047, N'jagjeevan@RajLab', N'KWF4YWpTPjU=', N'jagjeevan', N'prashan', N'surajve@yopmail.com', N'9898900000', N'dekhi', 1, NULL, 3, 8, 0, CAST(N'2020-10-30T17:01:48.733' AS DateTime), 2, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_ClientUser] ([ClientUserID], [Username], [Password], [FirstName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HospitalDetailID]) VALUES (1048, N'akhospital', N'cGFzc0AxMjM=', N'akhilesh', N'srivastava', N'akhileshsrivastav31@gmail.com', N'9898900000', N'london uk', 1, NULL, 3, 9, 0, CAST(N'2020-11-27T17:35:56.670' AS DateTime), 1, NULL, NULL, 3)
INSERT [dbo].[Tbl_Cl_ClientUser] ([ClientUserID], [Username], [Password], [FirstName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HospitalDetailID]) VALUES (1049, N'alic@RajLab', N'cDk1X3tFIUY=', N'alice', N'blo', N'', N'', N'london', 1, NULL, 4, 8, 0, CAST(N'2020-11-27T17:38:16.817' AS DateTime), 1048, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Cl_ClientUser] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_ClientUserDetail] ON 

INSERT [dbo].[Tbl_Cl_ClientUserDetail] ([UserDetailID], [JoiningDate], [TerminationDate], [TerminationReason], [Qualifications], [TypeOfCollection], [License], [IsFulltime], [PdfLink], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, CAST(N'2020-02-03' AS Date), NULL, NULL, N'', N'', N'b', 1, N'http://160.153.248.140/MyFiles/MyData_Lgpathlab/EmployeeFiles/EmployeeDetail_002_020320201309PM.pdf', CAST(N'2020-02-03T13:09:44.810' AS DateTime), 1, CAST(N'2020-03-16T01:30:40.943' AS DateTime), 1)
INSERT [dbo].[Tbl_Cl_ClientUserDetail] ([UserDetailID], [JoiningDate], [TerminationDate], [TerminationReason], [Qualifications], [TypeOfCollection], [License], [IsFulltime], [PdfLink], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, CAST(N'2020-02-03' AS Date), NULL, NULL, N'FRCPath
DCP
MBBS', NULL, N' ', 1, NULL, CAST(N'2020-02-03T13:13:36.637' AS DateTime), 1, CAST(N'2020-02-03T16:05:47.417' AS DateTime), 1)
INSERT [dbo].[Tbl_Cl_ClientUserDetail] ([UserDetailID], [JoiningDate], [TerminationDate], [TerminationReason], [Qualifications], [TypeOfCollection], [License], [IsFulltime], [PdfLink], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, CAST(N'2020-02-03' AS Date), NULL, NULL, N'', NULL, NULL, NULL, NULL, CAST(N'2020-02-03T13:15:24.040' AS DateTime), 1, CAST(N'2020-02-18T01:18:35.230' AS DateTime), 1)
INSERT [dbo].[Tbl_Cl_ClientUserDetail] ([UserDetailID], [JoiningDate], [TerminationDate], [TerminationReason], [Qualifications], [TypeOfCollection], [License], [IsFulltime], [PdfLink], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (4, CAST(N'2020-02-03' AS Date), NULL, NULL, N' ', N' ', N' ', NULL, NULL, CAST(N'2020-02-03T13:34:46.057' AS DateTime), 1, CAST(N'2020-03-02T01:38:36.943' AS DateTime), 1)
INSERT [dbo].[Tbl_Cl_ClientUserDetail] ([UserDetailID], [JoiningDate], [TerminationDate], [TerminationReason], [Qualifications], [TypeOfCollection], [License], [IsFulltime], [PdfLink], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (5, CAST(N'2020-02-03' AS Date), NULL, NULL, N' ', N'', N'0', NULL, N'http://160.153.248.140/MyFiles/MyData_RajLab/EmployeeFiles/EmployeeDetail_007_020320201349PM.pdf', CAST(N'2020-02-03T13:49:43.860' AS DateTime), 1, CAST(N'2020-04-13T12:03:14.287' AS DateTime), 1)
INSERT [dbo].[Tbl_Cl_ClientUserDetail] ([UserDetailID], [JoiningDate], [TerminationDate], [TerminationReason], [Qualifications], [TypeOfCollection], [License], [IsFulltime], [PdfLink], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (6, CAST(N'2020-02-03' AS Date), NULL, NULL, N' ', NULL, N' ', NULL, NULL, CAST(N'2020-02-03T13:53:48.810' AS DateTime), 1, CAST(N'2020-03-07T12:44:07.240' AS DateTime), 1)
INSERT [dbo].[Tbl_Cl_ClientUserDetail] ([UserDetailID], [JoiningDate], [TerminationDate], [TerminationReason], [Qualifications], [TypeOfCollection], [License], [IsFulltime], [PdfLink], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (7, CAST(N'2020-02-03' AS Date), NULL, NULL, N' ', NULL, NULL, 1, NULL, CAST(N'2020-02-03T14:07:51.277' AS DateTime), 1, CAST(N'2020-02-05T00:20:39.660' AS DateTime), 1)
INSERT [dbo].[Tbl_Cl_ClientUserDetail] ([UserDetailID], [JoiningDate], [TerminationDate], [TerminationReason], [Qualifications], [TypeOfCollection], [License], [IsFulltime], [PdfLink], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (8, CAST(N'2020-02-05' AS Date), NULL, NULL, N' ', NULL, NULL, NULL, NULL, CAST(N'2020-02-05T00:32:23.443' AS DateTime), 1, CAST(N'2020-02-05T00:41:29.423' AS DateTime), 1)
INSERT [dbo].[Tbl_Cl_ClientUserDetail] ([UserDetailID], [JoiningDate], [TerminationDate], [TerminationReason], [Qualifications], [TypeOfCollection], [License], [IsFulltime], [PdfLink], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (9, CAST(N'2020-02-05' AS Date), NULL, NULL, N'', NULL, NULL, NULL, NULL, CAST(N'2020-02-05T02:01:45.533' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_ClientUserDetail] ([UserDetailID], [JoiningDate], [TerminationDate], [TerminationReason], [Qualifications], [TypeOfCollection], [License], [IsFulltime], [PdfLink], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (10, CAST(N'2020-02-05' AS Date), NULL, NULL, N' ', NULL, NULL, NULL, NULL, CAST(N'2020-02-05T02:07:38.373' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_ClientUserDetail] ([UserDetailID], [JoiningDate], [TerminationDate], [TerminationReason], [Qualifications], [TypeOfCollection], [License], [IsFulltime], [PdfLink], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (11, CAST(N'2020-03-24' AS Date), NULL, NULL, N'', NULL, N'111', NULL, N'http://160.153.248.140/MyFiles/MyData_RajLab/EmployeeFiles/EmployeeDetail_026_032420202020PM.pdf', CAST(N'2020-03-24T20:20:11.303' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_ClientUserDetail] ([UserDetailID], [JoiningDate], [TerminationDate], [TerminationReason], [Qualifications], [TypeOfCollection], [License], [IsFulltime], [PdfLink], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (12, CAST(N'2020-04-14' AS Date), NULL, NULL, N'fic', NULL, NULL, NULL, N'http://160.153.248.140/MyFiles/MyData_RajLab/EmployeeFiles/EmployeeDetail_037_041420201930PM.pdf', CAST(N'2020-04-14T19:30:10.933' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_ClientUserDetail] ([UserDetailID], [JoiningDate], [TerminationDate], [TerminationReason], [Qualifications], [TypeOfCollection], [License], [IsFulltime], [PdfLink], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (13, CAST(N'2020-04-21' AS Date), NULL, NULL, N'', NULL, NULL, NULL, N'http://160.153.248.140/MyFiles/MyData_RajLab/EmployeeFiles/EmployeeDetail_1039_042120202002PM.pdf', CAST(N'2020-04-21T20:02:49.540' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_ClientUserDetail] ([UserDetailID], [JoiningDate], [TerminationDate], [TerminationReason], [Qualifications], [TypeOfCollection], [License], [IsFulltime], [PdfLink], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (14, CAST(N'2020-04-22' AS Date), NULL, NULL, N'', NULL, NULL, NULL, N'http://160.153.248.140/MyFiles/MyData_RajLab/EmployeeFiles/EmployeeDetail_1040_042220201815PM.pdf', CAST(N'2020-04-22T18:15:37.050' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_ClientUserDetail] ([UserDetailID], [JoiningDate], [TerminationDate], [TerminationReason], [Qualifications], [TypeOfCollection], [License], [IsFulltime], [PdfLink], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (15, CAST(N'2020-08-04' AS Date), NULL, NULL, N'MBBS', NULL, NULL, NULL, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/EmployeeFiles/EmployeeDetail_1046_080420201330PM.pdf', CAST(N'2020-08-04T13:30:50.970' AS DateTime), 1, CAST(N'2020-08-04T13:36:18.097' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Tbl_Cl_ClientUserDetail] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_ClientUserType] ON 

INSERT [dbo].[Tbl_Cl_ClientUserType] ([ClientUserTypeID], [TypeName], [Description]) VALUES (1, N'Client Admin', NULL)
INSERT [dbo].[Tbl_Cl_ClientUserType] ([ClientUserTypeID], [TypeName], [Description]) VALUES (2, N'Receptionist', NULL)
INSERT [dbo].[Tbl_Cl_ClientUserType] ([ClientUserTypeID], [TypeName], [Description]) VALUES (3, N'Lab Technician', NULL)
INSERT [dbo].[Tbl_Cl_ClientUserType] ([ClientUserTypeID], [TypeName], [Description]) VALUES (4, N'Clinical Laboratory Scientist', NULL)
INSERT [dbo].[Tbl_Cl_ClientUserType] ([ClientUserTypeID], [TypeName], [Description]) VALUES (5, N'Clinical Laboratory Consultant', NULL)
INSERT [dbo].[Tbl_Cl_ClientUserType] ([ClientUserTypeID], [TypeName], [Description]) VALUES (6, N'Head Lab Technician', NULL)
INSERT [dbo].[Tbl_Cl_ClientUserType] ([ClientUserTypeID], [TypeName], [Description]) VALUES (7, N'Inventory Manager', NULL)
INSERT [dbo].[Tbl_Cl_ClientUserType] ([ClientUserTypeID], [TypeName], [Description]) VALUES (8, N'Patient', NULL)
INSERT [dbo].[Tbl_Cl_ClientUserType] ([ClientUserTypeID], [TypeName], [Description]) VALUES (9, N'Hospital / Clinician', NULL)
INSERT [dbo].[Tbl_Cl_ClientUserType] ([ClientUserTypeID], [TypeName], [Description]) VALUES (10, N'Secretary', NULL)
INSERT [dbo].[Tbl_Cl_ClientUserType] ([ClientUserTypeID], [TypeName], [Description]) VALUES (11, N'External Consultant', NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Cl_ClientUserType] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_ExtraWorkRequest] ON 

INSERT [dbo].[Tbl_Cl_ExtraWorkRequest] ([ExtraWorkID], [TestID], [H_ELevels], [SpecialStains], [ImmunoHistoChemistry], [Others], [StatusID], [RequestCreatedDate], [RequestCreatedBy], [NewActionDate], [NewActionBy], [NewActionStatusID], [NewActionComments], [PendingActionBy], [PendingActionDate], [PendingActionComments]) VALUES (1, 4, N'sss', N'sss', N's', N'', 3, CAST(N'2020-06-12T23:49:34.943' AS DateTime), 2, CAST(N'2020-06-12T23:49:46.883' AS DateTime), 2, 2, N'sss', 2, CAST(N'2020-06-12T23:49:59.407' AS DateTime), N'sss')
INSERT [dbo].[Tbl_Cl_ExtraWorkRequest] ([ExtraWorkID], [TestID], [H_ELevels], [SpecialStains], [ImmunoHistoChemistry], [Others], [StatusID], [RequestCreatedDate], [RequestCreatedBy], [NewActionDate], [NewActionBy], [NewActionStatusID], [NewActionComments], [PendingActionBy], [PendingActionDate], [PendingActionComments]) VALUES (2, 5, N'1111', N'111', N'111', N'111', 3, CAST(N'2020-06-16T15:02:34.177' AS DateTime), 2, CAST(N'2020-06-16T15:06:42.523' AS DateTime), 2, 2, N'cment1', 2, CAST(N'2020-06-16T15:07:48.503' AS DateTime), N'final cmt')
INSERT [dbo].[Tbl_Cl_ExtraWorkRequest] ([ExtraWorkID], [TestID], [H_ELevels], [SpecialStains], [ImmunoHistoChemistry], [Others], [StatusID], [RequestCreatedDate], [RequestCreatedBy], [NewActionDate], [NewActionBy], [NewActionStatusID], [NewActionComments], [PendingActionBy], [PendingActionDate], [PendingActionComments]) VALUES (3, 1, N'tets', N'ttst', N'tete', N'tret', 1, CAST(N'2020-09-19T16:44:03.797' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Cl_ExtraWorkRequest] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_ExtraWorkRequestStatus] ON 

INSERT [dbo].[Tbl_Cl_ExtraWorkRequestStatus] ([WorkRequestStatusID], [StatusName], [Description]) VALUES (1, N'New', NULL)
INSERT [dbo].[Tbl_Cl_ExtraWorkRequestStatus] ([WorkRequestStatusID], [StatusName], [Description]) VALUES (2, N'In-Progress', NULL)
INSERT [dbo].[Tbl_Cl_ExtraWorkRequestStatus] ([WorkRequestStatusID], [StatusName], [Description]) VALUES (3, N'Completed', NULL)
INSERT [dbo].[Tbl_Cl_ExtraWorkRequestStatus] ([WorkRequestStatusID], [StatusName], [Description]) VALUES (4, N'New-Deleted', NULL)
INSERT [dbo].[Tbl_Cl_ExtraWorkRequestStatus] ([WorkRequestStatusID], [StatusName], [Description]) VALUES (5, N'In-Progress-Deleted', NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Cl_ExtraWorkRequestStatus] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_ForgetPassword] ON 

INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (1, N'ef54021d-5218-4ded-81c7-ebc00ceb647f', 7, 1440, CAST(N'2020-02-04T23:49:34.443' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (2, N'd4a08d3d-a2b8-47f6-b602-65ca82f5ab5f', 7, 1440, CAST(N'2020-02-04T23:50:57.487' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (3, N'53e69d74-5a74-4276-873b-5bef9bf2a4f2', 3, 1440, CAST(N'2020-02-05T01:37:08.270' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (4, N'0123159c-798e-402d-878a-ab996df3626c', 3, 1440, CAST(N'2020-02-05T01:53:08.507' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (5, N'6ea68c41-859b-47f8-b062-1370a6c223d4', 3, 1440, CAST(N'2020-02-05T01:53:23.527' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (6, N'bc28cdff-d63b-4681-aff1-993dc3e8196a', 2, 1440, CAST(N'2020-03-09T01:01:56.417' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (7, N'2f16c451-36f1-4167-91b2-32953daaa882', 13, 1440, CAST(N'2020-03-15T02:16:36.270' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (8, N'f874d4ed-6450-4cd0-aead-982e03cbd86e', 2, 1440, CAST(N'2020-03-16T01:33:08.277' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (9, N'bb32dd14-fae4-415f-955e-690efdcec666', 24, 1440, CAST(N'2020-03-17T02:00:59.103' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (10, N'1d11ca82-214a-48c5-bdd4-5911385711bd', 1046, 1440, CAST(N'2020-08-04T13:37:25.867' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (11, N'449e50f7-55e7-4679-b914-2c8f1b0a38a3', 1046, 1440, CAST(N'2020-08-04T13:37:56.547' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (12, N'7cd1189f-f64d-4b47-8a1c-3400421622a4', 1046, 1440, CAST(N'2020-08-04T14:02:06.273' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (13, N'6e3f9241-6c59-4d30-9a84-460a244be21e', 1046, 1440, CAST(N'2020-08-04T14:03:53.427' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (14, N'a709d8a3-9faa-4e29-afcf-469bc34142fb', 1046, 1440, CAST(N'2020-08-04T14:06:44.770' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (15, N'fa03c31d-e6d1-4b97-a959-51ea0f8ae17b', 1046, 1440, CAST(N'2020-08-04T14:08:38.423' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (16, N'482454ee-be73-4bb0-bfcb-60a0fca876dd', 1046, 1440, CAST(N'2020-08-04T16:45:28.067' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (17, N'f0ba0d44-823b-4847-844b-24d900078a6f', 1046, 1440, CAST(N'2020-08-04T16:47:21.217' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (18, N'e1868b0c-f53d-4911-b8a5-42c3fbee9da2', 1046, 1440, CAST(N'2020-08-04T16:48:48.127' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (19, N'632b2dcd-2942-45bf-87e8-82ba58e77c64', 1046, 1440, CAST(N'2020-08-04T16:50:12.303' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (20, N'3b116896-b624-46e9-93fa-60c6cf6a6482', 1046, 1440, CAST(N'2020-09-19T12:49:13.577' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (21, N'f2474f6e-d8e6-4907-bb50-eab7bea85f39', 1046, 1440, CAST(N'2020-09-19T12:50:17.933' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (22, N'a8307d5e-cf43-4f5e-894c-1851bcba304d', 1046, 1440, CAST(N'2020-09-19T12:55:16.647' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (23, N'787621a9-0ef2-4291-93ce-105131bbb71d', 1046, 1440, CAST(N'2020-09-19T13:00:24.463' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (24, N'004ae730-c424-4ea7-88c4-a1a1b4ba8865', 1046, 1440, CAST(N'2020-09-19T13:01:43.153' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (25, N'77b6d65e-4792-43a6-ace2-0e1354701bde', 1046, 1440, CAST(N'2020-09-19T13:02:01.140' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (26, N'982c7385-89d2-4ff6-a19c-7c1fc2ef0978', 1046, 1440, CAST(N'2020-09-19T13:22:17.607' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (27, N'baaa6fd7-802e-4488-98d2-d2e7a976f2eb', 1046, 1440, CAST(N'2020-09-19T13:23:55.307' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (28, N'efa49db5-eabc-4780-a3e7-7beb35ec0ad5', 1046, 1440, CAST(N'2020-09-19T13:54:58.890' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (29, N'e32a7df6-25e3-4139-8b44-ee7b6301316a', 1046, 1440, CAST(N'2020-09-19T14:00:23.097' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (30, N'e5086566-9d62-4cbe-bc08-381f1bdd66fd', 1046, 1440, CAST(N'2020-09-19T14:09:59.563' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (31, N'6529ef37-2592-4bc5-af12-13a1115e2299', 1046, 1440, CAST(N'2020-09-19T14:11:26.253' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (32, N'edce1b9b-d151-499b-9e83-2eb9268c8be7', 1046, 1440, CAST(N'2020-09-19T14:12:18.127' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (33, N'005ddf82-cf4b-4453-9e1a-15b0311fda56', 1046, 1440, CAST(N'2020-09-19T14:12:46.730' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (34, N'4724fdbd-74dc-47a7-a64d-69c3690f67e8', 1046, 1440, CAST(N'2020-09-19T20:21:59.633' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (35, N'522c8427-2e78-4299-812d-3503de175705', 1046, 1440, CAST(N'2020-09-21T12:37:13.787' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (36, N'14079f83-3a2f-4894-aec9-6cb234381bb5', 1046, 1440, CAST(N'2020-09-25T12:07:30.950' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (37, N'1525d0d9-457c-4ead-9fd9-454e0832a995', 1046, 1440, CAST(N'2020-09-25T12:08:21.273' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (38, N'00d234ce-4bbd-4167-8351-500a1835516d', 1039, 1440, CAST(N'2020-09-25T12:15:35.243' AS DateTime))
INSERT [dbo].[Tbl_Cl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [ClientUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (39, N'6d44b94f-e1e6-4656-a659-fcc72cf90354', 1046, 1440, CAST(N'2020-09-25T12:16:27.750' AS DateTime))
SET IDENTITY_INSERT [dbo].[Tbl_Cl_ForgetPassword] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_HospitalDetail] ON 

INSERT [dbo].[Tbl_Cl_HospitalDetail] ([HospitalDetailID], [HospitalName], [Address], [City], [PhoneNo], [FaxNo], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [ClientUserID], [HospitalCode]) VALUES (1, N'hopital', N'aaaa
aaa', N'aa', N'08135606', N'9835373535', CAST(N'2020-06-15T16:04:51.637' AS DateTime), 1, NULL, NULL, NULL, N'qweerr')
INSERT [dbo].[Tbl_Cl_HospitalDetail] ([HospitalDetailID], [HospitalName], [Address], [City], [PhoneNo], [FaxNo], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [ClientUserID], [HospitalCode]) VALUES (2, N'rgtret', N'tret', N'ret', N'9999', N'8877', CAST(N'2020-06-15T16:12:22.677' AS DateTime), 1, NULL, NULL, NULL, N'rettr')
INSERT [dbo].[Tbl_Cl_HospitalDetail] ([HospitalDetailID], [HospitalName], [Address], [City], [PhoneNo], [FaxNo], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [ClientUserID], [HospitalCode]) VALUES (3, N'my hospital', N'london uk', N'london', N'877668', N'12345', CAST(N'2020-11-27T17:35:56.600' AS DateTime), 1, NULL, NULL, NULL, N'www11')
SET IDENTITY_INSERT [dbo].[Tbl_Cl_HospitalDetail] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ON 

INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (1, 3, CAST(N'2020-02-05T01:36:18.317' AS DateTime), N'bSh7UkhCZ04=', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (2, 3, CAST(N'2020-02-05T01:36:30.773' AS DateTime), N'S2FtbGVzaDAwNw==', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (3, 3, CAST(N'2020-02-05T01:36:47.700' AS DateTime), N'S2FtbGVzaDAwMQ==', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (4, 12, CAST(N'2020-03-02T01:14:33.080' AS DateTime), N'XSpdZ31YJQ==', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (5, 2, CAST(N'2020-03-07T03:04:47.010' AS DateTime), N'SVVJSDIwMjAh', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (6, 2, CAST(N'2020-03-07T03:04:51.387' AS DateTime), N'SVVJSDIwMjAh', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (7, 2, CAST(N'2020-03-07T03:05:18.207' AS DateTime), N'SVVJSDIwMjAh', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (8, 2, CAST(N'2020-03-07T06:25:33.640' AS DateTime), N'SVVJSDIwMjAh', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (9, 2, CAST(N'2020-03-15T02:12:47.727' AS DateTime), N'SXVpaDIwMjAh', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (10, 2, CAST(N'2020-03-15T02:13:31.330' AS DateTime), N'SVVJSDIwMjAh', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (11, 2, CAST(N'2020-03-15T02:16:24.657' AS DateTime), N'SVVJSDIwMjAh', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (12, 6, CAST(N'2020-03-16T01:03:52.767' AS DateTime), N'IFl0TzpyfWhJIA==', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (13, 6, CAST(N'2020-03-16T01:06:09.707' AS DateTime), N'WXRPOnJ9aEkg', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (14, 6, CAST(N'2020-03-16T01:06:13.630' AS DateTime), N'WXRPOnJ9aEkg', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (15, 6, CAST(N'2020-03-16T01:06:37.543' AS DateTime), N'WXRPOnJ9aEkg', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (16, 1, CAST(N'2020-03-20T18:01:43.577' AS DateTime), N'ZmJDWVpIRWE=', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (17, 1, CAST(N'2020-03-20T18:01:50.273' AS DateTime), N'ZmJDWVpIRWE=', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (18, 28, CAST(N'2020-03-26T19:41:45.143' AS DateTime), N'VVZGNWEwTmFKRUU9', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (19, 28, CAST(N'2020-03-26T19:43:20.937' AS DateTime), N'VVZGNWEwTmFKRUU9', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (20, 29, CAST(N'2020-03-27T14:43:31.580' AS DateTime), N'YXNtaW5AMTIz', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (21, 29, CAST(N'2020-03-27T14:44:10.290' AS DateTime), N'YXNtaW5AMTIz', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (22, 29, CAST(N'2020-03-27T14:44:55.910' AS DateTime), N'YXNtaW5AMTIz', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (23, 29, CAST(N'2020-03-27T14:45:34.930' AS DateTime), N'YXNtaW5AMTIz', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (24, 29, CAST(N'2020-03-27T14:45:41.787' AS DateTime), N'V1J0YVc1QU1USXo=', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (25, 29, CAST(N'2020-03-27T14:46:14.087' AS DateTime), N'V1J0YVc1QU1USXo=', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (26, 29, CAST(N'2020-03-27T18:46:29.830' AS DateTime), N'YWRtaW4yMTIz', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (27, 29, CAST(N'2020-03-27T18:46:33.027' AS DateTime), N'YWRtaW4yMTIz', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (28, 29, CAST(N'2020-04-01T12:23:17.307' AS DateTime), N'YWRtaW5AMTI=', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (29, 37, CAST(N'2020-05-19T11:59:15.103' AS DateTime), N'SVVJSDIwMjAh', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (30, 37, CAST(N'2020-05-19T11:59:18.497' AS DateTime), N'SVVJSDIwMjAh', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (31, 1, CAST(N'2020-11-27T17:33:15.170' AS DateTime), N'SVVJSDIwMjAh', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (32, 1048, CAST(N'2020-11-27T17:36:14.540' AS DateTime), N'UGFzc0AxMjM=', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (33, 29, CAST(N'2020-12-07T19:46:45.813' AS DateTime), N'YWRtaW5AMTIzNA==', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (34, 32, CAST(N'2020-12-07T19:47:57.380' AS DateTime), N'YWRtaWluQDEyMw==', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (35, 29, CAST(N'2020-12-07T21:50:01.297' AS DateTime), N'cGFzc0AxMjM=', 1)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (36, 1048, CAST(N'2020-12-07T21:50:24.167' AS DateTime), N'YWRtaW5AMTIz', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (37, 37, CAST(N'2020-12-08T22:43:48.690' AS DateTime), N'cGFzc0AxMjM=', 0)
INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [ClientUserID], [CreatedDate], [Password], [IsInclude]) VALUES (38, 37, CAST(N'2020-12-08T22:44:04.627' AS DateTime), N'cGFzc0AxMjM=', 0)
SET IDENTITY_INSERT [dbo].[Tbl_Cl_IncorrectPasswordAttempt] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_Inventory] ON 

INSERT [dbo].[Tbl_Cl_Inventory] ([InventoryID], [ItemName], [Code], [Description], [QuantityOrdered], [QuantityLeft], [OrderedHistory], [ExpiryDate], [InventoryStatusID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, N'Syringe', N'4bztA', N'Syringe for demo', N'1000', N'10', N'ordered from Evalyn Cervantes on 2 March, 2020', CAST(N'2020-11-12' AS Date), 2, CAST(N'2020-03-07T12:48:37.727' AS DateTime), 1, CAST(N'2020-06-16T23:57:42.273' AS DateTime), 2)
INSERT [dbo].[Tbl_Cl_Inventory] ([InventoryID], [ItemName], [Code], [Description], [QuantityOrdered], [QuantityLeft], [OrderedHistory], [ExpiryDate], [InventoryStatusID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, N'Mask', N'MgP62', N'Mask for demo', N'500', N'50', N'ordered from Ryker Keller on 1 March, 2020', CAST(N'2020-03-24' AS Date), 3, CAST(N'2020-03-07T12:50:38.993' AS DateTime), 1, CAST(N'2020-06-16T23:58:10.833' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[Tbl_Cl_Inventory] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_InventoryRequest] ON 

INSERT [dbo].[Tbl_Cl_InventoryRequest] ([InventoryRequestID], [ItemName], [Description], [Comments], [Quantity], [StatusID], [RequestCreatedDate], [RequestCreatedBy], [OpenActionBy], [OpenActionDate], [OpenActionStatusID], [OpenActionComments], [ProgressActionBy], [ProgressActionDate], [ProgressActionComments]) VALUES (1, N'Pen', N'Stationary', N'Black Uniball 1.0', N'2', 4, CAST(N'2020-03-07T13:24:16.323' AS DateTime), 4, 1, CAST(N'2020-03-07T14:00:30.863' AS DateTime), 4, N'Approved', NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_InventoryRequest] ([InventoryRequestID], [ItemName], [Description], [Comments], [Quantity], [StatusID], [RequestCreatedDate], [RequestCreatedBy], [OpenActionBy], [OpenActionDate], [OpenActionStatusID], [OpenActionComments], [ProgressActionBy], [ProgressActionDate], [ProgressActionComments]) VALUES (2, N'test', N'test', N'test', N'5', 4, CAST(N'2020-03-24T18:35:41.277' AS DateTime), 4, 2, CAST(N'2020-06-16T23:59:07.883' AS DateTime), 4, N'yyy', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Cl_InventoryRequest] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_InventoryRequestStatus] ON 

INSERT [dbo].[Tbl_Cl_InventoryRequestStatus] ([InventoryRequestStatusID], [StatusName], [Description]) VALUES (1, N'Open', NULL)
INSERT [dbo].[Tbl_Cl_InventoryRequestStatus] ([InventoryRequestStatusID], [StatusName], [Description]) VALUES (2, N'Progress', NULL)
INSERT [dbo].[Tbl_Cl_InventoryRequestStatus] ([InventoryRequestStatusID], [StatusName], [Description]) VALUES (3, N'Rejected', NULL)
INSERT [dbo].[Tbl_Cl_InventoryRequestStatus] ([InventoryRequestStatusID], [StatusName], [Description]) VALUES (4, N'Completed', NULL)
INSERT [dbo].[Tbl_Cl_InventoryRequestStatus] ([InventoryRequestStatusID], [StatusName], [Description]) VALUES (5, N'Open-Deleted', NULL)
INSERT [dbo].[Tbl_Cl_InventoryRequestStatus] ([InventoryRequestStatusID], [StatusName], [Description]) VALUES (6, N'Progress-Deleted', NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Cl_InventoryRequestStatus] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_InventoryStatusType] ON 

INSERT [dbo].[Tbl_Cl_InventoryStatusType] ([InventoryStatusTypeID], [StatusName], [Description], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, N'Available', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_InventoryStatusType] ([InventoryStatusTypeID], [StatusName], [Description], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, N'Out of Stock', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_InventoryStatusType] ([InventoryStatusTypeID], [StatusName], [Description], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, N'Discontinued', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Cl_InventoryStatusType] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_Invoice] ON 

INSERT [dbo].[Tbl_Cl_Invoice] ([InvoiceID], [HospitalId], [Amount], [InvoiceDate], [DueDate], [PDFLink]) VALUES (1, 1, 370, CAST(N'2020-06-16T00:00:00.000' AS DateTime), CAST(N'2020-07-07T00:00:00.000' AS DateTime), N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/InvoiceReciept/Invoice1061620200000AM.pdf')
INSERT [dbo].[Tbl_Cl_Invoice] ([InvoiceID], [HospitalId], [Amount], [InvoiceDate], [DueDate], [PDFLink]) VALUES (2, 3, 37, CAST(N'2020-12-03T00:00:00.000' AS DateTime), CAST(N'2020-12-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tbl_Cl_Invoice] ([InvoiceID], [HospitalId], [Amount], [InvoiceDate], [DueDate], [PDFLink]) VALUES (3, 3, 37, CAST(N'2020-12-03T00:00:00.000' AS DateTime), CAST(N'2020-12-24T00:00:00.000' AS DateTime), N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/InvoiceReciept/Invoice3120320200000AM.pdf')
INSERT [dbo].[Tbl_Cl_Invoice] ([InvoiceID], [HospitalId], [Amount], [InvoiceDate], [DueDate], [PDFLink]) VALUES (4, 3, 1080, CAST(N'2020-12-08T00:00:00.000' AS DateTime), CAST(N'2020-12-29T00:00:00.000' AS DateTime), N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/InvoiceReciept/Invoice4120820200000AM.pdf')
INSERT [dbo].[Tbl_Cl_Invoice] ([InvoiceID], [HospitalId], [Amount], [InvoiceDate], [DueDate], [PDFLink]) VALUES (5, 3, 1080, CAST(N'2020-12-08T00:00:00.000' AS DateTime), CAST(N'2020-12-29T00:00:00.000' AS DateTime), N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/InvoiceReciept/Invoice5120820200000AM.pdf')
INSERT [dbo].[Tbl_Cl_Invoice] ([InvoiceID], [HospitalId], [Amount], [InvoiceDate], [DueDate], [PDFLink]) VALUES (6, 3, 1080, CAST(N'2020-12-08T00:00:00.000' AS DateTime), CAST(N'2020-12-29T00:00:00.000' AS DateTime), N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/InvoiceReciept/Invoice6120820200000AM.pdf')
INSERT [dbo].[Tbl_Cl_Invoice] ([InvoiceID], [HospitalId], [Amount], [InvoiceDate], [DueDate], [PDFLink]) VALUES (7, 3, 1080, CAST(N'2020-12-08T00:00:00.000' AS DateTime), CAST(N'2020-12-29T00:00:00.000' AS DateTime), N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/InvoiceReciept/Invoice7120820200000AM.pdf')
INSERT [dbo].[Tbl_Cl_Invoice] ([InvoiceID], [HospitalId], [Amount], [InvoiceDate], [DueDate], [PDFLink]) VALUES (8, 3, 1080, CAST(N'2020-12-08T00:00:00.000' AS DateTime), CAST(N'2020-12-29T00:00:00.000' AS DateTime), N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/InvoiceReciept/Invoice8120820200000AM.pdf')
INSERT [dbo].[Tbl_Cl_Invoice] ([InvoiceID], [HospitalId], [Amount], [InvoiceDate], [DueDate], [PDFLink]) VALUES (9, 3, 1080, CAST(N'2020-12-08T00:00:00.000' AS DateTime), CAST(N'2020-12-29T00:00:00.000' AS DateTime), N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/InvoiceReciept/Invoice9120820200000AM.pdf')
INSERT [dbo].[Tbl_Cl_Invoice] ([InvoiceID], [HospitalId], [Amount], [InvoiceDate], [DueDate], [PDFLink]) VALUES (10, 3, 1080, CAST(N'2020-12-08T00:00:00.000' AS DateTime), CAST(N'2020-12-29T00:00:00.000' AS DateTime), N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/InvoiceReciept/Invoice10120820200000AM.pdf')
SET IDENTITY_INSERT [dbo].[Tbl_Cl_Invoice] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_LabReportConfiguration] ON 

INSERT [dbo].[Tbl_Cl_LabReportConfiguration] ([ConfigID], [LabID], [LabImage], [LabName], [LabAddress], [LabCompanyNumber], [LabUniqueCode], [LabHeadOfficeAddress], [labEmail], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [RegistrationNumber], [VatRate]) VALUES (1, 1, N'http://160.153.248.140/MyFiles/MyData_RajLab/ReportConfiguration/logoLGPathLab08042020020847.PNG', N'LG Pathlab', N'1 Harley Street, London, W1G 9QD', N'08135606', N'UKIHCC', N'Chalgrove, 30 Peterborough Road, Harrow on the Hill, HA1 3DX', N'Customercare@lgpathlab.co.uk', NULL, NULL, NULL, 1, N'08135606', N'20')
SET IDENTITY_INSERT [dbo].[Tbl_Cl_LabReportConfiguration] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_Menu] ON 

INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, N'Dashboard', N'dashboard', NULL, N'nav-icon i-Bar-Chart', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, N'Employees', N'employees', NULL, N'nav-icon i-Checked-User', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, N'Create Employee Account', N'create-employees', 2, N'nav-icon i-Add', NULL, N'/User/Employee', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (4, N'Active Employee Accounts', N'active-employees', 2, N'nav-icon i-Check', NULL, N'/User/Employee/ActiveEmployees', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (5, N'Inactive Employee Accounts', N'inactive-employees', 2, N'nav-icon i-Close', NULL, N'/User/Employee/InactiveEmployees', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (6, N'Inventory', N'inventory-manager', NULL, N'nav-icon i-Box-Full', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (7, N'Create Inventory Items', N'inventory-manager-create', 6, N'nav-icon i-Add', NULL, N'/User/InventoryManager', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (8, N'View Inventory Items', N'inventory-manager-viewactive', 6, N'nav-icon i-Check', NULL, N'/User/InventoryManager/AvailableItems', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (9, N'Out of Stock Items', N'inventory-manager-viewoutofstock', 6, N'nav-icon i-Close', NULL, N'/User/InventoryManager/OutofstockItems', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (10, N'Discontinued Items', N'inventory-manager-viewdiscontinued', 6, N'nav-icon i-Close', NULL, N'/User/InventoryManager/DiscontinuedItems', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (11, N'Inventory Request', N'inventory-request', NULL, N'nav-icon i-Box-Full', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (12, N'Open Requests', N'inventory-request-open', 11, N'nav-icon i-Add', NULL, N'/User/InventoryRequest/OpenRequests', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (13, N'Closed Requests', N'inventory-request-closed', 11, N'nav-icon i-Check', NULL, N'/User/InventoryRequest/ClosedRequests', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (14, N'Patients', N'patients', NULL, N'nav-icon i-Clinic', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (15, N'View All Patients', N'patients-viewall', 14, N'nav-icon i-Check', NULL, N'/User/Patients/ViewAll', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (16, N'Reports', N'reports', NULL, N'nav-icon i-Folder-Search', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (17, N'All Booked Tests', N'reports-allbockedtests', 16, N'nav-icon i-Add', NULL, N'/User/Reports/AllBookedTests', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (18, N'Pending Test Reports', N'reports-pendingtests', 16, N'nav-icon i-Loading-2', NULL, N'/User/Reports/PendingTests', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (19, N'Completed Test Reports', N'reports-completedtests', 16, N'nav-icon i-Check', NULL, N'/User/Reports/CompletedTests', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (20, N'Payments', N'payments', NULL, N'nav-icon i-Money-2', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (21, N'Patient Registration Payments', N'payments-patientregistration', 20, N'nav-icon i-Mail-Money', NULL, N'/User/Payments/PatientRegistrationPayments', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (22, N'Booked Medical Test Payments', N'payments-bookedtests', 20, N'nav-icon i-Money1', NULL, N'/User/Payments/BookedTestPayments', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (23, N'Export Data', N'exportdata', NULL, N'nav-icon i-File-Search', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (24, N'Export All Patient Records', N'exportdata-patientrecords', 23, N'nav-icon i-Information', NULL, N'/User/ExportData/AllPatientRecords', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (25, N'Export All Test Records', N'exportdata-testrecords', 23, N'nav-icon i-Check', NULL, N'/User/ExportData/AllTestRecords', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (26, N'Logout', N'NonMenu', NULL, NULL, NULL, N'/User/Account/Logout', 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (27, N'MyProfile', N'NonMenu', NULL, NULL, NULL, N'/User/Account/MyProfile', 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (28, N'New Patient', N'patients-new', 14, N'nav-icon i-Add', NULL, N'/User/Patients', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (29, N'Book Medical Test', N'bookmedicaltest', NULL, N'nav-icon i-Clinic', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (30, N'New Test', N'bookmedicaltest-new', 29, N'nav-icon i-Add', NULL, N'/User/MedicalTest', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (31, N'Raise Request', N'inventory-request-raise', 11, N'nav-icon i-Folder-Search', NULL, N'/User/InventoryRequest/RaiseRequest', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (32, N'Search Completed Requests', N'bookmedicaltest-completedtest-bookmedicaltest', 29, N'nav-icon i-File-Search', NULL, N'/User/MedicalTest/Completed', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (33, N'Sample Collection Request', N'samplecollectionrequest', NULL, N'nav-icon i-Clinic', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (34, N'Open Requests', N'medicaltest-openrequests-samplecollection', 33, N'nav-icon i-Add', NULL, N'/User/MedicalTest/Open', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (35, N'Investigation', N'investigation', NULL, N'nav-icon i-Folder-Search', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (36, N'Open Requests', N'medicaltest-openrequests-investigation', 35, N'nav-icon i-Add', NULL, N'/User/MedicalTest/Open', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (37, N'Extra Work Requests', N'extraworkrequests', NULL, N'nav-icon i-Folder-Search', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (38, N'New Extra Work Request', N'extraworkrequest-new', 37, N'nav-icon i-Add', NULL, N'/User/ExtraWorkRequest/New', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (39, N'Open Requests', N'extraworkrequests-open', 37, N'nav-icon i-File-Search', NULL, N'/User/ExtraWorkRequest/Open', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (40, N'Completed Request', N'extraworkrequest-completed', 37, N'nav-icon i-Check', NULL, N'/User/ExtraWorkRequest/Completed', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (41, N'Search Request', N'extraworkrequest-search', 37, N'nav-icon i-Folder-Search', NULL, N'/User/ExtraWorkRequest/Search', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (42, N'2nd Opinion', N'2ndopinion', NULL, N'nav-icon i-Clinic', NULL, N'#', 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (43, N'New Opinion Request', N'2ndopinion-new', 42, N'nav-icon i-Add', NULL, N'/User/OpinionRequest/New', 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (44, N'Pending Opinion Request', N'2ndopinion-pending', 42, N'nav-icon i-Loading-2', NULL, N'/User/OpinionRequest/Pending', 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (45, N'Completed Opinion Request', N'2ndopinion-completed', 42, N'nav-icon i-Check', NULL, N'/User/OpinionRequest/Completed', 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (46, N'Test Report Requests', N'testopenrequest', NULL, N'nav-icon i-Folder-Search', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (47, N'Open Requests', N'medicaltest-openrequests-testopenrequest', 46, N'nav-icon i-Add', NULL, N'/User/MedicalTest/Open', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (48, N'My Reports', N'myreports', NULL, N'nav-icon i-Folder-Search', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (49, N'Pending Reports', N'myreports-pending', 48, N'nav-icon i-Loading-2', NULL, N'/User/MyReports/PendingReports', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (50, N'Completed Reports', N'myreports-completed', 48, N'nav-icon i-Check', NULL, N'/User/MyReports/CompletedReports', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (51, N'Search Completed Requests', N'bookmedicaltest-completedtest-samplecollection', 33, N'nav-icon i-File-Search', NULL, N'/User/MedicalTest/Completed', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (52, N'Search Completed Requests', N'bookmedicaltest-completedtest-investigation', 35, N'nav-icon i-File-Search', NULL, N'/User/MedicalTest/Completed', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (53, N'Search Completed Requests', N'bookmedicaltest-completedtest-testreport', 46, N'nav-icon i-File-Search', NULL, N'/User/MedicalTest/Completed', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (54, N'My Dashboard', N'dashboard-my', 1, N'nav-icon i-Bar-Chart', NULL, N'/User/Home', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (55, N'Test-NonViewable', N'Non-Menu', NULL, NULL, NULL, N'/User/MedicalTest', 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (56, N'Export All Payment Records', N'exportdata-paymentrecords', 23, N'nav-icon i-Mail-Money', NULL, N'/User/ExportData/AllPaymentRecords', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (57, N'Export All Employee Records', N'exportdata-employeerecords', 23, N'nav-icon i-Checked-User', NULL, N'/User/ExportData/AllEmployeeRecords', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (58, N'Create Hospital Account', N'create-hospital', 59, N'nav-icon i-Add', NULL, N'/User/Hospital', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (59, N'Hospitals', N'hospitals', NULL, N'nav-icon i-Clinic', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (60, N'View Hospitals', N'get-all-hospital', 59, N'nav-icon i-Check', NULL, N'/User/Hospital/ViewHospitals', 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (61, N'Search Completed Report', N'bookmedicaltest-completedtest-bookmedicaltest', 29, N'nav-icon i-File-Search', NULL, N'/User/MedicalTest/CompletedReport', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (62, N'View Report', N'Non-Menu', NULL, NULL, NULL, N'/User/MedicalTest/ViewReport', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (63, N'Report Configuration', N'report configuration', NULL, N'nav-icon i-Folder-Search', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (64, N'Create Report Configuration', N'create-report-config', 63, N'nav-icon i-Check', NULL, N'/User/ReportConfiguration', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (65, N'View Report', N'Non-Menu', NULL, NULL, NULL, N'/User/Reports/ViewReport', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (66, N'Search Completed Requests', N'bookmedicaltest-completedtest-bookmedicaltest', 46, N'nav-icon i-File-Search', NULL, N'/User/MedicalTest/SearchCompletedReport', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (67, N'Test Rate ', N'test rate ', NULL, N'nav-icon i-Folder-Search', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (68, N'Create Test Rate', N'create-test-rate', 67, N'nav-icon i-Check', NULL, N'/User/RateList', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (69, N'View Test Rate ', N'get-all-testrate', 67, N'nav-icon i-Check', NULL, N'/User/RateList/ViewAll', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (70, N'Invoice', N'invoice', NULL, N'nav-icon i-Folder-Search', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (71, N'Create Invoice', N'create-invoice', 70, N'nav-icon i-Check', NULL, N'/User/Invoice', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (72, N'Generated Invoice', N'get-all-invoice', 70, N'nav-icon i-Check', NULL, N'/User/Invoice/AllGeneratedInvoice', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1072, N'Transcribed Completed Report', N'bookmedicaltest-completedtest-bookmedicaltest', 29, N'nav-icon i-File-Search', NULL, N'/User/MedicalTest/TransCompletedReport', 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Cl_Menu] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_MenuAssignment] ON 

INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, 2, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (4, 4, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (5, 5, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (6, 6, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (7, 7, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (8, 8, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (9, 9, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (10, 10, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (11, 11, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (12, 12, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (13, 13, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (14, 14, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (15, 15, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (16, 16, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (17, 17, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (18, 18, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (19, 19, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (20, 20, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (21, 21, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (22, 22, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (23, 23, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (24, 24, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (25, 25, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (26, 26, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (27, 27, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (28, 1, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (29, 11, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (30, 12, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (31, 13, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (32, 14, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (33, 15, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (34, 26, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (35, 27, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (36, 28, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (37, 29, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (38, 30, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (39, 31, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (40, 32, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (41, 1, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (42, 11, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (43, 12, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (44, 13, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (45, 26, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (46, 27, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (47, 31, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (48, 33, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (49, 34, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (50, 51, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (51, 1, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (52, 11, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (53, 12, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (54, 13, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (55, 26, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (56, 27, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (57, 31, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (58, 35, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (59, 36, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (60, 37, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (61, 39, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (62, 40, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (63, 52, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (64, 1, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (65, 11, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (66, 12, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (67, 13, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (68, 26, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (69, 27, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (70, 31, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (71, 37, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (72, 38, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (73, 39, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (74, 40, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (75, 41, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (76, 42, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (77, 43, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (78, 44, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (79, 45, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (80, 46, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (81, 47, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (82, 53, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (83, 1, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (84, 6, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (85, 7, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (86, 8, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (87, 9, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (88, 10, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (89, 11, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (90, 12, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (91, 13, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (92, 26, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (93, 27, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (95, 1, 8, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (96, 26, 8, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (97, 27, 8, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (98, 48, 8, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (99, 49, 8, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (100, 50, 8, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (101, 1, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (102, 11, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (103, 12, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (104, 13, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (105, 26, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (106, 27, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (107, 31, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (111, 54, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (112, 54, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (113, 54, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (114, 54, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (115, 54, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (116, 54, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (117, 54, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (118, 54, 8, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (119, 55, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (120, 55, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (121, 55, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (122, 55, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (123, 55, 8, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (124, 56, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (125, 57, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (126, 59, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (127, 58, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (128, 60, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (132, 14, 9, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (133, 15, 9, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (134, 26, 9, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (135, 27, 9, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (136, 54, 9, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (137, 1, 9, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (140, 28, 9, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (145, 61, 9, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (146, 62, 9, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (147, 29, 9, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (149, 63, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (150, 64, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (154, 65, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (155, 62, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (156, 62, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (157, 62, 10, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (158, 1, 10, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (159, 11, 10, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (160, 12, 10, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (161, 13, 10, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (162, 26, 10, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (163, 27, 10, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (164, 31, 10, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (165, 37, 10, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (166, 38, 10, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (167, 39, 10, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (168, 40, 10, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (169, 41, 10, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (170, 42, 10, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (171, 43, 10, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (172, 44, 10, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (173, 45, 10, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (174, 46, 10, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (175, 47, 10, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (176, 53, 10, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (177, 54, 10, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (178, 55, 10, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (179, 62, 10, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (180, 38, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (181, 41, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (182, 1, 11, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (183, 11, 11, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (184, 12, 11, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (185, 13, 11, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (186, 26, 11, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (187, 27, 11, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (188, 31, 11, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (189, 37, 11, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (190, 38, 11, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (191, 39, 11, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (193, 41, 11, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (194, 42, 11, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (195, 43, 11, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (196, 44, 11, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (197, 45, 11, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (198, 46, 11, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (199, 47, 11, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (200, 66, 11, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (201, 54, 11, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (202, 55, 11, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (203, 62, 11, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (204, 30, 9, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (205, 37, 9, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (206, 39, 9, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (207, 67, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (208, 68, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (209, 69, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (210, 70, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (211, 71, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (212, 72, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1212, 55, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1213, 46, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1214, 47, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1215, 53, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1216, 1072, 9, 0, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Tbl_Cl_MenuAssignment] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_Notification] ON 

INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (1, N'Account', N'your account has been created', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/Account/MyProfile', CAST(N'2020-06-12T19:07:02.133' AS DateTime), 0, NULL, 1042, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (2, N'Test ID #0001', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T19:09:35.673' AS DateTime), 0, NULL, 6, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (3, N'Test ID #0001', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T19:09:35.683' AS DateTime), 1, CAST(N'2020-06-12T23:34:21.690' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (4, N'Test ID #0001', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T19:10:10.190' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (5, N'Test ID #0001', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T19:10:10.227' AS DateTime), 0, NULL, 8, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (6, N'Test ID #0001', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T19:10:10.267' AS DateTime), 1, CAST(N'2020-06-12T23:34:21.920' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (7, N'Test ID #0001', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T19:10:10.290' AS DateTime), 0, NULL, 26, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (8, N'Test ID #0001', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T19:10:10.333' AS DateTime), 0, NULL, 7, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (9, N'Test ID #0001', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T19:10:35.700' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (10, N'Test ID #0001', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T19:10:35.723' AS DateTime), 0, NULL, 9, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (11, N'Test ID #0001', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T19:10:35.730' AS DateTime), 1, CAST(N'2020-06-12T23:34:21.920' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (12, N'Test ID #0001', N'Test Report Ready', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MyReports/CompletedReports', CAST(N'2020-06-12T19:11:44.517' AS DateTime), 0, NULL, 1042, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (13, N'Test ID #0001', N'New Supplement Report', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MyReports/CompletedReports', CAST(N'2020-06-12T22:12:54.340' AS DateTime), 0, NULL, 1042, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (14, N'Test ID #0001', N'New Supplement Report', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MyReports/CompletedReports', CAST(N'2020-06-12T22:13:08.330' AS DateTime), 0, NULL, 1042, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (15, N'Test ID #0002', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T22:34:55.577' AS DateTime), 0, NULL, 6, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (16, N'Test ID #0002', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T22:34:55.813' AS DateTime), 1, CAST(N'2020-06-12T23:34:21.927' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (17, N'Test ID #0002', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T22:36:06.220' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (18, N'Test ID #0002', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T22:36:06.230' AS DateTime), 0, NULL, 8, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (19, N'Test ID #0002', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T22:36:06.233' AS DateTime), 1, CAST(N'2020-06-12T23:34:21.933' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (20, N'Test ID #0002', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T22:36:06.303' AS DateTime), 0, NULL, 26, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (21, N'Test ID #0002', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T22:36:06.337' AS DateTime), 0, NULL, 7, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (22, N'Test ID #0002', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T22:36:40.120' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (23, N'Test ID #0002', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T22:36:40.153' AS DateTime), 0, NULL, 9, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (24, N'Test ID #0002', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T22:36:40.233' AS DateTime), 1, CAST(N'2020-06-12T23:34:21.933' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (25, N'Test ID #0002', N'Test Report Ready', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MyReports/CompletedReports', CAST(N'2020-06-12T22:37:51.177' AS DateTime), 0, NULL, 1042, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (26, N'Test ID #0003', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T23:34:05.253' AS DateTime), 0, NULL, 6, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (27, N'Test ID #0003', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T23:34:05.503' AS DateTime), 1, CAST(N'2020-06-12T23:34:21.933' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (28, N'Test ID #0003', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T23:34:39.087' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (29, N'Test ID #0003', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T23:34:39.120' AS DateTime), 0, NULL, 8, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (30, N'Test ID #0003', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T23:34:39.143' AS DateTime), 1, CAST(N'2020-06-12T23:50:12.677' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (31, N'Test ID #0003', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T23:34:39.180' AS DateTime), 0, NULL, 26, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (32, N'Test ID #0003', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T23:34:39.227' AS DateTime), 0, NULL, 7, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (33, N'Test ID #0003', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T23:35:02.057' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (34, N'Test ID #0003', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T23:35:02.067' AS DateTime), 0, NULL, 9, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (35, N'Test ID #0003', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T23:35:02.090' AS DateTime), 1, CAST(N'2020-06-12T23:50:12.680' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (36, N'Test ID #0003', N'Test Report Ready', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MyReports/CompletedReports', CAST(N'2020-06-12T23:36:08.137' AS DateTime), 0, NULL, 1042, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (37, N'Test ID #0004', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T23:48:11.920' AS DateTime), 0, NULL, 6, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (38, N'Test ID #0004', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T23:48:12.127' AS DateTime), 1, CAST(N'2020-06-12T23:50:12.687' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (39, N'Test ID #0004', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T23:48:53.003' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (40, N'Test ID #0004', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T23:48:53.010' AS DateTime), 0, NULL, 8, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (41, N'Test ID #0004', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T23:48:53.030' AS DateTime), 1, CAST(N'2020-06-12T23:50:12.687' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (42, N'Test ID #0004', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T23:48:53.053' AS DateTime), 0, NULL, 26, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (43, N'Test ID #0004', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T23:48:53.067' AS DateTime), 0, NULL, 7, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (44, N'Test ID #0004', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T23:49:15.997' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (45, N'Test ID #0004', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T23:49:16.020' AS DateTime), 0, NULL, 9, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (46, N'Test ID #0004', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-12T23:49:16.050' AS DateTime), 1, CAST(N'2020-06-12T23:50:12.690' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (47, N'Request ID #001', N'Extra Work Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/ExtraWorkRequest/Open', CAST(N'2020-06-12T23:49:35.030' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (48, N'Request ID #001', N'Extra Work Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/ExtraWorkRequest/Open', CAST(N'2020-06-12T23:49:35.047' AS DateTime), 0, NULL, 8, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (49, N'Request ID #001', N'Extra Work Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/ExtraWorkRequest/Open', CAST(N'2020-06-12T23:49:35.063' AS DateTime), 1, CAST(N'2020-06-12T23:50:12.693' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (50, N'Request ID #001', N'Extra Work Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/ExtraWorkRequest/Open', CAST(N'2020-06-12T23:49:35.080' AS DateTime), 0, NULL, 26, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (51, N'Request ID #001', N'Extra Work Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/ExtraWorkRequest/Open', CAST(N'2020-06-12T23:49:35.093' AS DateTime), 0, NULL, 7, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (52, N'Request ID #001', N'Extra Work Request Completed', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/ExtraWorkRequest/Completed', CAST(N'2020-06-12T23:49:59.420' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (53, N'Request ID #001', N'Extra Work Request Completed', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/ExtraWorkRequest/Completed', CAST(N'2020-06-12T23:49:59.450' AS DateTime), 0, NULL, 9, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (54, N'Request ID #001', N'Extra Work Request Completed', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/ExtraWorkRequest/Completed', CAST(N'2020-06-12T23:49:59.563' AS DateTime), 1, CAST(N'2020-06-12T23:50:12.693' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (55, N'Test ID #0004', N'Test Report Ready', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MyReports/CompletedReports', CAST(N'2020-06-12T23:51:13.043' AS DateTime), 0, NULL, 1042, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (56, N'Test ID #0005', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-16T14:30:05.217' AS DateTime), 0, NULL, 6, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (57, N'Test ID #0005', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-16T14:30:05.387' AS DateTime), 1, CAST(N'2020-11-27T17:40:37.267' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (58, N'Test ID #0005', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-16T14:30:52.567' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (59, N'Test ID #0005', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-16T14:30:52.593' AS DateTime), 0, NULL, 8, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (60, N'Test ID #0005', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-16T14:30:52.610' AS DateTime), 1, CAST(N'2020-11-27T17:40:37.287' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (61, N'Test ID #0005', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-16T14:30:52.627' AS DateTime), 0, NULL, 26, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (62, N'Test ID #0005', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-16T14:30:52.637' AS DateTime), 0, NULL, 7, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (63, N'Test ID #0005', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-16T14:32:16.783' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (64, N'Test ID #0005', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-16T14:32:16.797' AS DateTime), 0, NULL, 9, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (65, N'Test ID #0005', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-16T14:32:16.813' AS DateTime), 1, CAST(N'2020-11-27T17:40:37.287' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (66, N'Request ID #002', N'Extra Work Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/ExtraWorkRequest/Open', CAST(N'2020-06-16T15:02:34.207' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (67, N'Request ID #002', N'Extra Work Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/ExtraWorkRequest/Open', CAST(N'2020-06-16T15:02:34.220' AS DateTime), 0, NULL, 8, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (68, N'Request ID #002', N'Extra Work Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/ExtraWorkRequest/Open', CAST(N'2020-06-16T15:02:34.263' AS DateTime), 1, CAST(N'2020-11-27T17:40:37.287' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (69, N'Request ID #002', N'Extra Work Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/ExtraWorkRequest/Open', CAST(N'2020-06-16T15:02:34.293' AS DateTime), 0, NULL, 26, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (70, N'Request ID #002', N'Extra Work Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/ExtraWorkRequest/Open', CAST(N'2020-06-16T15:02:34.297' AS DateTime), 0, NULL, 7, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (71, N'Request ID #002', N'Extra Work Request Completed', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/ExtraWorkRequest/Completed', CAST(N'2020-06-16T15:07:48.527' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (72, N'Request ID #002', N'Extra Work Request Completed', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/ExtraWorkRequest/Completed', CAST(N'2020-06-16T15:07:48.543' AS DateTime), 0, NULL, 9, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (73, N'Request ID #002', N'Extra Work Request Completed', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/ExtraWorkRequest/Completed', CAST(N'2020-06-16T15:07:48.570' AS DateTime), 1, CAST(N'2020-11-27T17:40:37.287' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (74, N'Test ID #0005', N'Test Report Ready', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MyReports/CompletedReports', CAST(N'2020-06-16T15:55:58.090' AS DateTime), 0, NULL, 1042, 1039)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (75, N'Test ID #0005', N'Test Report Ready', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MyReports/CompletedReports', CAST(N'2020-06-16T16:10:20.317' AS DateTime), 0, NULL, 1042, 1039)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (76, N'Account', N'your account has been created', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/Account/MyProfile', CAST(N'2020-06-16T16:28:14.837' AS DateTime), 0, NULL, 1045, 1043)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (77, N'Test ID #0006', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-16T16:29:48.217' AS DateTime), 0, NULL, 6, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (78, N'Test ID #0006', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-16T16:29:48.237' AS DateTime), 1, CAST(N'2020-11-27T17:40:37.287' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (79, N'Test ID #0006', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-16T16:38:07.380' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (80, N'Test ID #0006', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-16T16:38:07.403' AS DateTime), 0, NULL, 8, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (81, N'Test ID #0006', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-16T16:38:07.417' AS DateTime), 1, CAST(N'2020-11-27T17:40:37.287' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (82, N'Test ID #0006', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-16T16:38:07.437' AS DateTime), 0, NULL, 26, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (83, N'Test ID #0006', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-16T16:38:07.440' AS DateTime), 0, NULL, 7, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (84, N'Test ID #0006', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-16T16:38:44.790' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (85, N'Test ID #0006', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-16T16:38:44.800' AS DateTime), 0, NULL, 9, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (86, N'Test ID #0006', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-16T16:38:44.807' AS DateTime), 1, CAST(N'2020-11-27T17:40:37.290' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (87, N'Test ID #0006', N'Test Report Ready', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MyReports/CompletedReports', CAST(N'2020-06-16T16:39:51.020' AS DateTime), 0, NULL, 1045, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (88, N'Test ID #0005', N'Test Report Ready', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MyReports/CompletedReports', CAST(N'2020-06-16T16:48:58.830' AS DateTime), 0, NULL, 1042, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (89, N'Test ID #0005', N'Test Report Ready', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MyReports/CompletedReports', CAST(N'2020-06-17T17:20:51.277' AS DateTime), 0, NULL, 1042, 1039)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (90, N'Test ID #0005', N'Test Report Ready', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MyReports/CompletedReports', CAST(N'2020-06-17T18:34:03.497' AS DateTime), 0, NULL, 1042, 1039)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (91, N'Test ID #0005', N'Test Report Ready', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MyReports/CompletedReports', CAST(N'2020-06-17T18:37:13.287' AS DateTime), 0, NULL, 1042, 1039)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (92, N'Test ID #0005', N'Test Report Ready', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MyReports/CompletedReports', CAST(N'2020-06-19T13:27:28.380' AS DateTime), 0, NULL, 1042, 1039)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (93, N'Test ID #0005', N'Test Report Ready', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MyReports/CompletedReports', CAST(N'2020-06-19T15:59:38.277' AS DateTime), 0, NULL, 1042, 1039)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (94, N'Test ID #0005', N'Test Report Ready', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MyReports/CompletedReports', CAST(N'2020-06-19T16:01:31.247' AS DateTime), 0, NULL, 1042, 1039)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (95, N'Test ID #0005', N'Test Report Ready', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MyReports/CompletedReports', CAST(N'2020-06-19T16:16:37.803' AS DateTime), 0, NULL, 1042, 1039)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (96, N'Test ID #0007', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-20T12:33:19.403' AS DateTime), 0, NULL, 6, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (97, N'Test ID #0007', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-20T12:33:19.620' AS DateTime), 1, CAST(N'2020-11-27T17:40:37.290' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (98, N'Test ID #0007', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-20T13:27:12.987' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (99, N'Test ID #0007', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-20T13:27:13.000' AS DateTime), 0, NULL, 8, 2)
GO
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (100, N'Test ID #0007', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-20T13:27:13.003' AS DateTime), 1, CAST(N'2020-11-27T17:40:37.290' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (101, N'Test ID #0007', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-20T13:27:13.017' AS DateTime), 0, NULL, 26, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (102, N'Test ID #0007', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-20T13:27:13.023' AS DateTime), 0, NULL, 7, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (103, N'Test ID #0007', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-20T13:27:53.710' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (104, N'Test ID #0007', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-20T13:27:53.720' AS DateTime), 0, NULL, 9, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (105, N'Test ID #0007', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-06-20T13:27:53.723' AS DateTime), 1, CAST(N'2020-11-27T17:40:37.290' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (106, N'Request ID #003', N'Extra Work Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/ExtraWorkRequest/Open', CAST(N'2020-09-19T16:44:03.843' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (107, N'Request ID #003', N'Extra Work Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/ExtraWorkRequest/Open', CAST(N'2020-09-19T16:44:04.023' AS DateTime), 0, NULL, 8, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (108, N'Request ID #003', N'Extra Work Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/ExtraWorkRequest/Open', CAST(N'2020-09-19T16:44:04.027' AS DateTime), 1, CAST(N'2020-11-27T17:40:37.293' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (109, N'Request ID #003', N'Extra Work Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/ExtraWorkRequest/Open', CAST(N'2020-09-19T16:44:04.027' AS DateTime), 0, NULL, 26, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (110, N'Request ID #003', N'Extra Work Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/ExtraWorkRequest/Open', CAST(N'2020-09-19T16:44:04.033' AS DateTime), 0, NULL, 7, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (111, N'Account', N'your account has been created', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/Account/MyProfile', CAST(N'2020-10-30T17:02:35.803' AS DateTime), 0, NULL, 1047, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (112, N'Test ID #0008', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-10-30T17:03:18.477' AS DateTime), 0, NULL, 6, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (113, N'Test ID #0008', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-10-30T17:03:18.493' AS DateTime), 1, CAST(N'2020-11-27T17:40:37.293' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (114, N'Test ID #0008', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-10-30T17:04:35.193' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (115, N'Test ID #0008', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-10-30T17:04:35.197' AS DateTime), 0, NULL, 8, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (116, N'Test ID #0008', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-10-30T17:04:35.203' AS DateTime), 1, CAST(N'2020-11-27T17:40:37.293' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (117, N'Test ID #0008', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-10-30T17:04:35.230' AS DateTime), 0, NULL, 26, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (118, N'Test ID #0008', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-10-30T17:04:35.237' AS DateTime), 0, NULL, 7, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (119, N'Test ID #0008', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-10-30T17:05:12.323' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (120, N'Test ID #0008', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-10-30T17:05:12.337' AS DateTime), 0, NULL, 9, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (121, N'Test ID #0008', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-10-30T17:05:12.343' AS DateTime), 1, CAST(N'2020-11-27T17:40:37.293' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (122, N'Test ID #0009', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-02T13:58:00.333' AS DateTime), 0, NULL, 6, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (123, N'Test ID #0009', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-02T13:58:00.593' AS DateTime), 1, CAST(N'2020-11-27T17:40:37.293' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (124, N'Test ID #0009', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-02T13:58:40.047' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (125, N'Test ID #0009', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-02T13:58:40.050' AS DateTime), 0, NULL, 8, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (126, N'Test ID #0009', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-02T13:58:40.057' AS DateTime), 1, CAST(N'2020-11-27T17:40:37.297' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (127, N'Test ID #0009', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-02T13:58:40.060' AS DateTime), 0, NULL, 26, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (128, N'Test ID #0009', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-02T13:58:40.067' AS DateTime), 0, NULL, 7, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (129, N'Test ID #0010', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-27T17:21:21.327' AS DateTime), 0, NULL, 6, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (130, N'Test ID #0010', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-27T17:21:21.553' AS DateTime), 1, CAST(N'2020-11-27T17:40:37.297' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (131, N'Test ID #0010', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-27T17:21:54.520' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (132, N'Test ID #0010', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-27T17:21:54.527' AS DateTime), 0, NULL, 8, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (133, N'Test ID #0010', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-27T17:21:54.530' AS DateTime), 1, CAST(N'2020-11-27T17:40:37.297' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (134, N'Test ID #0010', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-27T17:21:54.533' AS DateTime), 0, NULL, 26, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (135, N'Test ID #0010', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-27T17:21:54.537' AS DateTime), 0, NULL, 7, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (136, N'Test ID #0010', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-27T17:22:21.277' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (137, N'Test ID #0010', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-27T17:22:21.287' AS DateTime), 0, NULL, 9, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (138, N'Test ID #0010', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-27T17:22:21.300' AS DateTime), 1, CAST(N'2020-11-27T17:40:37.297' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (139, N'Test ID #0010', N'Test Report Ready', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MyReports/CompletedReports', CAST(N'2020-11-27T17:23:31.837' AS DateTime), 0, NULL, 1045, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (140, N'Account', N'your account has been created', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/Account/MyProfile', CAST(N'2020-11-27T17:38:42.913' AS DateTime), 0, NULL, 1049, 1048)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (141, N'Test ID #0011', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-27T17:39:01.653' AS DateTime), 0, NULL, 6, 1048)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (142, N'Test ID #0011', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-27T17:39:01.657' AS DateTime), 1, CAST(N'2020-11-27T17:40:37.297' AS DateTime), 2, 1048)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (143, N'Test ID #0011', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-27T17:39:37.927' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (144, N'Test ID #0011', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-27T17:39:37.947' AS DateTime), 0, NULL, 8, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (145, N'Test ID #0011', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-27T17:39:37.960' AS DateTime), 1, CAST(N'2020-11-27T17:40:37.297' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (146, N'Test ID #0011', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-27T17:39:37.997' AS DateTime), 0, NULL, 26, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (147, N'Test ID #0011', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-27T17:39:38.007' AS DateTime), 0, NULL, 7, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (148, N'Test ID #0011', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-27T17:40:28.633' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (149, N'Test ID #0011', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-27T17:40:28.643' AS DateTime), 0, NULL, 9, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (150, N'Test ID #0011', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-11-27T17:40:28.653' AS DateTime), 1, CAST(N'2020-11-27T17:40:37.297' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (151, N'Test ID #0011', N'Test Report Ready', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MyReports/CompletedReports', CAST(N'2020-11-27T17:41:39.167' AS DateTime), 0, NULL, 1049, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (152, N'Test ID #0012', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-07T22:35:51.540' AS DateTime), 0, NULL, 6, 1048)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (153, N'Test ID #0012', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-07T22:35:51.780' AS DateTime), 1, CAST(N'2020-12-18T12:49:50.687' AS DateTime), 2, 1048)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (154, N'Test ID #0012', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-07T22:37:21.203' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (155, N'Test ID #0012', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-07T22:37:21.207' AS DateTime), 0, NULL, 8, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (156, N'Test ID #0012', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-07T22:37:21.223' AS DateTime), 1, CAST(N'2020-12-18T12:49:51.150' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (157, N'Test ID #0012', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-07T22:37:21.233' AS DateTime), 0, NULL, 26, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (158, N'Test ID #0012', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-07T22:37:21.240' AS DateTime), 0, NULL, 7, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (159, N'Test ID #0012', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-07T22:38:02.867' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (160, N'Test ID #0012', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-07T22:38:02.877' AS DateTime), 0, NULL, 9, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (161, N'Test ID #0012', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-07T22:38:02.917' AS DateTime), 1, CAST(N'2020-12-18T12:49:51.150' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (162, N'Test ID #0012', N'Test Report Ready', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MyReports/CompletedReports', CAST(N'2020-12-07T22:39:10.680' AS DateTime), 0, NULL, 1049, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (163, N'Test ID #0042', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-10T22:17:14.707' AS DateTime), 0, NULL, 6, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (164, N'Test ID #0042', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-10T22:17:15.017' AS DateTime), 1, CAST(N'2020-12-18T12:49:51.150' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (165, N'Test ID #0042', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T12:18:02.747' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (166, N'Test ID #0042', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T12:18:03.163' AS DateTime), 0, NULL, 8, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (167, N'Test ID #0042', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T12:18:03.170' AS DateTime), 1, CAST(N'2020-12-18T12:49:51.150' AS DateTime), 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (168, N'Test ID #0042', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T12:18:03.303' AS DateTime), 0, NULL, 26, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (169, N'Test ID #0042', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T12:18:03.317' AS DateTime), 0, NULL, 7, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (170, N'Test ID #0043', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T13:05:02.617' AS DateTime), 0, NULL, 6, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (171, N'Test ID #0043', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T13:05:02.883' AS DateTime), 0, NULL, 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (172, N'Test ID #0043', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T13:05:46.780' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (173, N'Test ID #0043', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T13:05:46.793' AS DateTime), 0, NULL, 8, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (174, N'Test ID #0043', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T13:05:46.827' AS DateTime), 0, NULL, 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (175, N'Test ID #0043', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T13:05:46.847' AS DateTime), 0, NULL, 26, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (176, N'Test ID #0043', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T13:05:46.860' AS DateTime), 0, NULL, 7, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (177, N'Test ID #0044', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T13:18:48.910' AS DateTime), 0, NULL, 6, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (178, N'Test ID #0044', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T13:18:48.940' AS DateTime), 0, NULL, 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (179, N'Test ID #0044', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T13:19:29.613' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (180, N'Test ID #0044', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T13:19:29.617' AS DateTime), 0, NULL, 8, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (181, N'Test ID #0044', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T13:19:29.633' AS DateTime), 0, NULL, 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (182, N'Test ID #0044', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T13:19:29.637' AS DateTime), 0, NULL, 26, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (183, N'Test ID #0044', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T13:19:29.650' AS DateTime), 0, NULL, 7, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (184, N'Test ID #0045', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T13:25:51.830' AS DateTime), 0, NULL, 6, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (185, N'Test ID #0045', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T13:25:51.837' AS DateTime), 0, NULL, 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (186, N'Test ID #0045', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T13:26:48.317' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (187, N'Test ID #0045', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T13:26:48.350' AS DateTime), 0, NULL, 8, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (188, N'Test ID #0045', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T13:26:48.387' AS DateTime), 0, NULL, 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (189, N'Test ID #0045', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T13:26:48.427' AS DateTime), 0, NULL, 26, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (190, N'Test ID #0045', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T13:26:48.430' AS DateTime), 0, NULL, 7, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (191, N'Test ID #0009', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T14:48:41.487' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (192, N'Test ID #0009', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T14:48:41.490' AS DateTime), 0, NULL, 9, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (193, N'Test ID #0009', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T14:48:41.493' AS DateTime), 0, NULL, 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (194, N'Test ID #0046', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T14:49:48.467' AS DateTime), 0, NULL, 6, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (195, N'Test ID #0046', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2020-12-18T14:49:48.493' AS DateTime), 0, NULL, 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (196, N'Test ID #0005', N'Test Report Ready', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MyReports/CompletedReports', CAST(N'2020-12-18T17:37:46.483' AS DateTime), 0, NULL, 1042, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (197, N'Test ID #0007', N'Test Report Ready', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MyReports/CompletedReports', CAST(N'2020-12-18T17:51:36.860' AS DateTime), 0, NULL, 1042, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (198, N'Test ID #0007', N'New Supplement Report', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MyReports/CompletedReports', CAST(N'2020-12-22T23:58:36.213' AS DateTime), 0, NULL, 1042, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (199, N'Test ID #0008', N'Test Report Ready', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MyReports/CompletedReports', CAST(N'2021-01-28T15:53:32.940' AS DateTime), 0, NULL, 1047, 2)
GO
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (200, N'Test ID #0047', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2021-01-29T12:02:53.993' AS DateTime), 0, NULL, 6, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (201, N'Test ID #0047', N'Sample Collection Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2021-01-29T12:02:54.427' AS DateTime), 0, NULL, 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (202, N'Test ID #0047', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2021-01-29T12:09:18.077' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (203, N'Test ID #0047', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2021-01-29T12:09:18.080' AS DateTime), 0, NULL, 8, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (204, N'Test ID #0047', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2021-01-29T12:09:18.107' AS DateTime), 0, NULL, 2, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (205, N'Test ID #0047', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2021-01-29T12:09:18.107' AS DateTime), 0, NULL, 26, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (206, N'Test ID #0047', N'Investigation Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2021-01-29T12:09:18.110' AS DateTime), 0, NULL, 7, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (207, N'Test ID #0042', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2021-01-29T12:39:47.737' AS DateTime), 0, NULL, 3, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (208, N'Test ID #0042', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2021-01-29T12:39:47.983' AS DateTime), 0, NULL, 9, 2)
INSERT [dbo].[Tbl_Cl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (209, N'Test ID #0042', N'Test Conclusion Request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/User/MedicalTest/Open', CAST(N'2021-01-29T12:39:47.987' AS DateTime), 0, NULL, 2, 2)
SET IDENTITY_INSERT [dbo].[Tbl_Cl_Notification] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_OpinionRequestStatus] ON 

INSERT [dbo].[Tbl_Cl_OpinionRequestStatus] ([OpinionRequestStatusID], [Name], [Description]) VALUES (1, N'New', NULL)
INSERT [dbo].[Tbl_Cl_OpinionRequestStatus] ([OpinionRequestStatusID], [Name], [Description]) VALUES (2, N'In-Progress', NULL)
INSERT [dbo].[Tbl_Cl_OpinionRequestStatus] ([OpinionRequestStatusID], [Name], [Description]) VALUES (3, N'Completed', NULL)
INSERT [dbo].[Tbl_Cl_OpinionRequestStatus] ([OpinionRequestStatusID], [Name], [Description]) VALUES (4, N'New-Deleted', NULL)
INSERT [dbo].[Tbl_Cl_OpinionRequestStatus] ([OpinionRequestStatusID], [Name], [Description]) VALUES (5, N'In-Progress-Deleted', NULL)
INSERT [dbo].[Tbl_Cl_OpinionRequestStatus] ([OpinionRequestStatusID], [Name], [Description]) VALUES (6, N'Cancelled', NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Cl_OpinionRequestStatus] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_PatientDetail] ON 

INSERT [dbo].[Tbl_Cl_PatientDetail] ([PatientDetailID], [MiddleName], [Age], [Sex], [Streetname], [City], [AlternateAddress], [AlternatePhoneNo], [ReferingDoctor], [ReferingHospital], [PaymentMode], [Payment], [PdfLink], [PaymentReceiptPdfLink], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [NHSnumber], [HospitalID]) VALUES (1, N'Paitient', N'34', N'Male', N'', N'01-04-1987', N'', N'', N'', N'Max Hospital', N'Cash', CAST(800.00 AS Decimal(10, 2)), N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/PatientFiles/PatientDetail_1042_061220201906PM.pdf', N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/PatientFiles/Receipt/PatientReceipt_1042_061220201906PM.pdf', CAST(N'2020-06-12T19:06:35.807' AS DateTime), 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_PatientDetail] ([PatientDetailID], [MiddleName], [Age], [Sex], [Streetname], [City], [AlternateAddress], [AlternatePhoneNo], [ReferingDoctor], [ReferingHospital], [PaymentMode], [Payment], [PdfLink], [PaymentReceiptPdfLink], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [NHSnumber], [HospitalID]) VALUES (2, N'', N'56', N'Male', N'', N'12/01/1980', N'', N'', N'', N'hopital', N'cash', CAST(4567.00 AS Decimal(10, 2)), N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/PatientFiles/PatientDetail_1045_061620201628PM.pdf', N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/PatientFiles/Receipt/PatientReceipt_1045_061620201628PM.pdf', CAST(N'2020-06-16T16:28:03.483' AS DateTime), 1043, NULL, NULL, NULL, 1)
INSERT [dbo].[Tbl_Cl_PatientDetail] ([PatientDetailID], [MiddleName], [Age], [Sex], [Streetname], [City], [AlternateAddress], [AlternatePhoneNo], [ReferingDoctor], [ReferingHospital], [PaymentMode], [Payment], [PdfLink], [PaymentReceiptPdfLink], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [NHSnumber], [HospitalID]) VALUES (3, N'', N'55', N'Male', N'', N'01-Apr-1967', N'', N'', N'dr redddy', N'aiims', N'cash', CAST(1000.00 AS Decimal(10, 2)), N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/PatientFiles/PatientDetail_1047_103020201701PM.pdf', N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/PatientFiles/Receipt/PatientReceipt_1047_103020201701PM.pdf', CAST(N'2020-10-30T17:01:47.577' AS DateTime), 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_PatientDetail] ([PatientDetailID], [MiddleName], [Age], [Sex], [Streetname], [City], [AlternateAddress], [AlternatePhoneNo], [ReferingDoctor], [ReferingHospital], [PaymentMode], [Payment], [PdfLink], [PaymentReceiptPdfLink], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [NHSnumber], [HospitalID]) VALUES (4, N'', N'34', N'Female', N'', N'01-Feb-1987', N'', N'', N'', N'my hospital', N'cash', CAST(45.00 AS Decimal(10, 2)), N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/PatientFiles/PatientDetail_1049_112720201738PM.pdf', N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/PatientFiles/Receipt/PatientReceipt_1049_112720201738PM.pdf', CAST(N'2020-11-27T17:38:16.757' AS DateTime), 1048, NULL, NULL, NULL, 3)
SET IDENTITY_INSERT [dbo].[Tbl_Cl_PatientDetail] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_Role] ON 

INSERT [dbo].[Tbl_Cl_Role] ([RoleID], [RoleName], [Description], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, N'Admin', NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Role] ([RoleID], [RoleName], [Description], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, N'Receptionist', NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Role] ([RoleID], [RoleName], [Description], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, N'Lab Technician', NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Role] ([RoleID], [RoleName], [Description], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (4, N'Clinical Laboratory Scientist', NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Role] ([RoleID], [RoleName], [Description], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (5, N'Clinical Laboratory Consultant', NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Role] ([RoleID], [RoleName], [Description], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (6, N'Head Lab Technician', NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Role] ([RoleID], [RoleName], [Description], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (7, N'Inventory Manager', NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Role] ([RoleID], [RoleName], [Description], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (8, N'Patient', NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Role] ([RoleID], [RoleName], [Description], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (9, N'Hospital / Clinician', NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Role] ([RoleID], [RoleName], [Description], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (10, N'Secretary', NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Role] ([RoleID], [RoleName], [Description], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (11, N'External Consultant', NULL, 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Cl_Role] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_RoleMapping] ON 

INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, 1, 1, 1, CAST(N'2020-02-02T22:05:14.947' AS DateTime), -41, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (5, 8, 5, 1, CAST(N'2020-02-03T13:19:20.550' AS DateTime), 4, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (12, 4, 3, 0, CAST(N'2020-02-03T16:05:48.230' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (13, 5, 3, 1, CAST(N'2020-02-03T16:05:48.230' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (26, 5, 9, 1, CAST(N'2020-02-05T00:20:40.457' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (28, 7, 10, 1, CAST(N'2020-02-05T00:41:30.283' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (29, 7, 11, 0, CAST(N'2020-02-05T02:01:46.063' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (30, 6, 11, 1, CAST(N'2020-02-05T02:01:46.063' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (33, 6, 12, 1, CAST(N'2020-02-05T02:07:38.907' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (36, 8, 13, 1, CAST(N'2020-02-05T16:28:44.707' AS DateTime), 2, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (37, 8, 14, 1, CAST(N'2020-02-05T16:30:50.557' AS DateTime), 2, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (38, 8, 15, 1, CAST(N'2020-02-05T16:32:35.527' AS DateTime), 2, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (39, 2, 4, 1, CAST(N'2020-02-18T01:18:36.137' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (40, 3, 6, 1, CAST(N'2020-03-02T01:38:37.973' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (42, 4, 8, 1, CAST(N'2020-03-07T12:44:08.117' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (43, 8, 16, 1, CAST(N'2020-03-09T01:10:27.897' AS DateTime), 2, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (56, 8, 17, 1, CAST(N'2020-03-09T02:31:27.787' AS DateTime), 4, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (57, 8, 18, 1, CAST(N'2020-03-09T03:35:40.407' AS DateTime), 4, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (58, 8, 19, 1, CAST(N'2020-03-12T15:03:20.480' AS DateTime), 4, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (59, 8, 20, 1, CAST(N'2020-03-15T11:30:05.613' AS DateTime), 4, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (60, 8, 21, 1, CAST(N'2020-03-15T11:34:58.273' AS DateTime), 4, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (61, 8, 22, 1, CAST(N'2020-03-15T11:57:43.417' AS DateTime), 4, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (62, 8, 23, 1, CAST(N'2020-03-16T00:57:40.450' AS DateTime), 4, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (63, 3, 2, 0, CAST(N'2020-03-16T01:30:42.833' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (64, 4, 2, 0, CAST(N'2020-03-16T01:30:42.833' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (65, 5, 2, 0, CAST(N'2020-03-16T01:30:42.833' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (66, 6, 2, 0, CAST(N'2020-03-16T01:30:42.833' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (67, 7, 2, 0, CAST(N'2020-03-16T01:30:42.833' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (68, 2, 2, 1, CAST(N'2020-03-16T01:30:42.833' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (69, 8, 24, 1, CAST(N'2020-03-17T01:49:38.507' AS DateTime), 4, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (70, 8, 25, 1, CAST(N'2020-03-17T05:17:09.213' AS DateTime), 2, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (71, 4, 26, 0, CAST(N'2020-03-24T20:20:11.557' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (72, 2, 26, 1, CAST(N'2020-03-24T20:20:11.557' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (73, 2, 27, 1, NULL, 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (74, 8, 28, 1, CAST(N'2020-03-26T19:30:47.390' AS DateTime), 4, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (75, 9, 29, 1, CAST(N'2020-03-27T14:42:21.173' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (76, 8, 30, 1, CAST(N'2020-04-02T19:35:34.667' AS DateTime), 29, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (77, 8, 31, 1, CAST(N'2020-04-02T19:40:42.307' AS DateTime), 4, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (78, 9, 32, 1, CAST(N'2020-04-03T12:40:25.093' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (79, 8, 33, 1, CAST(N'2020-04-03T19:15:07.560' AS DateTime), 29, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (80, 8, 34, 1, CAST(N'2020-04-09T20:01:48.767' AS DateTime), 29, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (81, 8, 35, 1, CAST(N'2020-04-09T20:11:27.820' AS DateTime), 29, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (82, 8, 36, 1, CAST(N'2020-04-10T12:38:00.200' AS DateTime), 4, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (90, 4, 7, 1, CAST(N'2020-04-13T12:03:14.433' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (92, 10, 37, 1, CAST(N'2020-04-14T19:30:11.107' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (93, 8, 38, 1, CAST(N'2020-04-19T13:31:10.830' AS DateTime), 2, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (94, 8, 39, 1, CAST(N'2020-04-19T14:14:21.237' AS DateTime), 2, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (95, 11, 1039, 1, CAST(N'2020-04-21T20:02:49.577' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (96, 11, 1040, 1, CAST(N'2020-04-22T18:15:37.077' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (97, 8, 1041, 1, CAST(N'2020-06-03T13:05:03.590' AS DateTime), 4, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (98, 8, 1042, 1, CAST(N'2020-06-12T19:06:36.147' AS DateTime), 2, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (99, 9, 1043, 1, CAST(N'2020-06-15T16:04:52.007' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (100, 9, 1044, 1, CAST(N'2020-06-15T16:12:22.747' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (101, 8, 1045, 1, CAST(N'2020-06-16T16:28:03.580' AS DateTime), 1043, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (103, 11, 1046, 1, CAST(N'2020-08-04T13:36:18.197' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (104, 8, 1047, 1, CAST(N'2020-10-30T17:01:48.877' AS DateTime), 2, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (105, 9, 1048, 1, CAST(N'2020-11-27T17:35:56.690' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_Cl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (106, 8, 1049, 1, CAST(N'2020-11-27T17:38:16.840' AS DateTime), 1048, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Cl_RoleMapping] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_SectionRestriction] ON 

INSERT [dbo].[Tbl_Cl_SectionRestriction] ([SectionID], [SectionSelector], [MenuID], [EmployeeID], [RoleID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, N'.deletedbtn-section', 12, 0, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_SectionRestriction] ([SectionID], [SectionSelector], [MenuID], [EmployeeID], [RoleID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, N'.updatestatus-section', 12, 0, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_SectionRestriction] ([SectionID], [SectionSelector], [MenuID], [EmployeeID], [RoleID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, N'.deletedbtn-section', 12, 0, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_SectionRestriction] ([SectionID], [SectionSelector], [MenuID], [EmployeeID], [RoleID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (4, N'.updatestatus-section', 12, 0, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_SectionRestriction] ([SectionID], [SectionSelector], [MenuID], [EmployeeID], [RoleID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (5, N'.deletedbtn-section', 12, 0, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_SectionRestriction] ([SectionID], [SectionSelector], [MenuID], [EmployeeID], [RoleID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (6, N'.updatestatus-section', 12, 0, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_SectionRestriction] ([SectionID], [SectionSelector], [MenuID], [EmployeeID], [RoleID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (7, N'.deletedbtn-section', 12, 0, 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_SectionRestriction] ([SectionID], [SectionSelector], [MenuID], [EmployeeID], [RoleID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (8, N'.updatestatus-section', 12, 0, 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_SectionRestriction] ([SectionID], [SectionSelector], [MenuID], [EmployeeID], [RoleID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (9, N'.deletedbtn-section', 12, 0, 6, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_SectionRestriction] ([SectionID], [SectionSelector], [MenuID], [EmployeeID], [RoleID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (10, N'.updatestatus-section', 12, 0, 6, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_SectionRestriction] ([SectionID], [SectionSelector], [MenuID], [EmployeeID], [RoleID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (11, N'#editbtn', 15, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_SectionRestriction] ([SectionID], [SectionSelector], [MenuID], [EmployeeID], [RoleID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (12, N'.deletedbtn-section', 39, 0, 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_SectionRestriction] ([SectionID], [SectionSelector], [MenuID], [EmployeeID], [RoleID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (13, N'.updatestatus-section', 39, 0, 5, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Cl_SectionRestriction] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_Test] ON 

INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (1, N'Gastrointestinal multiple block biopsies', 1, N'tee', N'', 1042, 5, 1, N'IUIH0009', N'', N'', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_001_061220201911PM.pdf', CAST(N'2020-06-12T19:09:35.650' AS DateTime), 2, CAST(N'2020-06-12T19:10:10.140' AS DateTime), 2, CAST(N'2020-06-12T19:10:35.647' AS DateTime), 2, CAST(N'2020-06-12T19:11:36.150' AS DateTime), 2, N'45', 0, CAST(N'2020-05-13T17:02:22.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (2, N'Gastrointestinal single block biopsies', 1, N'300', N'', 1042, 5, 1, N'vvvv', N'', N'', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_002_061220202237PM.pdf', CAST(N'2020-06-12T22:34:55.133' AS DateTime), 2, CAST(N'2020-06-12T22:36:05.803' AS DateTime), 2, CAST(N'2020-06-12T22:36:39.920' AS DateTime), 2, CAST(N'2020-06-12T22:37:35.277' AS DateTime), 2, N'300', 0, CAST(N'2020-05-13T17:02:22.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (3, N'Gastrointestinal single block biopsies', 1, N'307', N'kjhhgh sdlkhd skhs ''
jg''dsagjs''d g''dsagj ''adsjg 
ag dsjg dgj
asj
g js gj ga
agj
 ga', 1042, 5, 1, N'ttttt', N'', N'', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_003_061220202336PM.pdf', CAST(N'2020-06-12T23:34:05.097' AS DateTime), 2, CAST(N'2020-06-12T23:34:39.020' AS DateTime), 2, CAST(N'2020-06-12T23:35:02.010' AS DateTime), 2, CAST(N'2020-06-12T23:35:59.843' AS DateTime), 2, N'307', 0, CAST(N'2020-05-13T17:02:22.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (4, N'Gastrointestinal single block biopsies', 1, N'300', N'', 1042, 5, 1, N'IIIISSS', N'', N'', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_004_061220202351PM.pdf', CAST(N'2020-06-12T23:48:11.800' AS DateTime), 2, CAST(N'2020-06-12T23:48:52.753' AS DateTime), 2, CAST(N'2020-06-12T23:49:15.967' AS DateTime), 2, CAST(N'2020-06-12T23:51:04.423' AS DateTime), 2, N'300', 0, CAST(N'2020-05-13T17:02:22.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (5, N'Gastrointestinal single block biopsies', 1, N'300', N'', 1042, 5, 1, N'IUIHIHUH', N'', N'', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_005_121820201737PM.pdf', CAST(N'2020-06-16T14:30:04.817' AS DateTime), 2, CAST(N'2020-06-16T14:30:52.223' AS DateTime), 2, CAST(N'2020-06-16T14:32:16.750' AS DateTime), 2, CAST(N'2020-12-18T17:37:17.847' AS DateTime), 2, N'300', 0, CAST(N'2020-12-18T17:37:17.847' AS DateTime), 1039, 0)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (6, N'Gastrointestinal single block biopsies', 1, N'309', N'', 1045, 5, 1, N'rtedt', N'', N'', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_006_061620201639PM.pdf', CAST(N'2020-06-16T16:29:48.170' AS DateTime), 2, CAST(N'2020-06-16T16:38:07.333' AS DateTime), 2, CAST(N'2020-06-16T16:38:44.740' AS DateTime), 2, CAST(N'2020-06-16T16:39:45.857' AS DateTime), 2, N'309', 1, CAST(N'2020-05-13T17:02:22.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (7, N'Gastrointestinal multiple block biopsies', 1, N'450', N'', 1042, 5, 1, N'UIUIUU', N'', N'', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_007_121820201751PM.pdf', CAST(N'2020-06-20T12:33:19.167' AS DateTime), 2, CAST(N'2020-06-20T13:27:12.637' AS DateTime), 2, CAST(N'2020-06-20T13:27:53.677' AS DateTime), 2, CAST(N'2020-12-18T17:51:20.633' AS DateTime), 2, N'450', 0, CAST(N'2020-12-18T17:51:20.633' AS DateTime), 1039, 0)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (8, N'Gastrointestinal multiple block biopsies', 1, N'4500', N'desd', 1047, 5, 1, N'Sample ', N'Sample Code899', N'Sample Type', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_008_012820211552PM.pdf', CAST(N'2020-10-30T17:03:18.417' AS DateTime), 2, CAST(N'2020-10-30T18:03:36.027' AS DateTime), 2, CAST(N'2020-10-30T18:03:54.990' AS DateTime), 2, CAST(N'2021-01-28T15:52:30.800' AS DateTime), 2, N'4500', 0, CAST(N'2021-01-28T15:52:30.800' AS DateTime), NULL, 0)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (9, N'Gastrointestinal multiple block biopsies', 1, N'45', N'gfgg', 1042, 4, 1, N'Sample ', N'Sample Code', N'Sample Type', 0, NULL, CAST(N'2020-11-02T13:57:59.407' AS DateTime), 2, CAST(N'2020-11-02T13:58:39.407' AS DateTime), 2, CAST(N'2021-01-14T22:25:40.363' AS DateTime), 2, NULL, NULL, N'45', NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (10, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1045, 5, 1, N'xsadsad', N'Sample Code', N'Sample Type', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_010_112720201723PM.pdf', CAST(N'2020-11-27T17:21:20.627' AS DateTime), 2, CAST(N'2020-11-27T17:21:53.930' AS DateTime), 2, CAST(N'2020-11-27T17:22:21.117' AS DateTime), 2, CAST(N'2020-11-27T17:23:12.053' AS DateTime), 2, N'30', 0, CAST(N'2020-11-27T17:23:12.053' AS DateTime), NULL, NULL)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (11, N'Gastrointestinal single block biopsies', 1, N'30.50', N'', 1049, 5, 1, N'Sample ', N'Sample Code', N'Sample Type', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_011_112720201741PM.pdf', CAST(N'2020-11-27T17:39:01.643' AS DateTime), 1048, CAST(N'2020-11-27T17:39:37.917' AS DateTime), 2, CAST(N'2020-11-27T17:40:28.597' AS DateTime), 2, CAST(N'2020-11-27T17:41:28.297' AS DateTime), 2, N'30.50', 0, CAST(N'2020-11-27T17:41:28.297' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (12, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (13, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (14, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (15, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (16, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (17, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (18, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (19, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (20, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (21, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (22, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (23, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (24, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (25, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (26, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (27, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (28, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (29, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (30, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (31, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (32, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (33, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (34, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (35, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (36, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (37, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (38, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (39, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (40, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (41, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1049, 5, 1, N'ff', N'ff', N'ff', 1, N'https://lgpathlabfiles.indouklabs.com/MyData_RajLab/TestFiles/TestDetail_012_120720202238PM.pdf', CAST(N'2020-12-07T22:35:51.420' AS DateTime), 1048, CAST(N'2020-12-07T22:37:21.137' AS DateTime), 2, CAST(N'2020-12-07T22:38:02.717' AS DateTime), 2, CAST(N'2020-12-07T22:38:53.650' AS DateTime), 2, N'30', 1, CAST(N'2020-12-07T22:38:53.650' AS DateTime), NULL, 1)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (42, N'Gastrointestinal multiple block biopsies', 1, N'45', N'', 1042, 4, 1, N'20R20663', N'', N'', 0, NULL, CAST(N'2020-12-10T22:17:13.793' AS DateTime), 2, CAST(N'2020-12-18T12:18:01.913' AS DateTime), 2, CAST(N'2021-01-29T12:39:47.140' AS DateTime), 2, NULL, NULL, N'45', NULL, NULL, 0, NULL)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (43, N'Gastrointestinal single block biopsies', 1, N'30.9', N'', 1042, 3, 1, N'20R20663', N'Sample Code', N'Sample Type', 0, NULL, CAST(N'2020-12-18T13:05:02.533' AS DateTime), 2, CAST(N'2020-12-18T13:05:46.757' AS DateTime), 2, NULL, NULL, NULL, NULL, N'30.9', NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (44, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1042, 3, 1, N'Sample ', N'Sample Code', N'Sample Type', 0, NULL, CAST(N'2020-12-18T13:18:48.897' AS DateTime), 2, CAST(N'2020-12-18T13:19:29.593' AS DateTime), 2, NULL, NULL, NULL, NULL, N'30', NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (45, N'Gastrointestinal single block biopsies', 1, N'30', N'', 1045, 3, 1, N'Sample ', N'', N'', 0, NULL, CAST(N'2020-12-18T13:25:51.823' AS DateTime), 2, CAST(N'2020-12-18T13:26:48.190' AS DateTime), 2, NULL, NULL, NULL, NULL, N'30', NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (46, N'Gastrointestinal multiple block biopsies', 1, N'45', N'', 1042, 2, NULL, NULL, NULL, NULL, 0, NULL, CAST(N'2020-12-18T14:49:48.403' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL, NULL, N'45', NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Cl_Test] ([TestID], [TestName], [IsSampleRequired], [ComplaintHistory], [Description], [PatientUserID], [TestStatusID], [IsSampleCollected], [SampleLabel], [SampleCode], [SampleType], [IsPublish], [PdfLink], [TestCreatedDate], [TestCreatedBy], [SampleCollectionDate], [SampleCollectionBy], [AnalysisDate], [AnalysisBy], [ConclusionDate], [ConclusionBy], [Cost], [IsInvoiceGenerated], [AurthorizeDate], [ExternalConsultantBy], [IsTranscribed]) VALUES (47, N'Gastrointestinal multiple block biopsies', 1, N'45', N'', 1042, 3, 1, N'Sample ', N'Sample Code', N'', 0, NULL, CAST(N'2021-01-29T12:02:53.117' AS DateTime), 2, CAST(N'2021-01-29T12:09:17.680' AS DateTime), 2, NULL, NULL, NULL, NULL, N'45', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Cl_Test] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_TestAttachmentType] ON 

INSERT [dbo].[Tbl_Cl_TestAttachmentType] ([TestAttachmentTypeID], [Name], [Description]) VALUES (1, N'Sample Collection', NULL)
INSERT [dbo].[Tbl_Cl_TestAttachmentType] ([TestAttachmentTypeID], [Name], [Description]) VALUES (2, N'Analysis Detail', NULL)
INSERT [dbo].[Tbl_Cl_TestAttachmentType] ([TestAttachmentTypeID], [Name], [Description]) VALUES (3, N'Report Conclusion', NULL)
INSERT [dbo].[Tbl_Cl_TestAttachmentType] ([TestAttachmentTypeID], [Name], [Description]) VALUES (4, N'Supplementary Report', NULL)
INSERT [dbo].[Tbl_Cl_TestAttachmentType] ([TestAttachmentTypeID], [Name], [Description]) VALUES (5, N'Test Creation', NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Cl_TestAttachmentType] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_TestConclusion] ON 

INSERT [dbo].[Tbl_Cl_TestConclusion] ([TestConclusionID], [TestReportTypeID], [TestID], [SpecimenDetails], [ClinicalDetails], [Microscopy], [Macroscopy], [Conclusion], [SnomedCoding], [SampleDescription], [Report], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, 3, 1, N'Radiologu Test', N'Clinicn tets', NULL, NULL, N'Cons curjbj', NULL, N'Area test', N'Test report', 2, CAST(N'2020-06-12T19:11:25.267' AS DateTime), 2, CAST(N'2020-06-12T19:11:36.187' AS DateTime))
INSERT [dbo].[Tbl_Cl_TestConclusion] ([TestConclusionID], [TestReportTypeID], [TestID], [SpecimenDetails], [ClinicalDetails], [Microscopy], [Macroscopy], [Conclusion], [SnomedCoding], [SampleDescription], [Report], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, 2, 2, N'ffff', N'fff', NULL, NULL, N'fff', NULL, N'fff', N'ff', 2, CAST(N'2020-06-12T22:37:22.327' AS DateTime), 2, CAST(N'2020-06-12T22:37:35.340' AS DateTime))
INSERT [dbo].[Tbl_Cl_TestConclusion] ([TestConclusionID], [TestReportTypeID], [TestID], [SpecimenDetails], [ClinicalDetails], [Microscopy], [Macroscopy], [Conclusion], [SnomedCoding], [SampleDescription], [Report], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, 5, 3, N'blood', N'blood', N'', NULL, N'blood', NULL, N'blood', N'blood', 2, CAST(N'2020-06-12T23:35:35.183' AS DateTime), 2, CAST(N'2020-06-12T23:35:59.857' AS DateTime))
INSERT [dbo].[Tbl_Cl_TestConclusion] ([TestConclusionID], [TestReportTypeID], [TestID], [SpecimenDetails], [ClinicalDetails], [Microscopy], [Macroscopy], [Conclusion], [SnomedCoding], [SampleDescription], [Report], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, 4, 4, N'ff', N'tr3wrew', NULL, NULL, N'ewrewr', NULL, N'erewrewr', N'ewrewr', 2, CAST(N'2020-06-12T23:50:53.847' AS DateTime), 2, CAST(N'2020-06-12T23:51:04.433' AS DateTime))
INSERT [dbo].[Tbl_Cl_TestConclusion] ([TestConclusionID], [TestReportTypeID], [TestID], [SpecimenDetails], [ClinicalDetails], [Microscopy], [Macroscopy], [Conclusion], [SnomedCoding], [SampleDescription], [Report], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, 3, 5, N'fgfdggffg
this is seconf linrtj
this, is gorfn
this ois slk
ttthhhjh', N'gfgg', NULL, NULL, N'gfgfd', NULL, N'fdg', N'gfgfdd', 1039, CAST(N'2020-06-16T16:06:50.043' AS DateTime), 2, CAST(N'2020-12-18T17:37:17.923' AS DateTime))
INSERT [dbo].[Tbl_Cl_TestConclusion] ([TestConclusionID], [TestReportTypeID], [TestID], [SpecimenDetails], [ClinicalDetails], [Microscopy], [Macroscopy], [Conclusion], [SnomedCoding], [SampleDescription], [Report], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, 2, 6, N'ddd', N'ddd', NULL, NULL, N'ddd', NULL, N'ddd', N'ddd', 2, CAST(N'2020-06-16T16:39:23.543' AS DateTime), 2, CAST(N'2020-06-16T16:39:45.880' AS DateTime))
INSERT [dbo].[Tbl_Cl_TestConclusion] ([TestConclusionID], [TestReportTypeID], [TestID], [SpecimenDetails], [ClinicalDetails], [Microscopy], [Macroscopy], [Conclusion], [SnomedCoding], [SampleDescription], [Report], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (8, 1, 8, N'vchg', N'gfhg', N'gfh', N'gfhg', N'ghgf', N'gfh', NULL, NULL, 2, CAST(N'2020-10-30T17:41:03.757' AS DateTime), 2, CAST(N'2021-01-28T15:52:32.433' AS DateTime))
INSERT [dbo].[Tbl_Cl_TestConclusion] ([TestConclusionID], [TestReportTypeID], [TestID], [SpecimenDetails], [ClinicalDetails], [Microscopy], [Macroscopy], [Conclusion], [SnomedCoding], [SampleDescription], [Report], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (9, 1, 10, N'gg', N'g', N'g', N'gg', N'g', N'g', NULL, NULL, 2, CAST(N'2020-11-27T17:22:56.267' AS DateTime), 2, CAST(N'2020-11-27T17:23:12.077' AS DateTime))
INSERT [dbo].[Tbl_Cl_TestConclusion] ([TestConclusionID], [TestReportTypeID], [TestID], [SpecimenDetails], [ClinicalDetails], [Microscopy], [Macroscopy], [Conclusion], [SnomedCoding], [SampleDescription], [Report], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (10, 1, 11, N'ss', N'ss', N'ss', N'ss', N'dss', N'ss', NULL, NULL, 2, CAST(N'2020-11-27T17:41:12.960' AS DateTime), 2, CAST(N'2020-11-27T17:41:28.303' AS DateTime))
INSERT [dbo].[Tbl_Cl_TestConclusion] ([TestConclusionID], [TestReportTypeID], [TestID], [SpecimenDetails], [ClinicalDetails], [Microscopy], [Macroscopy], [Conclusion], [SnomedCoding], [SampleDescription], [Report], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (11, 1, 12, N'a)asdf <br/> b)ghjk', N'w', N'ded', N'w', N'dd`', N'ff', NULL, NULL, 2, CAST(N'2020-12-07T22:38:53.770' AS DateTime), NULL, NULL)
INSERT [dbo].[Tbl_Cl_TestConclusion] ([TestConclusionID], [TestReportTypeID], [TestID], [SpecimenDetails], [ClinicalDetails], [Microscopy], [Macroscopy], [Conclusion], [SnomedCoding], [SampleDescription], [Report], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (12, 1, 7, N'rehjjefhdfhjdh
jrhkjhf
hkjhkjfd
jkjj
', N'jjj', N'jj', N'jjj', N'jjj', N'dfkjgklfd', NULL, NULL, 2, CAST(N'2020-12-18T17:41:12.203' AS DateTime), 2, CAST(N'2020-12-18T17:51:20.640' AS DateTime))
SET IDENTITY_INSERT [dbo].[Tbl_Cl_TestConclusion] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_TestInvestigation] ON 

INSERT [dbo].[Tbl_Cl_TestInvestigation] ([InvestigationID], [InvestigationName], [Value], [Range], [InvestigationResult], [ExtraWorkID], [TestID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'v', N'v', N'v', N'v', NULL, 1, 2, CAST(N'2020-06-12T19:10:35.677' AS DateTime), NULL, NULL)
INSERT [dbo].[Tbl_Cl_TestInvestigation] ([InvestigationID], [InvestigationName], [Value], [Range], [InvestigationResult], [ExtraWorkID], [TestID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'n', N'n', N'n', N'n', NULL, 2, 2, CAST(N'2020-06-12T22:36:40.033' AS DateTime), NULL, NULL)
INSERT [dbo].[Tbl_Cl_TestInvestigation] ([InvestigationID], [InvestigationName], [Value], [Range], [InvestigationResult], [ExtraWorkID], [TestID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'1', N'1', N'1', N'1', NULL, 3, 2, CAST(N'2020-06-12T23:35:02.027' AS DateTime), NULL, NULL)
INSERT [dbo].[Tbl_Cl_TestInvestigation] ([InvestigationID], [InvestigationName], [Value], [Range], [InvestigationResult], [ExtraWorkID], [TestID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'cc', N'cc', N'cc', N'cc', NULL, 4, 2, CAST(N'2020-06-12T23:49:15.977' AS DateTime), NULL, NULL)
INSERT [dbo].[Tbl_Cl_TestInvestigation] ([InvestigationID], [InvestigationName], [Value], [Range], [InvestigationResult], [ExtraWorkID], [TestID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'ss', N'ss', N'ss', N'ss', 1, 4, 2, CAST(N'2020-06-12T23:49:59.400' AS DateTime), NULL, NULL)
INSERT [dbo].[Tbl_Cl_TestInvestigation] ([InvestigationID], [InvestigationName], [Value], [Range], [InvestigationResult], [ExtraWorkID], [TestID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, N'ff', N'ff', N'ff', N'ff', NULL, 5, 2, CAST(N'2020-06-16T14:32:16.767' AS DateTime), NULL, NULL)
INSERT [dbo].[Tbl_Cl_TestInvestigation] ([InvestigationID], [InvestigationName], [Value], [Range], [InvestigationResult], [ExtraWorkID], [TestID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, N'er', N'er', N'rre', N'rr', 2, 5, 2, CAST(N'2020-06-16T15:07:48.490' AS DateTime), NULL, NULL)
INSERT [dbo].[Tbl_Cl_TestInvestigation] ([InvestigationID], [InvestigationName], [Value], [Range], [InvestigationResult], [ExtraWorkID], [TestID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (8, N'eeee', N'eee', N'eee', N'eee', NULL, 6, 2, CAST(N'2020-06-16T16:38:44.757' AS DateTime), NULL, NULL)
INSERT [dbo].[Tbl_Cl_TestInvestigation] ([InvestigationID], [InvestigationName], [Value], [Range], [InvestigationResult], [ExtraWorkID], [TestID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (9, N'v', N'v', N'v', N'v', NULL, 7, 2, CAST(N'2020-06-20T13:27:53.690' AS DateTime), NULL, NULL)
INSERT [dbo].[Tbl_Cl_TestInvestigation] ([InvestigationID], [InvestigationName], [Value], [Range], [InvestigationResult], [ExtraWorkID], [TestID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (10, N'SSS', N'DDSDGFFF', N'DD', N'DD', NULL, 8, 2, CAST(N'2020-10-30T17:05:12.293' AS DateTime), NULL, NULL)
INSERT [dbo].[Tbl_Cl_TestInvestigation] ([InvestigationID], [InvestigationName], [Value], [Range], [InvestigationResult], [ExtraWorkID], [TestID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (11, N'DDD', N'DSSA', N'SSS', N'SS', NULL, 8, 2, CAST(N'2020-10-30T17:05:12.310' AS DateTime), NULL, NULL)
INSERT [dbo].[Tbl_Cl_TestInvestigation] ([InvestigationID], [InvestigationName], [Value], [Range], [InvestigationResult], [ExtraWorkID], [TestID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (12, N'SS', N'SER', N'RR', N'DED', NULL, 8, 2, CAST(N'2020-10-30T17:05:12.313' AS DateTime), NULL, NULL)
INSERT [dbo].[Tbl_Cl_TestInvestigation] ([InvestigationID], [InvestigationName], [Value], [Range], [InvestigationResult], [ExtraWorkID], [TestID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (13, N'sda', N'11', N'11', N'11', NULL, 10, 2, CAST(N'2020-11-27T17:22:21.170' AS DateTime), NULL, NULL)
INSERT [dbo].[Tbl_Cl_TestInvestigation] ([InvestigationID], [InvestigationName], [Value], [Range], [InvestigationResult], [ExtraWorkID], [TestID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (14, N'dd', N'dd', N'dd', N'dd', NULL, 11, 2, CAST(N'2020-11-27T17:40:28.617' AS DateTime), NULL, NULL)
INSERT [dbo].[Tbl_Cl_TestInvestigation] ([InvestigationID], [InvestigationName], [Value], [Range], [InvestigationResult], [ExtraWorkID], [TestID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (15, N'f', N'rf', N'f', N'f', NULL, 12, 2, CAST(N'2020-12-07T22:38:02.757' AS DateTime), NULL, NULL)
INSERT [dbo].[Tbl_Cl_TestInvestigation] ([InvestigationID], [InvestigationName], [Value], [Range], [InvestigationResult], [ExtraWorkID], [TestID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (16, N'c', N'x', N'x', N'x', NULL, 9, 2, CAST(N'2020-12-18T14:48:41.440' AS DateTime), NULL, NULL)
INSERT [dbo].[Tbl_Cl_TestInvestigation] ([InvestigationID], [InvestigationName], [Value], [Range], [InvestigationResult], [ExtraWorkID], [TestID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (17, N'test', N'teat', N'etst', N'tet', NULL, 42, 2, CAST(N'2021-01-29T12:39:47.670' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Cl_TestInvestigation] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_TestRate] ON 

INSERT [dbo].[Tbl_Cl_TestRate] ([ID], [TestName], [Cost]) VALUES (1, N'Gastrointestinal single block biopsies', 30)
INSERT [dbo].[Tbl_Cl_TestRate] ([ID], [TestName], [Cost]) VALUES (2, N'Gastrointestinal multiple block biopsies', 45)
SET IDENTITY_INSERT [dbo].[Tbl_Cl_TestRate] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_TestReportType] ON 

INSERT [dbo].[Tbl_Cl_TestReportType] ([TestReportTypeID], [Name], [Description]) VALUES (1, N'Histopathology', NULL)
INSERT [dbo].[Tbl_Cl_TestReportType] ([TestReportTypeID], [Name], [Description]) VALUES (2, N'Microbiology', NULL)
INSERT [dbo].[Tbl_Cl_TestReportType] ([TestReportTypeID], [Name], [Description]) VALUES (3, N'Radiology ', NULL)
INSERT [dbo].[Tbl_Cl_TestReportType] ([TestReportTypeID], [Name], [Description]) VALUES (4, N'Cytopathology', NULL)
INSERT [dbo].[Tbl_Cl_TestReportType] ([TestReportTypeID], [Name], [Description]) VALUES (5, N'Blood Sciences', NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Cl_TestReportType] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_TestStatus] ON 

INSERT [dbo].[Tbl_Cl_TestStatus] ([TestStatusID], [StatusName], [Description]) VALUES (1, N'On Receptionist Plate', NULL)
INSERT [dbo].[Tbl_Cl_TestStatus] ([TestStatusID], [StatusName], [Description]) VALUES (2, N'On Lab Technician Plate', NULL)
INSERT [dbo].[Tbl_Cl_TestStatus] ([TestStatusID], [StatusName], [Description]) VALUES (3, N'On Clinical Lab Scientist Plate', NULL)
INSERT [dbo].[Tbl_Cl_TestStatus] ([TestStatusID], [StatusName], [Description]) VALUES (4, N'On Clinical Lab Doctor Plate', NULL)
INSERT [dbo].[Tbl_Cl_TestStatus] ([TestStatusID], [StatusName], [Description]) VALUES (5, N'Completed', NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Cl_TestStatus] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Cl_TestSupplementReport] ON 

INSERT [dbo].[Tbl_Cl_TestSupplementReport] ([TestSupplementReportID], [TestReportTypeID], [TestID], [SpecimenDetails], [ClinicalDetails], [Microscopy], [Macroscopy], [SupplementReportConclusion], [SnomedCoding], [SampleDescription], [Report], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsPublished]) VALUES (1, 1, 1, N'test', NULL, N'test', NULL, N'test', NULL, NULL, NULL, 2, CAST(N'2020-06-12T22:12:53.513' AS DateTime), 2, CAST(N'2020-06-12T22:13:07.640' AS DateTime), 1)
INSERT [dbo].[Tbl_Cl_TestSupplementReport] ([TestSupplementReportID], [TestReportTypeID], [TestID], [SpecimenDetails], [ClinicalDetails], [Microscopy], [Macroscopy], [SupplementReportConclusion], [SnomedCoding], [SampleDescription], [Report], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsPublished]) VALUES (2, 1, 7, N'a)fe
b)sdgfdj', NULL, N'a)fe
b)sdgfdj', NULL, N'a)fe
b)sdgfdj', NULL, NULL, NULL, 2, CAST(N'2020-12-22T23:58:35.263' AS DateTime), NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Tbl_Cl_TestSupplementReport] OFF
ALTER TABLE [dbo].[Tbl_Cl_Test] ADD  DEFAULT ((0)) FOR [IsTranscribed]
GO
USE [master]
GO
ALTER DATABASE [LabSystemClient_RajLab] SET  READ_WRITE 
GO
