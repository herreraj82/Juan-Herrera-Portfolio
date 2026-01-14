CREATE TABLE [shipping].[shipment_journey_headers] (
  [shipment_journey_id] int not null primary key IDENTITY(1,1),
  [shipment_id] int
)
GO

ALTER TABLE [shipping].[shipment_journey_headers] ADD FOREIGN KEY ([shipment_id]) REFERENCES [shipping].[shipments] ([shipment_id])
GO