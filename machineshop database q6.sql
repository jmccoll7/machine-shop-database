SELECT
	EmployeeFirstName + ' ' + EmployeeLastName AS 'Program Manager',
	CustomerName AS Customer,
	CustomerOrders.CustomerOrderID,
	SupplierName AS 'Raw Material Supplier'
FROM CustomerOrders
	JOIN SupplierInvoices
		ON CustomerOrders.CustomerOrderID = SupplierInvoices.CustomerOrderID
	JOIN Suppliers
		ON SupplierInvoices.SupplierID = Suppliers.SupplierID
	JOIN Contracts
		ON CustomerOrders.ContractID = Contracts.ContractID
	JOIN Customers
		ON Contracts.CustomerID = Customers.CustomerID
	JOIN Employees
		ON Contracts.EmployeeID = Employees.EmployeeID
ORDER BY Customer