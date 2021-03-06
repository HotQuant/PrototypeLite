CREATE TABLE [hq].[t_Recon_Map]
(
[MapId] [int] NOT NULL IDENTITY(1, 1),
[LeftObjSchema] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LeftObjName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LeftColName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RightObjSchema] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RightObjName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RightColName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KeyCol] [bit] NOT NULL CONSTRAINT [DF_t_Map_KeyCol] DEFAULT ((0)),
[Reconcile] [bit] NOT NULL CONSTRAINT [DF_t_Core_Mapping_Reconcile] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [hq].[t_Recon_Map] ADD CONSTRAINT [PK_t_Recon_Map] PRIMARY KEY CLUSTERED  ([MapId]) ON [PRIMARY]
GO
