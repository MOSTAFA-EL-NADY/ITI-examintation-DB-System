CREATE TABLE [dbo].[Questions] (
  [ques_id] [int] NOT NULL,
  [ques_content] [text] NOT NULL,
  [ques_type] [varchar](50) NOT NULL,
  [correct_answer] [varchar](50) NOT NULL,
  CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED ([ques_id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

EXEC sp_bindrule @rulename = N'dbo.r1', @objname = N'dbo.Questions.ques_type'
GO