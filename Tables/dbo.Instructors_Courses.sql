CREATE TABLE [dbo].[Instructors_Courses] (
  [ins_id] [int] NOT NULL,
  [curs_id] [int] NOT NULL,
  [evaluation] [varchar](50) NULL,
  CONSTRAINT [PK_Instructors_Couses] PRIMARY KEY CLUSTERED ([ins_id], [curs_id])
)
ON [PRIMARY]
GO

EXEC sp_bindrule @rulename = N'dbo.instructors_evaluation', @objname = N'dbo.Instructors_Courses.evaluation'
GO

ALTER TABLE [dbo].[Instructors_Courses]
  ADD CONSTRAINT [FK_Instructors_Courses_Courses] FOREIGN KEY ([curs_id]) REFERENCES [dbo].[Courses] ([curs_id])
GO

ALTER TABLE [dbo].[Instructors_Courses]
  ADD CONSTRAINT [FK_Instructors_Courses_Instructors] FOREIGN KEY ([ins_id]) REFERENCES [dbo].[Instructors] ([ins_id])
GO