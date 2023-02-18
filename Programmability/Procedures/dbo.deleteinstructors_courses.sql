SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[deleteinstructors_courses] @ins_id  INT,@curs_id INT
AS
	BEGIN TRY
		DELETE  FROM Instructors_Courses 
		WHERE ins_id=@ins_id AND curs_id=@curs_id
		SELECT 'instructor course deleted successfully^_^'
	END TRY
	BEGIN CATCH
		SELECT 'cant deleted '		
	END CATCH
GO