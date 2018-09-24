--invoice_totals.sql: Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT i.Total, c.FirstName || ' ' || c.LastName as Customer, c.Country, e.FirstName || ' ' || e.LastName as SalesRep
FROM Invoice i
JOIN Customer c ON c.CustomerId = i.CustomerId
JOIN Employee e ON e.EmployeeId = c.SupportRepId
ORDER by Customer;

SELECT COUNT(i.InvoiceId) NumberOfInvoices,
strftime('%Y',i.InvoiceDate) as InvoiceYear
FROM Invoice i
WHERE InvoiceYear = '2009'
OR InovoiceYear = '2011'
GROUP BY InvoiceYear;
