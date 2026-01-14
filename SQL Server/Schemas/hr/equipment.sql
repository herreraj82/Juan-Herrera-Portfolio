CREATE TABLE [hr].[equipment] (
  [equipment_id] int not null primary key IDENTITY(1,1),
  [owner_employee_id] int
)
GO

ALTER TABLE [hr].[equipment] ADD FOREIGN KEY ([owner_employee_id]) REFERENCES [hr].[employees] ([employee_id])
GO
