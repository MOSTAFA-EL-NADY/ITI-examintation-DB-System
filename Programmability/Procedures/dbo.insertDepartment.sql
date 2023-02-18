SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[insertDepartment] @dep_name VARCHAR(50),@dep_mgr INT=NULL
AS
BEGIN TRY
 INSERT INTO Departments VALUES(@dep_name,@dep_mgr)
END TRY
BEGIN CATCH
  SELECT 'Cant insert new department'
END CATCH
GO