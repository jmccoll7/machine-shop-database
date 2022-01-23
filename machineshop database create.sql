/* Created by James McColl on 11/30/21 */

USE master
GO

CREATE DATABASE MachineShop
GO

USE MachineShop
GO

CREATE TABLE Employees(
	EmployeeID INT PRIMARY KEY NOT NULL,
	EmployeeFirstName VARCHAR(20) NOT NULL,
	EmployeeLastName VARCHAR(20) NOT NULL,
	EmployeeAddress VARCHAR(50) NOT NULL,
	EmployeePhoneNo VARCHAR (20) NOT NULL
)
GO

CREATE TABLE Customers(
	CustomerID INT PRIMARY KEY NOT NULL,
	CustomerName VARCHAR(50) NOT NULL,
	CustomerAddress VARCHAR(50) NOT NULL,
	CustomerPhoneNo VARCHAR(20) NOT NULL
)
GO

CREATE TABLE Contracts(
	ContractID INT PRIMARY KEY NOT NULL,
	CustomerID INT REFERENCES Customers(CustomerID) NOT NULL,
	ContractDetails VARCHAR(100) NOT NULL,
	EmployeeID INT REFERENCES Employees(EmployeeID) NOT NULL
)
GO

CREATE TABLE CustomerOrders(
	CustomerOrderID INT PRIMARY KEY NOT NULL,
	OrderPayment DECIMAL(19,2) NOT NULL,
	ContractID INT REFERENCES Contracts(ContractID)
)
GO

CREATE TABLE Suppliers(
	SupplierID INT PRIMARY KEY NOT NULL,
	SupplierName VARCHAR(50) NOT NULL,
	SupplierAddress VARCHAR(50) NOT NULL,
	SupplierPhoneNo VARCHAR(20) NOT NULL
)
GO

CREATE TABLE SupplierInvoices(
	SupplierInvoiceID INT PRIMARY KEY NOT NULL,
	SupplierID INT REFERENCES Suppliers(SupplierID) NOT NULL,
	InvoiceAmount DECIMAL(19,2) NOT NULL,
	InvoiceDueDate DATE NOT NULL,
	CustomerOrderID INT REFERENCES CustomerOrders(CustomerOrderID) NOT NULL
)
GO

CREATE TABLE Parts(
	PartID VARCHAR(50) PRIMARY KEY NOT NULL,
	PartDescription VARCHAR(50) NOT NULL
)
GO

CREATE TABLE [Assemblies](
	AssemblyID VARCHAR(50) PRIMARY KEY NOT NULL,
	AssemblyDescription VARCHAR(50) NOT NULL
)
GO

CREATE TABLE AssemblyItems(
	AssemblyID VARCHAR(50) REFERENCES [Assemblies](AssemblyID) NOT NULL,
	PartID VARCHAR(50) REFERENCES Parts(PartID) NOT NULL
)
GO

CREATE TABLE CustomerOrderItems(
	CustomerOrderID INT REFERENCES CustomerOrders(CustomerOrderID) NOT NULL,
	CustomerOrderLineNo INT NOT NULL,
	AssemblyID VARCHAR(50) REFERENCES [Assemblies](AssemblyID) NULL,
	PartID VARCHAR(50) REFERENCES Parts(PartID) NULL,
	Quantity INT NOT NULL,
	PRIMARY KEY (CustomerOrderID, CustomerOrderLineNo),
	CHECK (
		(AssemblyID IS NULL AND PartID IS NOT NULL)
		OR (PartID IS NULL AND AssemblyID IS NOT NULL)
	)
)
GO

CREATE TABLE Machines(
	MachineID INT PRIMARY KEY NOT NULL,
	MachineType VARCHAR(20) NOT NULL,
	MachineLocation VARCHAR(20) NOT NULL,
	PartID VARCHAR(50) REFERENCES Parts(PartID) NULL,
	EmployeeID INT REFERENCES Employees(EmployeeID) NULL,
	CurrentPartEndDate DATE NULL,
	CHECK (
		MachineType = 'Lathe' OR
		MachineType = 'Vertical Mill' OR
		MachineType = 'Horizontal Mill' OR
		MachineType = '5-Axis Mill'
	)
)
GO

