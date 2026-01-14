CREATE TABLE [inventory].[intermediate_material_inventory_counts] (
  [inventory_count_id] int not null primary key IDENTITY(1,1),
  [location_id] int,
  [intermediate_material_id] int
)
GO

ALTER TABLE [inventory].[intermediate_material_inventory_counts] ADD FOREIGN KEY ([intermediate_material_id]) REFERENCES [inventory].[intermediate_materials] ([intermediate_material_id])
GO

ALTER TABLE [inventory].[intermediate_material_inventory_counts] ADD FOREIGN KEY ([location_id]) REFERENCES [geography].[locations] ([location_id])
GO