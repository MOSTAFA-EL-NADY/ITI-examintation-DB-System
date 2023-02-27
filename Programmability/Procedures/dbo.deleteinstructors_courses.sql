SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[deleteinstructors_courses] @ins_id  INT=0,@curs_id INT=0
AS
	BEGIN TRY
	    if(@ins_id<>0 and @curs_id=0)
		 BEGIN
		 IF EXISTS(SELECT ic.ins_id FROM Instructors_Courses ic WHERE ic.ins_id=@ins_id)
         DELETE  FROM  Instructors_Courses
		 WHERE ins_id=@ins_id 
		 ELSE
		 SELECT 'Not available data'
		 End
         else if (@ins_id =0 and @curs_id <>0)
		 BEGIN
		 IF EXISTS(SELECT ic.curs_id FROM Instructors_Courses ic WHERE ic.curs_id=@curs_id)
		 DELETE  FROM Instructors_Courses 
		 WHERE  curs_id=@curs_id
		 ELSE
		 SELECT 'Not Available data'
		 END
         else if(@ins_id<>0 and @curs_id<>0) 
	     BEGIN
		 IF EXISTS(SELECT ic.curs_id FROM Instructors_Courses ic 
		 WHERE ic.curs_id=@curs_id AND ic.ins_id=@ins_id)
		 BEGIN
		 DELETE  FROM Instructors_Courses
		 WHERE ins_id=@ins_id AND curs_id=@curs_id
		 SELECT 'instructor course deleted successfully^_^'
		 END
		 ELSE
		  SELECT 'Not Available data'
		 END
	END TRY
	BEGIN CATCH
		SELECT 'cant deleted '		
	END CATCH
GO