CREATE TABLE [dbo].[IzlazStavke]
(
[IzlazStavkaID] [int] NOT NULL IDENTITY(1, 1),
[IzlazID] [int] NOT NULL,
[ProizvodID] [int] NOT NULL,
[Kolicina] [int] NOT NULL,
[Cijena] [decimal] (18, 2) NOT NULL,
[Popust] [decimal] (5, 2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IzlazStavke] ADD CONSTRAINT [PK_IzlazStavke] PRIMARY KEY CLUSTERED  ([IzlazStavkaID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IzlazStavke] ADD CONSTRAINT [FK_IzlazStavke_Izlazi] FOREIGN KEY ([IzlazID]) REFERENCES [dbo].[Izlazi] ([IzlazID])
GO
ALTER TABLE [dbo].[IzlazStavke] ADD CONSTRAINT [FK_IzlazStavke_Proizvodi] FOREIGN KEY ([ProizvodID]) REFERENCES [dbo].[Proizvodi] ([ProizvodID])
GO
