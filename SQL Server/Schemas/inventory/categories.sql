CREATE TABLE [inventory].[categories] (
  [category_id] int not null primary key identity (1,1),
  [parent_category_id] int
)
GO

ALTER TABLE [inventory].[categories] ADD FOREIGN KEY ([parent_category_id]) REFERENCES [inventory].[categories] ([category_id])
GO