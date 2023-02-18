SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[deleteStudentAnswer] @std_id  INT,@ex_id INT,@ques_id INT
AS
	BEGIN TRY
		DELETE Student_Answer_Exam
		WHERE   std_id=@std_id AND ex_id=@ex_id AND std_id=@std_id
		SELECT 'instructor course deleted successfully^_^'
	END TRY
	BEGIN CATCH
		SELECT 'can NOT deleted '		
	END CATCH
GO