CREATE TABLE [inventory].[work_orders] (
  [retail_product_id] int,
  [location_id] int
)
GO

ALTER TABLE [inventory].[work_orders] ADD FOREIGN KEY ([location_id]) REFERENCES [geography].[locations] ([location_id])
GO

ALTER TABLE [inventory].[work_orders] ADD FOREIGN KEY ([retail_product_id]) REFERENCES [inventory].[retail_products] ([retail_product_id])
GO