SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[instructorAllCourses] @ins_id int
as
	select c.curs_name, count(sc.std_id) as NumofStudents
	from Courses c, Student_Courses sc
	inner join Instructors_Courses ic
		on ic.ins_id = @ins_id
	group by curs_name
return
GO