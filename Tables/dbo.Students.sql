CREATE TABLE [dbo].[Students] (
  [st_id] [int] IDENTITY,
  [fname] [varchar](20) NULL,
  [lname] [varchar](20) NULL,
  [email] [varchar](100) NOT NULL,
  [city] [varchar](50) NULL,
  [governorate] [varchar](50) NULL,
  [address] [nchar](10) NULL,
  [phone] [int] NOT NULL,
  CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED ([st_id])
)
ON [PRIMARY]
GO