SELECT
	SupplierName,
	Suppliers.SupplierID,
	SupplierInvoiceID,
	FORMAT (InvoiceAmount, 'C') AS 'Amount Owed',
	InvoiceDueDate
FROM SupplierInvoices JOIN Suppliers
	ON SupplierInvoices.SupplierID = Suppliers.SupplierID
ORDER BY SupplierID, [Amount Owed] DESC