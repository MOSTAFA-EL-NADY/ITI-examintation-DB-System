SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE   [dbo].[StudentAnswerExam] @examId INT ,@StdId INT,
@ans1 VARCHAR(50),@ans2 VARCHAR(50),@ans3 VARCHAR(50),
@ans4 VARCHAR(50),@ans5 VARCHAR(50),@ans6 VARCHAR(50),
@ans7 VARCHAR(50),@ans8 VARCHAR(50),@ans9 VARCHAR(50),
@ans10 VARCHAR(50)
AS 
BEGIN TRY
IF EXISTS(SELECT * FROM Student_Courses sc WHERE sc.std_id=@StdId AND sc.curs_id =( SELECT e.curs_id FROM Exams e WHERE e.ex_id=@examId))
BEGIN
DECLARE @answerTablel TABLE  (Answer VARCHAR(50))  
INSERT INTO  @answerTablel  VALUES (@ans1),(@ans2),(@ans3),(@ans4),
(@ans5),(@ans6),(@ans7),(@ans8),(@ans9),(@ans10)
DECLARE c1 CURSOR FOR
SELECT eq.ques_id  FROM Exam_questions eq WHERE  eq.ex_id=@examId
FOR READ ONLY
declare @question_id int 
open c1 
FETCH c1 INTO @question_id
DECLARE c2 CURSOR FOR 
SELECT Answer FROM @answerTablel
FOR READ ONLY
DECLARE @answer VARCHAR(50)
OPEN  c2 
FETCH c2 INTO @answer
while @@FETCH_STATUS=0
BEGIN
INSERT INTO Student_Answer_Exam  VALUES (@StdId,@examId,@question_id,@answer)
fetch c1 into @question_id
fetch c2 into @answer
end    
 CLOSE c1
 CLOSE c2
 DEALLOCATE c1
 DEALLOCATE c2
END
ELSE
SELECT 'student is not assigned to the course'
END TRY
BEGIN CATCH

END CATCH
GO