-- Provide a query that shows all Invoices but includes 
-- the # of invoice line items.

SELECT 
i.*, 
COUNT(li.invoiceLineId) numOfLineItems
FROM Invoice i
JOIN InvoiceLine li on li.invoiceId = i.invoiceId
GROUP BY i.invoiceId
