CREATE TABLE [geography].[intra_country_regions] (
  [intra_country_region_id] int not null primary key identity(1,1),
  [country_id] int
)
GO

ALTER TABLE [geography].[intra_country_regions] ADD FOREIGN KEY ([country_id]) REFERENCES [geography].[countries] ([country_id])
GO