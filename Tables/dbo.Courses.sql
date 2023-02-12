CREATE TABLE [dbo].[Courses] (
  [curs_num] [int] NOT NULL,
  [curs_name] [varchar](50) NULL,
  [hours] [int] NULL,
  CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED ([curs_num])
)
ON [PRIMARY]
GO