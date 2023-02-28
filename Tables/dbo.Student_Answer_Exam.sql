﻿CREATE TABLE [dbo].[Student_Answer_Exam] (
  [std_id] [int] NOT NULL,
  [ex_id] [int] NOT NULL,
  [ques_id] [int] NOT NULL,
  [std_answer] [varchar](50) NULL,
  CONSTRAINT [PK_Student_Answer_Exam] PRIMARY KEY CLUSTERED ([std_id], [ex_id], [ques_id]),
  CONSTRAINT [student_answer] CHECK ([std_answer]='D' OR [std_answer]='C' OR [std_answer]='B' OR [std_answer]='A')
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Student_Answer_Exam]
  ADD CONSTRAINT [FK_Student_Answer_Exam_Exams] FOREIGN KEY ([ex_id]) REFERENCES [dbo].[Exams] ([ex_id])
GO

ALTER TABLE [dbo].[Student_Answer_Exam]
  ADD CONSTRAINT [FK_Student_Answer_Exam_Questions] FOREIGN KEY ([ques_id]) REFERENCES [dbo].[Questions] ([ques_id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[Student_Answer_Exam]
  ADD CONSTRAINT [FK_Student_Answer_Exam_Students] FOREIGN KEY ([std_id]) REFERENCES [dbo].[Students] ([st_id])
GO