SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROC [dbo].[insert_exam] @ex_model INT, @crs_id INT ,@ex_duration FLOAT 
AS
	BEGIN TRY
		INSERT INTO Exams 
		VALUES(@ex_model,@crs_id,@ex_duration)
	END TRY
	BEGIN CATCH
		SELECT 'error inserting, check crs id and other fields'
	END CATCH
GO