CREATE TABLE [geography].[countries] (
  [country_id] int not null primary key IDENTITY(1,1),
  [inter_country_region_id] int
)
GO

ALTER TABLE [geography].[countries] ADD FOREIGN KEY ([inter_country_region_id]) REFERENCES [geography].[inter_country_regions] ([inter_country_region_id])
GO