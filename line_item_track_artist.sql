--line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT t.Name, ar.Name, il.UnitPrice, il.Quantity
FROM InvoiceLine il
JOIN Track t ON t.TrackId = il.TrackId
JOIN Album a ON a.AlbumId = t.AlbumId
JOIN Artist ar ON ar.ArtistId = a.ArtistId;