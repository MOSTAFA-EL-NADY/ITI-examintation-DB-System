SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[insert_MCQ_Question] @ques_id INT,@option1 VARCHAR(20),
									@option2 VARCHAR(20),@option3 VARCHAR(20),@option4 VARCHAR(20)
AS
	BEGIN TRY
		INSERT INTO Mcq_questions
		VALUES (@ques_id,@option1,@option2,@option3,@option4)
		SELECT 'question inserted successfully'
	END TRY
	BEGIN CATCH
		SELECT 'error inserting question, check question id'
	END CATCH
GO