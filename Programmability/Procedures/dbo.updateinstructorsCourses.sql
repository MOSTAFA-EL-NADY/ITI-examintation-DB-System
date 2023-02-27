SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[updateinstructorsCourses] @curs_id int ,
@ins_id int,@ins_newId int=0 , @crs_newId int=0 ,@evalaution VARCHAR(50)=''

As
BEGIN TRY
IF (@ins_newId<>0 AND @crs_newId=0 AND @evalaution='')
BEGIN 
UPDATE Instructors_Courses SET ins_id=@ins_newId  WHERE ins_id=@ins_id  AND curs_id=@curs_id
END
ELSE IF (@ins_newId=0 AND @crs_newId<>0 AND @evalaution='')
BEGIN
UPDATE Instructors_Courses SET curs_id=@crs_newId WHERE ins_id=@ins_id  AND curs_id=@curs_id
END
ELSE IF(@ins_newId=0 AND @crs_newId=0 AND @evalaution!='')
BEGIN
UPDATE Instructors_Courses SET evaluation=@evalaution WHERE ins_id=@ins_id  AND curs_id=@curs_id
END
SELECT 'Updated Successfully ^_^'
END TRY
BEGIN CATCH
SELECT 'Can NOT Updated'
END CATCH
GO