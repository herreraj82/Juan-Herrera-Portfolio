CREATE TABLE [retail].[customers] (
  [customer_id] int not null primary key IDENTITY(1,1),
  [shipping_location_id] int,
  [billing_location_id] int
)
GO

ALTER TABLE [retail].[customers] ADD FOREIGN KEY ([billing_location_id]) REFERENCES [geography].[locations] ([location_id])
GO

ALTER TABLE [retail].[customers] ADD FOREIGN KEY ([shipping_location_id]) REFERENCES [geography].[locations] ([location_id])
GO
