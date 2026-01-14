CREATE TABLE [retail].[rel_customers_to_employees] (
  [customer_id] int,
  [employee_id] int
)
GO


ALTER TABLE [retail].[rel_customers_to_employees] ADD FOREIGN KEY ([employee_id]) REFERENCES [hr].[employees] ([employee_id])
GO

ALTER TABLE [retail].[rel_customers_to_employees] ADD FOREIGN KEY ([customer_id]) REFERENCES [retail].[customers] ([customer_id])
GO
