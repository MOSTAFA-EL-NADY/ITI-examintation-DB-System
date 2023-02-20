CREATE TABLE [dbo].[Exams] (
  [ex_id] [int] IDENTITY,
  [ex_model] [int] NULL,
  [curs_id] [int] NULL,
  [duration] [float] NULL,
  CONSTRAINT [PK_Exams] PRIMARY KEY CLUSTERED ([ex_id])
)
ON [PRIMARY]
GO

EXEC sp_bindefault @defname = N'dbo.examDuration', @objname = N'dbo.Exams.duration'
GO

EXEC sp_bindrule @rulename = N'dbo.examDurations', @objname = N'dbo.Exams.duration'
GO

ALTER TABLE [dbo].[Exams]
  ADD CONSTRAINT [FK_Exams_Courses] FOREIGN KEY ([curs_id]) REFERENCES [dbo].[Courses] ([curs_id])
GO