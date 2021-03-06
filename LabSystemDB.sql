USE [master]
GO
/****** Object:  Database [LabSystemDB]    Script Date: 3/4/2021 1:17:31 PM ******/
CREATE DATABASE [LabSystemDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LabSystemDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS2017\MSSQL\DATA\LabSystemDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LabSystemDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS2017\MSSQL\DATA\LabSystemDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [LabSystemDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LabSystemDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LabSystemDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LabSystemDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LabSystemDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LabSystemDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LabSystemDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [LabSystemDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LabSystemDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LabSystemDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LabSystemDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LabSystemDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LabSystemDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LabSystemDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LabSystemDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LabSystemDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LabSystemDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LabSystemDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LabSystemDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LabSystemDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LabSystemDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LabSystemDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LabSystemDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LabSystemDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LabSystemDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LabSystemDB] SET  MULTI_USER 
GO
ALTER DATABASE [LabSystemDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LabSystemDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LabSystemDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LabSystemDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [LabSystemDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LabSystemDB] SET QUERY_STORE = OFF
GO
USE [LabSystemDB]
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
USE [LabSystemDB]
GO
/****** Object:  Table [dbo].[Tbl_Client]    Script Date: 3/4/2021 1:17:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Client](
	[ClientDetailID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](max) NULL,
	[Subdomain] [varchar](max) NULL,
	[PlanID] [int] NULL,
	[PlanDuration] [int] NULL,
	[TotalLicenseCost] [decimal](18, 2) NULL,
	[PriceUnit] [varchar](50) NULL,
	[STandDBprovdiderID] [int] NULL,
	[InvoiceID] [int] NULL,
	[InvoicePDFLink] [varchar](max) NULL,
	[IsDBCreated] [bit] NULL,
	[IsDbError] [bit] NULL,
	[DBErrorDetail] [varchar](max) NULL,
	[IsStorageConfigured] [bit] NULL,
	[IsStorageError] [bit] NULL,
	[StorageErrorDetail] [varchar](max) NULL,
	[LastActionOnDB] [datetime] NULL,
	[LastActionOnStorage] [datetime] NULL,
	[LogoImgLink] [varchar](max) NULL,
	[BackgroundImgLink] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Tbl_Client] PRIMARY KEY CLUSTERED 
(
	[ClientDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_ClientParameter]    Script Date: 3/4/2021 1:17:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_ClientParameter](
	[ClientParameterID] [int] IDENTITY(1,1) NOT NULL,
	[ParameterID] [int] NULL,
	[ParameterValue] [varchar](max) NULL,
	[ClientDetailID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Tbl_ClientParameter] PRIMARY KEY CLUSTERED 
(
	[ClientParameterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Consultant]    Script Date: 3/4/2021 1:17:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Consultant](
	[ConsultantID] [int] IDENTITY(1,1) NOT NULL,
	[SpecialisationAreas] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Tbl_Consultant] PRIMARY KEY CLUSTERED 
(
	[ConsultantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_ForgetPassword]    Script Date: 3/4/2021 1:17:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_ForgetPassword](
	[ForgetPasswordID] [int] IDENTITY(1,1) NOT NULL,
	[UniqueCode] [varchar](max) NULL,
	[SystemUserID] [int] NULL,
	[ExpiresInMinutes] [int] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Tbl_ForgetPassword] PRIMARY KEY CLUSTERED 
(
	[ForgetPasswordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_IncorrectPasswordAttempt]    Script Date: 3/4/2021 1:17:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_IncorrectPasswordAttempt](
	[IncorrectPasswordID] [int] IDENTITY(1,1) NOT NULL,
	[SystemUserID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[Password] [varchar](max) NULL,
	[IsInclude] [bit] NULL,
 CONSTRAINT [PK_Tbl_IncorrectPasswordAttempt] PRIMARY KEY CLUSTERED 
(
	[IncorrectPasswordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Menu]    Script Date: 3/4/2021 1:17:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Menu](
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
 CONSTRAINT [PK_Tbl_Menu] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_MenuAssignment]    Script Date: 3/4/2021 1:17:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_MenuAssignment](
	[AssignmentID] [int] IDENTITY(1,1) NOT NULL,
	[MenuID] [int] NULL,
	[RoleID] [int] NULL,
	[EmployeeID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Tbl_MenuAssignment] PRIMARY KEY CLUSTERED 
(
	[AssignmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Notification]    Script Date: 3/4/2021 1:17:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Notification](
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
 CONSTRAINT [PK_Tbl_Notification] PRIMARY KEY CLUSTERED 
(
	[NotificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_OpinionRequest]    Script Date: 3/4/2021 1:17:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_OpinionRequest](
	[OpinionRequestID] [int] IDENTITY(1,1) NOT NULL,
	[PatientDetails] [varchar](max) NULL,
	[SampleAnalysisDetails] [varchar](max) NULL,
	[OpinionNeededDescription] [varchar](max) NULL,
	[ConsultantOpinion] [varchar](max) NULL,
	[ClientOpinionRequestID] [int] NULL,
	[ClientID] [int] NULL,
	[StatusID] [int] NULL,
	[AssignedTo] [int] NULL,
	[CommentForRequester] [varchar](max) NULL,
	[CommentForConsultant] [varchar](max) NULL,
	[Payment] [decimal](10, 2) NULL,
	[PaymentReceiptPdfLink] [varchar](max) NULL,
	[RequestCreatedDate] [datetime] NULL,
	[RequestCreatedBy] [int] NULL,
	[IsPublish] [bit] NULL,
	[NewActionDate] [datetime] NULL,
	[NewActionBy] [int] NULL,
	[NewActionStatusID] [int] NULL,
	[NewActionComments] [varchar](max) NULL,
	[PendingActionBy] [int] NULL,
	[PendingActionDate] [datetime] NULL,
	[PendingActionComments] [varchar](max) NULL,
 CONSTRAINT [PK_Tbl_OpinionRequest] PRIMARY KEY CLUSTERED 
(
	[OpinionRequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_OpinionRequestStatus]    Script Date: 3/4/2021 1:17:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_OpinionRequestStatus](
	[OpinionRequestStatusID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_Tbl_OpinionRequestStatus] PRIMARY KEY CLUSTERED 
(
	[OpinionRequestStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Plan]    Script Date: 3/4/2021 1:17:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Plan](
	[PlanID] [int] IDENTITY(1,1) NOT NULL,
	[PlanName] [varchar](max) NULL,
	[PlanDescription] [varchar](max) NULL,
	[PlanDetail] [varchar](max) NULL,
	[PlanCost] [decimal](18, 2) NULL,
	[PlanStatus] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Tbl_Plan] PRIMARY KEY CLUSTERED 
(
	[PlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_ProviderParameterMapping]    Script Date: 3/4/2021 1:17:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_ProviderParameterMapping](
	[ProviderParameterMappingID] [int] IDENTITY(1,1) NOT NULL,
	[ProviderID] [int] NULL,
	[ParameterID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Tbl_ProviderParameterMapping] PRIMARY KEY CLUSTERED 
(
	[ProviderParameterMappingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_ProviderParamter]    Script Date: 3/4/2021 1:17:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_ProviderParamter](
	[ParameterID] [int] IDENTITY(1,1) NOT NULL,
	[ParameterName] [varchar](400) NULL,
	[Type] [varchar](50) NULL,
	[IsRequired] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Tbl_ProviderParamter] PRIMARY KEY CLUSTERED 
(
	[ParameterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Role]    Script Date: 3/4/2021 1:17:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](400) NULL,
	[Description] [varchar](400) NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Tbl_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_RoleMapping]    Script Date: 3/4/2021 1:17:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_RoleMapping](
	[RoleMappingID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NULL,
	[UserID] [int] NULL,
	[IsDefault] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Tbl_RoleMapping] PRIMARY KEY CLUSTERED 
(
	[RoleMappingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_SalesAndContactQuery]    Script Date: 3/4/2021 1:17:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_SalesAndContactQuery](
	[SalesAndContactQueryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Email] [varchar](max) NULL,
	[ContactNo] [varchar](max) NULL,
	[Subject] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[TypeID] [int] NULL,
	[StatusID] [int] NULL,
	[RequestCreatedDate] [datetime] NULL,
	[NewActionBy] [int] NULL,
	[NewActionDate] [datetime] NULL,
	[NewActionStatusID] [int] NULL,
	[NewActionComments] [varchar](max) NULL,
	[PendingActionBy] [int] NULL,
	[PendingActionDate] [datetime] NULL,
	[PendingActionComments] [varchar](max) NULL,
 CONSTRAINT [PK_Tbl_SalesAndContactQuery] PRIMARY KEY CLUSTERED 
(
	[SalesAndContactQueryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_SalesAndContactQueryStatus]    Script Date: 3/4/2021 1:17:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_SalesAndContactQueryStatus](
	[SalesAndContactQueryStatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [varchar](max) NULL,
	[StatusDescription] [varchar](max) NULL,
 CONSTRAINT [PK_Tbl_SalesAndContactQueryStatus] PRIMARY KEY CLUSTERED 
(
	[SalesAndContactQueryStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_SalesAndContactQueryType]    Script Date: 3/4/2021 1:17:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_SalesAndContactQueryType](
	[SalesAndContactQueryTypeID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [varchar](50) NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_Tbl_SalesAndContactQueryType] PRIMARY KEY CLUSTERED 
(
	[SalesAndContactQueryTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_SectionRestriction]    Script Date: 3/4/2021 1:17:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_SectionRestriction](
	[SectionID] [int] IDENTITY(1,1) NOT NULL,
	[SectionSelector] [varchar](max) NULL,
	[MenuID] [int] NULL,
	[EmployeeID] [int] NULL,
	[RoleID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Tbl_SectionRestriction] PRIMARY KEY CLUSTERED 
(
	[SectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_StorageandDBProvider]    Script Date: 3/4/2021 1:17:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_StorageandDBProvider](
	[ProviderID] [int] IDENTITY(1,1) NOT NULL,
	[ProviderName] [varchar](400) NULL,
	[Description] [varchar](400) NULL,
 CONSTRAINT [PK_Tbl_StorageandDBProvider] PRIMARY KEY CLUSTERED 
(
	[ProviderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_SystemUser]    Script Date: 3/4/2021 1:17:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_SystemUser](
	[SystemUserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](250) NULL,
	[Password] [varchar](max) NULL,
	[FirstName] [varchar](max) NULL,
	[MiddleName] [varchar](max) NULL,
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
 CONSTRAINT [PK_Tbl_SystemUser] PRIMARY KEY CLUSTERED 
(
	[SystemUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_SystemUserType]    Script Date: 3/4/2021 1:17:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_SystemUserType](
	[SystemUserTypeID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_Tbl_SystemUserType] PRIMARY KEY CLUSTERED 
(
	[SystemUserTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tbl_Client] ON 

INSERT [dbo].[Tbl_Client] ([ClientDetailID], [CompanyName], [Subdomain], [PlanID], [PlanDuration], [TotalLicenseCost], [PriceUnit], [STandDBprovdiderID], [InvoiceID], [InvoicePDFLink], [IsDBCreated], [IsDbError], [DBErrorDetail], [IsStorageConfigured], [IsStorageError], [StorageErrorDetail], [LastActionOnDB], [LastActionOnStorage], [LogoImgLink], [BackgroundImgLink], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (22, N'RajLab', N'localhost.', 11, 12, CAST(100.00 AS Decimal(18, 2)), N'Rs', 3, 1, N'/ClientsData/Lgpathlab/Invoice.pdf', 1, 0, NULL, 1, 0, NULL, CAST(N'2020-02-02T22:05:13.587' AS DateTime), CAST(N'2020-02-02T22:05:18.803' AS DateTime), N'/ClientsData/Lgpathlab/ClientConfigImages/ClientLogo.png', NULL, CAST(N'2020-02-02T22:04:27.183' AS DateTime), 41, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Client] OFF
SET IDENTITY_INSERT [dbo].[Tbl_ClientParameter] ON 

INSERT [dbo].[Tbl_ClientParameter] ([ClientParameterID], [ParameterID], [ParameterValue], [ClientDetailID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (223, 1, N'VE25102018_BNSE\SQLEXPRESS2017', 22, CAST(N'2020-02-02T22:04:27.200' AS DateTime), 41, NULL, NULL)
INSERT [dbo].[Tbl_ClientParameter] ([ClientParameterID], [ParameterID], [ParameterValue], [ClientDetailID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (224, 2, N'sa', 22, CAST(N'2020-02-02T22:04:27.217' AS DateTime), 41, NULL, NULL)
INSERT [dbo].[Tbl_ClientParameter] ([ClientParameterID], [ParameterID], [ParameterValue], [ClientDetailID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (225, 3, N'pass@123', 22, CAST(N'2020-02-02T22:04:27.217' AS DateTime), 41, NULL, NULL)
INSERT [dbo].[Tbl_ClientParameter] ([ClientParameterID], [ParameterID], [ParameterValue], [ClientDetailID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (226, 4, N'lgpathlabfiles.indouklabs.com', 22, CAST(N'2020-02-02T22:04:27.217' AS DateTime), 41, NULL, NULL)
INSERT [dbo].[Tbl_ClientParameter] ([ClientParameterID], [ParameterID], [ParameterValue], [ClientDetailID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (227, 5, N'Pathlabs', 22, CAST(N'2020-02-02T22:04:27.217' AS DateTime), 41, NULL, NULL)
INSERT [dbo].[Tbl_ClientParameter] ([ClientParameterID], [ParameterID], [ParameterValue], [ClientDetailID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (228, 6, N'Sh@z@m!890', 22, CAST(N'2020-02-02T22:04:27.217' AS DateTime), 41, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_ClientParameter] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Consultant] ON 

INSERT [dbo].[Tbl_Consultant] ([ConsultantID], [SpecialisationAreas], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (15, N'MBBS', CAST(N'2020-02-04T17:58:13.993' AS DateTime), 41, CAST(N'2020-02-05T00:54:11.543' AS DateTime), 41)
INSERT [dbo].[Tbl_Consultant] ([ConsultantID], [SpecialisationAreas], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (16, N'Histopathology', CAST(N'2020-02-05T01:04:30.330' AS DateTime), 1, CAST(N'2020-02-05T01:06:13.107' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Tbl_Consultant] OFF
SET IDENTITY_INSERT [dbo].[Tbl_ForgetPassword] ON 

INSERT [dbo].[Tbl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [SystemUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (3, N'ce419395-b95c-4fea-a157-817065830ea3', 41, 1440, CAST(N'2020-02-02T19:03:18.503' AS DateTime))
INSERT [dbo].[Tbl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [SystemUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (4, N'c3664c06-57da-4aa3-b576-22640f968c1d', 41, 1440, CAST(N'2020-02-02T19:03:50.243' AS DateTime))
INSERT [dbo].[Tbl_ForgetPassword] ([ForgetPasswordID], [UniqueCode], [SystemUserID], [ExpiresInMinutes], [CreatedDate]) VALUES (5, N'b8ad152a-3729-40b2-9c23-ae7eec25be6b', 42, 1440, CAST(N'2020-03-07T11:41:48.203' AS DateTime))
SET IDENTITY_INSERT [dbo].[Tbl_ForgetPassword] OFF
SET IDENTITY_INSERT [dbo].[Tbl_IncorrectPasswordAttempt] ON 

INSERT [dbo].[Tbl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [SystemUserID], [CreatedDate], [Password], [IsInclude]) VALUES (61, 41, CAST(N'2020-02-02T19:02:34.850' AS DateTime), N'VmluYXlhazk1R3VwdGE=', 0)
INSERT [dbo].[Tbl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [SystemUserID], [CreatedDate], [Password], [IsInclude]) VALUES (62, 41, CAST(N'2020-02-02T19:02:41.633' AS DateTime), N'VmluYXlhazk1R3VwdGE=', 0)
INSERT [dbo].[Tbl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [SystemUserID], [CreatedDate], [Password], [IsInclude]) VALUES (63, 41, CAST(N'2020-02-02T19:03:36.257' AS DateTime), N'JDlNZl83cGM=', 0)
INSERT [dbo].[Tbl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [SystemUserID], [CreatedDate], [Password], [IsInclude]) VALUES (64, 41, CAST(N'2020-02-02T19:03:43.257' AS DateTime), N'JDlNZl83cGM=', 0)
INSERT [dbo].[Tbl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [SystemUserID], [CreatedDate], [Password], [IsInclude]) VALUES (65, 41, CAST(N'2020-02-02T21:47:20.430' AS DateTime), N'VmluYXlhazk1R3VwdGE=', 0)
INSERT [dbo].[Tbl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [SystemUserID], [CreatedDate], [Password], [IsInclude]) VALUES (66, 41, CAST(N'2020-02-04T17:56:23.683' AS DateTime), N'VmluYXlha0d1cHRh', 0)
INSERT [dbo].[Tbl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [SystemUserID], [CreatedDate], [Password], [IsInclude]) VALUES (67, 42, CAST(N'2020-03-04T06:10:56.037' AS DateTime), N'VkNadWx6a3VUWGc9', 0)
INSERT [dbo].[Tbl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [SystemUserID], [CreatedDate], [Password], [IsInclude]) VALUES (68, 42, CAST(N'2020-03-04T06:11:48.487' AS DateTime), N'VCZuOS5NeA==', 0)
INSERT [dbo].[Tbl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [SystemUserID], [CreatedDate], [Password], [IsInclude]) VALUES (69, 42, CAST(N'2020-03-04T06:12:55.083' AS DateTime), N'VCZuOS5NeA==', 0)
INSERT [dbo].[Tbl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [SystemUserID], [CreatedDate], [Password], [IsInclude]) VALUES (70, 42, CAST(N'2020-03-07T11:40:49.767' AS DateTime), N'cGl6emFAMTIz', 0)
INSERT [dbo].[Tbl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [SystemUserID], [CreatedDate], [Password], [IsInclude]) VALUES (71, 42, CAST(N'2020-03-07T11:40:56.127' AS DateTime), N'cGl6emFAMTIz', 0)
INSERT [dbo].[Tbl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [SystemUserID], [CreatedDate], [Password], [IsInclude]) VALUES (72, 42, CAST(N'2020-03-07T11:40:56.237' AS DateTime), N'cGl6emFAMTIz', 0)
INSERT [dbo].[Tbl_IncorrectPasswordAttempt] ([IncorrectPasswordID], [SystemUserID], [CreatedDate], [Password], [IsInclude]) VALUES (73, 42, CAST(N'2020-03-07T11:42:13.943' AS DateTime), N'cGl6emFAMTIz', 0)
SET IDENTITY_INSERT [dbo].[Tbl_IncorrectPasswordAttempt] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Menu] ON 

INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, N'Dashboard', N'dashboard', NULL, N'nav-icon i-Bar-Chart', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, N'Clients', N'clients', NULL, N'nav-icon i-Cloud-Computer', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, N'Create Client Account', N'create-clients', 2, N'nav-icon i-Add', NULL, N'/Admin/Client', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (4, N'Active Client Accounts', N'active-clients', 2, N'nav-icon i-Check', NULL, N'/Admin/Client/ActiveClients', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (5, N'Inactive Client Accounts', N'inactive-clients', 2, N'nav-icon i-Close', NULL, N'/Admin/Client/InactiveClients', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (6, N'Employees', N'employees', NULL, N'nav-icon i-Checked-User', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (7, N'Create Employee Account', N'create-employees', 6, N'nav-icon i-Add', NULL, N'/Admin/Employee', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (8, N'Active Employee Accounts', N'active-employees', 6, N'nav-icon i-Check', NULL, N'/Admin/Employee/ActiveEmployees', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (9, N'Inactive Employee Accounts', N'inactive-employees', 6, N'nav-icon i-Close', NULL, N'/Admin/Employee/InactiveEmployees', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (10, N'Consultant Doctors', N'consultantdoctors', NULL, N'nav-icon i-Clinic', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (11, N'Create Consultant Account
', N'create-consultantdoctors', 10, N'nav-icon i-Add', NULL, N'/Admin/Consultant', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (12, N'Active Consultant Accounts', N'active-consultantdoctors', 10, N'nav-icon i-Check', NULL, N'/Admin/Consultant/ActiveConsultants', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (13, N'Inactive Consultant Accounts', N'inactive-consultantdoctors', 10, N'nav-icon i-Close', NULL, N'/Admin/Consultant/InactiveConsultants', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (14, N'2nd Opinion Requests', N'2ndopinions', NULL, N'nav-icon i-Folder-Search', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (15, N'New Requests', N'new-2ndopinions', 14, N'nav-icon i-Add', NULL, N'/Admin/OpinionRequest/NewOpinion', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (16, N'Assigned Requests', N'assigned-2ndopinions', 14, N'nav-icon i-Doctor', NULL, N'/Admin/OpinionRequest/AssignedOpinion', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (17, N'Completed Requests', N'completed-2ndopinions', 14, N'nav-icon i-Checked-User', NULL, N'/Admin/OpinionRequest/CompletedOpinion', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (18, N'Cancelled Requests', N'cancelled-2ndopinions', 14, N'nav-icon i-Close', NULL, N'/Admin/OpinionRequest/CancelledOpinion', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (19, N'Sub-Domains', N'subdomains', NULL, N'nav-icon i-Internet-Explorer', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (20, N'Active Sub-Domains', N'active-subdomains', 19, N'nav-icon i-Check', NULL, N'/Admin/Subdomain/ActiveSubdomains', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (21, N'Inactive Sub-Domains', N'inactive-subdomains', 19, N'nav-icon i-Close', NULL, N'/Admin/Subdomain/InactiveSubdomains', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (22, N'Payments', N'payments', NULL, N'nav-icon i-Money-2', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (23, N'Client License Payments', N'clientlicense-payments', 22, N'nav-icon i-Mail-Money', NULL, N'/Admin/Payment/ClientLicensePayments', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (24, N'Consultant Doctor Payments', N'consultantdoctors-payments', 22, N'nav-icon i-Money1', NULL, N'/Admin/Payment/ConsultantDoctorPayments', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (25, N'Sales & Contact Requests', N'salesandcontact', NULL, N'nav-icon i-Email', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (26, N'New Sales Requests', N'new-salesrequest', 25, N'nav-icon i-Add', NULL, N'/Admin/SalesAndContactRequest/NewSales', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (27, N'Pending Sales Requests', N'pending-salesrequest', 25, N'nav-icon i-Information', NULL, N'/Admin/SalesAndContactRequest/PendingSales', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (28, N'Closed Sales Requests', N'completed-salesrequest', 25, N'nav-icon i-Check', NULL, N'/Admin/SalesAndContactRequest/ClosedSales', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (29, N'New Contact Query', N'new-contactrequest', 25, N'nav-icon i-Add', NULL, N'/Admin/SalesAndContactRequest/NewContact', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (30, N'Pending Contact Query', N'pending-contactrequest', 25, N'nav-icon i-Information', NULL, N'/Admin/SalesAndContactRequest/PendingContact', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (31, N'Closed Contact Query', N'closed-contactrequest', 25, N'nav-icon i-Check', NULL, N'/Admin/SalesAndContactRequest/ClosedContact', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (32, N'Plans Offered', N'plansoffered', NULL, N'nav-icon i-Box-Full', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (33, N'Create Plans', N'create-plansoffered', 32, N'nav-icon i-Add', NULL, N'/Admin/Plan', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (34, N'View Plans', N'view-plansoffered', 32, N'nav-icon i-Check', NULL, N'/Admin/Plan/ActivePlans', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (35, N'Inactive Plans', N'inactive-plansoffered', 32, N'nav-icon i-Close', NULL, N'/Admin/Plan/InactivePlans', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (36, N'Requests', N'consultantrequest', NULL, N'nav-icon i-File-Search', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (37, N'New Requests', N'new-consultantrequests', 36, N'nav-icon i-Add', NULL, N'/Admin/ConsultantRequest/NewRequest', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (38, N'In-Progress Requests', N'progress-consultantrequests', 36, N'nav-icon i-Loading-2', NULL, N'/Admin/ConsultantRequest/PendingRequest', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (39, N'Closed Requests', N'closed-consultantrequests', 36, N'nav-icon i-Check', NULL, N'/Admin/ConsultantRequest/CompletedRequest', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (40, N'Payments', N'consultantpayments', NULL, N'nav-icon i-Money-2', NULL, N'#', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (41, N'Logout', N'NonMenu', NULL, NULL, NULL, N'/Admin/Account/Logout', 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (42, N'MyProfile', N'NonMenu', NULL, NULL, NULL, N'/Admin/Account/MyProfile', 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (43, N'My Dashboard', N'dashboard-my', 1, N'nav-icon i-Bar-Chart', NULL, N'/Admin/Home', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (44, N'My Payments', N'consultantpayment-my', 40, N'nav-icon i-Money-2', NULL, N'/Admin/ConsultantPayment/MyPayments', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Menu] ([MenuID], [MenuName], [Description], [ParentID], [Icon], [ToolTip], [Link], [IsViewable], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (45, N'Create Hospital Account', N'create-hospital', 2, N'nav-icon i-Add', NULL, N'/Admin/Hospital', 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Menu] OFF
SET IDENTITY_INSERT [dbo].[Tbl_MenuAssignment] ON 

INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, 2, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (4, 4, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (5, 5, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (6, 6, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (7, 7, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (8, 8, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (9, 9, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (10, 10, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (11, 11, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (12, 12, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (13, 13, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (14, 14, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (15, 15, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (16, 16, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (17, 17, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (18, 18, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (19, 19, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (20, 20, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (21, 21, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (22, 22, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (23, 23, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (24, 24, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (25, 25, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (26, 26, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (27, 27, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (28, 28, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (29, 29, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (30, 30, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (31, 31, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (32, 32, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (33, 33, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (34, 34, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (35, 35, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (36, 1, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (37, 2, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (38, 3, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (39, 4, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (40, 5, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (41, 6, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (42, 7, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (43, 8, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (44, 9, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (45, 10, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (46, 11, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (47, 12, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (48, 13, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (49, 14, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (50, 15, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (51, 16, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (52, 17, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (53, 18, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (54, 19, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (55, 20, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (56, 21, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (57, 22, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (58, 23, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (59, 24, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (60, 25, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (61, 26, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (62, 27, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (63, 28, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (64, 29, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (65, 30, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (66, 31, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (67, 32, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (68, 33, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (69, 34, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (70, 35, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (71, 1, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (72, 1, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (73, 36, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (74, 37, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (75, 38, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (76, 39, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (77, 40, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (79, 41, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (80, 41, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (81, 41, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (82, 41, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (84, 42, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (85, 42, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (86, 42, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (87, 42, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (89, 2, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (90, 4, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (91, 5, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (92, 6, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (93, 8, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (94, 9, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (95, 10, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (96, 12, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (97, 13, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (98, 14, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (99, 15, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (100, 16, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (101, 17, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (102, 18, 3, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (103, 19, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (104, 20, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (105, 21, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (106, 22, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (107, 23, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (108, 24, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (109, 25, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (110, 26, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (111, 27, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (112, 28, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (113, 29, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (114, 30, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (115, 31, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (116, 32, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (117, 34, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (118, 35, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (119, 41, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (120, 42, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (121, 43, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (122, 43, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (123, 43, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (124, 43, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_MenuAssignment] ([AssignmentID], [MenuID], [RoleID], [EmployeeID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (125, 44, 4, 0, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_MenuAssignment] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Notification] ON 

INSERT [dbo].[Tbl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (79, N'Account', N'your account has been created', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/Admin/Account/MyProfile', CAST(N'2020-02-02T15:51:35.273' AS DateTime), 1, CAST(N'2020-03-14T01:17:10.890' AS DateTime), 41, 1)
INSERT [dbo].[Tbl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (80, N'Account', N'your account has been created', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/Admin/Account/MyProfile', CAST(N'2020-02-02T19:05:38.057' AS DateTime), 0, NULL, 42, 41)
INSERT [dbo].[Tbl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (81, N'Account', N'your account has been created', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/Admin/Account/MyProfile', CAST(N'2020-02-04T17:58:14.043' AS DateTime), 1, CAST(N'2020-02-05T01:36:52.420' AS DateTime), 44, 41)
INSERT [dbo].[Tbl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (82, N'2nd Opinion Request', N'Request ID # 13', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/Admin/OpinionRequest/NewOpinion', CAST(N'2020-02-05T00:56:42.990' AS DateTime), 1, CAST(N'2020-02-05T01:31:59.220' AS DateTime), 1, -9)
INSERT [dbo].[Tbl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (83, N'2nd Opinion Request', N'Request ID # 14', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/Admin/OpinionRequest/NewOpinion', CAST(N'2020-02-05T00:57:15.873' AS DateTime), 1, CAST(N'2020-02-05T01:31:59.220' AS DateTime), 1, -3)
INSERT [dbo].[Tbl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (84, N'Account', N'your account has been created', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/Admin/Account/MyProfile', CAST(N'2020-02-05T01:04:30.330' AS DateTime), 0, NULL, 45, 1)
INSERT [dbo].[Tbl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (85, N'Request ID #014', N'Opinion Request Assigned', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/Admin/ConsultantRequest/NewRequest', CAST(N'2020-02-05T01:08:02.763' AS DateTime), 0, NULL, 45, 1)
INSERT [dbo].[Tbl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (86, N'Request ID #014', N'Opinion Request Comment From System Admin', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/Admin/ConsultantRequest/NewRequest', CAST(N'2020-02-05T01:08:02.763' AS DateTime), 0, NULL, 45, 1)
INSERT [dbo].[Tbl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (87, N'2nd Opinion Request', N'Request ID # 15', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/Admin/OpinionRequest/NewOpinion', CAST(N'2020-03-06T14:37:42.417' AS DateTime), 1, CAST(N'2020-03-14T05:11:43.623' AS DateTime), 1, -9)
INSERT [dbo].[Tbl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (88, N'Inquiry Request', N'Click here to view request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/Admin/SalesAndContactRequest/NewSales', CAST(N'2020-03-07T02:27:45.080' AS DateTime), 1, CAST(N'2020-03-14T05:11:43.873' AS DateTime), 1, -1)
INSERT [dbo].[Tbl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (89, N'Inquiry Request', N'Click here to view request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/Admin/SalesAndContactRequest/NewSales', CAST(N'2020-03-07T02:27:45.097' AS DateTime), 1, CAST(N'2020-03-14T01:17:11.297' AS DateTime), 41, -1)
INSERT [dbo].[Tbl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (90, N'Inquiry Request', N'Click here to view request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/Admin/SalesAndContactRequest/NewSales', CAST(N'2020-03-07T02:27:45.097' AS DateTime), 0, NULL, 42, -1)
INSERT [dbo].[Tbl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (91, N'Inquiry Request', N'Click here to view request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/Admin/SalesAndContactRequest/NewContact', CAST(N'2020-03-07T02:28:29.703' AS DateTime), 1, CAST(N'2020-03-14T05:11:43.873' AS DateTime), 1, -1)
INSERT [dbo].[Tbl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (92, N'Inquiry Request', N'Click here to view request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/Admin/SalesAndContactRequest/NewContact', CAST(N'2020-03-07T02:28:29.717' AS DateTime), 1, CAST(N'2020-03-14T01:17:11.297' AS DateTime), 41, -1)
INSERT [dbo].[Tbl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (93, N'Inquiry Request', N'Click here to view request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/Admin/SalesAndContactRequest/NewContact', CAST(N'2020-03-07T02:28:29.717' AS DateTime), 0, NULL, 42, -1)
INSERT [dbo].[Tbl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (94, N'Request ID #015', N'Opinion Request Assigned', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/Admin/ConsultantRequest/NewRequest', CAST(N'2020-03-07T15:19:48.430' AS DateTime), 0, NULL, 44, 41)
INSERT [dbo].[Tbl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (95, N'Request ID #015', N'Opinion Request Comment From System Admin', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/Admin/ConsultantRequest/NewRequest', CAST(N'2020-03-07T15:19:48.430' AS DateTime), 0, NULL, 44, 41)
INSERT [dbo].[Tbl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (96, N'Inquiry Request', N'Click here to view request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/Admin/SalesAndContactRequest/NewSales', CAST(N'2020-03-14T08:41:21.953' AS DateTime), 1, CAST(N'2020-03-15T08:20:29.413' AS DateTime), 1, -1)
INSERT [dbo].[Tbl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (97, N'Inquiry Request', N'Click here to view request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/Admin/SalesAndContactRequest/NewSales', CAST(N'2020-03-14T08:41:21.983' AS DateTime), 0, NULL, 41, -1)
INSERT [dbo].[Tbl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (98, N'Inquiry Request', N'Click here to view request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/Admin/SalesAndContactRequest/NewContact', CAST(N'2020-03-14T08:43:31.720' AS DateTime), 1, CAST(N'2020-03-15T08:20:29.677' AS DateTime), 1, -1)
INSERT [dbo].[Tbl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (99, N'Inquiry Request', N'Click here to view request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/Admin/SalesAndContactRequest/NewContact', CAST(N'2020-03-14T08:43:31.720' AS DateTime), 0, NULL, 41, -1)
INSERT [dbo].[Tbl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (100, N'Inquiry Request', N'Click here to view request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/Admin/SalesAndContactRequest/NewSales', CAST(N'2020-03-14T08:51:33.160' AS DateTime), 1, CAST(N'2020-03-15T08:20:29.677' AS DateTime), 1, -1)
INSERT [dbo].[Tbl_Notification] ([NotificationID], [Title], [Description], [Icon], [Type], [ClickLink], [CreatedDatetime], [Isviewed], [ViewedDatetime], [EmployeeID], [CreatedBy]) VALUES (101, N'Inquiry Request', N'Click here to view request', N'i-Speach-Bubble-6 text-primary mr-1', NULL, N'/Admin/SalesAndContactRequest/NewSales', CAST(N'2020-03-14T08:51:33.177' AS DateTime), 0, NULL, 41, -1)
SET IDENTITY_INSERT [dbo].[Tbl_Notification] OFF
SET IDENTITY_INSERT [dbo].[Tbl_OpinionRequest] ON 

INSERT [dbo].[Tbl_OpinionRequest] ([OpinionRequestID], [PatientDetails], [SampleAnalysisDetails], [OpinionNeededDescription], [ConsultantOpinion], [ClientOpinionRequestID], [ClientID], [StatusID], [AssignedTo], [CommentForRequester], [CommentForConsultant], [Payment], [PaymentReceiptPdfLink], [RequestCreatedDate], [RequestCreatedBy], [IsPublish], [NewActionDate], [NewActionBy], [NewActionStatusID], [NewActionComments], [PendingActionBy], [PendingActionDate], [PendingActionComments]) VALUES (13, N'Elbert Lamb', N'Liver Tissue', N'Please describe the liver tissue', NULL, 1, 43, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-02-05T00:56:42.113' AS DateTime), -9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_OpinionRequest] ([OpinionRequestID], [PatientDetails], [SampleAnalysisDetails], [OpinionNeededDescription], [ConsultantOpinion], [ClientOpinionRequestID], [ClientID], [StatusID], [AssignedTo], [CommentForRequester], [CommentForConsultant], [Payment], [PaymentReceiptPdfLink], [RequestCreatedDate], [RequestCreatedBy], [IsPublish], [NewActionDate], [NewActionBy], [NewActionStatusID], [NewActionComments], [PendingActionBy], [PendingActionDate], [PendingActionComments]) VALUES (14, N'XYZ', N'Biopsy', N'Second opinion', NULL, 2, 43, 1, 45, N'Your case has been reassigned to another consultant', NULL, NULL, NULL, CAST(N'2020-02-05T00:57:15.047' AS DateTime), -3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_OpinionRequest] ([OpinionRequestID], [PatientDetails], [SampleAnalysisDetails], [OpinionNeededDescription], [ConsultantOpinion], [ClientOpinionRequestID], [ClientID], [StatusID], [AssignedTo], [CommentForRequester], [CommentForConsultant], [Payment], [PaymentReceiptPdfLink], [RequestCreatedDate], [RequestCreatedBy], [IsPublish], [NewActionDate], [NewActionBy], [NewActionStatusID], [NewActionComments], [PendingActionBy], [PendingActionDate], [PendingActionComments]) VALUES (15, N'Ram Lal', N'test', N'test', N'Extra tests are needed, 
extra tests are finished', 3, 43, 3, 44, N'Assigned a new case', N'Case received', CAST(6000.00 AS Decimal(10, 2)), N'/ClientsData/Lgpathlab/ConsultantReceiptFiles/ConsultantReceipt_15_44.pdf', CAST(N'2020-03-06T14:37:41.417' AS DateTime), -9, 1, CAST(N'2020-03-07T15:20:43.477' AS DateTime), 44, 2, N'Attaching the file for the case', 44, CAST(N'2020-03-07T15:22:17.203' AS DateTime), N'Completed the case')
SET IDENTITY_INSERT [dbo].[Tbl_OpinionRequest] OFF
SET IDENTITY_INSERT [dbo].[Tbl_OpinionRequestStatus] ON 

INSERT [dbo].[Tbl_OpinionRequestStatus] ([OpinionRequestStatusID], [Name], [Description]) VALUES (1, N'New', NULL)
INSERT [dbo].[Tbl_OpinionRequestStatus] ([OpinionRequestStatusID], [Name], [Description]) VALUES (2, N'In-Progress', NULL)
INSERT [dbo].[Tbl_OpinionRequestStatus] ([OpinionRequestStatusID], [Name], [Description]) VALUES (3, N'Completed', NULL)
INSERT [dbo].[Tbl_OpinionRequestStatus] ([OpinionRequestStatusID], [Name], [Description]) VALUES (4, N'New-Deleted', NULL)
INSERT [dbo].[Tbl_OpinionRequestStatus] ([OpinionRequestStatusID], [Name], [Description]) VALUES (5, N'In-Progress-Deleted', NULL)
INSERT [dbo].[Tbl_OpinionRequestStatus] ([OpinionRequestStatusID], [Name], [Description]) VALUES (6, N'Cancelled', NULL)
SET IDENTITY_INSERT [dbo].[Tbl_OpinionRequestStatus] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Plan] ON 

INSERT [dbo].[Tbl_Plan] ([PlanID], [PlanName], [PlanDescription], [PlanDetail], [PlanCost], [PlanStatus], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (11, N'Starter', N'Plan for internal client side', N'Plan for internal client side', CAST(100.00 AS Decimal(18, 2)), 1, CAST(N'2020-02-02T21:52:17.460' AS DateTime), 41, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Plan] OFF
SET IDENTITY_INSERT [dbo].[Tbl_ProviderParameterMapping] ON 

INSERT [dbo].[Tbl_ProviderParameterMapping] ([ProviderParameterMappingID], [ProviderID], [ParameterID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, 3, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParameterMapping] ([ProviderParameterMappingID], [ProviderID], [ParameterID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, 3, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParameterMapping] ([ProviderParameterMappingID], [ProviderID], [ParameterID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, 3, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParameterMapping] ([ProviderParameterMappingID], [ProviderID], [ParameterID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (4, 3, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParameterMapping] ([ProviderParameterMappingID], [ProviderID], [ParameterID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (5, 3, 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParameterMapping] ([ProviderParameterMappingID], [ProviderID], [ParameterID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (6, 3, 6, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParameterMapping] ([ProviderParameterMappingID], [ProviderID], [ParameterID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (7, 4, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParameterMapping] ([ProviderParameterMappingID], [ProviderID], [ParameterID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (8, 4, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParameterMapping] ([ProviderParameterMappingID], [ProviderID], [ParameterID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (9, 4, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParameterMapping] ([ProviderParameterMappingID], [ProviderID], [ParameterID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (10, 4, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParameterMapping] ([ProviderParameterMappingID], [ProviderID], [ParameterID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (11, 4, 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParameterMapping] ([ProviderParameterMappingID], [ProviderID], [ParameterID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (12, 4, 6, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParameterMapping] ([ProviderParameterMappingID], [ProviderID], [ParameterID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (13, 5, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParameterMapping] ([ProviderParameterMappingID], [ProviderID], [ParameterID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (14, 5, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParameterMapping] ([ProviderParameterMappingID], [ProviderID], [ParameterID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (15, 5, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParameterMapping] ([ProviderParameterMappingID], [ProviderID], [ParameterID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (16, 6, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParameterMapping] ([ProviderParameterMappingID], [ProviderID], [ParameterID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (17, 6, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParameterMapping] ([ProviderParameterMappingID], [ProviderID], [ParameterID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (18, 6, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParameterMapping] ([ProviderParameterMappingID], [ProviderID], [ParameterID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (19, 7, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParameterMapping] ([ProviderParameterMappingID], [ProviderID], [ParameterID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (20, 7, 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParameterMapping] ([ProviderParameterMappingID], [ProviderID], [ParameterID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (21, 7, 6, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParameterMapping] ([ProviderParameterMappingID], [ProviderID], [ParameterID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (22, 8, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParameterMapping] ([ProviderParameterMappingID], [ProviderID], [ParameterID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (23, 8, 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParameterMapping] ([ProviderParameterMappingID], [ProviderID], [ParameterID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (24, 8, 6, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_ProviderParameterMapping] OFF
SET IDENTITY_INSERT [dbo].[Tbl_ProviderParamter] ON 

INSERT [dbo].[Tbl_ProviderParamter] ([ParameterID], [ParameterName], [Type], [IsRequired], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, N'DB Server/Host IP', N'string', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParamter] ([ParameterID], [ParameterName], [Type], [IsRequired], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, N'DB Username', N'string', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParamter] ([ParameterID], [ParameterName], [Type], [IsRequired], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, N'DB Password', N'string', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParamter] ([ParameterID], [ParameterName], [Type], [IsRequired], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (4, N'FTP Server/Host IP', N'string', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParamter] ([ParameterID], [ParameterName], [Type], [IsRequired], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (5, N'FTP Username', N'string', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_ProviderParamter] ([ParameterID], [ParameterName], [Type], [IsRequired], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (6, N'FTP Password', N'string', 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_ProviderParamter] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Role] ON 

INSERT [dbo].[Tbl_Role] ([RoleID], [RoleName], [Description], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, N'Superadmin', NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Role] ([RoleID], [RoleName], [Description], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, N'Admin', NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Role] ([RoleID], [RoleName], [Description], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, N'Employee', NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_Role] ([RoleID], [RoleName], [Description], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (4, N'Consultant', NULL, 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Role] OFF
SET IDENTITY_INSERT [dbo].[Tbl_RoleMapping] ON 

INSERT [dbo].[Tbl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (45, 1, 1, 1, CAST(N'2019-11-29T13:16:40.290' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (46, 2, 41, 1, CAST(N'2020-02-02T15:51:32.460' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (48, 4, 44, 1, CAST(N'2020-02-04T17:58:14.010' AS DateTime), 41, NULL, NULL)
INSERT [dbo].[Tbl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (49, 4, 45, 1, CAST(N'2020-02-05T01:04:30.330' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_RoleMapping] ([RoleMappingID], [RoleID], [UserID], [IsDefault], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (52, 3, 42, 1, CAST(N'2020-03-07T11:56:06.460' AS DateTime), 41, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_RoleMapping] OFF
SET IDENTITY_INSERT [dbo].[Tbl_SalesAndContactQuery] ON 

INSERT [dbo].[Tbl_SalesAndContactQuery] ([SalesAndContactQueryID], [Name], [Email], [ContactNo], [Subject], [Description], [TypeID], [StatusID], [RequestCreatedDate], [NewActionBy], [NewActionDate], [NewActionStatusID], [NewActionComments], [PendingActionBy], [PendingActionDate], [PendingActionComments]) VALUES (12, N'Haley Clemons', N'Blackaleuser9@gmail.com', N'9865327410', N'Sales Enquiry', N'What kind of options do you offer?', 1, 3, CAST(N'2020-03-07T02:27:45.050' AS DateTime), 41, CAST(N'2020-03-07T02:31:12.947' AS DateTime), 2, N'Hi, We are reviewing your query and will get back to you shortly.', 41, CAST(N'2020-03-07T02:32:56.130' AS DateTime), N'Hi, We have sent you our prices on your e-mail. Thanks for showing interest')
INSERT [dbo].[Tbl_SalesAndContactQuery] ([SalesAndContactQueryID], [Name], [Email], [ContactNo], [Subject], [Description], [TypeID], [StatusID], [RequestCreatedDate], [NewActionBy], [NewActionDate], [NewActionStatusID], [NewActionComments], [PendingActionBy], [PendingActionDate], [PendingActionComments]) VALUES (13, N'Cecily Barnes', N'Blackaleuser10@gmail.com', N'8956231470', N'Contact Enquiry', N'I’m really excited about this project, how can we get started?', 2, 3, CAST(N'2020-03-07T02:28:29.703' AS DateTime), 41, CAST(N'2020-03-07T02:41:00.383' AS DateTime), 2, N'Hi Cecily Barnes', 41, CAST(N'2020-03-07T02:42:37.830' AS DateTime), N'Hi, We have sent you details on how to get started on your e-mail. Thank you for showing interest.')
INSERT [dbo].[Tbl_SalesAndContactQuery] ([SalesAndContactQueryID], [Name], [Email], [ContactNo], [Subject], [Description], [TypeID], [StatusID], [RequestCreatedDate], [NewActionBy], [NewActionDate], [NewActionStatusID], [NewActionComments], [PendingActionBy], [PendingActionDate], [PendingActionComments]) VALUES (14, N'Test', N'Test@test.com', N'1234567890', N'Test', N'Test', 1, 4, CAST(N'2020-03-14T08:41:21.767' AS DateTime), 41, CAST(N'2020-03-14T08:44:07.370' AS DateTime), 4, N'Deleted From Screen', NULL, NULL, NULL)
INSERT [dbo].[Tbl_SalesAndContactQuery] ([SalesAndContactQueryID], [Name], [Email], [ContactNo], [Subject], [Description], [TypeID], [StatusID], [RequestCreatedDate], [NewActionBy], [NewActionDate], [NewActionStatusID], [NewActionComments], [PendingActionBy], [PendingActionDate], [PendingActionComments]) VALUES (15, N'Jess', N'Blackaleuser1@gmail.com', N'7894561230', N'Hi', N'We would like to know about your services', 2, 4, CAST(N'2020-03-14T08:43:31.720' AS DateTime), 41, CAST(N'2020-03-14T08:44:20.530' AS DateTime), 4, N'Deleted From Screen', NULL, NULL, NULL)
INSERT [dbo].[Tbl_SalesAndContactQuery] ([SalesAndContactQueryID], [Name], [Email], [ContactNo], [Subject], [Description], [TypeID], [StatusID], [RequestCreatedDate], [NewActionBy], [NewActionDate], [NewActionStatusID], [NewActionComments], [PendingActionBy], [PendingActionDate], [PendingActionComments]) VALUES (16, N'Nagato', N'blackaleuser1@gmail.com', N'9876543210', N'Hey', N'We would like to contact your team for sales', 1, 1, CAST(N'2020-03-14T08:51:33.160' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_SalesAndContactQuery] OFF
SET IDENTITY_INSERT [dbo].[Tbl_SalesAndContactQueryStatus] ON 

INSERT [dbo].[Tbl_SalesAndContactQueryStatus] ([SalesAndContactQueryStatusID], [StatusName], [StatusDescription]) VALUES (1, N'New', NULL)
INSERT [dbo].[Tbl_SalesAndContactQueryStatus] ([SalesAndContactQueryStatusID], [StatusName], [StatusDescription]) VALUES (2, N'Pending', NULL)
INSERT [dbo].[Tbl_SalesAndContactQueryStatus] ([SalesAndContactQueryStatusID], [StatusName], [StatusDescription]) VALUES (3, N'Closed', NULL)
INSERT [dbo].[Tbl_SalesAndContactQueryStatus] ([SalesAndContactQueryStatusID], [StatusName], [StatusDescription]) VALUES (4, N'New-Deleted', NULL)
INSERT [dbo].[Tbl_SalesAndContactQueryStatus] ([SalesAndContactQueryStatusID], [StatusName], [StatusDescription]) VALUES (5, N'Pending-Deleted', NULL)
SET IDENTITY_INSERT [dbo].[Tbl_SalesAndContactQueryStatus] OFF
SET IDENTITY_INSERT [dbo].[Tbl_SalesAndContactQueryType] ON 

INSERT [dbo].[Tbl_SalesAndContactQueryType] ([SalesAndContactQueryTypeID], [TypeName], [Description]) VALUES (1, N'Sales', NULL)
INSERT [dbo].[Tbl_SalesAndContactQueryType] ([SalesAndContactQueryTypeID], [TypeName], [Description]) VALUES (2, N'Contact', NULL)
SET IDENTITY_INSERT [dbo].[Tbl_SalesAndContactQueryType] OFF
SET IDENTITY_INSERT [dbo].[Tbl_SectionRestriction] ON 

INSERT [dbo].[Tbl_SectionRestriction] ([SectionID], [SectionSelector], [MenuID], [EmployeeID], [RoleID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, N'.editcolumn', 4, NULL, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_SectionRestriction] ([SectionID], [SectionSelector], [MenuID], [EmployeeID], [RoleID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, N'.editcolumn', 5, NULL, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_SectionRestriction] ([SectionID], [SectionSelector], [MenuID], [EmployeeID], [RoleID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (4, N'.editcolumn', 8, NULL, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_SectionRestriction] ([SectionID], [SectionSelector], [MenuID], [EmployeeID], [RoleID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (5, N'.editcolumn', 9, NULL, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_SectionRestriction] ([SectionID], [SectionSelector], [MenuID], [EmployeeID], [RoleID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (6, N'.editcolumn', 12, NULL, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_SectionRestriction] ([SectionID], [SectionSelector], [MenuID], [EmployeeID], [RoleID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (7, N'.editcolumn', 13, NULL, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_SectionRestriction] ([SectionID], [SectionSelector], [MenuID], [EmployeeID], [RoleID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (8, N'.editcolumn', 34, NULL, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_SectionRestriction] ([SectionID], [SectionSelector], [MenuID], [EmployeeID], [RoleID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (9, N'.editcolumn', 35, NULL, 3, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_SectionRestriction] OFF
SET IDENTITY_INSERT [dbo].[Tbl_StorageandDBProvider] ON 

INSERT [dbo].[Tbl_StorageandDBProvider] ([ProviderID], [ProviderName], [Description]) VALUES (1, N'Server DB + Server Storage', NULL)
INSERT [dbo].[Tbl_StorageandDBProvider] ([ProviderID], [ProviderName], [Description]) VALUES (3, N'Godaddy DB + Godaddy Storage', NULL)
INSERT [dbo].[Tbl_StorageandDBProvider] ([ProviderID], [ProviderName], [Description]) VALUES (4, N'Hostgator DB + Hostgator Storage', NULL)
INSERT [dbo].[Tbl_StorageandDBProvider] ([ProviderID], [ProviderName], [Description]) VALUES (5, N'Godaddy DB + Server Storage', NULL)
INSERT [dbo].[Tbl_StorageandDBProvider] ([ProviderID], [ProviderName], [Description]) VALUES (6, N'Hostgator DB + Server Storage', NULL)
INSERT [dbo].[Tbl_StorageandDBProvider] ([ProviderID], [ProviderName], [Description]) VALUES (7, N'Server DB + Godaddy Storage', NULL)
INSERT [dbo].[Tbl_StorageandDBProvider] ([ProviderID], [ProviderName], [Description]) VALUES (8, N'Server DB + Hostgator Storage', NULL)
SET IDENTITY_INSERT [dbo].[Tbl_StorageandDBProvider] OFF
SET IDENTITY_INSERT [dbo].[Tbl_SystemUser] ON 

INSERT [dbo].[Tbl_SystemUser] ([SystemUserID], [Username], [Password], [FirstName], [MiddleName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, N'LimciGupta', N'TGltY2k3MEd1cHRh', N'Limci', N' ', N'Gupta', N'limcigupta@hotmail.com', N'7841584103', N'London', 1, N'~/Content/ProfileImages/tahajamali/Screenshot (46).png', 0, 2, 0, CAST(N'2019-11-13T00:00:00.000' AS DateTime), 1, CAST(N'2019-11-29T13:16:36.793' AS DateTime), 1)
INSERT [dbo].[Tbl_SystemUser] ([SystemUserID], [Username], [Password], [FirstName], [MiddleName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (41, N'VinayakGupta', N'VmluYXlhazk1Z3VwdGE=', N'Vinayak', N'', N'Gupta', N'Guptavinayak95@gmail.com', N'8130288688', N'Delhi', 1, NULL, 0, 2, 0, CAST(N'2020-02-02T15:51:32.053' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Tbl_SystemUser] ([SystemUserID], [Username], [Password], [FirstName], [MiddleName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (42, N'kamal@IndoUKLabs', N'VCZuIzkuTXg=', N'Kamal', N'', N'Gaur', N'dev@gmail.com', N'1234567891', N'Delhi, India', 1, NULL, 0, 2, 0, CAST(N'2020-02-02T19:05:36.227' AS DateTime), 41, CAST(N'2020-03-07T11:56:06.460' AS DateTime), 41)
INSERT [dbo].[Tbl_SystemUser] ([SystemUserID], [Username], [Password], [FirstName], [MiddleName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (43, N'admin@Lgpathlab', N'ZmJDWVpIRWE=', N'Limci', N'', N'Gupta', N'lgpathlab01@gmail.com', N'', N'Delhi, India', 1, NULL, 22, 1, 1, CAST(N'2020-02-02T22:04:27.217' AS DateTime), 41, NULL, NULL)
INSERT [dbo].[Tbl_SystemUser] ([SystemUserID], [Username], [Password], [FirstName], [MiddleName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (44, N'consultant@IndoUKLabs', N'Uit0emF3d3Q=', N'Philip', N'', N'Stanley', N'blackaleuser7@gmail.com', N'9876543210', N'London', 1, NULL, 15, 3, 0, CAST(N'2020-02-04T17:58:13.993' AS DateTime), 41, CAST(N'2020-02-05T00:54:11.497' AS DateTime), 41)
INSERT [dbo].[Tbl_SystemUser] ([SystemUserID], [Username], [Password], [FirstName], [MiddleName], [LastName], [Email], [MobileNo], [Address], [IsActive], [ProfilePic], [DetailID], [DetailType], [IsBlock], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (45, N'Dr Limci Gupta@IndoUKLabs', N'ai03LlRTZik=', N'Limci', N'', N'Gupta', N'limci.gupta2@nhs.net', N'00447841584103', N'Chalgrove, 
30 Peterborough Road,
Harrow on the Hill, HA1 3DX', 1, NULL, 16, 3, 0, CAST(N'2020-02-05T01:04:30.330' AS DateTime), 1, CAST(N'2020-02-05T01:06:13.093' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Tbl_SystemUser] OFF
SET IDENTITY_INSERT [dbo].[Tbl_SystemUserType] ON 

INSERT [dbo].[Tbl_SystemUserType] ([SystemUserTypeID], [TypeName], [Description]) VALUES (1, N'Client', NULL)
INSERT [dbo].[Tbl_SystemUserType] ([SystemUserTypeID], [TypeName], [Description]) VALUES (2, N'Employee', NULL)
INSERT [dbo].[Tbl_SystemUserType] ([SystemUserTypeID], [TypeName], [Description]) VALUES (3, N'Consultant', NULL)
SET IDENTITY_INSERT [dbo].[Tbl_SystemUserType] OFF
USE [master]
GO
ALTER DATABASE [LabSystemDB] SET  READ_WRITE 
GO
