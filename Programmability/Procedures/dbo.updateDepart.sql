SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[updateDepart] @dep_id INT,
@dep_name VARCHAR(50)='',@dep_mgr INT=Null
AS 
BEGIN TRY
IF @dep_name=''
BEGIN
 UPDATE Departments SET  dep_mgr=@dep_mgr WHERE dep_id=@dep_id
END
ELSE IF @dep_mgr=NULL
BEGIN
UPDATE Departments SET dep_name=@dep_name WHERE dep_id=@dep_id
END
ELSE
BEGIN
 UPDATE Departments SET dep_name=@dep_name,dep_mgr=@dep_mgr WHERE dep_id=@dep_id
END
END TRY
BEGIN CATCH
SELECT 'Cant  update department'
END CATCH
GO