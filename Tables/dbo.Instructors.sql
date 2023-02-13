CREATE TABLE [dbo].[Instructors] (
  [ins_id] [int] NOT NULL,
  [fname] [varchar](50) NULL,
  [lname] [varchar](50) NULL,
  [email] [varchar](100) NOT NULL,
  [city] [varchar](50) NULL,
  [zip_code] [int] NULL,
  [street] [varchar](50) NULL,
  [phone] [int] NULL,
  [date_birth] [date] NULL,
  [salary] [money] NULL,
  [dep_id] [int] NULL,
  CONSTRAINT [PK_Instructors] PRIMARY KEY CLUSTERED ([ins_id]),
  CONSTRAINT [c2] UNIQUE ([email], [phone])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Instructors]
  ADD CONSTRAINT [FK_Instructors_Departments] FOREIGN KEY ([dep_id]) REFERENCES [dbo].[Departments] ([dep_id])
GO