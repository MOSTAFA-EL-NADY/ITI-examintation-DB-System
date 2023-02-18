CREATE TABLE [dbo].[Mcq_questions] (
  [ques_id] [int] NOT NULL,
  [option1] [text] NOT NULL,
  [option2] [text] NOT NULL,
  [option3] [text] NULL,
  [option4] [text] NULL,
  CONSTRAINT [PK_Mcq_questions] PRIMARY KEY CLUSTERED ([ques_id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Mcq_questions]
  ADD CONSTRAINT [FK_Mcq_questions_Questions] FOREIGN KEY ([ques_id]) REFERENCES [dbo].[Questions] ([ques_id])
GO