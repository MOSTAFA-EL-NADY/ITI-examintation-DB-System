CREATE TABLE [dbo].[sysdiagrams] (
  [name] [sysname] NOT NULL,
  [principal_id] [int] NOT NULL,
  [diagram_id] [int] IDENTITY,
  [version] [int] NULL,
  [definition] [varbinary](max) NULL,
  PRIMARY KEY CLUSTERED ([diagram_id]),
  CONSTRAINT [UK_principal_name] UNIQUE ([principal_id], [name])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO