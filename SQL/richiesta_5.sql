-- Input
-- 	data inizio	2021-02-01
-- 	data fine	2021-02-28
-- 	siteName	website2.it
-- Output
-- 	numero di accessi
--
SELECT		[SiteName]			as 'Site Name',
			COUNT(*)			as 'Number'
FROM		[Visit]
INNER JOIN	[Website]			ON [Visit].[WebsiteID] = [Website].[ID]
WHERE		[IsClientFromMail]		 = 1
AND			[Date]		BETWEEN CONVERT(DATETIME, '2021-02-01T00:00:00', 126)
						AND     CONVERT(DATETIME, '2021-02-28T23:59:59', 126)
GROUP BY	[SiteName]
HAVING		[SiteName]			= 'website2.it'
