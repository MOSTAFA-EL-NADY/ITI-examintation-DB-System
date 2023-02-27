SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[selectInstructorCourse]  @ins_id INT =0,@crs_id INT =0
AS
BEGIN TRY
if(@ins_id=0 and @crs_id<>0)
      BEGIN
      IF EXISTS(SELECT ic.curs_id FROM Instructors_Courses  ic WHERE ic.curs_id=@crs_id)
	  BEGIN
	   select ic.curs_id as courseID ,c.curs_name as courseName,i.ins_id as instructorID ,i.fname+' ' +i.lname 
	   AS InstructorName   from Instructors_Courses ic
	   inner join Courses c on ic.curs_id=c.curs_id  inner JOIN Instructors i on i.ins_id=ic.ins_id
	   where ic.curs_id=@crs_id
	   END
	   ELSE
	   SELECT 'Not Available data'
	   END
else if(@crs_id=0 and @ins_id<>0)
	BEGIN
	IF EXISTS(SELECT ic.ins_id FROM Instructors_Courses ic WHERE ic.ins_id=@ins_id)
	BEGIN
	select ic.curs_id as courseID ,c.curs_name as courseName,ic.ins_id as instructorID ,i.fname+' '+i.lname as InstructorName
	from Instructors_Courses ic
	inner join Courses c on ic.curs_id=c.curs_id  inner join Instructors i on i.ins_id=ic.ins_id
	where ic.ins_id=@ins_id
	END
	ELSE
	   SELECT 'Not Available data'
	END
else if(@ins_id=0 and @crs_id=0)
	select ic.curs_id as courseID ,c.curs_name as courseName,ic.ins_id as instructorID ,i.fname+' '+i.lname
	InstructorName   from Instructors_Courses ic 
	inner join Courses  c on ic.curs_id=c.curs_id inner join Instructors  i on i.ins_id=ic.ins_id
else 
	SELECT  ic.curs_id as courseID ,c.curs_name as courseName,ic.ins_id as instructorID ,i.fname+ ' '+i.lname as InstructorName 
	from Instructors_Courses ic
	inner join Courses c on ic.curs_id=c.curs_id  inner join Instructors i on i.ins_id=ic.ins_id
	where ic.curs_id=@crs_id and ic.ins_id=@ins_id
END TRY
BEGIN CATCH
 SELECT 'ERROR! in Selection Operation'
END CATCH
GO