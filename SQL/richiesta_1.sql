-- Input
-- 	sito web 	website1.it
-- Output
-- 	tutte le regioni per cui sono disponibili produttori 
--
SELECT		[Region].[Name]
FROM		[Producer]		
INNER JOIN	[Region]		  	ON	[Producer].[RegionID]		= [Region].[ID]
INNER JOIN	[AttributeMap]	ON	[Producer].[Code]			= [AttributeMap].[ProducerCode]
INNER JOIN	[Website]		  	ON	[AttributeMap].[WebsiteID]	= [Website].[ID]
INNER JOIN	[Attribute]			ON	[Attribute].[ID]			= [AttributeMap].[AttributeID]
WHERE		[Website].[SiteName]	= 'website1.it'
GROUP BY	[Region].[Name]
