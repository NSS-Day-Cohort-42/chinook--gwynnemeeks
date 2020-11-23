-- Provide a query that shows the # of 
-- invoices per country. HINT: GROUP BY

SELECT
COUNT(*),
i.billingCountry
FROM Invoice i
GROUP BY i.billingCountry;
