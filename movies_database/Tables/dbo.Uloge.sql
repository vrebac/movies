CREATE TABLE [dbo].[Uloge]
(
[UlogaID] [int] NOT NULL IDENTITY(1, 1),
[Naziv] [nvarchar] (50) COLLATE Bosnian_Latin_100_CI_AI NOT NULL,
[Opis] [nvarchar] (200) COLLATE Bosnian_Latin_100_CI_AI NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Uloge] ADD CONSTRAINT [PK_Uloge] PRIMARY KEY CLUSTERED  ([UlogaID]) ON [PRIMARY]
GO
