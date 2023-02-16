SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[update_mcq_question] @id INT, @ques_id INT,@option1 VARCHAR(20),
									@option2 VARCHAR(20),@option3 VARCHAR(20),@option4 VARCHAR(20)
AS
	BEGIN TRY
		UPDATE Mcq_questions
		SET option1=@option1,option2=@option2,option3=@option3,option4=@option4
		WHERE ques_id=@ques_id
		SELECT 'question updated successfully'
	END TRY
	BEGIN CATCH
		SELECT 'error updating question, check question id '
	END CATCH
GO