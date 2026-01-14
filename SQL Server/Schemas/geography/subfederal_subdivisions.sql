CREATE TABLE [geography].[subfederal_subdivisions] (
  [subfederal_subdivision_id] int not null primary key identity(1,1),
  [intra_country_region_id] int
)
GO

ALTER TABLE [geography].[subfederal_subdivisions] ADD FOREIGN KEY ([intra_country_region_id]) REFERENCES [geography].[intra_country_regions] ([intra_country_region_id])
GO