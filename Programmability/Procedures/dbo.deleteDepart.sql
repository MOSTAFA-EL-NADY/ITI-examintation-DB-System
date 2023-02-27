SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[deleteDepart] @dep_id INT
AS
	BEGIN TRY
	    if exists (select d.dep_id FROM Departments d  where d.dep_id=@dep_id )
		BEGIN
		UPDATE Instructors  SET dep_id=NULL WHERE dep_id=@dep_id
		UPDATE Students SET dept_id=NULL WHERE dept_id=@dep_id
		DELETE  FROM Departments
		WHERE dep_id=@dep_id
		SELECT 'department deleted successfully^_^'
		END
		ELSE
	        SELECT 'Department not found'
	END TRY
	BEGIN CATCH
		SELECT 'cant delete department'		
	END CATCH
GO