CREATE TABLE [dbo].[VrsteProizvoda]
(
[VrstaID] [int] NOT NULL IDENTITY(1, 1),
[Naziv] [nvarchar] (50) COLLATE Bosnian_Latin_100_CI_AI NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VrsteProizvoda] ADD CONSTRAINT [PK_VrsteProizvoda] PRIMARY KEY CLUSTERED  ([VrstaID]) ON [PRIMARY]
GO
