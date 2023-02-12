CREATE TABLE [dbo].[Instructors_Couses] (
  [ins_id] [int] NOT NULL,
  [curs_id] [int] NULL,
  [evaluation] [char](10) NULL
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Instructors_Couses]
  ADD CONSTRAINT [FK_Instructors_Couses_Courses] FOREIGN KEY ([curs_id]) REFERENCES [dbo].[Courses] ([curs_id])
GO

ALTER TABLE [dbo].[Instructors_Couses]
  ADD CONSTRAINT [FK_Instructors_Couses_Instructors] FOREIGN KEY ([ins_id]) REFERENCES [dbo].[Instructors] ([ins_id])
GO