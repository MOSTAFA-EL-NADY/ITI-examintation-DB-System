CREATE TABLE [dbo].[Exams] (
  [ex_id] [int] NOT NULL,
  [ex_model] [int] NULL,
  [curs_id] [int] NULL,
  [duration] [float] NULL,
  CONSTRAINT [PK_Exams] PRIMARY KEY CLUSTERED ([ex_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Exams]
  ADD CONSTRAINT [FK_Exams_Courses] FOREIGN KEY ([curs_id]) REFERENCES [dbo].[Courses] ([curs_id])
GO