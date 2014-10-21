CREATE TABLE [dbo].[Korisnici]
(
[KorisnikID] [int] NOT NULL IDENTITY(1, 1),
[Ime] [nvarchar] (50) COLLATE Bosnian_Latin_100_CI_AI NOT NULL,
[Prezime] [nvarchar] (50) COLLATE Bosnian_Latin_100_CI_AI NOT NULL,
[Email] [nvarchar] (100) COLLATE Bosnian_Latin_100_CI_AI NULL,
[Telefon] [nvarchar] (20) COLLATE Bosnian_Latin_100_CI_AI NULL,
[KorisnickoIme] [nvarchar] (50) COLLATE Bosnian_Latin_100_CI_AI NOT NULL,
[LozinkaHash] [nvarchar] (50) COLLATE Bosnian_Latin_100_CI_AI NOT NULL,
[LozinkaSalt] [nvarchar] (50) COLLATE Bosnian_Latin_100_CI_AI NOT NULL,
[Status] [bit] NOT NULL CONSTRAINT [DF_Korisnici_Status] DEFAULT ((1))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Korisnici] ADD CONSTRAINT [PK_Korisnici] PRIMARY KEY CLUSTERED  ([KorisnikID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Korisnici] ADD CONSTRAINT [CS_Email] UNIQUE NONCLUSTERED  ([Email]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Korisnici] ADD CONSTRAINT [CS_KorisnickoIme] UNIQUE NONCLUSTERED  ([KorisnickoIme]) ON [PRIMARY]
GO
