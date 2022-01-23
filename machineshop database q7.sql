SELECT Parts.PartID, PartDescription
FROM Parts LEFT JOIN AssemblyItems
	ON Parts.PartID = AssemblyItems.PartID
WHERE AssemblyID IS NULL