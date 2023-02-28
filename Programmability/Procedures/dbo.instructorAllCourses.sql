SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE proc [dbo].[instructorAllCourses] @ins_id int
as
	select c.curs_name, count(sc.std_id) as NumofStudents,CONCAT(i.fname,' ',i.lname) AS FullName 
	from Courses c INNER JOIN Student_Courses sc 
	ON c.curs_id=sc.curs_id 
	inner join Instructors_Courses ic
		on ic.ins_id = @ins_id AND ic.curs_id=c.curs_id
		INNER JOIN Instructors i 
		ON i.ins_id =@ins_id AND i.ins_id=ic.ins_id
	group by curs_name ,i.fname,i.lname
GO