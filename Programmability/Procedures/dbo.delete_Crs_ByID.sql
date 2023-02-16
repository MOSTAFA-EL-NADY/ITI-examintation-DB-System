SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[delete_Crs_ByID] @id int
AS
	BEGIN TRY
		DELETE Courses 
		WHERE curs_id=@id
		SELECT 'deletion done.. '
	END TRY
	BEGIN CATCH
		SELECT 'Error deleting, process failed'
	END CATCH
GO