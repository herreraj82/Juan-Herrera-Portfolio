CREATE TABLE [retail].[retail_order_headers] (
  [retail_order_id] int not null primary key IDENTITY(1,1),
  [customer_id] int
)
GO

ALTER TABLE [retail].[retail_order_headers] ADD FOREIGN KEY ([customer_id]) REFERENCES [retail].[customers] ([customer_id])
GO