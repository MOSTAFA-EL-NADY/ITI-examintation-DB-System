CREATE TABLE [dbo].[Departments] (
  [dep_num] [int] NOT NULL,
  [dep_name] [varchar](50) NULL,
  CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED ([dep_num])
)
ON [PRIMARY]
GO