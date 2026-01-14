CREATE TABLE [inventory].[brands] (
  [brand_id] int not null primary key identity(1,1),
  [manufacturer_id] int
)
GO

ALTER TABLE [inventory].[brands] ADD FOREIGN KEY ([manufacturer_id]) REFERENCES [inventory].[manufacturers] ([manufacturer_id])
GO