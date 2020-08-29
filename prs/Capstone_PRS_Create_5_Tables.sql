-- create and select the database
DROP DATABASE IF EXISTS prs;
CREATE DATABASE prs;
USE prs;

-- Create User Table
Create table User (
ID				INTEGER				PRIMARY KEY AUTO_INCREMENT,
UserName		VARCHAR(20)			NOT NULL UNIQUE,
Password		VARCHAR(10)			NOT NULL,
FirstName		VARCHAR(20)			NOT NULL,
LastName		VARCHAR(20)			NOT NULL,
PhoneNumber		VARCHAR(12)			NOT NULL,
Email			VARCHAR(75)			NOT NULL,
IsReviewer		TINYINT				NOT NULL,
IsAdmin			TINYINT				NOT NULL
);

-- Create Vendor Table
Create table Vendor (
ID				INTEGER				PRIMARY KEY AUTO_INCREMENT,
Code			VARCHAR(10)			NOT NULL UNIQUE,
Name			VARCHAR(255)		NOT NULL,
Address			VARCHAR(255)		NOT NULL,
City			VARCHAR(255)		NOT NULL,
State			VARCHAR(2)			NOT NULL,
Zip				VARCHAR(5)			NOT NULL,
PhoneNumber		VARCHAR(12)			NOT NULL,
Email			VARCHAR(100)		NOT NULL
);

-- Create Request Table
Create table Request (
ID						INTEGER				PRIMARY KEY AUTO_INCREMENT,
UserID					INTEGER				NOT NULL,
Description				VARCHAR(100)		NOT NULL,
Justification			VARCHAR(255)		NOT NULL,
DateNeeded				DATE				NOT NULL,
DeliveryMode			VARCHAR(25)			NOT NULL,
Status					VARCHAR(20)			NOT NULL,
Total					DECIMAL(10, 2)		NOT NULL,
SubmittedDate			DATETIME			NOT NULL,
ReasonForRejection		VARCHAR(100),
FOREIGN KEY (UserID) REFERENCES User(ID)
);

-- Create Product Table
Create table Product (
ID				INTEGER				PRIMARY KEY AUTO_INCREMENT,
VendorID		INTEGER				NOT NULL,
PartNumber		VARCHAR(50)			NOT NULL,
Name			VARCHAR(150)		NOT NULL,
Price			DECIMAL(10,2)		NOT NULL,
Unit			VARCHAR(255),
PhotoPath		VARCHAR(255),
FOREIGN KEY (VendorID) REFERENCES Vendor(ID),
CONSTRAINT vendor_part UNIQUE (VendorID, PartNumber)			
);

-- Create LineItem Table
Create table LineItem (
ID				INTEGER				PRIMARY KEY AUTO_INCREMENT,
RequestID		INTEGER				NOT NULL,
ProductID		INTEGER				NOT NULL,
Quantity		INTEGER				NOT NULL,
FOREIGN KEY (ProductID) REFERENCES Product(ID),
FOREIGN KEY (RequestID) REFERENCES Request(ID),
CONSTRAINT req_pdt UNIQUE (RequestID, ProductID)	
);

-- Insert data into User Table
INSERT INTO User VALUES
(1, 'SYSTEM', 'XXXXX', 'System', 'System', 'XXX-XXX-XXXX', 'System@test.com', 0, 0),
(2, 'jmotta', 'XXXXX', 'Joshua', 'Motta', '518-123-4567', 'jmotta@test.com', 1, 1);

-- Insert data into Values table
INSERT INTO Vendor VALUES
(1, 'BB-1001', 'Best Buy', '100 Best Buy Street', 'Louisville', 'KY', '40207', '502-111-9099', 'geeksquad@bestbuy.com'),
(2, 'AP-1001', 'Apple Inc', '1 Infinite Loop', 'Cupertino', 'CA', '95014', '800-123-4567', 'genius@apple.com'),
(3, 'AM-1001', 'Amazon', '410 Terry Ave, North', 'Seattle', 'WA', '98109', '206-266-1000', 'amazon@amazon.com'),
(4, 'ST-1001', 'Staples', '9550 Mason Montgomery Rd', 'Mason', 'OH', '45040', '513-754-0235', 'support@orders.staples.com'),
(5, 'MC-1001', 'Micro Center', '11755 Mosteller Rd', 'Sharonville', 'OH', '45241', '513-782-8500', 'support@microcenter.com');

-- Insert data into Product table
INSERT INTO Product VALUES
(1, 1, 'ME280LL', 'iPad Mini 2', 296.99, null, null),
(2, 2, 'ME280LL', 'iPad Mini 2', 299.99, null, null),
(3, 3, '105810', 'Hammermill Paper, Premium Multi-Purpose Paper Poly Wrap', 8.99, '1 Ream / 500 Sheets', null),
(4, 4, '122374', 'HammerMill© Copy Plus Copy Paper, 8 1/2" x 11", Case', 29.99, '1 Case, 10 Reams, 500 Sheets per ream', null),
(5, 4, '784551', 'Logitech M325 Wireless Optical Mouse, Ambidextrous, Black', 14.99, null, null),
(6, 4, '382955', 'Staples Mouse Pad, Black', 2.99, null, null),
(7, 4, '2122178', 'AOC 24-Inch Class LED Monitor', 99.99, null, null),
(8, 4, '2460649', 'Laptop HP Notebook 15-AY163NR', 529.99, null, null),
(9, 4, '2256788', 'Laptop Dell i3552-3240BLK 15.6"', 239.99, null, null),
(10, 4, 'IM12M9520', 'Laptop Acer Acer Aspire One Cloudbook 14"', 224.99, null, null),
(11, 4, '940600', 'Canon imageCLASS Copier (D530)', 99.99, null, null),
(12, 5, '228148', 'Acer Aspire ATC-780A-UR12 Desktop Computer', 399.99, '', null),
(13, 5, '279364', 'Lenovo IdeaCentre All-In-One Desktop', 349.99, '', null);

-- Create User
DROP USER IF EXISTS prs_user@localhost;
CREATE USER prs_user@localhost;
GRANT SELECT, INSERT, DELETE, UPDATE ON prs.* TO prs_user@localhost;