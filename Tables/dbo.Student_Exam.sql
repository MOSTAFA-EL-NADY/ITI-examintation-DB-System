CREATE TABLE [dbo].[Student_Exam] (
  [std_id] [int] NOT NULL,
  [ex_id] [int] NOT NULL,
  [grade] [int] NOT NULL,
  CONSTRAINT [PK_Student_Exam] PRIMARY KEY CLUSTERED ([std_id], [ex_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Student_Exam]
  ADD CONSTRAINT [FK_Student_Exam_Exams] FOREIGN KEY ([ex_id]) REFERENCES [dbo].[Exams] ([ex_id])
GO

ALTER TABLE [dbo].[Student_Exam]
  ADD CONSTRAINT [FK_Student_Exam_Students] FOREIGN KEY ([std_id]) REFERENCES [dbo].[Students] ([st_id])
GO