-- Input
-- 	sito web 	website1.it
-- Output
-- 	elenco dei produttori per i quali è richiesto produrre offerte commerciali
--
SELECT		[ProducerCode],
			[TemplateName]
FROM		[MailWriterJob]
INNER JOIN	[Website]		ON		[MailWriterJob].[WebsiteID]		= [Website].[ID]
INNER JOIN	[Producer]		ON		[MailWriterJob].[ProducerCode]	= [Producer].[Code]
WHERE		[Website].[SiteName] 	= 'website1.it'