CREATE TABLE [dbo].[UlazStavke]
(
[UlazStavkaID] [int] NOT NULL IDENTITY(1, 1),
[UlazID] [int] NOT NULL,
[ProizvodID] [int] NOT NULL,
[Kolicina] [int] NOT NULL,
[Cijena] [decimal] (18, 2) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UlazStavke] ADD CONSTRAINT [PK_UlazStavke] PRIMARY KEY CLUSTERED  ([UlazStavkaID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UlazStavke] ADD CONSTRAINT [FK_UlazStavke_Proizvodi] FOREIGN KEY ([ProizvodID]) REFERENCES [dbo].[Proizvodi] ([ProizvodID])
GO
ALTER TABLE [dbo].[UlazStavke] ADD CONSTRAINT [FK_UlazStavke_Ulazi] FOREIGN KEY ([UlazID]) REFERENCES [dbo].[Ulazi] ([UlazID])
GO
