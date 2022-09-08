USE IS4420_GroupProject;

-- This view combines multiple tables to display relevant order information for an employee to analyze.
DROP VIEW IF EXISTS RecentOrderInfo;
GO
CREATE VIEW RecentOrderInfo AS

SELECT	ORG.OrganizationID,
		ORG.OrganizationName,
		CONCAT( ORG.ContactFirstName, ' ', ORG.ContactMiddleName, ' ', ORG.ContactLastName ) AS ContactName,
		ORG.Email,
		O.OrderID,
		O.OrderDate,
		S.ShipmentDate,
		S.DeliveryDate,
		S.ShipmentTotal,
		P.ProductName,
		P.ProductInventory,
		P.ProductCost,
		OL.ProductPrice,
		OL.Quantity,
		SUM ( OL.ProductPrice * OL.Quantity ) AS OrderTotal,
		PAY.PaymentID,
		PAY.PaymentTotal,
		PAY.PaymentDate
FROM	Organizations AS ORG
INNER JOIN Orders AS O
  ON ORG.OrganizationID = O.OrganizationID
INNER JOIN OrderLines AS OL
  ON O.OrderID = OL.OrderID
INNER JOIN Products AS P
  ON OL.ProductID = P.ProductID
INNER JOIN Payments AS PAY
  ON PAY.OrderID = O.OrderID
INNER JOIN Shipments AS S
  ON S.ShipmentID = O.ShipmentID
GROUP BY	ORG.OrganizationID,
			ORG.OrganizationName,
			CONCAT( ORG.ContactFirstName, ' ', ORG.ContactMiddleName, ' ', ORG.ContactLastName ),
			ORG.Email,
			O.OrderID,
			O.OrderDate,
			S.ShipmentDate,
			S.DeliveryDate,
			S.ShipmentTotal,
			P.ProductName,
			P.ProductInventory,
			P.ProductCost,
			OL.ProductPrice,
			OL.Quantity,
			PAY.PaymentID,
			PAY.PaymentDate,
			PAY.PaymentTotal;

GO

--Execute RecentOrderInfo view
SELECT * FROM RecentOrderInfo 
ORDER BY OrderDate DESC;

--This view displays information for the organizations we service.
DROP VIEW If EXISTS OrganizationInfo;
GO
CREATE VIEW OrganizationInfo AS

SELECT	ORG.OrganizationID,
		ORG.OrganizationName,
		ORG.ContactFirstName,
		ORG.ContactLastName,
		ORG.Email,
		ORGP.PhoneNumber AS PrimaryPhoneNumber,
		CONCAT( L.StreetAddress, ', ', L.City, ', ', L.[State], ' ', L.ZipCode ) AS [Location]
FROM Organizations AS ORG
INNER JOIN OrganizationPhones AS ORGP
  ON ORG.OrganizationID = ORGP.OrganizationID
INNER JOIN Locations AS L
  ON ORG.LocationID = L.LocationID
WHERE ORGP.PrimaryPhoneFlag = 'Y';

GO

--Execute OrganizationInfo view
SELECT * FROM OrganizationInfo;

--This procedure is able to retrieve organization info by using a phone number as a key.
DROP PROCEDURE IF EXISTS GetOrganizationInfo;
GO
CREATE PROCEDURE GetOrganizationInfo
	@OrganizationPhone	VARCHAR(15)
AS
BEGIN

	DECLARE @OrganizationID INT;

	SET @OrganizationID = (	SELECT	OrganizationID
							FROM	OrganizationPhones
							WHERE	PhoneNumber = @OrganizationPhone
						   );
SELECT *
FROM OrganizationInfo
WHERE OrganizationID = @OrganizationID;

END;

GO

--Execute GetOrganizationInfo procedure
GetOrganizationInfo @OrganizationPhone = '8015618888'

--This procedure is able to retrieve employee information by using an employees date of birth as a key.
DROP PROCEDURE IF EXISTS GetEmployeeInfo;
GO
CREATE PROCEDURE GetEmployeeInfo
	@DOB DATE
AS
BEGIN

	DECLARE @EmployeeINFO DATE;

	SET @EmployeeINFO = (	SELECT	DOB
							FROM	Employees
							WHERE	DOB = @DOB
						   );
SELECT *
FROM Employees
WHERE DOB = @DOB;

END;

GO

--Execute GetEmployeeInfo procedure
GetEmployeeInfo @DOB = '03/24/1987';

--This procedure is able to update the information for a location.
DROP PROCEDURE IF EXISTS UpdateLocationInfo;
GO
CREATE PROCEDURE UpdateLocationInfo
	@LocationID				INT,
	@StreetAddress			VARCHAR(35),
	@City					VARCHAR(25),
	@State					CHAR(2),
	@ZipCode				VARCHAR(10),
	@LocationDescription	VARCHAR(50)

AS
BEGIN

    UPDATE Locations
	SET StreetAddress = @StreetAddress,
		City = @City,
		State = @State,
		ZipCode = @ZipCode,
		LocationDescription = @LocationDescription
		WHERE LocationID = @LocationID;

END;

GO

--Execute UpdateLocationInfo procedure	
UpdateLocationInfo 1, '1111 E 2222 S', 'SLC', 'UT', '84001', 'Updated Address';

--Check Result
SELECT * FROM Locations;

--This SELECT query combines multiple tables to show relevant information about our Employees.
SELECT  E.EmployeeID,
		CONCAT( E.FirstName, ' ', E.MiddleName, ' ', E.LastName ) AS EmployeeName,
		CONCAT( L.StreetAddress, ', ', L.City, ', ', L.[State], ' ', L.ZipCode ) AS HomeAddress,
		E.Phone,
		E.Email,
		E.DOB,
		E.HireDate,
		E.EmployeeType,
		D.DepartmentName,
		E.Salary,
		BR.BeginDate AS BenefitBeginDate,
		B.BenefitName
FROM Employees AS E
INNER JOIN Departments AS D
  ON E.DepartmentID = D.DepartmentID
INNER JOIN Locations AS L
  ON E.LocationID = L.LocationID
INNER JOIN BenefitsRegistration AS BR
  ON BR.EmployeeID = E.EmployeeID
INNER JOIN Benefits AS B
  ON BR.BenefitID = B.BenefitID;

--This query displays payment information Based off of payment type, total, and quantity of a specific product.
SELECT P.OrderId,
	   P.PaymentType,
	   P.PaymentTotal,
	   PS.ProductName,
	   OL.ProductPrice,
	   OL.Quantity
		FROM Payments AS P
		INNER JOIN OrderLines AS OL
		  ON P.OrderID = OL.OrderID
		INNER JOIN Products as PS
		 ON OL.ProductID = PS.ProductID
		ORDER BY P.PaymentType DESC,
				 OL.ProductPrice DESC,
				 OL.Quantity;

--This query displays Vehicle information and the employee that operates each vehicle. 
SELECT	V.VehicleID,
		V.DepartureTime,
		V.ArrivalTime,
		V.CapacityRating,
		V.MaintenanceDate,
		V.VehicleType,
		V.VehicleYear,
		V.VehicleSize,
		E.EmployeeID,
		CONCAT( E.FirstName, ' ', E.MiddleName, ' ', E.LastName ) AS VehicleOpertor,
		E.Phone
FROM Vehicles AS V
LEFT OUTER JOIN Drivers AS D
  ON  D.VehicleID = V.VehicleID
LEFT OUTER JOIN Pilots AS P
  ON P.VehicleID = V.VehicleID
INNER JOIN Employees AS E
  ON E.EmployeeID = D.EmployeeID OR E.EmployeeID = P.EmployeeID;

--This query displays our inventory information and orders them by least to greatest.
SELECT	P.ProductID,
		P.ProductName,
		P.ProductInventory
FROM Products AS P
ORDER BY P.ProductInventory ASC;

--This query displays our shipment information and it is ordered by most recent shipments. 
SELECT	S.ShipmentID,
		S.ShipmentTotal,
		S.ShipmentDate,
		S.ShipmentTime,
		S.DeliveryDate,
		S.DeliveryTime,
		S.ShipmentDescription,
		V.VehicleType,
		V.VehicleYear
FROM Shipments AS S
INNER JOIN Vehicles AS V
  ON V.VehicleID = S.VehicleID
ORDER BY S.ShipmentDate DESC;

--This query displays our office information.
SELECT	O.OfficeID,
		O.Phone,
		O.OfficeDescription,
		CONCAT( L.StreetAddress, ', ', L.City, ', ', L.[State], ' ', L.ZipCode ) AS OfficeAddress
		FROM Offices AS O
INNER JOIN Locations AS L
  ON L.LocationID = O.LocationID;

--This query displays our location information.
SELECT	L.LocationID,
		CONCAT( L.StreetAddress, ', ', L.City, ', ', L.[State], ' ', L.ZipCode ) AS LocationAddress,
		L.LocationDescription
FROM Locations AS L;

--This query displays our warehouse information
SELECT	W.WarehouseID,
		W.Phone,
		W.CapacityRating,
		W.WarehouseDescription,
		CONCAT( L.StreetAddress, ', ', L.City, ', ', L.[State], ' ', L.ZipCode ) AS WarehouseAddress
FROM Warehouses AS W
INNER JOIN Locations AS L
  ON L.LocationID = W.LocationID;