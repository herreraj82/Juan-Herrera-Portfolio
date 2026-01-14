CREATE TABLE [retail].[retail_order_lines] (
  [retail_order_id] int,
  [retail_order_line_id] int not null primary key IDENTITY(1,1),
  [retail_product_id] int
)
GO

ALTER TABLE [retail].[retail_order_lines] ADD FOREIGN KEY ([retail_product_id]) REFERENCES [inventory].[retail_products] ([retail_product_id])
GO

ALTER TABLE [retail].[retail_order_lines] ADD FOREIGN KEY ([retail_order_id]) REFERENCES [retail].[retail_order_headers] ([retail_order_id])
GO