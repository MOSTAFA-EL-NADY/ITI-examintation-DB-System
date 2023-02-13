CREATE TABLE [dbo].[T_F_questions] (
  [ques_id] [int] NOT NULL,
  [option1] [varchar](50) NOT NULL,
  [option2] [varchar](50) NOT NULL,
  CONSTRAINT [PK_T_F_questions] PRIMARY KEY CLUSTERED ([ques_id])
)
ON [PRIMARY]
GO

EXEC sp_bindrule @rulename = N'dbo.r2', @objname = N'dbo.T_F_questions.option1'
GO

EXEC sp_bindrule @rulename = N'dbo.r2', @objname = N'dbo.T_F_questions.option2'
GO

ALTER TABLE [dbo].[T_F_questions]
  ADD CONSTRAINT [FK_T_F_questions_Questions] FOREIGN KEY ([ques_id]) REFERENCES [dbo].[Questions] ([ques_id])
GO