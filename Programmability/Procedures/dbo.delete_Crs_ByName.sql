SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[delete_Crs_ByName] @name VARCHAR(20)
AS
	BEGIN TRY
		DELETE Courses 
		WHERE curs_name=@name
		SELECT 'deletion done.. '
	END TRY
	BEGIN CATCH
		SELECT 'Error deleting, process failed'
	END CATCH
GO