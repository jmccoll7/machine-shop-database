SELECT
	MachineID,
	MachineType,
	MachineLocation,
	EmployeeFirstName + ' ' + EmployeeLastName AS 'Machinist',
	CurrentPartEndDate AS 'Date Available'
FROM Machines JOIN Employees
	ON Machines.EmployeeID = Employees.EmployeeID
WHERE CurrentPartEndDate = 
	(SELECT MIN(CurrentPartEndDate)
	FROM Machines)