SELECT 
	AssemblyItems.*,
	PartDescription
FROM AssemblyItems JOIN Parts
	ON AssemblyItems.PartID = Parts.PartID
WHERE AssemblyID = 'ROTO-MAN24'