CREATE TABLE [dbo].[Departments] (
  [dep_id] [int] NOT NULL,
  [dep_name] [varchar](50) NULL,
  [dep_mgr] [int] NOT NULL,
  CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED ([dep_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Departments]
  ADD CONSTRAINT [FK_Departments_Instructors] FOREIGN KEY ([dep_mgr]) REFERENCES [dbo].[Instructors] ([ins_id])
GO