SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[delete_all_subject_Exams]  @crs_id int
AS
	BEGIN try
		DELETE Exams 
		WHERE curs_id =@crs_id
		DECLARE @crs_name VARCHAR(20)
		SELECT @crs_name = c.curs_name FROM Courses c WHERE c.curs_id=@crs_id
		SELECT CONCAT('all exams for ',@crs_name,' was deleted successfully')
	END TRY
	BEGIN CATCH
    	SELECT('error deleteing .... ')
    END CATCH
GO