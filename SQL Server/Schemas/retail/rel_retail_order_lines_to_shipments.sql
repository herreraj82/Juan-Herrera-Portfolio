CREATE TABLE [retail].[rel_retail_order_lines_to_shipments] (
  [retail_order_line_id] int,
  [shipment_id] int
)

ALTER TABLE [retail].[rel_retail_order_lines_to_shipments] ADD FOREIGN KEY ([retail_order_line_id]) REFERENCES [retail].[retail_order_lines] ([retail_order_line_id])
GO

ALTER TABLE [retail].[rel_retail_order_lines_to_shipments] ADD FOREIGN KEY ([shipment_id]) REFERENCES [shipping].[shipments] ([shipment_id])
GO
