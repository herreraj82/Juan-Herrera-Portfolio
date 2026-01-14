CREATE TABLE [marketing].[rel_marketing_campaigns_to_retail_products] (
  [marketing_campaign_id] int,
  [retail_product_id] int
)
GO

ALTER TABLE [marketing].[rel_marketing_campaigns_to_retail_products] ADD FOREIGN KEY ([marketing_campaign_id]) REFERENCES [marketing].[marketing_campaigns] ([marketing_campaign_id])
GO

ALTER TABLE [marketing].[rel_marketing_campaigns_to_retail_products] ADD FOREIGN KEY ([retail_product_id]) REFERENCES [inventory].[retail_products] ([retail_product_id])
GO
