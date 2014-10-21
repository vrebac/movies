CREATE TABLE [dbo].[NarudzbaStavke]
(
[NarudzbaStavkaID] [int] NOT NULL IDENTITY(1, 1),
[NarudzbaID] [int] NOT NULL,
[ProizvodID] [int] NOT NULL,
[Kolicina] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NarudzbaStavke] ADD CONSTRAINT [PK_NarudzbaStavke] PRIMARY KEY CLUSTERED  ([NarudzbaStavkaID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NarudzbaStavke] ADD CONSTRAINT [FK_NarudzbaStavke_Narudzbe] FOREIGN KEY ([NarudzbaID]) REFERENCES [dbo].[Narudzbe] ([NarudzbaID])
GO
ALTER TABLE [dbo].[NarudzbaStavke] ADD CONSTRAINT [FK_NarudzbaStavke_Proizvodi] FOREIGN KEY ([ProizvodID]) REFERENCES [dbo].[Proizvodi] ([ProizvodID])
GO
