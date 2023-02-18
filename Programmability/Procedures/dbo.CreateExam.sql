SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROC [dbo].[CreateExam] @course_id INT,@model_number INT 
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
SELECT  TOP(10)  @newExam , q.ques_id FROM Questions q WHERE q.curs_id=@course_id  ORDER BY NEWID()
END TRY
BEGIN CATCH
SELECT 'canot add question to exam'
END CATCH

 END 
GO