CREATE TABLE [dbo].[Mcq_questions] (
  [ques_id] [int] NOT NULL,
  [option1] [varchar](50) NOT NULL,
  [option2] [varchar](50) NOT NULL,
  [option3] [varchar](50) NOT NULL,
  [option4] [varchar](50) NOT NULL,
  CONSTRAINT [PK_Mcq_questions] PRIMARY KEY CLUSTERED ([ques_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Mcq_questions]
  ADD CONSTRAINT [FK_Mcq_questions_Questions] FOREIGN KEY ([ques_id]) REFERENCES [dbo].[Questions] ([ques_id])
GO