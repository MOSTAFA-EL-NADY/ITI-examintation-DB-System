SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[insertStudentAnswer] @std_id  INT,@ex_id INT,@ques_id INT,@std_answer VARCHAR(50)
AS
BEGIN TRY 
 INSERT INTO Student_Answer_Exam VALUES(@std_id,@ex_id,@ques_id,@std_answer)
 SELECT 'inserted Successfully ^_^'
END TRY 
BEGIN CATCH
	SELECT 'Can not Inserted'
END CATCH
GO