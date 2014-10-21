CREATE TABLE [dbo].[Skladista]
(
[SkladisteID] [int] NOT NULL IDENTITY(1, 1),
[Naziv] [nvarchar] (50) COLLATE Bosnian_Latin_100_CI_AI NOT NULL,
[Adresa] [nvarchar] (150) COLLATE Bosnian_Latin_100_CI_AI NULL,
[Opis] [nvarchar] (500) COLLATE Bosnian_Latin_100_CI_AI NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Skladista] ADD CONSTRAINT [PK_Skladista] PRIMARY KEY CLUSTERED  ([SkladisteID]) ON [PRIMARY]
GO
