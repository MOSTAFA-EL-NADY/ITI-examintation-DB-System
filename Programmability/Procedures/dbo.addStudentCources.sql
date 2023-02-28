SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
 CREATE PROC [dbo].[addStudentCources] @studentId INT, @courseId INT 
  AS 
  BEGIN TRY 
  INSERT INTO Student_Courses (std_id,curs_id) VALUES (@studentId,@courseId)
  END TRY
  BEGIN CATCH 
  SELECT 'cannot assign student to this course'
  END CATCH
GO