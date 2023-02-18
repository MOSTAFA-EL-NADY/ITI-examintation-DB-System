SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create PROC [dbo].[CreateSpecificExamQuestion] @course_id INT,@model_number INT ,@number_tf INT =5, @number_mcq INT =5
AS 
BEGIN
DECLARE @newExam INT 
BEGIN TRY 
INSERT INTO Exams (ex_model,curs_id) VALUES (@model_number,@course_id)
SET @newExam=@@identity
END TRY
BEGIN CATCH
SELECT 'exam cannot created'
END CATCH

BEGIN TRY 

INSERT INTO Exam_questions(ex_id,ques_id)
SELECT  TOP(@number_tf)  @newExam , q.ques_id FROM Questions q WHERE q.curs_id=@course_id AND q.ques_type='t&f'  ORDER BY NEWID()

INSERT INTO Exam_questions(ex_id,ques_id)
SELECT  TOP(@number_mcq)  @newExam , q.ques_id FROM Questions q WHERE q.curs_id=@course_id AND q.ques_type='mcq'  ORDER BY NEWID()
END TRY
BEGIN CATCH
SELECT 'canot add question to exam'
END CATCH

 END 
GO