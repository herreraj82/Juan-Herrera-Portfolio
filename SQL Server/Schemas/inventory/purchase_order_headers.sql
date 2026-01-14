CREATE TABLE [inventory].[purchase_order_headers] (
  [purchase_order_id] int not null primary key IDENTITY(1,1),
  [manufacturer_id] int
)
GO

ALTER TABLE [inventory].[purchase_order_headers] ADD FOREIGN KEY ([manufacturer_id]) REFERENCES [inventory].[manufacturers] ([manufacturer_id])
GO
