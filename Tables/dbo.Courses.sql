CREATE TABLE [dbo].[Courses] (
  [curs_id] [int] NOT NULL,
  [curs_name] [varchar](50) NULL,
  [duration] [int] NULL,
  CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED ([curs_id])
)
ON [PRIMARY]
GO