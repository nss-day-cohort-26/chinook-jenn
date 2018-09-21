--sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT e.Title, e.FirstName || ' ' || e.LastName as SalesRepName, i.InvoiceDate, i.BillingAddress, i.BillingCity, i.BillingState, i.BillingCountry, i.Total
FROM Invoice i
JOIN Employee e ON e.EmployeeId = c.SupportRepId
JOIN Customer c ON c.CustomerId = i.CustomerId
ORDER BY SalesRepName;