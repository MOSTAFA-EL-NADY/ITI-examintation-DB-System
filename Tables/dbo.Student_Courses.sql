CREATE TABLE [dbo].[Student_Courses] (
  [std_id] [int] NOT NULL,
  [curs_id] [int] NOT NULL,
  [grade] [float] NULL,
  CONSTRAINT [PK_Student_Courses] PRIMARY KEY CLUSTERED ([std_id], [curs_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Student_Courses]
  ADD CONSTRAINT [FK_Student_Courses_Courses] FOREIGN KEY ([curs_id]) REFERENCES [dbo].[Courses] ([curs_id])
GO

ALTER TABLE [dbo].[Student_Courses]
  ADD CONSTRAINT [FK_Student_Courses_Students] FOREIGN KEY ([std_id]) REFERENCES [dbo].[Students] ([st_id])
GO