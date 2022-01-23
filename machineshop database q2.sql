SELECT
	MachineID,
	MachineType,
	MachineLocation
FROM Machines
WHERE PartID IS NULL AND EmployeeID IS NULL