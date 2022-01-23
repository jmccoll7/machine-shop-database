USE MachineShop
GO

INSERT Employees
VALUES
	(4567,'Tim','Lee','123 Oak Street','123-555-1831'),
	(3920,'Bob','Scotch','234 Pine Street','123-555-0313'),
	(1734,'Sam','Hill','345 Meadow Road','123-555-5123'),
	(9472,'Melissa','Shore','456 Red Street','234-555-6234'),
	(4352,'Jody','Hughes','567 Elm Street','123-555-9403')
GO

INSERT Customers
VALUES
	(27,'High Flyers Inc.','753 Flyer Road','234-555-8342'),
	(33,'Fighters','324 Tough Street','234-555-2634'),
	(34,'Bob''s Assembly','843 Make Street','234-555-1254')
GO

INSERT Contracts
VALUES
	(142,27,'12-Month Contract with 1 order per month',4567),
	(172,27,'12-Month Contract with 1 order per month',4567),
	(189,27,'12-Month Contract with 1 order per month',4567),
	(99,33,'6-Month Contract with 2 orders per month',9472),
	(151,34,'6-Month Contract with 3 orders per month',9472)
GO

INSERT Parts
VALUES
	('172-A73','Wing Plate'),
	('834-B21','Gear Shaft'),
	('192-C89','Rotor Blade'),
	('273-FF1','Front Connector'),
	('833-DD1','Loose End'),
	('413-A9M','Main Housing'),
	('625-D1D','Motor Stabilizer'),
	('236-9JF','Big Unit'),
	('163-8DF','Tight Gyro'),
	('755-ABC','Opposite Dongle'),
	('645-JWI','Shock Enhancer'),
	('942-1JJ','Tiny Lever')
GO

INSERT [Assemblies]
VALUES
	('ROTO-MAN24','Main Rotor Assembly'),
	('WING-THING7','Left Wing Assembly')
GO

INSERT AssemblyItems
VALUES
	('ROTO-MAN24','192-C89'),
	('ROTO-MAN24','625-D1D'),
	('ROTO-MAN24','163-8DF'),
	('ROTO-MAN24','273-FF1'),
	('WING-THING7','172-A73'),
	('WING-THING7','833-DD1'),
	('WING-THING7','755-ABC')
GO

INSERT CustomerOrders
VALUES
	(428,1111.32,142),
	(491,842.12,172),
	(510,937.11,189),
	(397,2801.98,99),
	(448,1587.09,151)
GO

INSERT CustomerOrderItems
VALUES
	(428,1,NULL,'942-1JJ',8),
	(428,2,NULL,'834-B21',8),
	(491,1,NULL,'236-9JF',16),
	(510,1,NULL,'413-A9M',4),
	(510,2,NULL,'645-JWI',12),
	(397,1,'ROTO-MAN24',NULL,1),
	(448,1,'WING-THING7',NULL,3)	
GO

INSERT Suppliers
VALUES
	(13,'Raw Metal','513 Flyer Road','234-555-5111'),
	(22,'Purity Promised','875 Tough Street','234-555-5132'),
	(17,'Good Stuff Here','432 Make Street','123-555-5943')
GO

INSERT SupplierInvoices
VALUES
	(174,13,272.22,'12-21-2021',428),
	(189,22,132.01,'12-27-2021',491),
	(201,22,227.10,'12-11-2021',510),
	(155,13,141.89,'01-22-2022',397),
	(133,17,89.37,'01-05-2022',448)
GO

INSERT Machines
VALUES
	(1,'Lathe','A6','625-D1D',3920,'12-05-2021'),
	(2,'Vertical Mill','B3','172-A73',1734,'12-06-2021'),
	(3,'Horizontal Mill','D1','645-JWI',4352,'12-04-2021'),
	(4,'5-Axis Mill','A3',NULL,NULL,NULL)
GO