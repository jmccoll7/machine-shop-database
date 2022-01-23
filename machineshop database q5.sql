SELECT
	SupplierName,
	Suppliers.SupplierID,
	FORMAT (SUM(InvoiceAmount), 'C') AS 'Total Amount Owed',
	FORMAT (MAX(InvoiceAmount), 'C') AS 'Largest Invoice',
	MIN(SupplierInvoices.InvoiceDueDate) AS 'Earliest Due Date'
FROM SupplierInvoices JOIN Suppliers
	ON SupplierInvoices.SupplierID = Suppliers.SupplierID
GROUP BY Suppliers.SupplierID, SupplierName
HAVING SUM(InvoiceAmount) > 100
ORDER BY SUM(InvoiceAmount) DESC