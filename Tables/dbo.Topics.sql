CREATE TABLE [dbo].[Topics] (
  [topic_id] [int] NOT NULL,
  [topic_name] [varchar](50) NULL,
  [curs_id] [int] NULL,
  CONSTRAINT [PK_Topics] PRIMARY KEY CLUSTERED ([topic_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Topics]
  ADD CONSTRAINT [FK_Topics_Courses] FOREIGN KEY ([curs_id]) REFERENCES [dbo].[Courses] ([curs_id])
GO