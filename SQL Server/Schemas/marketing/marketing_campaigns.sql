CREATE TABLE [marketing].[marketing_campaigns] (
  [marketing_campaign_id] int not null primary key IDENTITY(1,1),
  [partner_manufacturer_id] int
)
GO

ALTER TABLE [marketing].[marketing_campaigns] ADD FOREIGN KEY ([partner_manufacturer_id]) REFERENCES [inventory].[manufacturers] ([manufacturer_id])
GO