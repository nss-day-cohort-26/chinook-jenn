--total_sales_{year}.sql: What are the respective total sales for each of those years?

SELECT SUM(Total) AS TotalItemsOrdered FROM Invoice
WHERE InvoiceDate LIKE '%2009%';

SELECT SUM(Total) AS TotalItemsOrdered FROM Invoice
WHERE InvoiceDate LIKE '%2011%';