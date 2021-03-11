-- Input
-- 	sito web 	website1.it
--	produttore 	PR1
-- Output
-- 	tutti gli attributi dinamici disponibili
--
SELECT		[Attribute].[Name],  [AttributeMap].[value]
FROM		[Producer]		
INNER JOIN	[AttributeMap]	ON	[Producer].[Code]			= [AttributeMap].[ProducerCode]
INNER JOIN	[Website]		ON	[AttributeMap].[WebsiteID]	= [Website].[ID]
INNER JOIN	[Attribute]		ON	[Attribute].[ID] 			= [AttributeMap].[AttributeID]
WHERE		[Website].[SiteName] 	= 'website1.it'
AND			[Producer].[Code] 		= 'PR1'