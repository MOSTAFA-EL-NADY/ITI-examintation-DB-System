SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE   [dbo].[ExamAnswers] @examId INT ,@StdId INT,
@ans1 VARCHAR(50),@ans2 VARCHAR(50),@ans3 VARCHAR(50),
@ans4 VARCHAR(50),@ans5 VARCHAR(50),@ans6 VARCHAR(50),
@ans7 VARCHAR(50),@ans8 VARCHAR(50),@ans9 VARCHAR(50),
@ans10 VARCHAR(50)
AS 
BEGIN TRY
DECLARE @answerTablel TABLE  (Answer VARCHAR(50))  
INSERT INTO  @answerTablel  VALUES (@ans1),(@ans2),(@ans3),(@ans4),
(@ans5),(@ans6),(@ans7),(@ans8),(@ans9),(@ans10)
DECLARE c1 CURSOR FOR
SELECT sae.ques_id  FROM Student_Answer_Exam sae WHERE sae.ex_id=@examId AND sae.std_id=@StdId
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
begin
update  Student_Answer_Exam set std_answer =@answer where ex_id=@examId and std_id=@StdId and  ques_id=@question_id
fetch c1 into @question_id
fetch c2 into @answer
end    
 CLOSE c1
 CLOSE c2
 DEALLOCATE c1
 DEALLOCATE c2
END TRY
BEGIN CATCH
SELECT 'ERROR'
END CATCH
GO