CREATE TABLE [marketing].[rel_marketing_campaigns_to_employees] (
  [marketing_campaign_id] int,
  [employee_id] int
)
GO

ALTER TABLE [marketing].[rel_marketing_campaigns_to_employees] ADD FOREIGN KEY ([marketing_campaign_id]) REFERENCES [marketing].[marketing_campaigns] ([marketing_campaign_id])
GO

ALTER TABLE [marketing].[rel_marketing_campaigns_to_employees] ADD FOREIGN KEY ([employee_id]) REFERENCES [hr].[employees] ([employee_id])
GO