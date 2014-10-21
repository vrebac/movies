CREATE TABLE [dbo].[Kupci]
(
[KupacID] [int] NOT NULL IDENTITY(1, 1),
[Ime] [nvarchar] (50) COLLATE Bosnian_Latin_100_CI_AI NOT NULL,
[Prezime] [nvarchar] (50) COLLATE Bosnian_Latin_100_CI_AI NOT NULL,
[DatumRegistracije] [datetime] NOT NULL,
[Email] [nvarchar] (100) COLLATE Bosnian_Latin_100_CI_AI NOT NULL,
[KorisnickoIme] [nvarchar] (50) COLLATE Bosnian_Latin_100_CI_AI NOT NULL,
[LozinkaHash] [nvarchar] (50) COLLATE Bosnian_Latin_100_CI_AI NOT NULL,
[LozinkaSalt] [nvarchar] (50) COLLATE Bosnian_Latin_100_CI_AI NOT NULL,
[Status] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Kupci] ADD CONSTRAINT [PK_Kupci] PRIMARY KEY CLUSTERED  ([KupacID]) ON [PRIMARY]
GO
