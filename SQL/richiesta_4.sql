-- Input
-- 	sito web 	website1.it
-- 	nome utente 	user1
-- 	password 	password
-- Output
-- 	elenco dei produttori per i quali è richiesto produrre offerte commerciali
--
 WITH cteUserLogin ([SiteName], [UserName], [Password]) AS (
    SELECT	[SiteName], 
		[UserName],
		[Password]
    FROM		[User]
    INNER JOIN	[Website] ON [Website].[ID] = [User].[WebsiteID]
)
 
SELECT CASE
	(	SELECT		COUNT(*)
		FROM		[cteUserLogin]
		WHERE		[SiteName]		=	'website1.it'
				AND [UserName]		=	'user1'
				AND [Password]		=	'password')
WHEN		1		THEN	'True'
ELSE						'False'
END		AS					'Result'