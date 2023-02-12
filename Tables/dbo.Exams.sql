CREATE TABLE [dbo].[Exams] (
  [ex_id] [int] NOT NULL,
  [ex_model] [int] NULL,
  [full_mark] [int] NULL,
  [questions_num] [int] NULL,
  [duration] [float] NULL,
  CONSTRAINT [PK_Exams] PRIMARY KEY CLUSTERED ([ex_id])
)
ON [PRIMARY]
GO