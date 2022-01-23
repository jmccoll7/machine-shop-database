SELECT
	CustomerName,
	ContractID,
	EmployeeFirstName + ' ' + EmployeeLastName AS 'Program Manager',
	ContractDetails
FROM Customers 
	JOIN Contracts
		ON Customers.CustomerID = Contracts.CustomerID
	JOIN Employees
		ON Contracts.EmployeeID = Employees.EmployeeID
ORDER BY CustomerName, ContractID