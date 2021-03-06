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
