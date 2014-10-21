CREATE TABLE [dbo].[Proizvodi]
(
[ProizvodID] [int] NOT NULL IDENTITY(1, 1),
[Naziv] [nvarchar] (50) COLLATE Bosnian_Latin_100_CI_AI NOT NULL,
[Sifra] [nvarchar] (20) COLLATE Bosnian_Latin_100_CI_AI NOT NULL,
[Cijena] [decimal] (5, 2) NOT NULL,
[VrstaID] [int] NOT NULL,
[JedinicaMjereID] [int] NOT NULL,
[Slika] [varbinary] (max) NULL,
[SlikaThumb] [varbinary] (max) NULL,
[Status] [bit] NOT NULL CONSTRAINT [DF_Artikli_Status] DEFAULT ((1))
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Proizvodi] ADD CONSTRAINT [PK_Proizvodi] PRIMARY KEY CLUSTERED  ([ProizvodID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Proizvodi] ADD CONSTRAINT [FK_Proizvodi_JediniceMjere] FOREIGN KEY ([JedinicaMjereID]) REFERENCES [dbo].[JediniceMjere] ([JedinicaMjereID])
GO
ALTER TABLE [dbo].[Proizvodi] ADD CONSTRAINT [FK_Proizvodi_VrsteProizvoda] FOREIGN KEY ([VrstaID]) REFERENCES [dbo].[VrsteProizvoda] ([VrstaID])
GO
