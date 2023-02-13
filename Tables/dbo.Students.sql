CREATE TABLE [dbo].[Students] (
  [st_id] [int] IDENTITY,
  [fname] [varchar](20) NULL,
  [lname] [varchar](20) NULL,
  [email] [varchar](100) NOT NULL,
  [city] [varchar](50) NULL,
  [street] [varchar](50) NULL,
  [zip_code] [nchar](10) NULL,
  [phone] [int] NOT NULL,
  [date_birth] [date] NULL,
  [dept_id] [int] NOT NULL,
  CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED ([st_id]),
  CONSTRAINT [c1] UNIQUE ([email], [phone])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Students]
  ADD CONSTRAINT [FK_Students_Departments] FOREIGN KEY ([dept_id]) REFERENCES [dbo].[Departments] ([dep_id])
GO