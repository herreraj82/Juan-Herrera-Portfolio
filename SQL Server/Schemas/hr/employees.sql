CREATE TABLE [hr].[employees] (
  [employee_id] int not null primary key identity(1,1),
  [manager_id] int,
  [department_id] int,
  [office_id] int
)
GO

ALTER TABLE [hr].[employees] ADD FOREIGN KEY ([office_id]) REFERENCES [hr].[offices] ([office_id])
GO

ALTER TABLE [hr].[employees] ADD FOREIGN KEY ([manager_id]) REFERENCES [hr].[employees] ([employee_id])
GO

ALTER TABLE [hr].[employees] ADD FOREIGN KEY ([department_id]) REFERENCES [hr].[departments] ([department_id])
GO
