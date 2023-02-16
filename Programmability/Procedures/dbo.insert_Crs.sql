SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[insert_Crs] @crs_name VARCHAR(20),@crs_duration int
AS
	BEGIN TRY 
		INSERT INTO Courses 
		VALUES (@crs_name,@crs_duration)
		SELECT ('insertion done')
	END TRY
	BEGIN CATCH
		SELECT ('insertion failed')
	END CATCH
GO