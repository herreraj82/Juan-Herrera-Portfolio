CREATE TABLE [geography].[locations] (
  [location_id] int not null primary key IDENTITY(1,1),
  [municipality_id] int
)
GO

ALTER TABLE [geography].[municipalities] ADD FOREIGN KEY ([subfederal_subdivision_id]) REFERENCES [geography].[subfederal_subdivisions] ([subfederal_subdivision_id])
GO
