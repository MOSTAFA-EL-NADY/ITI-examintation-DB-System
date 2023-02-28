SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE proc [dbo].[stdAllGrades] @std_id int
as
	select sc.grade , c.curs_name ,CONCAT(s.fname,' ',s.lname) AS fullName
	from Student_Courses sc inner join Courses c
		on c.curs_id=sc.curs_id 
			INNER JOIN Students s
			ON s.st_id =@std_id AND sc.std_id=s.st_id
			
GO