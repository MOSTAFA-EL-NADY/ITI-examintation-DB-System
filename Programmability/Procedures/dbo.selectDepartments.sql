SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[selectDepartments] @dept_id INT =0, @dept_name  VARCHAR(50)='',
@mng_id INT=0,@mngName NVARCHAR(100) =''
AS
BEGIN TRY
IF @dept_id=0 AND  @dept_name='' AND @mng_id=0 AND @mngName=''
BEGIN
SELECT  * FROM  Departments 
END
ELSE IF @dept_id!=0 AND  @dept_name='' AND @mng_id=0 AND @mngName=''
BEGIN
if exists (select d.dep_id FROM Departments d  where d.dep_id=@dept_id )
SELECT  * FROM  Departments  WHERE dep_id=@dept_id
ELSE
SELECT 'Department not found'
END
ELSE IF @dept_id=0 AND  @dept_name!='' AND @mng_id=0 AND @mngName=''
BEGIN
if exists (select d.dep_name FROM Departments d  where  d.dep_name=@dept_name )
SELECT  * FROM  Departments  WHERE dep_name=@dept_name
ELSE
SELECT 'department not Found'
END
ELSE IF @dept_id=0 AND  @dept_name='' AND @mng_id!=0 AND @mngName=''
BEGIN
if exists (select d.dep_mgr FROM Departments d  where  d.dep_mgr=@mng_id )
SELECT  * FROM  Departments  WHERE dep_mgr=@mng_id
ELSE
SELECT 'department not Found'
END
ELSE IF @dept_id=0 AND  @dept_name='' AND @mng_id=0 AND @mngName!=''
BEGIN
IF EXISTS(SELECT i.ins_id  AS mgrName  FROM Instructors i INNER JOIN Departments d ON
d.dep_mgr=i.ins_id AND  i.fname+' ' +i.lname =@mngName)
SELECT * FROM Departments d WHERE d.dep_mgr=(SELECT i.ins_id  AS mgrName  FROM Instructors i INNER JOIN Departments d ON
d.dep_mgr=i.ins_id AND  i.fname+' ' +i.lname =@mngName)
ELSE
SELECT 'department Not found'
END
END TRY
BEGIN CATCH
 SELECT 'ERROR! in Selection Operation'
END CATCH
GO