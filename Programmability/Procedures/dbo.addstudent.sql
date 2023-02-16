SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROC [dbo].[addstudent] @fname VARCHAR(20), @lname VARCHAR(20), @email VARCHAR(50), @city VARCHAR(20),@street VARCHAR(20),@zip_code INT ,@phone INT ,@date DATE,@dapatrment INT 
AS 
BEGIN TRY 
INSERT INTO Students VALUES (@fname,@lname,@email,@city,@street,@zip_code,@phone,@date,@dapatrment)
END TRY
BEGIN CATCH 
SELECT 'inserted data doesnt match'
END CATCH
GO