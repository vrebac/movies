CREATE TABLE [dbo].[Dobavljaci]
(
[DobavljacID] [int] NOT NULL IDENTITY(1, 1),
[Naziv] [nvarchar] (100) COLLATE Bosnian_Latin_100_CI_AI NOT NULL,
[KontaktOsoba] [nvarchar] (100) COLLATE Bosnian_Latin_100_CI_AI NULL,
[Adresa] [nvarchar] (100) COLLATE Bosnian_Latin_100_CI_AI NOT NULL,
[Telefon] [nvarchar] (25) COLLATE Bosnian_Latin_100_CI_AI NOT NULL,
[Fax] [nvarchar] (25) COLLATE Bosnian_Latin_100_CI_AI NULL,
[Web] [nvarchar] (100) COLLATE Bosnian_Latin_100_CI_AI NULL,
[Email] [nvarchar] (100) COLLATE Bosnian_Latin_100_CI_AI NOT NULL,
[ZiroRacuni] [nvarchar] (255) COLLATE Bosnian_Latin_100_CI_AI NULL,
[Napomena] [nvarchar] (500) COLLATE Bosnian_Latin_100_CI_AI NULL,
[Status] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Dobavljaci] ADD CONSTRAINT [PK_Dobavljaci] PRIMARY KEY CLUSTERED  ([DobavljacID]) ON [PRIMARY]
GO
