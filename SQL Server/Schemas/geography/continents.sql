CREATE TABLE [geography].[global_regions] (
  [global_region_id] int not null primary key IDENTITY(1,1)
)
GO

ALTER TABLE [geography].[continents] ADD FOREIGN KEY ([global_region_id]) REFERENCES [geography].[global_regions] ([global_region_id])
GO