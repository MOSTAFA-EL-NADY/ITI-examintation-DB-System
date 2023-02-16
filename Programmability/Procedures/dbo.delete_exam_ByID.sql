SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[delete_exam_ByID] @id int
AS
	BEGIN TRY
		DELETE Exams 
		WHERE ex_id =@id
		SELECT 'exam deleted successfully'
	END TRY
	BEGIN CATCH
		SELECT 'error deleting...'
	END CATCH
GO