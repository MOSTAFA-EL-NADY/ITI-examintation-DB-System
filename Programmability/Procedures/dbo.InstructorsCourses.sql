SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE  [dbo].[InstructorsCourses] @ins_id  INT,@curs_id INT,@evalaution VARCHAR(50)=NULL
AS
BEGIN TRY
 INSERT INTO Instructors_Courses VALUES(@ins_id,@curs_id,@evalaution)
 SELECT 'inserted successfully ^_^'
END TRY
BEGIN CATCH
SELECT 'cant Insetrted '
END CATCH
GO