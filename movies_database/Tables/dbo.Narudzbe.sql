CREATE TABLE [dbo].[Narudzbe]
(
[NarudzbaID] [int] NOT NULL IDENTITY(1, 1),
[BrojNarudzbe] [nvarchar] (20) COLLATE Bosnian_Latin_100_CI_AI NOT NULL,
[KupacID] [int] NOT NULL,
[Datum] [datetime] NOT NULL,
[Status] [bit] NOT NULL,
[Otkazano] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Narudzbe] ADD CONSTRAINT [PK_Narudzbe] PRIMARY KEY CLUSTERED  ([NarudzbaID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Narudzbe] ADD CONSTRAINT [FK_Narudzbe_Kupci] FOREIGN KEY ([KupacID]) REFERENCES [dbo].[Kupci] ([KupacID])
GO
