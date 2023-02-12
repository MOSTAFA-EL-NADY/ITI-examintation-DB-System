CREATE TABLE [dbo].[Topics] (
  [topic_id] [int] NOT NULL,
  [name] [varchar](50) NULL,
  CONSTRAINT [PK_Topics] PRIMARY KEY CLUSTERED ([topic_id])
)
ON [PRIMARY]
GO