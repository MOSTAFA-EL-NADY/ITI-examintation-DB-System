SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[topic_update] @curs_id int ,@old_topic_name varchar(20),@new_topic_name varchar(20)
as
if exists(select curs_id from Topics where curs_id = @curs_id) 
begin
	if exists(select topic_name from Topics where topic_name = @new_topic_name)
		select 'This topic is already exists in this course!!'
	else 
		if exists(select topic_name from Topics where topic_name = @old_topic_name)
		begin
			update Topics set topic_name = @new_topic_name
			where curs_id = @curs_id and topic_name = @old_topic_name	
		end
		else
			select 'The topic you try to update is not exists in the course!'
end
else 
	select 'Id is invalid!!' 
GO