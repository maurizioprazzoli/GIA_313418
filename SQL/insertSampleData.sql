use [GIA_313418]

-- Inserimento valori di prova

-- Popolo Tabella [Category]
DELETE FROM [Category];
INSERT INTO [Category] VALUES ('1', 'CATEGORY1');

-- Popolo Tabella [Region]
DELETE FROM [Region];
INSERT INTO [Region] VALUES (1, 'EMILIA');
INSERT INTO [Region] VALUES (2, 'LOMBARDIA');

-- Popolo Tabella [Producer]
DELETE FROM [Producer];
INSERT INTO [Producer] VALUES ('PR1',	1,	1,	'pr1.htm');
INSERT INTO [Producer] VALUES ('PR2',	1,	1,	'pr2.htm');
INSERT INTO [Producer] VALUES ('PR3',	1,	2,	'pr3.htm');
INSERT INTO [Producer] VALUES ('CLL',	1,	2,	'cll.htm');
INSERT INTO [Producer] VALUES ('VOG',	1,	2,	'vog.htm');
INSERT INTO [Producer] VALUES ('SER',	1,	2,	'ser.htm');
INSERT INTO [Producer] VALUES ('TDP',	1,	2,	'tdp.htm');
INSERT INTO [Producer] VALUES ('BAR',	1,	2,	'bar.htm');
INSERT INTO [Producer] VALUES ('MLA',	1,	2,	'mla.htm');
INSERT INTO [Producer] VALUES ('COR',	1,	2,	'cor.htm');
INSERT INTO [Producer] VALUES ('PGG',	1,	2,	'pgg.htm');
INSERT INTO [Producer] VALUES ('PAS',	1,	2,	'pas.htm');
INSERT INTO [Producer] VALUES ('CAF',	1,	2,	'caf.htm');
INSERT INTO [Producer] VALUES ('SIL',	1,	2,	'sil.htm');
INSERT INTO [Producer] VALUES ('CBE',	1,	2,	'cbe.htm');
INSERT INTO [Producer] VALUES ('TRA',	1,	2,	'tra.htm');
INSERT INTO [Producer] VALUES ('MCE',	1,	2,	'mce.htm');
INSERT INTO [Producer] VALUES ('BON',	1,	2,	'bon.htm');
INSERT INTO [Producer] VALUES ('SNI',	1,	2,	'sni.htm');
INSERT INTO [Producer] VALUES ('ERA',	1,	2,	'era.htm');
INSERT INTO [Producer] VALUES ('BRU',	1,	2,	'bru.htm');
INSERT INTO [Producer] VALUES ('BRD',	1,	2,	'brd.htm');
INSERT INTO [Producer] VALUES ('AIM',	1,	2,	'aim.htm');
INSERT INTO [Producer] VALUES ('FEU',	1,	2,	'feu.htm');

-- Popolo Tabella [ProducerDetail]
DELETE FROM [ProducerDetail];
INSERT INTO [ProducerDetail] VALUES ('PR1',	'pr1.jpg', 0x);
INSERT INTO [ProducerDetail] VALUES ('PR3',	'pr3.jpg', 0x);
INSERT INTO [ProducerDetail] VALUES ('VOG',	'vog.jpg', 0x);
INSERT INTO [ProducerDetail] VALUES ('TDP',	'tdp.jpg', 0x);
INSERT INTO [ProducerDetail] VALUES ('MLA',	'mla.jpg', 0x);
INSERT INTO [ProducerDetail] VALUES ('PGG',	'pgg.jpg', 0x);
INSERT INTO [ProducerDetail] VALUES ('CAF',	'caf.jpg', 0x);
INSERT INTO [ProducerDetail] VALUES ('CBE',	'cbe.jpg', 0x);
INSERT INTO [ProducerDetail] VALUES ('MCE',	'mce.jpg', 0x);
INSERT INTO [ProducerDetail] VALUES ('SNI',	'sni.jpg', 0x);
INSERT INTO [ProducerDetail] VALUES ('BRU',	'bru.jpg', 0x);
INSERT INTO [ProducerDetail] VALUES ('AIM',	'aim.jpg', 0x);

-- Popolo Tabella [Website]
DELETE FROM [Website];
INSERT INTO [Website] VALUES (1,	'website1.it',	'WEBSITE1');
INSERT INTO [Website] VALUES (2,	'website2.it',	'WEBSITE2');
INSERT INTO [Website] VALUES (3,	'website3.it',	'WEBSITE3');

-- Popolo Tabella [Attribute]
DELETE FROM [Attribute];
INSERT INTO [Attribute] VALUES (1, 'CodeLong');
INSERT INTO [Attribute] VALUES (2, 'ProducerName');
INSERT INTO [Attribute] VALUES (3, 'Email');

-- Popolo Tabella MAP
DELETE FROM [AttributeMap];
INSERT INTO [AttributeMap] VALUES ( 1, 'PR1', 1, 'PROD_1');
INSERT INTO [AttributeMap] VALUES ( 1, 'PR1', 2, 'PRODUTTORE1_WEBSITE1');
INSERT INTO [AttributeMap] VALUES ( 1, 'PR1', 3, 'prod1website1@website1.it');
INSERT INTO [AttributeMap] VALUES ( 1, 'PR2', 1, 'PROD_2');
INSERT INTO [AttributeMap] VALUES ( 1, 'PR2', 2, 'PRODUTTORE2_WEBSITE1');
INSERT INTO [AttributeMap] VALUES ( 1, 'PR2', 3, 'prod2website1@website1.it');
INSERT INTO [AttributeMap] VALUES ( 1, 'PR3', 1, 'PROD_3');
INSERT INTO [AttributeMap] VALUES ( 1, 'PR3', 2, 'PRODUTTORE3_WEBSITE1');
INSERT INTO [AttributeMap] VALUES ( 1, 'PR3', 3, 'prod3website1@website1.it');
INSERT INTO [AttributeMap] VALUES ( 2, 'PR1', 1, 'PROD_1');
INSERT INTO [AttributeMap] VALUES ( 2, 'PR1', 2, 'PRODUTTORE1_WEBSITE2');
INSERT INTO [AttributeMap] VALUES ( 2, 'PR1', 3, 'prod1website2@website2.it');
INSERT INTO [AttributeMap] VALUES ( 2, 'PR2', 1, 'PROD_2');
INSERT INTO [AttributeMap] VALUES ( 2, 'PR2', 2, 'PRODUTTORE2_WEBSITE2');
INSERT INTO [AttributeMap] VALUES ( 2, 'PR2', 3, 'prod2website2@website2.it');
INSERT INTO [AttributeMap] VALUES ( 3, 'PR1', 1, 'PROD_1');
INSERT INTO [AttributeMap] VALUES ( 3, 'PR1', 2, 'PRODUTTORE1_WEBSITE3');
INSERT INTO [AttributeMap] VALUES ( 3, 'PR1', 3, 'prod1website3@website3.it');

-- Popolo Tabella MAILWRITER_JOB
DELETE FROM [MailWriterJob];
INSERT INTO [MailWriterJob] VALUES ( 1, 'PR1');
INSERT INTO [MailWriterJob] VALUES ( 1, 'PR2');
INSERT INTO [MailWriterJob] VALUES ( 1, 'PR3');
INSERT INTO [MailWriterJob] VALUES ( 2, 'PR1');
INSERT INTO [MailWriterJob] VALUES ( 3, 'PR2');

-- Popolo Tabella USERS
DELETE FROM [User];
INSERT INTO [User] VALUES (1,	'user1',	'password',		1);
INSERT INTO [User] VALUES (2,	'user2',	'password',		2);
INSERT INTO [User] VALUES (3,	'user3',	'password',		3);

-- Popolo Tabella VISITE
DELETE FROM [Visit];
INSERT INTO [Visit] VALUES (1,		1,	'counter.asp',	 		 null,	CONVERT(datetime, '2021-02-11T13:31:15', 126),	'it',	 			'192.168.0.2',	 1,	 '',	 					 0,	 '',																 '113255873');
INSERT INTO [Visit] VALUES (2,		1,	'cll01.asp',	 		'CLL',	CONVERT(datetime, '2021-02-11T16:07:49', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 'http://www.website1.it/root/menu.htm',							 '879917822');
INSERT INTO [Visit] VALUES (3,		1,	'vog01.asp',	 		'VOG',	CONVERT(datetime, '2021-02-11T16:08:20', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 'http://www.website1.it/root/menu.htm',							 '879917822');
INSERT INTO [Visit] VALUES (4,		1,	'vog02.asp',	 		'VOG',	CONVERT(datetime, '2021-02-11T16:08:26', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 'http://www.website1.it/private/wines/vog/vog01.asp',				 '879917822');
INSERT INTO [Visit] VALUES (5,		1,	'vog03.asp',	 		'VOG',	CONVERT(datetime, '2021-02-11T16:08:30', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 'http://www.website1.it/private/wines/vog/vog02.asp',				 '879917822');
INSERT INTO [Visit] VALUES (6,		1,	'counter.asp',	 		 null,	CONVERT(datetime, '2021-02-11T16:08:46', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 '',																 '879917822');
INSERT INTO [Visit] VALUES (7,		1,	'default.asp',	 		 null,	CONVERT(datetime, '2021-02-11T16:18:44', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 'http://www.website1.it/root/menu.htm',							 '879917822');
INSERT INTO [Visit] VALUES (8,		1,	'ser01.asp',	 		'SER',	CONVERT(datetime, '2021-02-11T16:18:49', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 'http://www.website1.it/private/delicatessen/',					 '879917822');
INSERT INTO [Visit] VALUES (9,		1,	'ser02.asp',	 		'SER',	CONVERT(datetime, '2021-02-11T16:18:54', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 'http://www.website1.it/private/delicatessen/ser/ser01.asp',		 '879917822');
INSERT INTO [Visit] VALUES (10,		1,	'ser01.asp',	 		'SER',	CONVERT(datetime, '2021-02-11T16:18:59', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 'http://www.website1.it/private/delicatessen/ser/ser02.asp',		 '879917822');
INSERT INTO [Visit] VALUES (11,		1,	'ser03.asp',	 		'SER',	CONVERT(datetime, '2021-02-11T16:19:00', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 'http://www.website1.it/private/delicatessen/ser/ser01.asp',		 '879917822');
INSERT INTO [Visit] VALUES (12,		1,	'ser01.asp',	 		'SER',	CONVERT(datetime, '2021-02-11T16:19:03', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 'http://www.website1.it/private/delicatessen/ser/ser03.asp',		 '879917822');
INSERT INTO [Visit] VALUES (13,		1,	'ser04.asp',	 		'SER',	CONVERT(datetime, '2021-02-11T16:19:04', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 'http://www.website1.it/private/delicatessen/ser/ser01.asp',		 '879917822');
INSERT INTO [Visit] VALUES (14,		1,	'ser01.asp',	 		'SER',	CONVERT(datetime, '2021-02-11T16:19:06', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 'http://www.website1.it/private/delicatessen/ser/ser04.asp',		 '879917822');
INSERT INTO [Visit] VALUES (15,		1,	'default.asp',	 		 null,	CONVERT(datetime, '2021-02-11T16:19:11', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 'http://www.website1.it/root/menu.htm',							 '879917822');
INSERT INTO [Visit] VALUES (16,		1,	'tdp01.asp',	 		'TDP',	CONVERT(datetime, '2021-02-11T16:19:16', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 'http://www.website1.it/root/menu.htm',							 '879917822');
INSERT INTO [Visit] VALUES (17,		1,	'vog01.asp',	 		'VOG',	CONVERT(datetime, '2021-02-11T16:22:13', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 1,	 'http://www.website1.it/private/mail/ENG/ari.htm',					 '879917822');
INSERT INTO [Visit] VALUES (18,		1,	'bar01.asp',	 		'BAR',	CONVERT(datetime, '2021-02-11T22:02:18', 126),	'it',	 			'192.168.0.2',	 1,	 '',	 					 0,	 'http://www.website1.it/root/menu.htm',							 '113255939');
INSERT INTO [Visit] VALUES (19,		2,	'vino.asp',	 			 null,	CONVERT(datetime, '2021-02-11T22:42:17', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (20,		2,	'vino.asp',	 			 null,	CONVERT(datetime, '2021-02-11T22:43:32', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (21,		2,	'mla01.asp',	 		'MLA',	CONVERT(datetime, '2021-02-11T22:55:37', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (22,		2,	'vino.asp',	 			 null,	CONVERT(datetime, '2021-02-12T00:31:51', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (23,		2,	'vino.asp',	 			 null,	CONVERT(datetime, '2021-02-12T01:14:26', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (24,		2,	'spumanti.asp',	 		 null,	CONVERT(datetime, '2021-02-12T01:14:32', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (25,		2,	'bon01.asp?M=true',		 null,	CONVERT(datetime, '2021-02-12T01:16:58', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 1,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (26,		2,	'about_us.asp',	 		 null,	CONVERT(datetime, '2021-02-12T01:30:38', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (27,		2,	'vino.asp',	 			 null,	CONVERT(datetime, '2021-02-12T15:52:20', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 null,																 '126160167');
INSERT INTO [Visit] VALUES (28,		1,	'cor01.asp',	 		'COR',	CONVERT(datetime, '2021-02-12T17:20:56', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 'http://www.website1.it/root/menu.htm',							 '879917822');
INSERT INTO [Visit] VALUES (29,		1,	'cor01.asp',	 		'COR',	CONVERT(datetime, '2021-02-12T18:31:57', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 'http://www.website1.it/root/menu.htm',							 '879917822');
INSERT INTO [Visit] VALUES (30,		1,	'bar01.asp',	 		'BAR',	CONVERT(datetime, '2021-02-12T18:49:23', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 'http://www.website1.it/root/menu.htm',							 '879917822');
INSERT INTO [Visit] VALUES (31,		1,	'pgg01.asp',	 		'PGG',	CONVERT(datetime, '2021-02-12T18:52:02', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 'http://www.website1.it/root/menu.htm',							 '879917822');
INSERT INTO [Visit] VALUES (32,		1,	'pgg01.asp',	 		'PGG',	CONVERT(datetime, '2021-02-12T18:56:36', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 'http://www.website1.it/root/menu.htm',							 '879917822');
INSERT INTO [Visit] VALUES (33,		1,	'cll01.asp',	 		'CLL',	CONVERT(datetime, '2021-02-12T18:56:44', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 'http://www.website1.it/root/menu.htm',							 '879917822');
INSERT INTO [Visit] VALUES (34,		1,	'cll02.asp',	 		'CLL',	CONVERT(datetime, '2021-02-12T18:58:54', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 'http://www.website1.it/private/wines/cll/cll01.asp',				 '879917822');
INSERT INTO [Visit] VALUES (35,		1,	'cll01.asp',	 		'CLL',	CONVERT(datetime, '2021-02-12T19:00:12', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 'http://www.website1.it/private/wines/cll/cll02.asp',				 '879917822');
INSERT INTO [Visit] VALUES (36,		1,	'cll02.asp',	 		'CLL',	CONVERT(datetime, '2021-02-12T19:00:15', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 'http://www.website1.it/private/wines/cll/cll01.asp',				 '879917822');
INSERT INTO [Visit] VALUES (37,		1,	'cll01.asp',	 		'CLL',	CONVERT(datetime, '2021-02-12T19:07:32', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 'http://www.website1.it/private/wines/cll/cll02.asp',				 '879917822');
INSERT INTO [Visit] VALUES (38,		1,	'cll02.asp',	 		'CLL',	CONVERT(datetime, '2021-02-12T19:08:32', 126),	'it',	 			'192.168.0.1',	 0,	 '',	 					 0,	 'http://www.website1.it/private/wines/cll/cll01.asp',				 '879917822');
INSERT INTO [Visit] VALUES (39,		2,	'vino.asp',	 			 null,	CONVERT(datetime, '2021-02-13T13:31:56', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (40,		2,	'mla01.asp',	 		'MLA',	CONVERT(datetime, '2021-02-13T13:32:08', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (41,		2,	'vino.asp',	 			 null,	CONVERT(datetime, '2021-02-13T13:32:58', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (42,		2,	'mla01.asp',	 		'MLA',	CONVERT(datetime, '2021-02-13T13:33:10', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (43,		2,	'vino.asp',	 			 null,	CONVERT(datetime, '2021-02-13T13:41:24', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (44,		2,	'delicatesse.asp',	 	 null,	CONVERT(datetime, '2021-02-13T13:41:39', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (45,		2,	'spumanti.asp',	 		 null,	CONVERT(datetime, '2021-02-13T13:42:04', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (46,		2,	'delicatesse.asp',	 	 null,	CONVERT(datetime, '2021-02-13T13:42:10', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (47,		2,	'pasta.asp',	 		'PAS',	CONVERT(datetime, '2021-02-13T13:42:12', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (48,		1,	'cor01.asp',	 		'COR',	CONVERT(datetime, '2021-02-13T13:44:30', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 'http://www.website1.it/root/menu.htm',							 '113255939');
INSERT INTO [Visit] VALUES (49,		1,	'pgg01.asp',	 		'PGG',	CONVERT(datetime, '2021-02-13T13:45:09', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 'http://www.website1.it/root/menu.htm',							 '113255939');
INSERT INTO [Visit] VALUES (50,		1,	'pgg02.asp',	 		'PGG',	CONVERT(datetime, '2021-02-13T13:45:52', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 'http://www.website1.it/private/wines/pgg/pgg01.asp',				 '113255939');
INSERT INTO [Visit] VALUES (51,		1,	'pgg03.asp',	 		'PGG',	CONVERT(datetime, '2021-02-13T13:46:15', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 'http://www.website1.it/private/wines/pgg/pgg02.asp',				 '113255939');
INSERT INTO [Visit] VALUES (52,		1,	'pgg04.asp',	 		'PGG',	CONVERT(datetime, '2021-02-13T13:46:53', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 'http://www.website1.it/private/wines/pgg/pgg03.asp',				 '113255939');
INSERT INTO [Visit] VALUES (53,		2,	'vino.asp',	 			null,	CONVERT(datetime, '2021-02-13T13:50:04', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (54,		2,	'caffe.asp',	 		'CAF',	CONVERT(datetime, '2021-02-13T13:50:36', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (55,		2,	'caffe.asp',	 		'CAF',	CONVERT(datetime, '2021-02-13T13:51:12', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (56,		2,	'caffe.asp',	 		'CAF',	CONVERT(datetime, '2021-02-13T13:51:13', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (57,		2,	'vino.asp',	 			 null,	CONVERT(datetime, '2021-02-13T14:06:22', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (58,		2,	'sil01.asp',	 		'SIL',	CONVERT(datetime, '2021-02-13T14:07:38', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (59,		1,	'default.asp',	 		 null,	CONVERT(datetime, '2021-02-13T22:52:13', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 '',																 '113255939');
INSERT INTO [Visit] VALUES (60,		1,	'description_it.asp',	 null,	CONVERT(datetime, '2021-02-13T22:52:35', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 'http://www.website1.it/private/hotel/',							 '113255939');
INSERT INTO [Visit] VALUES (61,		1,	'default.asp',	 		 null,	CONVERT(datetime, '2021-02-13T22:55:17', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 '',																 '113255939');
INSERT INTO [Visit] VALUES (62,		1,	'default.asp',	 		 null,	CONVERT(datetime, '2021-02-13T22:57:21', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 '',																 '113255939');
INSERT INTO [Visit] VALUES (63,		1,	'description_it.asp',	 null,	CONVERT(datetime, '2021-02-13T22:57:31', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 'http://www.website1.it/private/hotel/',							 '113255939');
INSERT INTO [Visit] VALUES (64,		1,	'default.asp',	 		 null,	CONVERT(datetime, '2021-02-13T22:57:39', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 'http://www.website1.it/private/hotel/description_it.asp',			 '113255939');
INSERT INTO [Visit] VALUES (65,		1,	'description_en.asp',	 null,	CONVERT(datetime, '2021-02-13T22:57:41', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 'http://www.website1.it/private/hotel/default.asp',				 '113255939');
INSERT INTO [Visit] VALUES (66,		1,	'default.asp',	 		 null,	CONVERT(datetime, '2021-02-13T22:57:45', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 'http://www.website1.it/private/hotel/description_en.asp',			 '113255939');
INSERT INTO [Visit] VALUES (67,		1,	'description_de.asp', 	 null,	CONVERT(datetime, '2021-02-13T22:57:51', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 'http://www.website1.it/private/hotel/default.asp',				 '113255939');
INSERT INTO [Visit] VALUES (68,		1,	'description_de.asp', 	 null,	CONVERT(datetime, '2021-02-13T22:59:13', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 'http://www.website1.it/private/hotel/default.asp',				 '113255939');
INSERT INTO [Visit] VALUES (69,		1,	'description_de.asp', 	 null,	CONVERT(datetime, '2021-02-13T22:59:33', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 'http://www.website1.it/private/hotel/default.asp',				 '113255939');
INSERT INTO [Visit] VALUES (70,		1,	'default.asp',			 null,	CONVERT(datetime, '2021-02-13T23:00:00', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 0,	 'http://www.website1.it/private/hotel/description_de.asp',			 '113255939');
INSERT INTO [Visit] VALUES (71,		2,	'bon01.asp?M=true',		 null,	CONVERT(datetime, '2021-02-13T23:48:34', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 1,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (72,		2,	'bon01.asp?M=true',		 null,	CONVERT(datetime, '2021-02-13T23:48:43', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 1,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (73,		2,	'bon01.asp?M=true',		 null,	CONVERT(datetime, '2021-02-13T23:54:18', 126),	'it',	 			'192.168.0.2',	 0,	 '',	 					 1,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (74,		1,	'bar01.asp',	 		'BAR',	CONVERT(datetime, '2021-02-19T14:27:52', 126),	'en-us,	en;q=0.5',	'192.168.0.3',	 0,	 '',	 					 0,	 null,																 '113255949');
INSERT INTO [Visit] VALUES (75,		1,	'cll01.asp',	 		'CLL',	CONVERT(datetime, '2021-02-19T20:00:19', 126),	'it',	 			'192.168.0.4',	 0,	 'customer@customer.com',	 1,	 null,																 '494338039');
INSERT INTO [Visit] VALUES (76,		1,	'cll01.asp',	 		'CLL',	CONVERT(datetime, '2021-02-19T20:00:29', 126),	'it',	 			'192.168.0.4',	 0,	 'customer@customer.com',	 1,	 null,																 '494338039');
INSERT INTO [Visit] VALUES (77,		1,	'cll01.asp',	 		'CLL',	CONVERT(datetime, '2021-02-19T20:00:31', 126),	'it',	 			'192.168.0.4',	 0,	 'customer@customer.com',	 1,	 null,																 '494338039');
INSERT INTO [Visit] VALUES (78,		2,	'vino.asp',	 			 null,	CONVERT(datetime, '2021-02-19T20:01:23', 126),	'it',	 			'192.168.0.4',	 0,	 'user@user.it',	 		 1,	 null,																 '272466552');
INSERT INTO [Visit] VALUES (79,		2,	'cbe01.asp',	 		'CBE',	CONVERT(datetime, '2021-02-19T20:01:28', 126),	'it',	 			'192.168.0.4',	 0,	 'user@user.it',	 		 1,	 null,																 '272466552');
INSERT INTO [Visit] VALUES (80,		1,	'tra02.asp',	 		'TRA',	CONVERT(datetime, '2021-02-19T20:35:54', 126),	'',	 				'192.168.0.5',	 1,	 '',	 					 0,	 '',																 '113256463');
INSERT INTO [Visit] VALUES (81,		1,	'tdp01.asp',	 		'TDP',	CONVERT(datetime, '2021-02-19T20:54:42', 126),	'',	 				'192.168.0.6',	 1,	 '',	 					 0,	 '',																 '113256467');
INSERT INTO [Visit] VALUES (82,		1,	'mce01.asp',	 		'MCE',	CONVERT(datetime, '2021-02-19T23:08:46', 126),	'',	 				'192.168.0.7',	 1,	 '',	 					 0,	 '',																 '113256477');
INSERT INTO [Visit] VALUES (83,		1,	'bon01.asp',	 		'BON',	CONVERT(datetime, '2021-02-19T23:35:58', 126),	'',	 				'192.168.0.8',	 1,	 '',	 					 0,	 '',																 '113256481');
INSERT INTO [Visit] VALUES (84,		1,	'vog01.asp',	 		'VOG',	CONVERT(datetime, '2021-02-20T05:20:29', 126),	'',	 				'192.168.0.9',	 1,	 '',	 					 0,	 '',																 '113256531');
INSERT INTO [Visit] VALUES (85,		1,	'mce04.asp',	 		'MCE',	CONVERT(datetime, '2021-02-20T06:47:54', 126),	'en-us',	 		'192.168.0.10',	 1,	 '',	 					 0,	 'http://search.yahoo.com/search?p=autoclave%2Bwine&sm=Yahoo',		 '113256547');
INSERT INTO [Visit] VALUES (86,		1,	'pgg04.asp',	 		'PGG',	CONVERT(datetime, '2021-02-20T06:48:37', 126),	'',	 				'192.168.0.11',	 1,	 '',	 					 0,	 '',																 '113256551');
INSERT INTO [Visit] VALUES (87,		2,	'mce01.asp',	 		'MCE',	CONVERT(datetime, '2021-02-20T06:49:41', 126),	'en-us',	 		'192.168.0.12',	 1,	 '',	 					 0,	 null,																 '113256559');
INSERT INTO [Visit] VALUES (88,		1,	'ser04.asp',	 		'SER',	CONVERT(datetime, '2021-02-20T08:13:55', 126),	'',	 				'192.168.0.13',	 1,	 '',	 					 0,	 '',																 '113256623');
INSERT INTO [Visit] VALUES (89,		1,	'sni01.asp',	 		'SNI',	CONVERT(datetime, '2021-02-20T10:49:00', 126),	'',	 				'192.168.0.14',	 1,	 '',	 					 0,	 '',																 '113256653');
INSERT INTO [Visit] VALUES (90,		1,	'era01.asp',	 		'ERA',	CONVERT(datetime, '2021-02-20T12:42:33', 126),	'',	 				'192.168.0.15',	 1,	 '',	 					 0,	 '',																 '113256681');
INSERT INTO [Visit] VALUES (91,		1,	'tdp01.asp',	 		'TDP',	CONVERT(datetime, '2021-02-20T14:17:17', 126),	'en-gb',	 		'192.168.0.16',	 1,	 '',	 					 0,	 'http://uk.search.yahoo.com/search?p=pagus+wine&meta=vc%3D',		 '113256695');
INSERT INTO [Visit] VALUES (92,		1,	'pgg01.asp',	 		'PGG',	CONVERT(datetime, '2021-02-20T15:27:29', 126),	'',	 				'192.168.0.17',	 1,	 '',	 					 0,	 '',																 '113256707');
INSERT INTO [Visit] VALUES (93,		2,	'bru01.asp',	 		'BRU',	CONVERT(datetime, '2021-02-20T15:43:45', 126),	'en-us',	 		'192.168.0.18',	 0,	 '',	 					 0,	 null,																 '302553694');
INSERT INTO [Visit] VALUES (94,		2,	'vino.asp',	 			 null,	CONVERT(datetime, '2021-02-20T16:38:09', 126),	'nl',	 			'192.168.0.19',	 0,	 '',	 					 0,	 null,																 '514430656');
INSERT INTO [Visit] VALUES (95,		2,	'vino.asp',	 			 null,	CONVERT(datetime, '2021-02-20T16:38:44', 126),	'nl',	 			'192.168.0.19',	 0,	 '',	 					 0,	 null,																 '271581174');
INSERT INTO [Visit] VALUES (96,		2,	'brd01.asp',	 		'BRD',	CONVERT(datetime, '2021-02-20T16:38:54', 126),	'nl',	 			'192.168.0.19',	 0,	 '',	 					 0,	 null,																 '271581174');
INSERT INTO [Visit] VALUES (97,		2,	'aim01.asp',	 		'AIM',	CONVERT(datetime, '2021-02-20T16:39:51', 126),	'nl',	 			'192.168.0.19',	 0,	 '',	 					 0,	 null,																 '271581174');
INSERT INTO [Visit] VALUES (98,		2,	'feu01.asp',	 		'FEU',	CONVERT(datetime, '2021-02-20T16:40:03', 126),	'nl',	 			'192.168.0.19',	 0,	 '',	 					 0,	 null,																 '271581174');
INSERT INTO [Visit] VALUES (99,		2,	'cll01.asp',	 		'CLL',	CONVERT(datetime, '2021-02-20T16:40:12', 126),	'nl',	 			'192.168.0.19',	 0,	 '',	 					 0,	 null,																 '271581174');
INSERT INTO [Visit] VALUES (100,	2,	'cll02.asp',	 		'CLL',	CONVERT(datetime, '2021-02-20T16:40:20', 126),	'nl',	 			'192.168.0.19',	 0,	 '',	 					 0,	 null,																 '271581174');