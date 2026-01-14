CREATE TABLE [inventory].[retail_products] ( 
  [retail_product_id] int not null primary key IDENTITY(1,1),
  [brand_id] int,
  [category_id] int
)
GO

ALTER TABLE [inventory].[retail_products] ADD FOREIGN KEY ([brand_id]) REFERENCES [inventory].[brands] ([brand_id])
GO

ALTER TABLE [inventory].[retail_products] ADD FOREIGN KEY ([category_id]) REFERENCES [inventory].[categories] ([category_id])
GO