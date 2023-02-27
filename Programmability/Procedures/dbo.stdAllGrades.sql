SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[stdAllGrades] @std_id int
as
	select sc.grade , c.curs_name
	from Student_Courses sc inner join Courses c
		on c.curs_id=sc.curs_id 
			where sc.std_id=@std_id
	return
GO