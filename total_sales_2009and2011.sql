--total_sales_{year}.sql: What are the respective total sales for each of those years?

SELECT SUM(Total) AS TotalItemsOrdered FROM Invoice
WHERE InvoiceDate LIKE '%2009%';

SELECT SUM(Total) AS TotalItemsOrdered FROM Invoice
WHERE InvoiceDate LIKE '%2011%';

SELECT '$' || sum(i.Total) Total,
strftime('%Y',i.InvoiceDate) InvoiceYear
FROM Invoice i
WHERE InvoiceYear = '2011'
OR InvoiceYear = '2009'
GROUP BY InvoiceYear;
