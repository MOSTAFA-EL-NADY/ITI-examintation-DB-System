SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[delete_MCQ_question] @ques_id INT
AS
	BEGIN TRY
		DELETE Mcq_questions
		WHERE ques_id=@ques_id
		SELECT 'question deleted successfully'
	END TRY
	BEGIN CATCH
		SELECT 'error deleting question'		
	END CATCH
GO