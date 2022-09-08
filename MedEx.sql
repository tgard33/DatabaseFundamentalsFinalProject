
USE master; -- To drop a database, you must be "using" a different database
GO

DROP DATABASE IF EXISTS IS4420_GroupProject; 
CREATE DATABASE IS4420_GroupProject;

USE IS4420_GroupProject;

-- Create the Locations table
DROP TABLE IF EXISTS Locations;
CREATE TABLE Locations
( LocationID			INTEGER NOT NULL IDENTITY(1,1),
  StreetAddress			VARCHAR(35) NOT NULL,
  City					VARCHAR(25) NOT NULL,
  State					CHAR(2) NOT NULL,
  ZipCode				VARCHAR(10) NOT NULL,
  LocationDescription	VARCHAR(50) NOT NULL,
  CONSTRAINT PK_Locations_LocationID PRIMARY KEY ( LocationID )
);

--Insert Data into Locations table
INSERT INTO Locations ( StreetAddress, City, State, ZipCode, LocationDescription)
VALUES	( '3460 S 4155 W', 'WVC', 'UT', '84120', 'Jordan Valley Medical WVC'),
		( '5121 Cottonwood St', 'Murray', 'UT', '84107', 'Intemountain Medical Center Murray'),
		( '50 Medical Dr N', 'SLC', 'UT', '84132', 'University of Utah Hospital'),
		( '4252 Birkhill Blvd', 'Murray', 'UT', '84107', 'KPC Promise Hospital Murray'),
		( '3580 W 9000 S', 'West Jordan', 'UT', '84088', 'Jordan Valley Medical West Jordan'),
		( '8th Avenue', 'SLC', 'UT', '84143', 'LDS Hospital'),
		( '1050 E S Temple', 'SLC', 'UT', '84102', 'Salt Lake Regional Medical Center'),
		( '1200 E 3900 S', 'Millcreek', 'UT', '84144', 'St. Marks Hospital'),
		( '5848 S 300 E', 'Murray', 'UT', '84107', 'The Orthopedic Specialty Hospital'),
		( '11925 State St', 'Draper', 'UT', '84020', 'Lone Peak Hospital'),
		( '100 Mario Capecchi Dr', 'SLC', 'UT', '84113', 'Primary Childrens Hospital'),
		( '1275 E Fairfax Rd', 'SLC', 'UT', '84103', 'Shriners Hospitals for Children SLC'),
		( '9660 S 1300 E', 'Sandy', 'UT', '84094', 'Alta View Hospital'),
		( '3741 W 12600 S', 'Riverton', 'UT', '84065', 'Riverton Hospital'),
		( '170 N 1100 E', 'American Fork', 'UT', '84003', 'American Fork Hospital'),
		( '8451 Easy Street', 'SLC', 'UT', '84120', 'Home'),
		( '7078 Green Drive', 'Millcreek', 'UT', '84113', 'Home'),
		( '9032 State Avenue', 'Murray', 'UT', '84109', 'Home'),
		( '6554 Blaine Street', 'WVC', 'UT', '84119', 'Home'),
		( '1230 Red Road', 'SLC', 'UT', '84103', 'Home'),
		( '6785 Plain Street', 'Bluffdale', 'UT', '84065', 'Home'),
		( '9075 Hard Way', 'West Jordan', 'UT', '84060', 'Home'),
		( '9001 Pinto Street', 'SLC', 'UT', '84121', 'Home'),
		( '9876 Goodwin Cove', 'Holladay', 'UT', '84120', 'Home'),
		( '5432 Baldwin Street', 'Ogden', 'UT', '84404', 'Home'),
		( '4589 North Street', 'American Fork', 'UT', '84395', 'Home'),
		( '1256 Cadera Lane', 'Millcreek', 'UT', '84103', 'Home'),
		( '7065 Lane Street', 'SLC', 'UT', '84121', 'Home'),
		( '9758 Mountain Way', 'Draper', 'UT', '84020', 'Home'),
		( '4076 Crest Street', 'WVC', 'UT', '84119', 'Home'),
		( '8450 West Street', 'SLC', 'UT', '84120', 'Home'),
		( '7070 Red Drive', 'Millcreek', 'UT', '84113', 'Home'),
		( '9032 Scantron Avenue', 'Murray', 'UT', '84109', 'Home'),
		( '6555 Boon Street', 'WVC', 'UT', '84119', 'Home'),
		( '1236 Radar Road', 'SLC', 'UT', '84103', 'Home'),
		( '6789 Piston Street', 'Bluffdale', 'UT', '84065', 'Home'),
		( '9070 Harmon Way', 'West Jordan', 'UT', '84060', 'Home'),
		( '9006 Pilbox Street', 'SLC', 'UT', '84121', 'Home'),
		( '9874 Wemberly Cove', 'Holladay', 'UT', '84120', 'Home'),
		( '5433 Numark Street', 'Ogden', 'UT', '84404', 'Home'),
		( '4586 Weston Street', 'American Fork', 'UT', '84395', 'Home'),
		( '1258 Candel Lane', 'Millcreek', 'UT', '84103', 'Home'),
		( '7069 Lancer Street', 'SLC', 'UT', '84121', 'Home'),
		( '9750 Maddox Way', 'Draper', 'UT', '84020', 'Home'),
		( '4071 Foreign Street', 'WVC', 'UT', '84119', 'Home'),--
		( '9451 Plaster Street', 'SLC', 'UT', '84120', 'Home'),
		( '6078 Fountain Drive', 'Millcreek', 'UT', '84113', 'Home'),
		( '8032 Manberry Avenue', 'Murray', 'UT', '84109', 'Home'),
		( '5554 Maple Street', 'WVC', 'UT', '84119', 'Home'),
		( '2230 Rodney Road', 'SLC', 'UT', '84103', 'Home'),
		( '7785 Musket Street', 'Bluffdale', 'UT', '84065', 'Home'),
		( '2075 Harring Way', 'West Jordan', 'UT', '84060', 'Home'),
		( '7001 Manti Street', 'SLC', 'UT', '84121', 'Home'),
		( '6876 Newel Cove', 'Holladay', 'UT', '84120', 'Home'),
		( '3432 Barr Street', 'Ogden', 'UT', '84404', 'Home'),
		( '8589 Yellow Street', 'American Fork', 'UT', '84395', 'Home'),
		( '7256 Blesserly Lane', 'Millcreek', 'UT', '84103', 'Home'),
		( '1065 Iopa Street', 'SLC', 'UT', '84121', 'Home'),
		( '7758 Montigo Way', 'Draper', 'UT', '84020', 'Home'),
		( '9076 Barcelona Street', 'WVC', 'UT', '84119', 'Home'),
		( '8551 Billings Street', 'SLC', 'UT', '84120', 'Home'),
		( '7178 Radon Drive', 'Millcreek', 'UT', '84113', 'Home'),
		( '9132 Hansen Avenue', 'Murray', 'UT', '84109', 'Home'),
		( '6654 Long Street', 'WVC', 'UT', '84119', 'Home'),
		( '1830 Munson Road', 'SLC', 'UT', '84103', 'Home'),
		( '6085 Reed Street', 'Bluffdale', 'UT', '84065', 'Home'),
		( '9975 Thomas Way', 'West Jordan', 'UT', '84060', 'Home'),
		( '9901 River Street', 'SLC', 'UT', '84121', 'Home'),
		( '9276 Lake View Cove', 'Holladay', 'UT', '84120', 'Home'),
		( '5632 Ponce Street', 'Ogden', 'UT', '84404', 'Home'),
		( '4889 Newel Street', 'American Fork', 'UT', '84395', 'Home'),
		( '1956 Corseir Lane', 'Millcreek', 'UT', '84103', 'Home'),
		( '7165 Mattaray Street', 'SLC', 'UT', '84121', 'Home'),
		( '9558 Harris Way', 'Draper', 'UT', '84020', 'Home'),
		( '4176 Fuller Street', 'WVC', 'UT', '84119', 'Home'),
		( '1825 S 300 W', 'SLC', 'UT', '84103', 'Salt Lake Storage Facility'),
		( '2898 S Redwood Road', 'WVC', 'UT', '84119', 'West Valley Storage Facility'),
		( '2631 W 6700 S', 'West Jordan', 'UT', '84065', 'West Jordan Storage Facility'),
		( '9760 Green Road', 'American Fork', 'UT', '84113', 'American Fork Storage Facility'),
		( '1400 Wall Ave', 'Ogden', 'UT', '84404', 'Ogden Storage Facility'),
		( '1756 S 700 W', 'SLC', 'UT', '84121', 'Salt Lake Sorting Facility'),
		( '3550 S 1900 W', 'WVC', 'UT', '84119', 'West Valley Sorting Facility'),
		( '7800 S 3600 W', 'West Jordan', 'UT', '84065', 'West Jordan Hangar Facility'),
		( '256 S 5500 W', 'SLC', 'UT', '84119', 'Salt Lake Hangar Facility'),
		( '1000 N 400 W', 'Ogden', 'UT', '84404', 'Ogden Sorting Facility'),
		( '370 S 900 W', 'SLC', 'UT', '84121', 'Salt Lake Truck Storage Facility'),
		( '3560 S 5600 W', 'WVC', 'UT', '84119', 'West Valley Truck Storage Facility'),
		( '900 N 350 E', 'Ogden', 'UT', '84404', 'Ogden Truck Storage Facility'),
		( '1600 S Ogden Way', 'Ogden', 'UT', '84404', 'Ogden Hangar Facility'),
		( '8967 Bounty Blvd', 'Bountfiful', 'UT', '84104', 'Bountiful Storage Facility'),
		( '5469 S 200 W', 'SLC', 'UT', '84130', 'Salt Lake Office'),
		( '2899 S Redwood Road', 'WVC', 'UT', '84119', 'West Valley Office'),
		( '2632 W 6700 S', 'West Jordan', 'UT', '84065', 'West Jordan Office'),
		( '9761 Green Road', 'American Fork', 'UT', '84113', 'American Fork Office'),
		( '1401 Wall Ave', 'Ogden', 'UT', '84404', 'Ogden Office'),
		( '1756 S 700 E', 'SLC', 'UT', '84121', 'Salt Lake East Office'),
		( '3551 S 1900 W', 'WVC', 'UT', '84119', 'West Valley Training Office'),
		( '7801 S 3600 W', 'West Jordan', 'UT', '84065', 'West Jordan Training Office'),
		( '257 S 5500 W', 'SLC', 'UT', '84119', 'Salt Lake Training Office'),
		( '1001 N 400 W', 'Ogden', 'UT', '84404', 'Ogden Ogden Training Office'),
		( '371 S 900 W', 'SLC', 'UT', '84121', 'Salt Lake Corporate Office'),
		( '3561 S 5600 W', 'WVC', 'UT', '84119', 'West Valley CSR Office'),
		( '901 N 350 E', 'Ogden', 'UT', '84404', 'Ogden CSR Office'),
		( '1601 S Ogden Way', 'Ogden', 'UT', '84404', 'Ogden Coporate Office'),
		( '8968 Bounty Blvd', 'Bountfiful', 'UT', '84104', 'Bountiful CSR Office');

-- Create the Organizations table
DROP TABLE IF EXISTS Organizations;
CREATE TABLE Organizations
( OrganizationID	INTEGER NOT NULL IDENTITY(1,1),
  LocationID		INTEGER NOT NULL,
  OrganizationName	VARCHAR(35) NOT NULL,
  ContactFirstName	VARCHAR(25) NOT NULL,
  ContactMiddleName	VARCHAR(25) DEFAULT NULL,
  ContactLastName	VARCHAR(25) NOT NULL,
  Email				VARCHAR(256) NOT NULL,
  DOB				DATE NOT NULL,
  CONSTRAINT PK_Organizations_OrganizationID PRIMARY KEY ( OrganizationID ),
  CONSTRAINT FK_Organizations_LocationID FOREIGN KEY ( LocationID ) REFERENCES Locations ( LocationID )
);

--Insert Data into Organizations table
INSERT INTO Organizations ( LocationID, OrganizationName, ContactFirstName, ContactMiddleName, ContactLastName, Email, DOB)
VALUES	( 1, 'Jordan Valley Medical', 'Jordan', 'Dan', 'Hoover', 'jdhooper@mail.com', '01/02/1990'),
		( 2, 'Intemountain Medical Center', 'Caden', 'Cross', 'White', 'whitecc@mail.com', '10/30/1983'),
		( 3, 'University of Utah Hospital', 'Carrie', 'Dean', 'Builder', 'cbuilder@mail.com', '12/23/1969'),
		( 4, 'KPC Promise Hospital', 'Sharon', 'Sweenie', 'Babbot', 'babbotswee@mail.com', '03/19/1975'),
		( 5, 'Jordan Valley Medical', 'Dave', 'Gary', 'Sagget', 'davegs@mail.com', '07/11/1989'),
		( 6, 'LDS Hospital', 'Suzanne', 'Crockett', 'Smith', 'suzannecs@mail.com', '06/19/1967'),
		( 7, 'Salt Lake Regional Medical Center', 'John', 'Black', 'Winder', 'jbwinder@mail.com', '07/24/1957'),
		( 8, 'St. Marks Hospital', 'Jillian', 'Wen', 'Pfister', 'jpfister@mail.com', '09/01/1991'),
		( 9, 'The Orthopedic Specialty Hospital', 'Katherine', 'White', 'Smith', 'smithkw@mail.com', '11/24/1995'),
		( 10, 'Lone Peak Hospital', 'Dylan', 'Brad', 'Jenson', 'djenson@mail.com', '02/26/1992'),
		( 11, 'Primary Childrens Hospital', 'Jarred', 'Ball', 'Greene', 'greenej@mail.com', '05/04/1987'),
		( 12, 'Shriners Hospitals for Children SLC', 'Betty', 'White', 'Crocker', 'crockerb@mail.com', '12/24/1959'),
		( 13, 'Alta View Hospital', 'Bill', 'Lenny', 'Bolt', 'billbolt@mail.com', '07/24/1998'),
		( 14, 'Riverton Hospital', 'Kenny', 'Gerald', 'Lister', 'listerk@mail.com', '08/12/1990'),
		( 15, 'American Fork Hospital', 'Jenny', 'Brown', 'Worther', 'jworther@mail.com', '11/24/1995');

-- Create the OrganizationPhones table
DROP TABLE IF EXISTS OrganizationPhones;
CREATE TABLE OrganizationPhones
( OrganizationID	INTEGER NOT NULL,
  PhoneNumber		VARCHAR(15) NOT NULL,
  PrimaryPhoneFlag  CHAR(1) NOT NULL DEFAULT 'Y',
  CONSTRAINT PK_OrganizationPhones_OrganizationID_PhoneNumber PRIMARY KEY ( OrganizationID, PhoneNumber ),
  CONSTRAINT FK_OrganizationPhones_OrganizationID FOREIGN KEY ( OrganizationID ) REFERENCES Organizations ( OrganizationID ),
  CONSTRAINT CHECK_OrganizationPhones_PrimaryPhoneFlag CHECK ( PrimaryPhoneFlag IN ( 'Y', 'N' ) )
  );

--Insert Data into OrganizationPhones table
INSERT INTO OrganizationPhones ( OrganizationID, PhoneNumber, PrimaryPhoneFlag)
VALUES	(1, '8015618888', 'Y'),
		(1, '8015618889', 'N'),
		(2, '8015914352', 'Y'),
		(2, '8019918888', 'N'),
		(3, '3859218978', 'Y'),
		(4, '8017685412', 'Y'),
		(4, '3857685413', 'N'),
		(4, '8017685414', 'N'),
		(5, '3858435674', 'Y'),
		(6, '8019123478', 'Y'),
		(7, '8015067654', 'Y'),
		(8, '3859312476', 'Y'),
		(9, '8018809760', 'Y'),
		(10, '8011457890', 'Y'),
		(11, '8015430978', 'Y'),
		(12, '3857924786', 'Y'),
		(13, '8014923420', 'Y'),
		(14, '8016078009', 'Y'),
		(15, '3853930520', 'Y');

-- Create the Vehicles table
DROP TABLE IF EXISTS Vehicles;
CREATE TABLE Vehicles
( VehicleID				SMALLINT NOT NULL IDENTITY(1,1),
  DepartureTime			TIME NOT NULL,
  ArrivalTime			TIME NOT NULL,
  CapacityRating		DECIMAL NOT NULL,
  MaintenanceDate		DATE NOT NULL,
  VehicleType			VARCHAR(25) NOT NULL,
  VehicleYear			VARCHAR(25) NOT NULL,
  VehicleSize			VARCHAR(25) NOT NULL
  CONSTRAINT PK_Vehicles_VehicleID PRIMARY KEY ( VehicleID )
  );

--Insert Data into Vehicles table
INSERT INTO Vehicles (DepartureTime, ArrivalTime, CapacityRating, MaintenanceDate, VehicleType, VehicleYear, VehicleSize)
VALUES	( '08:00', '17:00', 10000, '03/01/2021', 'Trailer', '2015', '20 Foot' ),
		( '08:00', '17:00', 12000, '03/01/2021', 'Trailer', '2015', '25 Foot' ),
		( '08:00', '17:00', 14000, '03/01/2021', 'Trailer', '2015', '30 Foot' ),
		( '08:00', '17:00', 16000, '03/01/2021', 'Trailer', '2015', '35 Foot' ),
		( '08:00', '17:00', 18000, '03/01/2021', 'Trailer', '2015', '40 Foot' ),
		( '08:00', '17:00', 10000, '03/01/2021', 'Trailer', '2016', '20 Foot' ),
		( '08:00', '17:00', 12000, '03/01/2021', 'Trailer', '2016', '20 Foot' ),
		( '08:00', '17:00', 14000, '03/01/2021', 'Trailer', '2016', '25 Foot' ),
		( '08:00', '17:00', 16000, '03/01/2021', 'Trailer', '2016', '30 Foot' ),
		( '08:00', '17:00', 18000, '03/01/2021', 'Trailer', '2016', '40 Foot' ),
		( '08:00', '17:00', 10000, '03/01/2021', 'Trailer', '2017', '20 Foot' ),
		( '08:00', '17:00', 12000, '03/01/2021', 'Trailer', '2017', '25 Foot' ),
		( '08:00', '17:00', 14000, '03/01/2021', 'Trailer', '2017', '30 Foot' ),
		( '08:00', '17:00', 16000, '03/01/2021', 'Trailer', '2017', '35 Foot' ),
		( '08:00', '17:00', 18000, '03/01/2021', 'Trailer', '2017', '40 Foot' ),
		( '17:00', '8:00', 12000, '03/01/2021', 'Cargo Plane', '2015', '20 Foot' ),
		( '17:00', '8:00', 14000, '03/01/2021', 'Cargo Plane', '2015', '25 Foot' ),
		( '17:00', '8:00', 16000, '03/01/2021', 'Cargo Plane', '2015', '30 Foot' ),
		( '17:00', '8:00', 14000, '03/01/2021', 'Cargo Plane', '2016', '20 Foot' ),
		( '17:00', '8:00', 16000, '03/01/2021', 'Cargo Plane', '2016', '25 Foot' ),
		( '17:00', '8:00', 12000, '03/01/2021', 'Cargo Plane', '2017', '20 Foot' ),
		( '17:00', '8:00', 14000, '03/01/2021', 'Cargo Plane', '2017', '25 Foot' ),
		( '17:00', '8:00', 16000, '03/01/2021', 'Cargo Plane', '2017', '30 Foot' ),
		( '17:00', '8:00', 14000, '03/01/2021', 'Cargo Plane', '2018', '20 Foot' ),
		( '17:00', '8:00', 16000, '03/01/2021', 'Cargo Plane', '2018', '25 Foot' ),
		( '17:00', '8:00', 12000, '03/01/2021', 'Cargo Plane', '2018', '30 Foot' ),
		( '17:00', '8:00', 14000, '03/01/2021', 'Cargo Plane', '2019', '20 Foot' ),
		( '17:00', '8:00', 16000, '03/01/2021', 'Cargo Plane', '2019', '25 Foot' ),
		( '17:00', '8:00', 14000, '03/01/2021', 'Cargo Plane', '2020', '20 Foot' ),
		( '17:00', '8:00', 16000, '03/01/2021', 'Cargo Plane', '2020', '25 Foot' );

-- Create the Shipments table
DROP TABLE IF EXISTS Shipments;
CREATE TABLE Shipments
( ShipmentID			INTEGER NOT NULL IDENTITY(1,1),
  VehicleID				SMALLINT NOT NULL,
  ShipmentTotal			DECIMAL(9,2) NOT NULL,
  ShipmentDate			DATE NOT NULL,
  ShipmentTime			TIME NULL,
  DeliveryDate			DATE NOT NULL,
  DeliveryTime			TIME NULL,
  ShipmentDescription	VARCHAR(50) NOT NULL,
  CONSTRAINT PK_Shipments_ShipmentID PRIMARY KEY ( ShipmentID ),
  CONSTRAINT FK_Shipments_VehicleID FOREIGN KEY ( VehicleID ) REFERENCES Vehicles ( VehicleID )
  );

--Insert Data into Shipments table
INSERT INTO Shipments ( VehicleID, ShipmentTotal, ShipmentDate, ShipmentTime, DeliveryDate, DeliveryTime, ShipmentDescription )
VALUES	( 1, 1200, '03/01/2021', '08:00', '03/03/2021', '09:36', 'Ground shipment' ),
		( 2, 2000, '03/01/2021', '17:00', '03/02/2021', '10:15', 'Air shipment' ),
		( 3, 100, '03/01/2021', '17:00', '03/02/2021', '19:21', 'Air shipment' ),
		( 4, 1000, '03/01/2021', '08:00', '03/10/2021', '20:20', 'Ground shipment' ),
		( 5, 1300, '03/02/2021', '08:00', '03/06/2021', '22:49', 'Ground shipment' ),
		( 6, 1500, '03/02/2021', '08:00', '03/05/2021', '23:59', 'Ground shipment' ),
		( 7, 2100, '03/02/2021', '17:00', '03/14/2021', '12:12', 'Air shipment' ),
		( 8, 1700, '03/03/2021', '08:00', '03/04/2021', '07:30', 'Ground shipment' ),
		( 9, 2700, '03/03/2021', '17:00', '03/04/2021', '09:34', 'Air shipment' ),
		( 10, 4200, '03/03/2021', '08:00', '03/10/2021', '10:11', 'Ground shipment' ),
		( 11, 2200, '03/04/2021', '08:00', '03/11/2021', '11:38', 'Ground shipment' ),
		( 12, 1800, '03/04/2021', '08:00', '03/07/2021', '04:35', 'Ground shipment' ),
		( 13, 5200, '03/04/2021', '17:00', '03/09/2021', '06:39', 'Air shipment' ),
		( 14, 1900, '03/05/2021', '08:00', '03/21/2021', '09:48', 'Ground shipment' ),
		( 15, 2300, '03/05/2021', '08:00', '03/29/2021', '11:11', 'Ground shipment' ),
		( 1, 1200, '03/06/2021', '08:00', '03/03/2021', '09:36', 'Ground shipment' ),
		( 2, 2000, '03/06/2021', '17:00', '03/02/2021', '10:15', 'Air shipment' ),
		( 3, 100, '03/06/2021', '17:00', '03/02/2021', '19:21', 'Air shipment' ),
		( 4, 1000, '03/07/2021', '08:00', '03/10/2021', '20:20', 'Ground shipment' ),
		( 5, 1300, '03/07/2021', '08:00', '03/06/2021', '22:49', 'Ground shipment' ),
		( 6, 1500, '03/07/2021', '08:00', '03/05/2021', '23:59', 'Ground shipment' ),
		( 7, 2100, '03/07/2021', '17:00', '03/14/2021', '12:12', 'Air shipment' ),
		( 8, 1700, '03/08/2021', '08:00', '03/04/2021', '07:30', 'Ground shipment' ),
		( 9, 2700, '03/08/2021', '17:00', '03/04/2021', '09:34', 'Air shipment' ),
		( 10, 4200, '03/08/2021', '08:00', '03/10/2021', '10:11', 'Ground shipment' ),
		( 11, 2200, '03/08/2021', '08:00', '03/11/2021', '11:38', 'Ground shipment' ),
		( 12, 1800, '03/08/2021', '08:00', '03/07/2021', '04:35', 'Ground shipment' ),
		( 13, 5200, '03/08/2021', '17:00', '03/09/2021', '06:39', 'Air shipment' ),
		( 14, 1900, '03/09/2021', '08:00', '03/21/2021', '09:48', 'Ground shipment' ),
		( 15, 2300, '03/09/2021', '08:00', '03/29/2021', '11:11', 'Ground shipment' ),
		( 1, 1200, '03/10/2021', '08:00', '03/03/2021', '09:36', 'Ground shipment' ),
		( 2, 2000, '03/10/2021', '17:00', '03/02/2021', '10:15', 'Air shipment' ),
		( 3, 100, '03/10/2021', '17:00', '03/02/2021', '19:21', 'Air shipment' ),
		( 4, 1000, '03/11/2021', '08:00', '03/10/2021', '20:20', 'Ground shipment' ),
		( 5, 1300, '03/12/2021', '08:00', '03/06/2021', '22:49', 'Ground shipment' ),
		( 6, 1500, '03/12/2021', '08:00', '03/05/2021', '23:59', 'Ground shipment' ),
		( 7, 2100, '03/12/2021', '17:00', '03/14/2021', '12:12', 'Air shipment' ),
		( 8, 1700, '03/13/2021', '08:00', '03/04/2021', '07:30', 'Ground shipment' ),
		( 9, 2700, '03/13/2021', '17:00', '03/04/2021', '09:34', 'Air shipment' ),
		( 10, 4200, '03/13/2021', '08:00', '03/10/2021', '10:11', 'Ground shipment' );
		
-- Create the Orders table
DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders
( OrderID			INTEGER NOT NULL IDENTITY(1,1),
  OrganizationID	INTEGER NOT NULL,
  ShipmentID		INTEGER NOT NULL,
  OrderDate			DATE NOT NULL,
  OrderTime			TIME NULL,
  OrderTotal		DECIMAL(9,2) NOT NULL,
  OrderDescription	VARCHAR(50) NOT NULL,
  CONSTRAINT PK_Orders_OrderID PRIMARY KEY ( OrderID ),
  CONSTRAINT FK_Orders_ShipmentID FOREIGN KEY ( ShipmentID ) REFERENCES Shipments ( ShipmentID )
  );

--Insert Data into Orders table
INSERT INTO Orders ( OrganizationID, ShipmentID, OrderDate, OrderTime, OrderTotal, OrderDescription )
VALUES  ( 2, 1, '01/20/2021', '09:00', '150.00', 'COVID-19 Testing' ),
		( 1, 2, '01/20/2021', '10:00', '250.00', 'COVID-19 Testing' ),
		( 3, 3, '01/21/2021', '11:00', '350.00', 'COVID-19 Testing' ),
		( 5, 4, '01/22/2021', '12:00', '1000.00', 'COVID-19 Vaccine' ),
		( 4, 5, '01/23/2021', '09:00', '500.00', 'COVID-19 Vaccine' ),
		( 6, 6, '01/25/2021', '10:00', '100.00', 'Antibody Testing' ),
		( 8, 7, '01/27/2021', '11:00', '200.00', 'COVID-19 Testing' ),
		( 7, 8, '01/28/2021', '12:00', '299.99', 'COVID-19 Vaccine' ),
		( 10, 9, '01/28/2021', '09:00', '150.99', 'COVID-19 Vaccine' ),
		( 9, 10, '01/28/2021', '10:00', '151.01', 'COVID-19 Vaccine' ),
		( 11, 11, '01/28/2021', '11:00', '99.00', 'HAZMAT Gear' ),
		( 13, 12, '01/28/2021', '12:00', '10000.00', 'COVID-19 Testing' ),
		( 12, 13, '01/28/2021', '09:00', '5000.43', 'COVID-19 Testing' ),
		( 15, 14, '01/28/2021', '10:00', '133.33', 'COVID-19 Vaccine' ),
		( 14, 15, '01/28/2021', '11:00', '3333.33', 'COVID-19 Testing' ),
		( 1, 16, '02/01/2021', '09:00', '150.00', 'COVID-19 Testing' ),
		( 2, 17, '02/01/2021', '10:00', '250.00', 'COVID-19 Testing' ),
		( 3, 18, '02/01/2021', '11:00', '350.00', 'COVID-19 Testing' ),
		( 4, 19, '02/02/2021', '12:00', '1000.00', 'COVID-19 Vaccine' ),
		( 5, 20, '02/03/2021', '09:00', '500.00', 'COVID-19 Vaccine' ),
		( 6, 21, '02/04/2021', '10:00', '100.00', 'Antibody Testing' ),
		( 7, 22, '02/05/2021', '11:00', '200.00', 'COVID-19 Testing' ),
		( 8, 23, '02/06/2021', '12:00', '299.99', 'COVID-19 Vaccine' ),
		( 9, 24, '02/07/2021', '09:00', '150.99', 'COVID-19 Vaccine' ),
		( 10, 25, '02/08/2021', '10:00', '151.01', 'COVID-19 Vaccine' ),
		( 11, 26, '02/08/2021', '11:00', '99.00', 'HAZMAT Gear' ),
		( 12, 27, '02/08/2021', '12:00', '10000.00', 'COVID-19 Testing' ),
		( 13, 28, '02/08/2021', '09:00', '5000.43', 'COVID-19 Testing' ),
		( 14, 29, '02/08/2021', '10:00', '133.33', 'COVID-19 Vaccine' ),
		( 15, 30, '02/08/2021', '11:00', '3333.33', 'COVID-19 Testing' ),
		( 2, 31, '03/20/2021', '09:00', '150.00', 'COVID-19 Testing' ),
		( 1, 32, '03/20/2021', '10:00', '250.00', 'COVID-19 Testing' ),
		( 3, 33, '03/21/2021', '11:00', '350.00', 'COVID-19 Testing' ),
		( 5, 34, '03/22/2021', '12:00', '1000.00', 'COVID-19 Vaccine' ),
		( 4, 35, '03/23/2021', '09:00', '500.00', 'COVID-19 Vaccine' ),
		( 6, 36, '03/25/2021', '10:00', '100.00', 'Antibody Testing' ),
		( 8, 37, '03/27/2021', '11:00', '200.00', 'COVID-19 Testing' ),
		( 7, 38, '03/28/2021', '12:00', '299.99', 'COVID-19 Vaccine' ),
		( 10, 39, '03/28/2021', '09:00', '150.99', 'COVID-19 Vaccine' ),
		( 9, 40, '03/28/2021', '10:00', '151.01', 'COVID-19 Vaccine' );

-- Create the Warehouses table
DROP TABLE IF EXISTS Warehouses;
CREATE TABLE Warehouses
( WarehouseID			SMALLINT NOT NULL IDENTITY(1,1),
  LocationID			INTEGER NOT NULL,
  Phone					VARCHAR(15) NOT NULL,
  CapacityRating		INTEGER NOT NULL,
  WarehouseDescription	VARCHAR(50) NOT NULL,
  CONSTRAINT PK_Warehouses_WarehouseID PRIMARY KEY ( WarehouseID ),
  CONSTRAINT FK_Warehouses_LocationID FOREIGN KEY ( LocationID ) REFERENCES Locations ( LocationID )
);

--Insert Data into the Warehouses table
INSERT INTO Warehouses ( LocationID, Phone, CapacityRating, WarehouseDescription )
VALUES  ( 31, '8011234567', 1000000, 'Salt Lake Storage Facility' ),
		( 32, '3854321234', 1500000, 'West Valley Storage Facility' ),
		( 33, '8017852143', 2000000, 'West Jordan Storage Facility' ),
		( 34, '8013625588', 3000000, 'American Fork Storage Facility' ),
		( 35, '8013619352', 1000000, 'Ogden Storage Facility' ),
		( 36, '8012279862', 4000000, 'Salt Lake Sorting Facility' ),
		( 37, '8013621633', 3000000, 'West Valley Sorting Facility' ),
		( 38, '4356789009', 5, 'West Jordan Hangar Facility' ),
		( 39, '8019119191', 5, 'Salt Lake Hangar Facility' ),
		( 40, '3543565473', 800500, 'Ogden Sorting Facility' ),
		( 41, '3698764555', 10, 'Salt Lake Truck Storage Facility' ),
		( 42, '8012468999', 10, 'West Valley Truck Storage Facility' ),
		( 43, '4352143333', 10, 'Ogden Truck Storage Facility' ),
		( 44, '8011357090', 5, 'Ogden Hangar Facility' ),
		( 45, '8017654321', 1000000, 'Bountiful Storage Facility' );

-- Create the Products table
DROP TABLE IF EXISTS Products;
CREATE TABLE Products
( ProductID				SMALLINT NOT NULL IDENTITY(1,1),
  WarehouseID			SMALLINT NOT NULL,
  ProductName			VARCHAR(35) NOT NULL,
  ProductSalesPrice		DECIMAL(9,2) NOT NULL,
  ProductCost			DECIMAL(9,2) NOT NULL,
  ProductInventory		INTEGER NOT NULL,
  ProductDescription	VARCHAR(50) NOT NULL,
  CONSTRAINT PK_Products_ProductID PRIMARY KEY ( ProductID ),
  CONSTRAINT FK_Products_WarehouseID FOREIGN KEY ( WarehouseID ) REFERENCES Warehouses ( WarehouseID )
);

--Insert Data into the Products table
INSERT INTO Products ( WarehouseID, ProductName, ProductSalesPrice, ProductCost, ProductInventory, ProductDescription )
VALUES  ( 1, 'Adult Masks', '20.00', '10.00', '500000', 'Adult N95 Face Masks'),
		( 2, 'Moderna Vaccine', '115.00', '50.00', '650000', 'Moderna COVID-19 Vaccines'),
		( 3, 'Testing Kit', '74.99', '32.50', '2000000', 'COVID-19 Testing Kits'),
		( 4, 'Pfizer Vaccine', '155.00', '50.00', '650000', 'Pfizer COVID-19 Vaccines'),
		( 5, 'Hand Sanitizer', '5.00', '2.00', '75', 'Hand Sanitizer'),
		( 6, 'AstraZeneca Vaccine', '165.00', '50.00', '650000', 'AstraZeneca COVID-19 Vaccine'),
		( 7, 'Isopropyl Alcohol', '94.99', '32.50', '2000000', 'Isopropyl Alcohol'),
		( 8, 'Sterile Gloves', '84.99', '32.50', '2000000', 'Sterile Gloves'),
		( 9, 'Sinovac Vaccine', '115.00', '50.00', '650000', 'Sinovac COVID-19 Vaccines'),
		( 1, 'Protective Face Shield', '74.99', '32.50', '2000000', 'Protective Face Shield'),
		( 11, 'Childrens Masks','20.00', '10', '500000', 'Childrens N95 Face Masks'),
		( 12, 'Disinfectant Wipes', '74.99', '32.50', '2000000', 'Disinfectant Wipes'),
		( 13, 'Hazmat Gear', '75.65', '35.00', '500000', 'Hazmat Protective Gear'),
		( 14, 'Novavax Vaccine', '125.00', '50.00', '650000', 'Novavax COVID-19 Vaccine'),
		( 15, 'Protective Coverings', '18.99', '10.00', '2000000', 'COVID-19 Protective Coverings');

-- Create the OrderLines table
DROP TABLE IF EXISTS OrderLines;
CREATE TABLE OrderLines
( OrderID				INT NOT NULL,
  ProductID				SMALLINT NOT NULL,
  Quantity				SMALLINT NOT NULL,
  ProductPrice			DECIMAL (8,2) NOT NULL,
  CONSTRAINT PK_OrderLines_OrderID_ProductID PRIMARY KEY ( OrderID, ProductID ),
  CONSTRAINT FK_OrderLines_OrderID FOREIGN KEY ( OrderID ) REFERENCES Orders ( OrderID ),
  CONSTRAINT FK_OrderLines_ProductID FOREIGN KEY ( ProductID ) REFERENCES Products ( ProductID )
  );

--Insert Data into the OrderLines table
INSERT INTO OrderLines ( OrderID, ProductID, Quantity, ProductPrice )
VALUES  ( 1, 7, '1000', '94.99'),
		( 2, 6, '2000', '165.00'),
		( 3, 5, '25', '5.00'),
		( 4, 4, '2500', '155.00'),
		( 5, 3, '3650', '74.99'),
		( 6, 2, '15000', '115.00'),
		( 7, 1, '2575', '20.00'),
		( 8, 15, '7000', '18.99'),
		( 9, 10, '200', '74.99'),
		( 10, 9, '1500', '115.00'),
		( 11, 14, '7500', '125.00'),
		( 12, 8, '2500', '84.99'),
		( 13, 13, '500', '75.65'),
		( 14, 11, '6000', '20.00'),
		( 15, 12, '12500', '74.99'),
		( 16, 7, '1000', '94.99'),
		( 17, 6, '2000', '165.00'),
		( 18, 5, '25', '5.00'),
		( 19, 4, '2500', '155.00'),
		( 20, 3, '3650', '74.99'),
		( 21, 2, '15000', '115.00'),
		( 22, 1, '2575', '20.00'),
		( 23, 15, '7000', '18.99'),
		( 24, 10, '200', '74.99'),
		( 25, 9, '1500', '115.00'),
		( 26, 14, '7500', '125.00'),
		( 27, 8, '2500', '84.99'),
		( 28, 13, '500', '75.65'),
		( 29, 11, '6000', '20.00'),
		( 30, 12, '12500', '74.99'),
		( 31, 7, '1000', '94.99'),
		( 32, 6, '2000', '165.00'),
		( 33, 5, '25', '5.00'),
		( 34, 4, '2500', '155.00'),
		( 35, 3, '3650', '74.99'),
		( 36, 2, '15000', '115.00'),
		( 37, 1, '2575', '20.00'),
		( 38, 15, '7000', '18.99'),
		( 39, 10, '200', '74.99'),
		( 40, 9, '1500', '115.00');

-- Create the Payments table
DROP TABLE IF EXISTS Payments;
CREATE TABLE Payments
( PaymentID				INTEGER NOT NULL IDENTITY(1,1),
  OrderID				INTEGER NOT NULL,
  PaymentTotal			DECIMAL(9,2) NOT NULL,
  PaymentDate			DATE NOT NULL,
  PaymentType			VARCHAR(25) NOT NULL,
  CONSTRAINT PK_Payments_PaymentID PRIMARY KEY ( PaymentID ),
  CONSTRAINT FK_Payments_OrderID FOREIGN KEY ( OrderID ) REFERENCES Orders ( OrderID )
);

--Insert Data into the Payments Table
INSERT INTO Payments ( OrderID, PaymentTotal, PaymentDate, PaymentType )
VALUES  ( 1, 94990.00, '03/01/2021', 'Card' ),
		( 2, 330000.00, '03/01/2021', 'Cash'),
		( 3, 125.00, '03/01/2021', 'Card'),
		( 4, 387500.00, '03/02/2021', 'Check'),
		( 5, 273713.50, '03/03/2021', 'Cash'),
		( 6, 1725000.00, '03/05/2021', 'Check'),
		( 7, 51500.00, '03/15/2021', 'Check'),
		( 8, 132930.00, '03/15/2021', 'Card'),
		( 9, 14998.00, '03/16/2021', 'Card'),
		( 10, 172500.00, '03/20/2021', 'Cash'),
		( 11, 937500.00, '03/20/2021', 'Card'),
		( 12, 212475.00, '03/20/2021', 'Cash'),
		( 13, 37825.00, '03/24/2021', 'Check'),
		( 14, 12000.00, '03/25/2021', 'Check'),
		( 15, 937375.00, '03/26/2021', 'Card'),
		( 16, 94990.00, '03/01/2021', 'Card' ),
		( 17, 330000.00, '03/01/2021', 'Cash'),
		( 18, 125.00, '03/01/2021', 'Card'),
		( 19, 387500.00, '03/02/2021', 'Check'),
		( 20, 273713.50, '03/03/2021', 'Cash'),
		( 21, 1725000.00, '03/05/2021', 'Check'),
		( 22, 51500.00, '03/15/2021', 'Check'),
		( 23, 132930.00, '03/15/2021', 'Card'),
		( 24, 14998.00, '03/16/2021', 'Card'),
		( 25, 172500.00, '03/20/2021', 'Cash'),
		( 26, 937500.00, '03/20/2021', 'Card'),
		( 27, 212475.00, '03/20/2021', 'Cash'),
		( 28, 37825.00, '03/24/2021', 'Check'),
		( 29, 12000.00, '03/25/2021', 'Check'),
		( 30, 937375.00, '03/26/2021', 'Card'),
		( 31, 94990.00, '03/01/2021', 'Card' ),
		( 32, 330000.00, '03/01/2021', 'Cash'),
		( 33, 125.00, '03/01/2021', 'Card'),
		( 34, 387500.00, '03/02/2021', 'Check'),
		( 35, 273713.50, '03/03/2021', 'Cash'),
		( 36, 1725000.00, '03/05/2021', 'Check'),
		( 37, 51500.00, '03/15/2021', 'Check'),
		( 38, 132930.00, '03/15/2021', 'Card'),
		( 39, 14998.00, '03/16/2021', 'Card'),
		( 40, 172500.00, '03/20/2021', 'Cash');

-- Create the Departments table
DROP TABLE IF EXISTS Departments;
CREATE TABLE Departments
( DepartmentID			TINYINT NOT NULL IDENTITY(1,1),
  DepartmentName		VARCHAR(25) NOT NULL,
  DepartmentDescription	VARCHAR(50) NOT NULL,
  CONSTRAINT PK_Departments_DepartmentID PRIMARY KEY ( DepartmentID )
  ); 

--Insert Data into the Departments Table
INSERT INTO Departments ( DepartmentName, DepartmentDescription)
VALUES	( 'Sales', 'Sales Department' ),
		( 'Marketing', 'Marketing Department' ), 
		( 'Accounting', 'Accounting Department' ),
		( 'Human Resources', 'HR Department' ),
		( 'Logistics', 'Logistics Department' ),
		( 'Distribution', 'Distribution Department' ),
		( 'General Management', 'General Management Department' ),
		( 'Drivers', 'Drivers Department' ),
		( 'Pilots', 'Pilots Department' ),
		( 'Operations', 'Operations Department' ),
		( 'Finance', 'Finance Department' ),
		( 'Purchasing', 'Purchasing Department' ),
		( 'Market Research', 'Market Research Department' ),
		( 'Janitorial', 'Janitorial Department' ),
		( 'Senior Management', 'Senior Management Department' );

-- Create the Employees table
DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees
( EmployeeID		INTEGER NOT NULL IDENTITY(1,1),
  DepartmentID		TINYINT NOT NULL,
  LocationID		INTEGER NOT NULL,
  Salary			DECIMAL(9,2) NOT NULL,
  FirstName			VARCHAR(25) NOT NULL,
  MiddleName		VARCHAR(25) DEFAULT NULL,
  LastName			VARCHAR(25) NOT NULL,
  Phone				VARCHAR(15) NOT NULL,
  Email				VARCHAR(35) NOT NULL,
  DOB				DATE NOT NULL,
  HireDate			DATE NOT NULL,
  EmployeeType		CHAR(1) NOT NULL,
  CONSTRAINT PK_Employees_EmployeeID PRIMARY KEY ( EmployeeID ),
  CONSTRAINT FK_Employees_DepartmentID FOREIGN KEY ( DepartmentID ) REFERENCES Departments ( DepartmentID ),
  CONSTRAINT FK_Employees_LocationID FOREIGN KEY ( LocationID ) REFERENCES Locations ( LocationID )
  );

--Insert Data into Employees
INSERT INTO Employees (DepartmentID, LocationID, Salary, FirstName, MiddleName, LastName, Phone, Email, DOB, HireDate, EmployeeType)
VALUES	( 15, 16, '400000', 'Bob', 'Red', 'Lister', '8019459143', 'blister@medex.com', '09/01/1956', '01/04/2010', 'O'),
		( 1, 17, '69000', 'Lisa', 'Corrine', 'Lench', '8017658901', 'llench@medex.com', '03/24/1987', '03/24/2010', 'O'),
		( 2, 18, '68000', 'Lenny', 'Redcliff', 'Lorde', '8019476143', 'llorde@medex.com', '07/24/1990', '07/29/2010', 'O'),
		( 3, 19, '72000', 'Agatha', 'Helena', 'Hogwart', '8019909143', 'ahogwarts@medex.com', '06/1/1993', '07/30/2010', 'O'),
		( 4, 20, '70000', 'Bill', 'Berry', 'Baxter', '8019467143', 'bbaxter@medex.com', '01/02/1970', '09/11/2010', 'O'),
		( 5, 21, '71000', 'John', 'Hank', 'Greene', '8018889043', 'jgreene@medex.com', '02/02/1989', '11/12/2010', 'O'),
		( 7, 22, '68000', 'Carrie', 'Lynn', 'Karter', '3852939143', 'ckarter@medex.com', '04/05/1974', '12/20/2010', 'O'),
		( 3, 23, '72000', 'Lewis', 'Garry', 'Hansen', '8013459142', 'lhansen@medex.com', '08/25/1992', '01/23/2011', 'O'),
		( 14, 24, '30000', 'Sharron', 'Sandy', 'Swenson', '8019478934', 'sswenseon@medex.com', '07/27/1982', '02/01/2011', 'O'),
		( 13, 25, '60000', ' Dave', 'Joe', 'Smith', '8018954612', 'dsmith@medex.com', '11/21/1974', '02/08/2011', 'O'),
		( 7, 26, '75000', 'Dan', 'Lentil', 'White', '8017760123', 'dwhite@medex.com', '12/23/1990', '01/03/2012', 'O'),
		( 7, 27, '78000', 'Margaret', 'May', 'Weatherby', '3856790234', 'mweatherby@medex.com', '11/01/1978', '09/08/2015', 'O'),
		( 10, 28, '70000', 'Lindsey', 'Luna', 'Boston', '3856783456', 'lboston@medex.com', '01/24/1979', '10/23/2015', 'O'),
		( 11, 29, '71000', 'Matthew', 'Max', 'Piscatela', '8019678091', 'mpiscatela@medex.com', '03/28/1970', '03/04/2016', 'O'),
		( 12, 30, '69000', 'Sam', 'Dave', 'Danby', '8019456781', 'sdave@medex.com', '06/22/1977', ' 06/20/2016', 'O'),
		( 6, 31, '40000', 'Sarah', 'Henry', 'Liden', '8019345908', 'sliden@medex.com', '07/01/1986', '08/05/2016', 'W'),
		( 6, 32, '41000', 'Ben', 'Chin', 'Zhu', '3856701234', 'bzhu@medex.com', '08/29/1977', '09/24/2016', 'W'),
		( 6, 33, '40000', 'David', 'Reese', 'Lendman', '8019457680', 'dlendman@medex.com', '07/25/1992', '10/29/2016', 'W'),
		( 6, 34, '39000', 'Anderson', 'Bill', 'Hamm', '3854923145', 'ahamm@medex.com', '05/13/1997', '10/30/2016', 'W'),
		( 6, 35, '43000', 'Larry', 'Tim', 'Backstreet', '8019765410', 'lbackstreet@medex.com', '01/02/1970', '11/11/2016', 'W'),
		( 6, 36, '44000', 'Jordan', 'Reed', 'Harmer', '8018097541', 'jharmer@medex.com', '02/02/1989', '12/12/2016', 'W'),
		( 6, 37, '41000', 'Charlie', 'Jerry', 'Hamlin', '8019019011', 'chamlin@medex.com', '04/05/1979', '12/20/2016', 'W'),
		( 6, 38, '42000', 'Jenson', 'Bert', 'Goble', '8018880909', 'jgoble@medex.com', '08/25/1992', '01/23/2017', 'W'),
		( 6, 39, '38000', 'Sandie', 'Lynn', 'Swanson', '8019495050', 'sswanson@medex.com', '07/27/1989', '02/01/2017', 'W'),
		( 6, 40, '40000', 'Derrick', 'Jim', 'Smite', '8019898800', 'dsmite@medex.com', '11/21/1979', '02/08/2017', 'W'),
		( 6, 41, '41000', 'Jimmy', 'Lars', 'Black', '8018767788', 'jblack@medex.com', '12/23/1990', '03/03/2017', 'W'),
		( 6, 42, '40000', 'Margie', 'June', 'Worker', '8019066009', 'mworker@medex.com', '11/01/1970', '09/08/2017', 'W'),
		( 6, 43, '40000', 'Casandra', 'Lue', 'Lower', '8011044004', 'clower@medex.com', '01/24/1980', '10/23/2017', 'W'),
		( 6, 44, '40000', 'Max', 'Matt', 'Powell', '3858587667', 'mpowell@medex.com', '03/28/1970', '11/04/2017', 'W'),
		( 6, 45, '40000', 'Kevin', 'Dave', 'Hansen', '8015667887', 'khansen@medex.com', '06/22/1977', ' 01/02/2018', 'W'),--
		( 8, 46, '40000', 'Benson', 'Dell', 'Lightman', '8016557788', 'blightman@medex.com', '09/01/1956', '01/04/2018', 'D'),
		( 8, 47, '40000', 'Laramie', 'Corrine', 'Kastner', '8014509870', 'lkastner@medex.com', '03/24/1980', '03/24/2018', 'D'),
		( 8, 48, '40000', 'William', 'Walt', 'Lauren', '8016578990', 'wlauren@medex.com', '07/24/1990', '04/29/2018', 'D'),
		( 8, 49, '40000', 'Andy', 'Hog', 'Worthen', '8014356778', 'aworthen@medex.com', '06/10/1993', '07/30/2018', 'D'),
		( 8, 50, '41000', 'Jody', 'Harry', 'Boaster', '8013456990', 'jboaster@medex.com', '01/02/1970', '09/11/2018', 'D'),
		( 8, 51, '44000', 'Jenny', 'Mary', 'Barlow', '385431556', 'jbarlow@medex.com', '02/02/1985', '11/12/2018', 'D'),
		( 8, 52, '40000', 'Carter', 'Lynn', 'Kramer', '8019776554', 'ckramer@medex.com', '04/05/1975', '12/20/2018', 'D'),
		( 8, 53, '45000', 'Shane', 'Garry', 'Lane', '8019101100', 'slane@medex.com', '08/25/1982', '01/23/2019', 'D'),
		( 8, 54, '39000', 'Tim', 'Sage', 'Richards', '4356678879', 'trichards@medex.com', '07/27/1983', '02/01/2019', 'D'),
		( 8, 55, '38000', 'Derrel', 'Joe', 'Young', '3854667890', 'dyoung@medex.com', '11/21/1975', '02/08/2019', 'D'),
		( 8, 56, '40000', 'Jane', 'Lonny', 'Denver', '8012456654', 'jdenver@medex.com', '12/23/1990', '03/03/2019', 'D'),
		( 8, 57, '41000', 'Sammy', 'May', 'Matheson', '8018899009', 'smatheson@medex.com', '11/01/1988', '09/08/2019', 'D'),
		( 8, 58, '39000', 'Lonny', 'Lorreto', 'Bigoni', '8015678910', 'lbigoni@medex.com', '01/24/1989', '10/23/2019', 'D'),
		( 8, 59, '40000', 'Martin', 'Wen', 'Callo', '8019469486', 'mcallo@medex.com', '03/28/1972', '11/04/2019', 'D'),
		( 8, 60, '39000', 'Samir', 'Rajeev', 'Sankar', '8019455400', 'ssankar@medex.com', '06/22/1967', ' 12/20/2019', 'D'),
		( 9, 61, '70000', 'Billy', 'Red', 'Longsman', '8017607600', 'blongsman@medex.com', '09/01/1959', '01/04/2020', 'P'),
		( 9, 62, '69000', 'Sally', 'Ellie', 'Glass', '8014588850', 'sglass@medex.com', '03/24/1990', '03/24/2020', 'P'),
		( 9, 63, '68000', 'Lonzo', 'Porter', 'Mender', '8017689020', 'lmender@medex.com', '07/24/1989', '07/29/2020', 'P'),
		( 9, 64, '72000', 'Art', 'Rose', 'Patel', '8013788093', 'apatel@medex.com', '06/1/1997', '07/30/2020', 'P'),
		( 9, 65, '70000', 'Austin', 'Ben', 'Pastor', '8017544453', 'apastor@medex.com', '01/02/1979', '09/11/2020', 'P'),
		( 9, 66, '71000', 'Jill', 'Holly', 'Gordman', '8019891120', 'jgordman@medex.com', '02/02/1980', '11/12/2020', 'P'),
		( 9, 67, '68000', 'Calvin', 'Cahn', 'Klipsch', '8017604566', 'cklipsch@medex.com', '04/05/1978', '12/20/2020', 'P'),
		( 9, 68, '72000', 'Tom', 'Garry', 'Doorman', '3853334560', 'tdoorman@medex.com', '08/25/1990', '12/23/2020', 'P'),
		( 9, 69, '70000', 'Mac', 'Sal', 'Swill', '8014356780', 'mswill@medex.com', '07/27/1987', '01/03/2021', 'P'),
		( 9, 70, '60000', 'Darnell', 'Junior', 'Measle', '8015566554', 'dmeasle@medex.com', '11/21/1979', '01/08/2021', 'P'),
		( 9, 71, '75000', 'Donny', 'Merle', 'Whistler', '8018897665', 'dwhistler@medex.com', '12/23/1980', '01/10/2021', 'P'),
		( 9, 72, '78000', 'Mary', 'April', 'Mondelay', '8011224670', 'mmondelay@medex.com', '11/01/1976', '02/08/2021', 'P'),
		( 9, 73, '70000', 'Owen', 'Jim', 'Marl', '8019697760', 'omarl@medex.com', '01/24/1974', '02/20/2021', 'P'),
		( 9, 74, '71000', 'Thomas', 'Malloy', 'Weatherson', '8019464430', 'tweatherson@medex.com', '03/28/1987', '02/24/2021', 'P'),
		( 9, 75, '69000', 'Gavin', 'Dan', 'Howell', '3853931080', 'ghowell@medex.com', '06/22/1993', ' 03/01/2021', 'P');

-- Create the Benefits table
DROP TABLE IF EXISTS Benefits;
CREATE TABLE Benefits
( BenefitID			TINYINT NOT NULL IDENTITY(1,1),
  BenefitName		VARCHAR(45) NOT NULL,
  BenefitProvider	VARCHAR(45) NOT NULL,
  CONSTRAINT PK_Benefits_BenefitID PRIMARY KEY ( BenefitID )
  ); 

--Insert Data into Benefits
INSERT INTO Benefits ( BenefitName, BenefitProvider )
VALUES	( 'Paid Time Off', 'MedEx' ),
		( 'Short-Term Disability Insurance', 'Disability Insurance' ),
		( 'Long-Term Disability Insurance', 'Disability Insurance' ),
		( 'Dental Insurance', 'Dental Provider' ),
		( 'Vision Insurance', 'Vision Provider' ),
		( 'Life Insurance', 'Life Insurance Provider' ),
		( '401(k)', 'MedEx' ),
		( 'Health Care Flexible Spending Accounts', 'FSA Provider' ),
		( 'Sick Time', 'MedEx' ),
		( 'Tuition Reimburesment', 'MedEx' ),
		( 'Paid Holidays', 'MedEx' ),
		( 'Massage Package', 'MedEx' ),
		( 'Gym Membership', 'MedEx' ),
		( 'Therapy Package', 'MedEx' ),
		( 'Well Being Package', 'MedEx' );

-- Create the BenefitsRegistration table
DROP TABLE IF EXISTS BenefitsRegistration;
CREATE TABLE BenefitsRegistration
( EmployeeID			INT NOT NULL,
  BenefitID				TINYINT NOT NULL,
  BeginDate				DATE NOT NULL,
  EndDate				DATE NOT NULL,
  CONSTRAINT PK_BenefitsRegistration_EmployeeID_BenefitID PRIMARY KEY ( EmployeeID, BenefitID ),
  CONSTRAINT FK_BenefitsRegistration_EmployeeID FOREIGN KEY ( EmployeeID ) REFERENCES Employees ( EmployeeID ),
  CONSTRAINT FK_BenefitsRegistration_BenefitID FOREIGN KEY ( BenefitID ) REFERENCES Benefits ( BenefitID )
  );

--Insert Data into BenefitsRegistration
INSERT INTO BenefitsRegistration ( EmployeeID, BenefitID, BeginDate, EndDate )
VALUES	( 1, 1, '01/04/2010', '01/01/9999' ),
		( 1, 2, '01/04/2010', '01/01/9999' ),
		( 1, 3, '01/04/2010', '01/01/9999' ),
		( 1, 4, '01/04/2010', '01/01/9999' ),
		( 1, 5, '01/04/2010', '01/01/9999' ),
		( 1, 6, '01/04/2010', '01/01/9999' ),
		( 1, 7, '01/04/2010', '01/01/9999' ),
		( 1, 8, '01/04/2010', '01/01/9999' ),
		( 1, 9, '01/04/2010', '01/01/9999' ),
		( 1, 10, '01/04/2010', '01/01/9999' ),
		( 1, 11, '01/04/2010', '01/01/9999' ),
		( 1, 12, '01/04/2010', '01/01/9999' ),
		( 1, 13, '01/04/2010', '01/01/9999' ),
		( 1, 14, '01/04/2010', '01/01/9999' ),
		( 1, 15, '01/04/2010', '01/01/9999' ),
		( 2, 1, '03/24/2010', '01/01/9999' ),
		( 3, 1, '07/29/2010', '01/01/9999' ),
		( 4, 1, '07/30/2010', '01/01/9999' ),
		( 5, 1, '09/11/2010', '01/01/9999' ),
		( 6, 1, '11/12/2010', '01/01/9999' ),
		( 7, 1, '12/20/2010', '01/01/9999' ),
		( 8, 1, '01/23/2011', '01/01/9999' ),
		( 9, 1, '02/01/2011', '01/01/9999' ),
		( 10, 1, '02/08/2011', '01/01/9999' ),
		( 11, 1, '01/03/2012', '01/01/9999' ),
		( 12, 1, '09/08/2015', '01/01/9999' ),
		( 13, 1, '10/23/2015', '01/01/9999' ),
		( 14, 1, '03/04/2016', '01/01/9999' ),
		( 15, 1, '06/20/2016', '01/01/9999' ),
		( 16, 1, '08/05/2016', '01/01/9999' ),
		( 17, 1, '09/24/2016', '01/01/9999' ),
		( 18, 1, '10/29/2016', '01/01/9999' ),
		( 19, 1, '10/30/2016', '01/01/9999' ),
		( 20, 1, '11/11/2016', '01/01/9999' ),
		( 21, 1, '12/12/2016', '01/01/9999' ),
		( 22, 1, '12/20/2016', '01/01/9999' ),
		( 23, 1, '01/23/2017', '01/01/9999' ),
		( 24, 1, '02/01/2017', '01/01/9999' ),
		( 25, 1, '02/08/2017', '01/01/9999' ),
		( 26, 1, '03/03/2017', '01/01/9999' ),
		( 27, 1, '09/08/2017', '01/01/9999' ),
		( 28, 1, '10/23/2017', '01/01/9999' ),
		( 29, 1, '11/04/2017', '01/01/9999' ),
		( 30, 1, '01/02/2018', '01/01/9999' ),
		( 31, 1, '01/04/2018', '01/01/9999' ),
		( 32, 1, '03/24/2018', '01/01/9999' ),
		( 33, 1, '04/29/2018', '01/01/9999' ),
		( 34, 1, '07/30/2018', '01/01/9999' ),
		( 35, 1, '09/11/2018', '01/01/9999' ),
		( 36, 1, '11/12/2018', '01/01/9999' ),
		( 37, 1, '12/20/2018', '01/01/9999' ),
		( 38, 1, '01/23/2019', '01/01/9999' ),
		( 39, 1, '02/01/2019', '01/01/9999' ),
		( 40, 1, '02/08/2019', '01/01/9999' ),
		( 41, 1, '03/03/2019', '01/01/9999' ),
		( 42, 1, '09/08/2019', '01/01/9999' ),
		( 43, 1, '10/23/2019', '01/01/9999' ),
		( 44, 1, '11/04/2019', '01/01/9999' ),
		( 45, 1, '12/20/2019', '01/01/9999' ),
		( 46, 1, '01/04/2020', '01/01/9999' ),
		( 47, 1, '03/24/2020', '01/01/9999' ),
		( 48, 1, '07/29/2020', '01/01/9999' ),
		( 49, 1, '07/30/2020', '01/01/9999' ),
		( 50, 1, '09/11/2020', '01/01/9999' ),
		( 51, 1, '11/12/2020', '01/01/9999' ),
		( 52, 1, '12/20/2020', '01/01/9999' ),
		( 53, 1, '12/23/2020', '01/01/9999' ),
		( 54, 1, '01/03/2021', '01/01/9999' ),
		( 55, 1, '01/08/2021', '01/01/9999' ),
		( 56, 1, '01/10/2021', '01/01/9999' ),
		( 57, 1, '02/08/2021', '01/01/9999' ),
		( 58, 1, '02/20/2021', '01/01/9999' ),
		( 59, 1, '02/24/2021', '01/01/9999' ),
		( 60, 1, '03/01/2021', '01/01/9999' );

-- Create the Offices table
DROP TABLE IF EXISTS Offices;
CREATE TABLE Offices
( OfficeID				SMALLINT NOT NULL IDENTITY(1,1),
  LocationID			INT NOT NULL,
  Phone					VARCHAR(15) NOT NULL,
  OfficeDescription		VARCHAR(50) NOT NULL,
  CONSTRAINT PK_Offices_OfficeID PRIMARY KEY ( OfficeID ),
  CONSTRAINT FK_Offices_LocationID FOREIGN KEY ( LocationID ) REFERENCES Locations ( LocationID )
  );

--Insert Data into Offices
INSERT INTO Offices (LocationID, Phone, Officedescription)
VALUES	(76, '8018889034', 'Salt Lake Office'),
		(77, '8013459876', 'West Valley Office'),
		(78, '8017853490', 'West Jordan Office'),
		(79, '3857869012', 'American Fork Office'),
		(80, '8013468901', 'Ogden Office'),
		(81, '3854950768', 'Salt Lake East Office'),
		(82, '8014903421', 'West Valley Training Office'),
		(83, '3856670123', 'West Jordan Training Office'),
		(84, '8016547890', 'Salt Lake Training Office'),
		(85, '3856709342', 'Ogden Training Office'),
		(86, '3856970123', 'Salt Lake Corporate Office'),
		(87, '8013450987', 'West Valley CSR Office'),
		(88, '3855834532', 'Ogden CSR Office'),
		(89, '3855677800', 'Ogden Coporate Office'),
		(90, '3857901237', 'Bountiful CSR Office');

-- Create the OfficeWorkers table
DROP TABLE IF EXISTS OfficeWorkers;
CREATE TABLE OfficeWorkers
( EmployeeID			INT NOT NULL,
  OfficeID				SMALLINT NOT NULL,
  CONSTRAINT PK_OfficeWorkers_EmployeeID_EmployeeID PRIMARY KEY ( EmployeeID),
  CONSTRAINT FK_OfficeWorkers_OfficeID FOREIGN KEY ( OfficeID ) REFERENCES Offices ( OfficeID ),
  );

-- Insert Data into OfficeWorkers table
INSERT INTO OfficeWorkers (EmployeeID, OfficeID)
VALUES	(1, 11),
		(2, 1),
		(3, 2),
		(4, 3),
		(5, 4),
		(6, 5),
		(7, 6),
		(8, 7),
		(9, 8),
		(10, 9),
		(11, 10),
		(12, 11),
		(13, 15),
		(14, 13),
		(15, 14);

-- Create the WarehouseWorkers table
DROP TABLE IF EXISTS WarehouseWorkers;
CREATE TABLE WarehouseWorkers
( EmployeeID			INT NOT NULL,
  WarehouseID			SMALLINT NOT NULL,
  ForkLiftLicense		INTEGER NOT NULL,
  CONSTRAINT PK_WarehouseWorkers_EmployeeID_EmployeeID PRIMARY KEY ( EmployeeID),
  CONSTRAINT FK_WarehouseWorkers_WarhouseID FOREIGN KEY ( WarehouseID ) REFERENCES Warehouses ( WarehouseID ),
  );

-- Insert Data into WarehouseWorkers table
INSERT INTO WarehouseWorkers (EmployeeID, WarehouseID, ForkLiftLicense)
VALUES	(16, 1, '03012022'),
		(17, 2, '03022022'),
		(18, 3, '03032022'),
		(19, 4, '03042022'),
		(20, 5, '03052022'),
		(21, 6, '03062022'),
		(22, 7, '03072022'),
		(23, 8, '03082022'),
		(24, 9, '03092022'),
		(25, 10, '03102022'),
		(26, 11, '03112022'),
		(27, 12, '03122022'),
		(28, 13, '03132022'),
		(29, 14, '03142022'),
		(30, 15, '03152022');

-- Create the Drivers table
DROP TABLE IF EXISTS Drivers;
CREATE TABLE Drivers
( EmployeeID			INT NOT NULL,
  VehicleID				SMALLINT NOT NULL,
  DriversLicense		INTEGER NOT NULL,
  CONSTRAINT PK_Drivers_EmployeeID_EmployeeID PRIMARY KEY ( EmployeeID),
  CONSTRAINT FK_Drivers_VehicleID FOREIGN KEY ( VehicleID ) REFERENCES Vehicles ( VehicleID ),
  );
  
-- Insert Data into the Drivers Table 
INSERT INTO Drivers (EmployeeID, VehicleID, DriversLicense)
VALUES	(31, 1, '02012022'),
		(32, 2, '02022022'),
		(33, 3, '02032022'),
		(34, 4, '02042022'),
		(35, 5, '02052022'),
		(36, 6, '02062022'),
		(37, 7, '02072022'),
		(38, 8, '02082022'),
		(39, 9, '02092022'),
		(40, 10, '02102022'),
		(41, 11, '02112022'),
		(42, 12, '02122022'),
		(43, 13, '02132022'),
		(44, 14, '02142022'),
		(45, 15, '02152022');

-- Create the Pilots table 
DROP TABLE IF EXISTS Pilots;
CREATE TABLE Pilots
( EmployeeID			INT NOT NULL,
  VehicleID				SMALLINT NOT NULL,
  PilotLicense			INT NOT NULL,
  CONSTRAINT PK_Pilots_EmployeeID_EmployeeID PRIMARY KEY ( EmployeeID),
  CONSTRAINT FK_Pilots_VehicleID FOREIGN KEY ( VehicleID ) REFERENCES Vehicles ( VehicleID ),
  );

-- Insert Data into the Pilots Table
INSERT INTO PILOTS (EmployeeID, VehicleID, PilotLicense)
VALUES	(46, 16, '01012022' ),
		(47, 17, '01022022' ),
		(48, 18, '01032022' ),
		(49, 19, '01042022' ),
		(50, 20, '01052022' ),
		(51, 21, '01062022' ),
		(52, 22, '01072022' ),
		(53, 23, '01082022' ),
		(54, 24, '01092022' ),
		(55, 25, '01102022' ),
		(56, 26, '01112022' ),
		(57, 27, '01122022' ),
		(58, 28, '01132022' ),
		(59, 29, '01142022' ),
		(60, 30, '01152022' );