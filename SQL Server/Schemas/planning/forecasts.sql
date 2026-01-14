CREATE TABLE [planning].[forecasts] (
  [retail_product_id] int,
  [customer_id] int,
  [date_id] int
)
GO

ALTER TABLE [planning].[forecasts] ADD FOREIGN KEY ([retail_product_id]) REFERENCES [inventory].[retail_products] ([retail_product_id])
GO

ALTER TABLE [planning].[forecasts] ADD FOREIGN KEY ([customer_id]) REFERENCES [retail].[customers] ([customer_id])
GO