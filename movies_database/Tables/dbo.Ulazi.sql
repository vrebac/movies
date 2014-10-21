CREATE TABLE [dbo].[Ulazi]
(
[UlazID] [int] NOT NULL IDENTITY(1, 1),
[BrojFakture] [nvarchar] (20) COLLATE Bosnian_Latin_100_CI_AI NOT NULL,
[Datum] [datetime] NOT NULL,
[IznosRacuna] [decimal] (18, 2) NOT NULL,
[PDV] [numeric] (18, 2) NOT NULL,
[Napomena] [nvarchar] (500) COLLATE Bosnian_Latin_100_CI_AI NULL,
[SkladisteID] [int] NOT NULL,
[KorisnikID] [int] NOT NULL,
[DobavljacID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Ulazi] ADD CONSTRAINT [PK_Ulazi] PRIMARY KEY CLUSTERED  ([UlazID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Ulazi] ADD CONSTRAINT [FK_Ulazi_Dobavljaci] FOREIGN KEY ([DobavljacID]) REFERENCES [dbo].[Dobavljaci] ([DobavljacID])
GO
ALTER TABLE [dbo].[Ulazi] ADD CONSTRAINT [FK_Ulazi_Korisnici] FOREIGN KEY ([KorisnikID]) REFERENCES [dbo].[Korisnici] ([KorisnikID])
GO
ALTER TABLE [dbo].[Ulazi] ADD CONSTRAINT [FK_Ulazi_Skladista] FOREIGN KEY ([SkladisteID]) REFERENCES [dbo].[Skladista] ([SkladisteID])
GO
