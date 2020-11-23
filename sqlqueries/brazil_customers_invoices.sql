SELECT i.InvoiceId,
    i.InvoiceDate,
    c.FirstName || '' || c.LastName as FullName,
    i.BillingCountry
FROM Invoice i
    join Customer c on i.CustomerId = c.CustomerId
WHERE c.Country = 'Brazil';