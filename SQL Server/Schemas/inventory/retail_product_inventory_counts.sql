CREATE TABLE [inventory].[retail_product_inventory_counts] (
  [inventory_count_id] int not null primary key IDENTITY(1,1),
  [location_id] int,
  [retail_product_id] int
)
GO

ALTER TABLE [inventory].[retail_product_inventory_counts] ADD FOREIGN KEY ([location_id]) REFERENCES [geography].[locations] ([location_id])
GO

ALTER TABLE [inventory].[retail_product_inventory_counts] ADD FOREIGN KEY ([retail_product_id]) REFERENCES [inventory].[retail_products] ([retail_product_id])
GO