CREATE TABLE [dbo].[JediniceMjere]
(
[JedinicaMjereID] [int] NOT NULL IDENTITY(1, 1),
[Naziv] [nvarchar] (10) COLLATE Bosnian_Latin_100_CI_AI NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[JediniceMjere] ADD CONSTRAINT [PK_JediniceMjere] PRIMARY KEY CLUSTERED  ([JedinicaMjereID]) ON [PRIMARY]
GO
