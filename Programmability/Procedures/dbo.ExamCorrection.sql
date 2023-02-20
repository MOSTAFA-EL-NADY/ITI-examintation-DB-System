SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROC [dbo].[ExamCorrection] @studentId INT,@examId INT 
AS 
IF EXISTS (SELECT sae.ques_id, sae.std_answer FROM Student_Answer_Exam sae WHERE sae.std_id=@studentId AND sae.ex_id=@examId
)
BEGIN
DECLARE @grade INT =0
DECLARE studentAnswers CURSOR
FOR 

SELECT sae.ques_id, sae.std_answer FROM Student_Answer_Exam sae WHERE sae.std_id=@studentId AND sae.ex_id=@examId
FOR READ ONLY
DECLARE @qid INT 
DECLARE @stQAnswer VARCHAR(50)
OPEN studentAnswers
FETCH studentAnswers INTO @qid ,@stQAnswer

begin
WHILE @@fetch_status =0
BEGIN 

IF @stQAnswer= (SELECT  q.correct_answer FROM Questions q WHERE q.ques_id =@qid)
 SET @grade =@grade+2
 FETCH studentAnswers INTO @qid ,@stQAnswer
 END 
 CLOSE studentAnswers
 DEALLOCATE studentAnswers
 END
 SELECT @grade
 BEGIN TRY 

  INSERT INTO Student_Exam  VALUES(@studentId,@examId,@grade)
  END TRY
  BEGIN CATCH
  SELECT 'error while adding  the exam to this student'
  END CATCH
  END
  ELSE
  SELECT 'the student id or exam id has a problem'
GO