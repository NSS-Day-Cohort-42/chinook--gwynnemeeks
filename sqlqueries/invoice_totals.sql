SELECT i.InvoiceId,
    e.FirstName || ' ' || e.LastName as EmployeeName,
    c.FirstName || ' ' || c.LastName as CustomerName,
    i.BillingCountry,
    i.Total
FROM Invoice i
    JOIN Customer c on c.CustomerId = i.CustomerId
    JOIN Employee e on e.EmployeeId = c.SupportRepId
ORDER BY CustomerName,
    i.BillingCountry,
    i.Total DESC;