SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROC [dbo].[CreateExam] @course_id INT,@model_number INT 
AS 
BEGIN
DECLARE @newExam INT 
BEGIN TRY 
INSERT INTO Exams (ex_model,curs_id) VALUES (@model_number,@course_id)
SET @newExam=@@identity
SELECT @newExam
END TRY
BEGIN CATCH
SELECT 'exam cannot created'
END CATCH
DECLARE @x INT =5 
DECLARE @questionId INT 
WHILE (@x>0)
BEGIN
SELECT  TOP(1) @questionId= q.ques_id FROM Questions q WHERE q.curs_id=@course_id ORDER BY NEWID()
BEGIN TRY
INSERT INTO Exam_questions (ex_id,ques_id) values(@newExam,@questionId)
 SET @x =@x-1
 END TRY
BEGIN CATCH
SELECT 'canot add new question'
END CATCH
 END 
end
GO