SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[updateStudentAnswer] @std_id  INT,@ex_id INT,@ques_id INT,@std_answer VARCHAR(50)
As
BEGIN TRY
 UPDATE  Student_Answer_Exam SET std_answer=@std_answer WHERE 
 std_id=@std_id AND ex_id=@ex_id AND std_id=@std_id
 SELECT 'updated successfully ^_^'
END TRY
BEGIN CATCH
SELECT 'cant Updated'
END CATCH
GO