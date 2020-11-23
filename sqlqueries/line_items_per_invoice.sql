SELECT COUNT(*),
li.InvoiceId
FROM InvoiceLine li
GROUP BY li.InvoiceId;