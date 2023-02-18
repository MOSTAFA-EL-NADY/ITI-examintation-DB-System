SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[updateinstructorsCourses]  @ins_id  INT,@curs_id INT ,@evalaution VARCHAR(50)
As
BEGIN TRY
 UPDATE Instructors_Courses SET evaluation=@evalaution WHERE ins_id=@ins_id  AND curs_id=@curs_id
 SELECT 'Updated Successfully ^_^'
END TRY
BEGIN CATCH
SELECT 'Can NOT Updated'
END CATCH
GO