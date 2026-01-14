CREATE TABLE [hr].[offices] (
  [office_id] int not null primary key IDENTITY(1,1),
  [location_id] int
)
GO

ALTER TABLE [hr].[offices] ADD FOREIGN KEY ([location_id]) REFERENCES [geography].[locations] ([location_id])
GO