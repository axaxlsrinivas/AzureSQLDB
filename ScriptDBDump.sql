/****** Object:  Table [dbo].[AccountSiteMaster]    Script Date: 28-05-2019 15:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountSiteMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountId] [nvarchar](50) NOT NULL,
	[SiteId] [nvarchar](50) NOT NULL,
	[CompanyName] [nvarchar](100) NULL,
	[CompanyAddress] [nvarchar](500) NULL,
	[SiteName] [nvarchar](100) NULL,
	[Region] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[PostalCode] [nvarchar](15) NULL,
 CONSTRAINT [PK_AccountSiteMaster] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC,
	[SiteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountSiteTempMaster]    Script Date: 28-05-2019 15:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountSiteTempMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountId] [nvarchar](50) NOT NULL,
	[SiteId] [nvarchar](50) NOT NULL,
	[CompanyName] [nvarchar](100) NULL,
	[CompanyAddress] [nvarchar](500) NULL,
	[SiteName] [nvarchar](100) NULL,
	[Region] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[PostalCode] [nvarchar](15) NULL,
 CONSTRAINT [PK_AccountSiteTempMaster] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC,
	[SiteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authorization]    Script Date: 28-05-2019 15:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorization](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HotWorkId] [int] NULL,
	[AuthorizerName] [nvarchar](100) NULL,
	[Department] [nvarchar](100) NULL,
	[Location] [nvarchar](100) NULL,
	[AuthorizationDateTime] [datetime] NULL,
	[IsHighHazardArea] [nvarchar](10) NULL,
	[AreaSupervisorName] [nvarchar](100) NULL,
	[AreaSupervisorDepartment] [nvarchar](100) NULL,
 CONSTRAINT [PK_Authorization] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FirePrevention]    Script Date: 28-05-2019 15:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FirePrevention](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HotWorkId] [int] NULL,
	[NearestFireAlarmLocation] [nvarchar](100) NULL,
	[NearestPhone] [nvarchar](100) NULL,
 CONSTRAINT [PK_FirePrevention] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FireWatchPrevention]    Script Date: 28-05-2019 15:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FireWatchPrevention](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirePreventionId] [int] NULL,
	[PersonName] [nvarchar](100) NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL,
	[FireWatchType] [nvarchar](20) NULL,
 CONSTRAINT [PK_FireWatchPrevention] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HandHeldMaster]    Script Date: 28-05-2019 15:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HandHeldMaster](
	[Id] [int] IDENTITY(100,1) NOT NULL,
 CONSTRAINT [PK_HandHeldMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotWork]    Script Date: 28-05-2019 15:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotWork](
	[Id] [int] IDENTITY(573,8) NOT NULL,
	[HotWorkMobileId] [int] NULL,
	[AccountId] [nvarchar](50) NULL,
	[SiteId] [nvarchar](50) NULL,
	[IsParent] [bit] NULL,
	[ParentHotWorkId] [int] NULL,
	[WorkFlowStatus] [nvarchar](20) NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_HotWork] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotWorkMeasure]    Script Date: 28-05-2019 15:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotWorkMeasure](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HotWorkId] [int] NULL,
	[MeasureId] [int] NULL,
	[MeasureStatus] [nvarchar](10) NULL,
	[FireHoseCount] [int] NULL,
	[FireExtinguisherCount] [int] NULL,
 CONSTRAINT [PK_HotWorkMeasure] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Impairment]    Script Date: 28-05-2019 15:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Impairment](
	[Id] [int] IDENTITY(1023,6) NOT NULL,
	[ImpairmentMobileId] [int] NULL,
	[AccountId] [nvarchar](50) NULL,
	[SiteId] [nvarchar](50) NULL,
	[IsParent] [bit] NULL,
	[ParentImpairmentId] [int] NULL,
	[WorkFlowStatus] [nvarchar](20) NULL,
	[ImpairmentTypeId] [int] NULL,
	[ImpairmentClassId] [int] NULL,
	[ShutDownReasonId] [int] NULL,
	[ImpairmentDescription] [nvarchar](200) NULL,
	[StartDateTime] [datetime] NULL,
	[EndDateTime] [datetime] NULL,
	[CloseDateTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Impairment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImpairmentClassMaster]    Script Date: 28-05-2019 15:58:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImpairmentClassMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NULL,
 CONSTRAINT [PK_ImpairmentClassMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImpairmentMeasure]    Script Date: 28-05-2019 15:58:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImpairmentMeasure](
	[ImpairmentId] [int] NOT NULL,
	[ImpairmentMeasureMasterId] [int] NOT NULL,
 CONSTRAINT [PK_ImpairmentMeasure] PRIMARY KEY CLUSTERED 
(
	[ImpairmentId] ASC,
	[ImpairmentMeasureMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImpairmentMeasureMaster]    Script Date: 28-05-2019 15:58:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImpairmentMeasureMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ImpairmentMeasureMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImpairmentPrecaution]    Script Date: 28-05-2019 15:58:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImpairmentPrecaution](
	[ImpairmentId] [int] NOT NULL,
	[ImpairmentPrecautionMasterId] [int] NOT NULL,
	[OtherDescription] [nvarchar](100) NULL,
 CONSTRAINT [PK_ImpairmentPrecaution] PRIMARY KEY CLUSTERED 
(
	[ImpairmentId] ASC,
	[ImpairmentPrecautionMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImpairmentPrecautionMaster]    Script Date: 28-05-2019 15:58:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImpairmentPrecautionMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ImpairmentPrecautionMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImpairmentTypeMaster]    Script Date: 28-05-2019 15:58:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImpairmentTypeMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NULL,
 CONSTRAINT [PK_ImpairmentTypeMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MeasureMaster]    Script Date: 28-05-2019 15:58:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeasureMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_MeasureMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReporterDetail]    Script Date: 28-05-2019 15:58:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReporterDetail](
	[ImpairmentId] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](20) NULL,
 CONSTRAINT [PK_ReporterDetail] PRIMARY KEY CLUSTERED 
(
	[ImpairmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scope]    Script Date: 28-05-2019 15:58:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scope](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HotWorkId] [int] NULL,
	[WorkDetail] [nvarchar](500) NULL,
	[WorkLocation] [nvarchar](100) NULL,
	[CompanyName] [nvarchar](100) NULL,
	[StartDateTime] [datetime] NULL,
	[EndDateTime] [datetime] NULL,
 CONSTRAINT [PK_Scope] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScopePerson]    Script Date: 28-05-2019 15:58:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScopePerson](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ScopeId] [int] NULL,
	[PersonName] [nvarchar](100) NULL,
 CONSTRAINT [PK_ScopePerson] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScopeWorkOrder]    Script Date: 28-05-2019 15:58:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScopeWorkOrder](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ScopeId] [int] NULL,
	[WorkOrderId] [int] NULL,
 CONSTRAINT [PK_ScopeWorkOrder] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShutDownReasonMaster]    Script Date: 28-05-2019 15:58:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShutDownReasonMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NULL,
 CONSTRAINT [PK_ShutDownReasonMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkOrderMaster]    Script Date: 28-05-2019 15:58:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkOrderMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WorkOrderName] [nvarchar](100) NULL,
 CONSTRAINT [PK_WorkOrderMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Authorization]  WITH CHECK ADD  CONSTRAINT [FK_Authorization_HotWork] FOREIGN KEY([HotWorkId])
REFERENCES [dbo].[HotWork] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Authorization] CHECK CONSTRAINT [FK_Authorization_HotWork]
GO
ALTER TABLE [dbo].[FirePrevention]  WITH CHECK ADD  CONSTRAINT [FK_FirePrevention_HotWork] FOREIGN KEY([HotWorkId])
REFERENCES [dbo].[HotWork] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FirePrevention] CHECK CONSTRAINT [FK_FirePrevention_HotWork]
GO
ALTER TABLE [dbo].[FireWatchPrevention]  WITH CHECK ADD  CONSTRAINT [FK_FireWatchPrevention_FirePrevention] FOREIGN KEY([FirePreventionId])
REFERENCES [dbo].[FirePrevention] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FireWatchPrevention] CHECK CONSTRAINT [FK_FireWatchPrevention_FirePrevention]
GO
ALTER TABLE [dbo].[HotWorkMeasure]  WITH CHECK ADD  CONSTRAINT [FK_HotWorkMeasure_HotWork] FOREIGN KEY([HotWorkId])
REFERENCES [dbo].[HotWork] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HotWorkMeasure] CHECK CONSTRAINT [FK_HotWorkMeasure_HotWork]
GO
ALTER TABLE [dbo].[HotWorkMeasure]  WITH CHECK ADD  CONSTRAINT [FK_HotWorkMeasure_MeasureMaster] FOREIGN KEY([MeasureId])
REFERENCES [dbo].[MeasureMaster] ([Id])
GO
ALTER TABLE [dbo].[HotWorkMeasure] CHECK CONSTRAINT [FK_HotWorkMeasure_MeasureMaster]
GO
ALTER TABLE [dbo].[Impairment]  WITH CHECK ADD  CONSTRAINT [FK_Impairment_Impairment] FOREIGN KEY([ImpairmentTypeId])
REFERENCES [dbo].[ImpairmentTypeMaster] ([Id])
GO
ALTER TABLE [dbo].[Impairment] CHECK CONSTRAINT [FK_Impairment_Impairment]
GO
ALTER TABLE [dbo].[Impairment]  WITH CHECK ADD  CONSTRAINT [FK_Impairment_ImpairmentClassMaster] FOREIGN KEY([ImpairmentClassId])
REFERENCES [dbo].[ImpairmentClassMaster] ([Id])
GO
ALTER TABLE [dbo].[Impairment] CHECK CONSTRAINT [FK_Impairment_ImpairmentClassMaster]
GO
ALTER TABLE [dbo].[Impairment]  WITH CHECK ADD  CONSTRAINT [FK_Impairment_ShutDownReasonMaster] FOREIGN KEY([ShutDownReasonId])
REFERENCES [dbo].[ShutDownReasonMaster] ([Id])
GO
ALTER TABLE [dbo].[Impairment] CHECK CONSTRAINT [FK_Impairment_ShutDownReasonMaster]
GO
ALTER TABLE [dbo].[ImpairmentMeasure]  WITH CHECK ADD  CONSTRAINT [FK_ImpairmentMeasure_Impairment] FOREIGN KEY([ImpairmentId])
REFERENCES [dbo].[Impairment] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImpairmentMeasure] CHECK CONSTRAINT [FK_ImpairmentMeasure_Impairment]
GO
ALTER TABLE [dbo].[ImpairmentMeasure]  WITH CHECK ADD  CONSTRAINT [FK_ImpairmentMeasure_ImpairmentMeasureMaster] FOREIGN KEY([ImpairmentMeasureMasterId])
REFERENCES [dbo].[ImpairmentMeasureMaster] ([Id])
GO
ALTER TABLE [dbo].[ImpairmentMeasure] CHECK CONSTRAINT [FK_ImpairmentMeasure_ImpairmentMeasureMaster]
GO
ALTER TABLE [dbo].[ImpairmentPrecaution]  WITH CHECK ADD  CONSTRAINT [FK_ImpairmentPrecaution_Impairment] FOREIGN KEY([ImpairmentId])
REFERENCES [dbo].[Impairment] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImpairmentPrecaution] CHECK CONSTRAINT [FK_ImpairmentPrecaution_Impairment]
GO
ALTER TABLE [dbo].[ImpairmentPrecaution]  WITH CHECK ADD  CONSTRAINT [FK_ImpairmentPrecaution_ImpairmentPrecautionMaster] FOREIGN KEY([ImpairmentPrecautionMasterId])
REFERENCES [dbo].[ImpairmentPrecautionMaster] ([Id])
GO
ALTER TABLE [dbo].[ImpairmentPrecaution] CHECK CONSTRAINT [FK_ImpairmentPrecaution_ImpairmentPrecautionMaster]
GO
ALTER TABLE [dbo].[ReporterDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReporterDetail_Impairment] FOREIGN KEY([ImpairmentId])
REFERENCES [dbo].[Impairment] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ReporterDetail] CHECK CONSTRAINT [FK_ReporterDetail_Impairment]
GO
ALTER TABLE [dbo].[Scope]  WITH CHECK ADD  CONSTRAINT [FK_Scope_HotWork] FOREIGN KEY([HotWorkId])
REFERENCES [dbo].[HotWork] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Scope] CHECK CONSTRAINT [FK_Scope_HotWork]
GO
ALTER TABLE [dbo].[ScopePerson]  WITH CHECK ADD  CONSTRAINT [FK_ScopePerson_Scope] FOREIGN KEY([ScopeId])
REFERENCES [dbo].[Scope] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ScopePerson] CHECK CONSTRAINT [FK_ScopePerson_Scope]
GO
ALTER TABLE [dbo].[ScopeWorkOrder]  WITH CHECK ADD  CONSTRAINT [FK_ScopeWorkOrder_Scope] FOREIGN KEY([ScopeId])
REFERENCES [dbo].[Scope] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ScopeWorkOrder] CHECK CONSTRAINT [FK_ScopeWorkOrder_Scope]
GO
ALTER TABLE [dbo].[ScopeWorkOrder]  WITH CHECK ADD  CONSTRAINT [FK_ScopeWorkOrder_WorkOrderMaster] FOREIGN KEY([WorkOrderId])
REFERENCES [dbo].[WorkOrderMaster] ([Id])
GO
ALTER TABLE [dbo].[ScopeWorkOrder] CHECK CONSTRAINT [FK_ScopeWorkOrder_WorkOrderMaster]
GO
USE [master]
GO
ALTER DATABASE [CLPDUMP] SET  READ_WRITE 
GO
