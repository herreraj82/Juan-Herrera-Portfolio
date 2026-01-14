CREATE TABLE [geography].[rel_continents_to_inter_country_regions] (
  [continent_id] int,
  [inter_country_region_id] int
)
GO

ALTER TABLE [geography].[rel_continents_to_inter_country_regions] ADD FOREIGN KEY ([continent_id]) REFERENCES [geography].[continents] ([continent_id])
GO

ALTER TABLE [geography].[rel_continents_to_inter_country_regions] ADD FOREIGN KEY ([inter_country_region_id]) REFERENCES [geography].[inter_country_regions] ([inter_country_region_id])
GO