SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[courseTopics] @curs_id int
as
	if exists(select c.curs_id from Courses c where c.curs_id=@curs_id)
		select t.topic_name
		from  Topics t
		where t.curs_id = @curs_id
	else 
		select 'Course ID is Invalid!'
GO