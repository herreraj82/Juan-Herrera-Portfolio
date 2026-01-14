CREATE TABLE [shipping].[shipment_journey_segments] (
  [shipment_journey_id] int,
  [from_location_id] int,
  [to_location_id] int,
  [segment_rank] int
)
GO

ALTER TABLE [shipping].[shipment_journey_segments] ADD FOREIGN KEY ([shipment_journey_id]) REFERENCES [shipping].[shipment_journey_headers] ([shipment_journey_id])
GO

ALTER TABLE [shipping].[shipment_journey_segments] ADD FOREIGN KEY ([from_location_id]) REFERENCES [geography].[locations] ([location_id])
GO

ALTER TABLE [shipping].[shipment_journey_segments] ADD FOREIGN KEY ([to_location_id]) REFERENCES [geography].[locations] ([location_id])
GO