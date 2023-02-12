CREATE TABLE [dbo].[Instructors] (
  [ins_id] [int] NOT NULL,
  [ins_fname] [varchar](50) NULL,
  [ins_lname] [varchar](50) NULL,
  [email] [varchar](100) NOT NULL,
  [city] [varchar](50) NULL,
  [government] [varchar](50) NULL,
  [street] [varchar](50) NULL,
  [phone] [int] NULL,
  [age] [int] NULL,
  CONSTRAINT [PK_Instructors] PRIMARY KEY CLUSTERED ([ins_id])
)
ON [PRIMARY]
GO