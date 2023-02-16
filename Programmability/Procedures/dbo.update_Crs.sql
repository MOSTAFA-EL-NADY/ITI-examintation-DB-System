SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[update_Crs] @crs_name VARCHAR(20),@crs_duration INT,@id int
AS
	BEGIN TRY
		UPDATE Courses 
		SET curs_name =@crs_name, duration=@crs_duration
		WHERE curs_id=@id
	END TRY
	BEGIN CATCH
		SELECT 'Error updating, process failed'
	END CATCH
GO