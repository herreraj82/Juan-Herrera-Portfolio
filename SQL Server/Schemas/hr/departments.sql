CREATE TABLE [hr].[departments] (
  [department_lead_employee_id] int,
  [department_id] int not null primary key IDENTITY(1,1)
)
GO

ALTER TABLE [hr].[departments] ADD FOREIGN KEY ([department_lead_employee_id]) REFERENCES [hr].[employees] ([employee_id])
GO