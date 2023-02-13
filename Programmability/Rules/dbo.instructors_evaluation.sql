SET QUOTED_IDENTIFIER OFF
GO
CREATE RULE [dbo].[instructors_evaluation] AS (@list IN ('weak','fair','good','very good','excellent'))
GO