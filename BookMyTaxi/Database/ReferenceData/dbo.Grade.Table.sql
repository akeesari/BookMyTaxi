SET IDENTITY_INSERT [dbo].[Grade] ON 
GO

MERGE INTO [dbo].[Grade] AS [Target]
USING (VALUES 
(1, 'class-1',GETDATE(),'Admin',GETDATE(),'Admin',0),
(2, 'class-2',GETDATE(),'Admin',GETDATE(),'Admin',0),
(3, 'class-3',GETDATE(),'Admin',GETDATE(),'Admin',0),
(4, 'class-4',GETDATE(),'Admin',GETDATE(),'Admin',0),
(5, 'class-5',GETDATE(),'Admin',GETDATE(),'Admin',0),
(6, 'class-6',GETDATE(),'Admin',GETDATE(),'Admin',0),
(7, 'class-7',GETDATE(),'Admin',GETDATE(),'Admin',0),
(8, 'class-8',GETDATE(),'Admin',GETDATE(),'Admin',0),
(9, 'class-9',GETDATE(),'Admin',GETDATE(),'Admin',0),
(10, 'class-10',GETDATE(),'Admin',GETDATE(),'Admin',0)
)

AS [Source] ([Id], [Name], [CreatedOn],[CreatedBy],[UpdatedOn],[UpdatedBy],[IsDeleted]) 
ON [Target].[Id] = [Source].[Id]
WHEN MATCHED THEN --update matched rows 
UPDATE SET
[Name] = [Source].[Name],
[CreatedOn] = [Source].[CreatedOn],
[CreatedBy] = [Source].[CreatedBy],
[UpdatedOn] = [Source].[UpdatedOn],
[UpdatedBy] = [Source].[UpdatedBy],
[IsDeleted] = [Source].[IsDeleted]
WHEN NOT MATCHED BY TARGET THEN -- insert new rows 
INSERT ([Id], [Name],[CreatedOn],[CreatedBy],[UpdatedOn],[UpdatedBy],[IsDeleted]) 
VALUES ([Id], [Name],[CreatedOn],[CreatedBy],[UpdatedOn],[UpdatedBy],[IsDeleted]) 

WHEN NOT MATCHED BY SOURCE THEN -- delete rows that are in the target but not the source 
DELETE;

GO
SET IDENTITY_INSERT [dbo].[Grade] OFF
GO
