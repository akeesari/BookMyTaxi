--SET IDENTITY_INSERT [dbo].[AspNetRoles] ON 
GO

MERGE INTO [dbo].[AspNetRoles] AS [Target]
USING (VALUES 
(1, 'Admin'),-- Super Admin, can Add School, Staff Admin
(2, 'Tech')-- Developer can check errors / logs
)

AS [Source] ([Id], [Name]) 
ON [Target].[Id] = [Source].[Id]
WHEN MATCHED THEN --update matched rows 
UPDATE SET
[Name] = [Source].[Name]
WHEN NOT MATCHED BY TARGET THEN -- insert new rows 
INSERT ([Id], [Name]) 
VALUES ([Id], [Name]) 

WHEN NOT MATCHED BY SOURCE THEN -- delete rows that are in the target but not the source 
DELETE;

GO
--SET IDENTITY_INSERT [dbo].[AspNetRoles] OFF
--GO
