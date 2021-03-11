-- Input
-- 	SiteName	  'website4.it'
-- 	Produttore	  'PR1'
--	AttributeName	  'Email'
--	AttributeValue 'prod1website4@website4.it'
DECLARE @WebsiteID		as tinyint
DECLARE @ProducerCode	as char(3)
DECLARE @AttributeID	as int
 
SELECT	@WebsiteID = ID	  FROM [Website]	WHERE	[SiteName] 	= 'website4.it'
SELECT	@ProducerCode = Code  FROM [Producer]	WHERE	[Code] 	= 'PR1'
SELECT	@AttributeID = ID	  FROM [Attribute]	WHERE	[Name] 	= 'Email'
 
INSERT INTO [AttributeMap]
           ([WebsiteID]
           ,[ProducerCode]
           ,[AttributeID]
           ,[Value])
     VALUES
           (@WebsiteID
           ,@ProducerCode
           ,@AttributeID
           ,'prod1website4@website4.it')