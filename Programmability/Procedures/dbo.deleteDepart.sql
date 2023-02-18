SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[deleteDepart] @dep_id INT
AS
	BEGIN TRY
		DELETE  FROM Departments
		WHERE dep_id=@dep_id
		SELECT 'department deleted successfully^_^'
	END TRY
	BEGIN CATCH
		SELECT 'cant delete department'		
	END CATCH
GO