SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[topic_select] @curs_id int
as
if exists(select curs_id from Topics where curs_id = @curs_id)
	select * from Topics where curs_id = @curs_id
else
	select 'Course Id is Invalid!!'
GO