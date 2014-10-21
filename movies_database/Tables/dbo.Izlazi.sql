CREATE TABLE [dbo].[Izlazi]
(
[IzlazID] [int] NOT NULL IDENTITY(1, 1),
[BrojRacuna] [nvarchar] (50) COLLATE Bosnian_Latin_100_CI_AI NOT NULL,
[Datum] [datetime] NOT NULL,
[KorisnikID] [int] NOT NULL,
[Zakljucen] [bit] NOT NULL,
[IznosBezPDV] [decimal] (18, 2) NOT NULL,
[IznosSaPDV] [decimal] (18, 2) NOT NULL,
[NarudzbaID] [int] NULL,
[SkladisteID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Izlazi] ADD CONSTRAINT [PK_Izlazi] PRIMARY KEY CLUSTERED  ([IzlazID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Izlazi] ADD CONSTRAINT [FK_Izlazi_Korisnici] FOREIGN KEY ([KorisnikID]) REFERENCES [dbo].[Korisnici] ([KorisnikID])
GO
ALTER TABLE [dbo].[Izlazi] ADD CONSTRAINT [FK_Izlazi_Narudzbe] FOREIGN KEY ([NarudzbaID]) REFERENCES [dbo].[Narudzbe] ([NarudzbaID])
GO
ALTER TABLE [dbo].[Izlazi] ADD CONSTRAINT [FK_Izlazi_Skladista] FOREIGN KEY ([SkladisteID]) REFERENCES [dbo].[Skladista] ([SkladisteID])
GO
