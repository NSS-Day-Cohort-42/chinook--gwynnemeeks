SELECT e.FirstName || ' ' || e.LastName as EmployeeName,
    i.InvoiceId,
    i.InvoiceDate,
    i.BillingCountry,
    i.Total
FROM Invoice i 
    JOIN Customer c on c.CustomerId = i.CustomerId
    JOIN Employee e on e.EmployeeId = c.SupportRepId
ORDER BY EmployeeName,
    i.BillingCountry,
    i.Total desc;