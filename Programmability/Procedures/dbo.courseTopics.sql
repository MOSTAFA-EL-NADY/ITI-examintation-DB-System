SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE proc [dbo].[courseTopics] @curs_id int
as
	if exists(select c.curs_id,c.curs_name from Courses c where c.curs_id=@curs_id)
		select t.topic_name ,c.curs_name
		from  Topics t INNER JOIN Courses c 
		ON t.curs_id=c.curs_id AND c.curs_id=@curs_id
		
	else 
		select 'Course ID is Invalid!'
GO