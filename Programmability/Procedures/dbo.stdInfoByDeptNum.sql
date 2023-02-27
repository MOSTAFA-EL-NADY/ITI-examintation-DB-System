SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[stdInfoByDeptNum] @deptNum int
as
	select s.*
	from student s
	where s.dept_id = @deptNum
	return

exec stdInfoByDeptNum 1
GO