SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[topic_delete] @curs_id int,@topic_name varchar(20)
as
if exists(select curs_id from Topics where curs_id = @curs_id)
begin
	if exists(select topic_name from Topics where topic_name = @topic_name 
	and curs_id = @curs_id)
		delete from Topics where curs_id = @curs_id and topic_name = @topic_name
	else
		select 'Topic name is invalid'
end
else
	select 'Id is invalid'
GO