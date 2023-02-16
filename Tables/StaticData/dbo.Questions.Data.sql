SET IDENTITY_INSERT dbo.Questions ON
GO
INSERT dbo.Questions(ques_id, ques_content, ques_type, correct_answer) VALUES (1, 'can delete statment revove multible record', 't&f', 'true');
GO
SET IDENTITY_INSERT dbo.Questions OFF
GO