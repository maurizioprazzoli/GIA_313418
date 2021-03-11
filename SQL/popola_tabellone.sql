TRUNCATE TABLE	[TABELLONE]
 
;WITH cteTabellone ([ID],
		    [WebsiteName],
		    [ProducerCode],
		    [ProducerRegionName],
		    [VisitPageName],
		    [VisitDate],
		    [VisitDateYear],
		    [VisitDateMonth],
		    [ClientLanguage],
		    [IsClientNewVisitor],
		    [IsClientFromMail],
		    [ClientMailCampaign],
		    [ClientReferrerPage]) AS (
    
	SELECT			[Visit].[ID]					as [ID],
					[Website].[SiteName]			as [WebsiteName],
					[Producer].[Code]				as [ProducerCode],
					[Region].[Name]					as [ProducerRegionName],
					[Visit].[PageName]				as [VisitPageName],
					[Visit].[Date]					as [VisitDate],
					YEAR([Visit].[Date])			as [VisitDateYear],
					MONTH([Visit].[Date])			as [VisitDateMonth],
					[Visit].[ClientLanguage]		as [ClientLanguage],
					[Visit].[IsClientNewVisitor]	as [IsClientNewVisitor],
					[Visit].[IsClientFromMail]		as [IsClientFromMail],
					[Visit].[ClientMailCampaign]	as [ClientMailCampaign],
					[Visit].[ClientReferrerPage]	as [ClientReferrerPage]
    FROM		    [Visit]
    INNER JOIN	    [Website]	ON [Visit].[WebsiteID]			=	[Website].[ID]
    LEFT JOIN   	[Producer]	ON [Visit].[ProducerCode]	=	[Producer].[Code]
    LEFT JOIN       [Category]	ON [Producer].[CategoryID]		=	[Category].[ID]
    LEFT JOIN       [Region]	ON [Producer].[RegionID]		=	[Region].[ID]
)
 
INSERT INTO		[TABELLONE]
SELECT * FROM	cteTabellone