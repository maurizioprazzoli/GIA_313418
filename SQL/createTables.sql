USE GIA_313418;

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'Producer')
BEGIN
    ALTER TABLE [Producer]				DROP CONSTRAINT IF EXISTS [FK_Producer_CategoryID_Category_ID];
	ALTER TABLE [Producer]				DROP CONSTRAINT IF EXISTS [FK_Producer_RegionID_Region_ID];
END

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'ProducerDetail')
BEGIN
	ALTER TABLE [ProducerDetail]		DROP CONSTRAINT IF EXISTS [FK_ProducerCode_ProducerCode_Producer_Code];
END

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'AttributeMap')
BEGIN
	ALTER TABLE [AttributeMap]			DROP CONSTRAINT IF EXISTS [FK_AttributeMap_WebsiteID_Website_ID];
	ALTER TABLE [AttributeMap]			DROP CONSTRAINT IF EXISTS [FK_AttributeMap_ProducerCode_Producer_Code];
	ALTER TABLE [AttributeMap]			DROP CONSTRAINT IF EXISTS [FK_AttributeMap_AttributeID_Attribute_ID];
END

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'MailWriterJob')
BEGIN
	ALTER TABLE [MailWriterJob]			DROP CONSTRAINT IF EXISTS [FK_MailWriterJob_WebsiteID_Website_ID];
	ALTER TABLE [MailWriterJob]			DROP CONSTRAINT IF EXISTS [FK_MailWriterJob_ProducerID_Producer_ID];
END

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'Visit')
BEGIN
	ALTER TABLE [Visit]					DROP CONSTRAINT IF EXISTS [FK_Visit_WebsiteID_Website_ID];
	ALTER TABLE [Visit]					DROP CONSTRAINT IF EXISTS [FK_Visit_VisitProducerCode_Producer_Code];
END

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'User')
BEGIN
	ALTER TABLE [User]					DROP CONSTRAINT IF EXISTS [FK_User_WebsiteID_Website_ID];
END

DROP TABLE IF EXISTS [Category];
DROP TABLE IF EXISTS [Region];
DROP TABLE IF EXISTS [Producer];
DROP TABLE IF EXISTS [ProducerDetail];
DROP TABLE IF EXISTS [Website];
DROP TABLE IF EXISTS [Attribute];
DROP TABLE IF EXISTS [AttributeMap];
DROP TABLE IF EXISTS [MailWriterJob];
DROP TABLE IF EXISTS [Visit];
DROP TABLE IF EXISTS [User];
DROP TABLE IF EXISTS [Producer];
DROP TABLE IF EXISTS [TABELLONE];

-- Creazione Tabella [Category]
CREATE TABLE [Category] (
  [ID]					smallint		NOT NULL,
  [CategoryName]		varchar(50)		NOT NULL,
  CONSTRAINT [PK_Category_ID]	PRIMARY KEY ( [ID] ),
  CONSTRAINT [UC_Category]		UNIQUE		( [CategoryName] )
);

-- Creazione Tabella [Region]
CREATE TABLE [Region] (
  [ID]				tinyint			NOT NULL,
  [Name]			nvarchar(50)	NOT NULL,
  CONSTRAINT [PK_Region]		PRIMARY KEY ( [ID] ),
  CONSTRAINT [UC_Region]		UNIQUE		( [Name] )
);

-- Creazione Tabella [Producer]
CREATE TABLE			[Producer] (
  [Code]				char(3)			NOT NULL,
  [CategoryID]			smallint		NOT NULL,
  [RegionID]			tinyint			NOT NULL,
  [TemplateName]		nvarchar(255)	NOT NULL,
  CONSTRAINT [PK_Producer] PRIMARY KEY ( [Code] )
);
ALTER TABLE [Producer]			ADD CONSTRAINT [FK_Producer_CategoryID_Category_ID]
								FOREIGN KEY([CategoryID]) REFERENCES [Category] ([ID])
								ON DELETE CASCADE ON UPDATE CASCADE

ALTER TABLE [Producer]			ADD CONSTRAINT [FK_Producer_RegionID_Region_ID]
								FOREIGN KEY([RegionID]) REFERENCES [Region] ([ID])
								ON DELETE CASCADE ON UPDATE CASCADE

-- Creazione Tabella [ProducerDetail]
CREATE TABLE 			[ProducerDetail](
	[ProducerCode] 		char(3) 		NOT NULL,
	[ImageFileName] 	nvarchar(255) 	NULL,
	[ImageBinary]		varbinary(max) 	NULL
	CONSTRAINT [PK_ProducerDetail] PRIMARY KEY ( [ProducerCode] )
);

ALTER TABLE [ProducerDetail]	ADD CONSTRAINT [FK_ProducerCode_ProducerCode_Producer_Code]
								FOREIGN KEY([ProducerCode]) REFERENCES [Producer] ([Code])
								ON DELETE CASCADE ON UPDATE CASCADE

-- Creazione Tabella [Website]
CREATE TABLE [Website] (
  [ID]					tinyint			NOT NULL,
  [SiteName]			nvarchar(50)	NOT NULL,
  [SiteAlias]			nvarchar(50)	NULL,
  CONSTRAINT [PK_Website]		PRIMARY KEY ( [ID] ),
  CONSTRAINT [UC_Website]		UNIQUE		( [SiteName] )
);

-- Creazione Tabella [Attribute]
CREATE TABLE [Attribute] (
  [ID]					int				NOT NULL,
  [Name]				varchar(50)		NOT NULL UNIQUE,
  CONSTRAINT [PK_Attribute] PRIMARY KEY ( [ID] )
);

-- Creazione Tabella [AttributeMap]
CREATE TABLE [AttributeMap] (
  [WebsiteID]			tinyint			NOT NULL,
  [ProducerCode]		char(3)			NOT NULL,
  [AttributeID]			int				NOT NULL,
  [Value]				nvarchar(50)	NULL,
  CONSTRAINT [PK_AttributeMap] PRIMARY KEY
  ( [WebsiteID],
	[ProducerCode],
	[AttributeID]
  )
);
ALTER TABLE [AttributeMap]		ADD CONSTRAINT [FK_AttributeMap_WebsiteID_Website_ID]
								FOREIGN KEY([WebsiteID]) REFERENCES [Website] ([ID])
								ON DELETE CASCADE ON UPDATE CASCADE

ALTER TABLE [AttributeMap]		ADD CONSTRAINT [FK_AttributeMap_ProducerCode_Producer_Code]
								FOREIGN KEY([ProducerCode]) REFERENCES [Producer] ([Code])
								ON DELETE CASCADE ON UPDATE CASCADE

ALTER TABLE [AttributeMap]		ADD CONSTRAINT [FK_AttributeMap_AttributeID_Attribute_ID]
								FOREIGN KEY([AttributeID]) REFERENCES [Attribute] ([ID])
								ON DELETE CASCADE ON UPDATE CASCADE

-- Creazione Tabella [MailWriter]
CREATE TABLE [MailWriterJob] (
  [WebsiteID]			tinyint		NOT NULL,
  [ProducerCode]		char(3)		NOT NULL,
  CONSTRAINT [PK_MailWriterJob] PRIMARY KEY
  ( [WebsiteID],
	[ProducerCode]
  )
);
ALTER TABLE [MailWriterJob]		ADD CONSTRAINT [FK_MailWriterJob_WebsiteID_Website_ID]
								FOREIGN KEY([WebsiteID]) REFERENCES [Website] ([ID])
								ON DELETE CASCADE ON UPDATE CASCADE

ALTER TABLE [MailWriterJob]		ADD CONSTRAINT [FK_MailWriterJob_ProducerID_Producer_ID]
								FOREIGN KEY([ProducerCode]) REFERENCES [Producer] ([Code])
								ON DELETE CASCADE ON UPDATE CASCADE

-- Creazione Tabella [Visit]
CREATE TABLE [Visit] (
  [ID]					int				NOT NULL,
  [WebsiteID]			tinyint			NOT NULL,
  [PageName]			nvarchar(255)	NOT NULL,
  [ProducerCode]		char(3)			NULL,  
  [Date]				datetime		NOT NULL default CURRENT_TIMESTAMP,
  [ClientLanguage]		nvarchar(255)	NULL,
  [ClientIP]			nvarchar(255)	NULL,
  [IsClientNewVisitor]	bit				NULL,
  [ClientEmailAddr]		nvarchar(255)	NULL,
  [IsClientFromMail]	bit				NULL,
  [ClientReferrerPage]	nvarchar(255)	NULL,
  [ClientMailCampaign]	nvarchar(255)	NULL,
  CONSTRAINT [PK_Visit] PRIMARY KEY ( [ID] )
);
ALTER TABLE [Visit]				ADD CONSTRAINT [FK_Visit_WebsiteID_Website_ID]
								FOREIGN KEY([WebsiteID])	REFERENCES [Website] ([ID])
								ON DELETE CASCADE ON UPDATE CASCADE

ALTER TABLE [Visit]				ADD CONSTRAINT [FK_Visit_VisitProducerCode_Producer_Code]
								FOREIGN KEY([ProducerCode]) REFERENCES [Producer] ([Code])
								ON DELETE CASCADE ON UPDATE CASCADE

--Creazione Tabella [user]
CREATE TABLE [User] (
  [ID]					int NOT NULL UNIQUE,
  [UserName]			nvarchar(10) NOT NULL,
  [Password]			nvarchar(20) NOT NULL,
  [WebsiteID]			tinyint NOT NULL,
  CONSTRAINT [PK_User]		PRIMARY KEY ( [ID] ),
  CONSTRAINT [UC_User]		UNIQUE		( [UserName], [WebsiteID])
);
ALTER TABLE [User]			ADD CONSTRAINT [FK_User_WebsiteID_Website_ID]
							FOREIGN KEY([WebsiteID]) REFERENCES [Website] ([ID])
							ON DELETE CASCADE ON UPDATE CASCADE
						

--Creazione Tabella [TABELLONE]						
CREATE TABLE	[TABELLONE](
	[ID] [int] NOT NULL,
	[WebsiteName] 			nvarchar(50) NULL,
	[ProducerCode] 			char(3) NULL,
	[ProducerRegionName] 	nvarchar(50) NULL,
	[VisitPageName] 		nvarchar(255) NULL,
	[VisitDate] 			datetime NULL,
	[VisitDateYear] 		datetime NULL,
	[VisitDateMonth] 		datetime NULL,
	[ClientLanguage] 		nvarchar(255) NULL,
	[IsClientNewVisitor] 	bit NULL,
	[IsClientFromMail] 		bit NULL,
	[ClientMailCampaign] 	bit NULL,
	[ClientReferrerPage] 	nvarchar(255) NULL,
 CONSTRAINT [PK_TABELLONE] PRIMARY KEY ( [ID] )
);