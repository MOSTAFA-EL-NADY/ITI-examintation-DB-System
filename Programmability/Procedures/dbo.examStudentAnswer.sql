SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[examStudentAnswer] @exam_num INT,@std_id INT
AS 
BEGIN TRY
SELECT q.ques_content,sae.std_answer,CONCAT(s.fname,' ',s.lname) AS fullName  FROM 
Student_Answer_Exam sae INNER JOIN Questions q ON sae.ques_id=q.ques_id AND
sae.std_id=@std_id  AND sae.ex_id =@exam_num
INNER JOIN Students s 
ON s.st_id=@std_id
END TRY
BEGIN CATCH
 SELECT ' invaild data'
END CATCH
GO