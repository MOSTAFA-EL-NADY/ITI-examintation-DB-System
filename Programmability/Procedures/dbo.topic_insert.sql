SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[topic_insert] @curs_id int, @topic_name varchar(20)
as
if exists(select curs_id from Courses where curs_id = @curs_id) 
begin
	if not exists(select topic_name from Topics where curs_id = @curs_id
	and topic_name = @topic_name)
	begin 
		insert into Topics
		values(@curs_id,@topic_name)
	end
	else 
		select 'This topic is already exists!!'
end
else
	select 'Course ID is Invalid!!'
GO