CREATE TABLE [dbo].[Exam_questions] (
  [ex_id] [int] NOT NULL,
  [ques_id] [int] NOT NULL,
  CONSTRAINT [PK_Exam_questions] PRIMARY KEY CLUSTERED ([ex_id], [ques_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Exam_questions]
  ADD CONSTRAINT [FK_Exam_questions_Exams] FOREIGN KEY ([ex_id]) REFERENCES [dbo].[Exams] ([ex_id])
GO

ALTER TABLE [dbo].[Exam_questions]
  ADD CONSTRAINT [FK_Exam_questions_Questions] FOREIGN KEY ([ques_id]) REFERENCES [dbo].[Questions] ([ques_id])
GO