SET IDENTITY_INSERT dbo.Students ON
GO
INSERT dbo.Students(st_id, fname, lname, email, city, governorate, address, phone) VALUES (1, 'mostafa', 'mohamed', 'mostafaelnady1997@gmail.com', 'zagzig', 'sharkia', N'kawmia', 1212806000);
GO
SET IDENTITY_INSERT dbo.Students OFF
GO