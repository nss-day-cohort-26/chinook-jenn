--line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.

SELECT t.Name, i.Total, i.InvoiceDate
FROM InvoiceLine il
JOIN Invoice i ON i.InvoiceId = il.InvoiceId
JOIN Track t ON t.TrackId = il.TrackId;