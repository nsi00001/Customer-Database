CREATE TABLE productsPart(
Part_partNumber INT NOT NULL,
Products_productCode INT NOT NULL,
FOREIGN KEY(Part_partNumber) REFERENCES Part(partNumber),
FOREIGN KEY(Products_productCode) REFERENCES Products(productCode)
);

CREATE TABLE Inventory(
inventoryDate DATE NOT NULL PRIMARY KEY,
backorderedQuantity INT,
onhandQuantity INT
);

CREATE TABLE partInventory(
Inventory_inventoryDate DATE NOT NULL,
Part_partNumber INT NOT NULL,
FOREIGN KEY(Inventory_inventoryDate) REFERENCES Inventory(inventoryDate),
FOREIGN KEY(Part_partNumber) REFERENCES Part(partNumber)
);

CREATE TABLE Products(
productCode INT NOT NULL PRIMARY KEY,
Description VARCHAR(100),
Price FLOAT,
requiredPart VARCHAR(30)
);

CREATE TABLE Customer(
customerID INT NOT NULL PRIMARY KEY,
customerName VARCHAR(50) NOT NULL,
phoneNumber VARCHAR(20) NOT NULL,
discountRate VARCHAR(5),
postalCode VARCHAR(10),
streetNumber INT NOT NULL,
streetName VARCHAR(50) NOT NULL,
City VARCHAR(25) NOT NULL,
Province VARCHAR(25) NOT NULL
);

CREATE TABLE OrderLine(
lineNumber INT NOT NULL PRIMARY KEY,
Filled BOOLEAN NOT NULL,
Quantity INT NOT NULL,
unitPrice FLOAT,
totalPrice FLOAT NOT NULL,
prodcutDescription VARCHAR(100) NOT NULL,
Products_productCode INT NOT NULL,
Order_orderNumber INT NOT NULL,
Order_Customer_customerID INT NOT NULL,
FOREIGN KEY(Products_productCode) REFERENCES Products(productCode),
FOREIGN KEY(Order_orderNumber) REFERENCES "Order"(orderNumber),
FOREIGN KEY(Order_Customer_customerID) REFERENCES Customer(customerID)
);

CREATE TABLE "Order"(
orderNumber INT NOT NULL PRIMARY KEY,
discountAmt FLOAT,
orderDate DATE,
Total FLOAT,
amountDue FLOAT,
Customer_customerID INT NOT NULL,
FOREIGN KEY(Customer_customerID) REFERENCES Customer(customerID)
);

CREATE TABLE ProductInventory(
Inventory_inventoryDate DATE NOT NULL,
Products_productCode INT NOT NULL,
FOREIGN KEY(Inventory_inventoryDate) REFERENCES Inventory(inventoryDate),
FOREIGN KEY(Products_productCode) REFERENCES Products(productCode)
);

INSERT INTO Customer (customerID, customerName, phoneNumber, discountRate, postalCode, streetNumber, streetName, City, Province) VALUES
(1, 'John Smith', '555-0001', 0.10, 'A1B 2C3', 101, 'Main St', 'Cityville', 'ON'),
(2, 'Alice Johnson', '555-0002', 0.15, 'B2C 3D4', 202, 'Oak Rd', 'Townsville', 'BC'),
(3, 'Bob Williams', '555-0003', 0.05, 'C3D 4E5', 303, 'Pine St', 'Villageburg', 'AB'),
(4, 'Charlie Brown', '555-0004', 0.20, 'D4E 5F6', 404, 'Maple Ave', 'Cityplace', 'ON'),
(5, 'David Lee', '555-0005', 0.10, 'E5F 6G7', 505, 'Cedar Rd', 'Suburbia', 'NS'),
(6, 'Emma Davis', '555-0006', 0.25, 'F6G 7H8', 101, 'Main St', 'Cityville', 'ON'),
(7, 'Frank Garcia', '555-0007', 0.10, 'G7H 8I9', 202, 'Oak Rd', 'Townsville', 'BC'),
(8, 'Grace Martinez', '555-0008', 0.05, 'H8I 9J0', 303, 'Pine St', 'Villageburg', 'AB'),
(9, 'Helen Anderson', '555-0009', 0.20, 'I9J 0K1', 404, 'Maple Ave', 'Cityplace', 'ON'),
(10, 'Isaac Thomas', '555-0010', 0.15, 'J0K 1L2', 505, 'Cedar Rd', 'Suburbia', 'NS'),
(11, 'Jack Wilson', '555-0011', 0.10, 'K1L 2M3', 102, 'Main St', 'Cityville', 'ON'),
(12, 'Katie Moore', '555-0012', 0.15, 'L2M 3N4', 203, 'Oak Rd', 'Townsville', 'BC'),
(13, 'Liam Taylor', '555-0013', 0.05, 'M3N 4O5', 304, 'Pine St', 'Villageburg', 'AB'),
(14, 'Mia Lee', '555-0014', 0.20, 'N4O 5P6', 405, 'Maple Ave', 'Cityplace', 'ON'),
(15, 'Nina Clark', '555-0015', 0.10, 'O5P 6Q7', 506, 'Cedar Rd', 'Suburbia', 'NS'),
(16, 'Oliver Lewis', '555-0016', 0.25, 'P6Q 7R8', 103, 'Main St', 'Cityville', 'ON'),
(17, 'Paul Walker', '555-0017', 0.15, 'Q7R 8S9', 204, 'Oak Rd', 'Townsville', 'BC'),
(18, 'Quinn Adams', '555-0018', 0.10, 'R8S 9T0', 305, 'Pine St', 'Villageburg', 'AB'),
(19, 'Rita Scott', '555-0019', 0.05, 'S9T 0U1', 406, 'Maple Ave', 'Cityplace', 'ON'),
(20, 'Sam Carter', '555-0020', 0.20, 'T0U 1V2', 507, 'Cedar Rd', 'Suburbia', 'NS'),
(21, 'Tommy Clark', '555-0021', 0.10, 'U1V 2W3', 101, 'Main St', 'Cityville', 'ON'),
(22, 'Ursula Young', '555-0022', 0.15, 'V2W 3X4', 202, 'Oak Rd', 'Townsville', 'BC'),
(23, 'Victor Hernandez', '555-0023', 0.05, 'W3X 4Y5', 303, 'Pine St', 'Villageburg', 'AB'),
(24, 'Will Smith', '555-0024', 0.20, 'X4Y 5Z6', 404, 'Maple Ave', 'Cityplace', 'ON'),
(25, 'Xander Allen', '555-0025', 0.25, 'Y5Z 6A7', 505, 'Cedar Rd', 'Suburbia', 'NS'),
(26, 'Yara Nelson', '555-0026', 0.10, 'Z6A 7B8', 102, 'Main St', 'Cityville', 'ON'),
(27, 'Zachary Martinez', '555-0027', 0.15, 'A7B 8C9', 203, 'Oak Rd', 'Townsville', 'BC'),
(28, 'Ava Mitchell', '555-0028', 0.05, 'B8C 9D0', 304, 'Pine St', 'Villageburg', 'AB'),
(29, 'Brian Moore', '555-0029', 0.20, 'C9D 0E1', 405, 'Maple Ave', 'Cityplace', 'ON'),
(30, 'Catherine Garcia', '555-0030', 0.10, 'D0E 1F2', 506, 'Cedar Rd', 'Suburbia', 'NS'),
(31, 'Darren Harris', '555-0031', 0.15, 'E1F 2G3', 103, 'Main St', 'Cityville', 'ON'),
(32, 'Emily Thompson', '555-0032', 0.05, 'F2G 3H4', 204, 'Oak Rd', 'Townsville', 'BC'),
(33, 'Frank Edwards', '555-0033', 0.20, 'G3H 4I5', 305, 'Pine St', 'Villageburg', 'AB'),
(34, 'Grace Campbell', '555-0034', 0.10, 'H4I 5J6', 406, 'Maple Ave', 'Cityplace', 'ON'),
(35, 'Henry Roberts', '555-0035', 0.15, 'I5J 6K7', 507, 'Cedar Rd', 'Suburbia', 'NS'),
(36, 'Isabella Evans', '555-0036', 0.05, 'J6K 7L8', 102, 'Main St', 'Cityville', 'ON'),
(37, 'Jackie Parker', '555-0037', 0.20, 'K7L 8M9', 203, 'Oak Rd', 'Townsville', 'BC'),
(38, 'Kyle King', '555-0038', 0.10, 'L8M 9N0', 304, 'Pine St', 'Villageburg', 'AB'),
(39, 'Lily White', '555-0039', 0.15, 'M9N 0O1', 405, 'Maple Ave', 'Cityplace', 'ON'),
(40, 'Megan Robinson', '555-0040', 0.05, 'N0O 1P2', 506, 'Cedar Rd', 'Suburbia', 'NS'),
(41, 'Nathan Green', '555-0041', 0.20, 'O1P 2Q3', 103, 'Main St', 'Cityville', 'ON'),
(42, 'Olivia Cooper', '555-0042', 0.10, 'P2Q 3R4', 204, 'Oak Rd', 'Townsville', 'BC'),
(43, 'Paul Adams', '555-0043', 0.05, 'Q3R 4S5', 305, 'Pine St', 'Villageburg', 'AB'),
(44, 'Quincy Brown', '555-0044', 0.20, 'R4S 5T6', 406, 'Maple Ave', 'Cityplace', 'ON'),
(45, 'Rosa Carter', '555-0045', 0.10, 'S5T 6U7', 507, 'Cedar Rd', 'Suburbia', 'NS'),
(46, 'Sophie Turner', '555-0046', 0.25, 'T6U 7V8', 101, 'Main St', 'Cityville', 'ON'),
(47, 'Toby Anderson', '555-0047', 0.05, 'U7V 8W9', 202, 'Oak Rd', 'Townsville', 'BC'),
(48, 'Ursula Nelson', '555-0048', 0.10, 'V8W 9X0', 303, 'Pine St', 'Villageburg', 'AB'),
(49, 'Violet Clark', '555-0049', 0.15, 'W9X 0Y1', 404, 'Maple Ave', 'Cityplace', 'ON'),
(50, 'William Wright', '555-0050', 0.20, 'X0Y 1Z2', 505, 'Cedar Rd', 'Suburbia', 'NS');

INSERT INTO  "Order" (orderNumber, amountDue, discountAmt, orderDate, total, customer_customerID) VALUES
(1, 200.00, 20.00, '2024-11-01', 180.00, 1),
(2, 150.00, 15.00, '2024-11-02', 135.00, 2),
(3, 250.00, 25.00, '2024-11-03', 225.00, 3),
(4, 300.00, 30.00, '2024-11-04', 270.00, 4),
(5, 500.00, 50.00, '2024-11-05', 450.00, 5),
(6, 350.00, 35.00, '2024-11-06', 315.00, 6),
(7, 400.00, 40.00, '2024-11-07', 360.00, 7),
(8, 450.00, 45.00, '2024-11-08', 405.00, 8),
(9, 500.00, 50.00, '2024-11-09', 450.00, 9),
(10, 550.00, 55.00, '2024-11-10', 495.00, 10),
(11, 600.00, 60.00, '2024-11-11', 540.00, 11),
(12, 650.00, 65.00, '2024-11-12', 585.00, 12),
(13, 700.00, 70.00, '2024-11-13', 630.00, 13),
(14, 750.00, 75.00, '2024-11-14', 675.00, 14),
(15, 800.00, 80.00, '2024-11-15', 720.00, 15),
(16, 850.00, 85.00, '2024-11-16', 765.00, 16),
(17, 900.00, 90.00, '2024-11-17', 810.00, 17),
(18, 950.00, 95.00, '2024-11-18', 855.00, 18),
(19, 1000.00, 100.00, '2024-11-19', 900.00, 19),
(20, 1050.00, 105.00, '2024-11-20', 945.00, 20),
(21, 1100.00, 110.00, '2024-11-21', 990.00, 21),
(22, 1150.00, 115.00, '2024-11-22', 1035.00, 22),
(23, 1200.00, 120.00, '2024-11-23', 1080.00, 23),
(24, 1250.00, 125.00, '2024-11-24', 1125.00, 24),
(25, 1300.00, 130.00, '2024-11-25', 1170.00, 25),
(26, 1350.00, 135.00, '2024-11-26', 1215.00, 26),
(27, 1400.00, 140.00, '2024-11-27', 1260.00, 27),
(28, 1450.00, 145.00, '2024-11-28', 1305.00, 28),
(29, 1500.00, 150.00, '2024-11-29', 1350.00, 29),
(30, 1550.00, 155.00, '2024-11-30', 1395.00, 30),
(31, 1600.00, 160.00, '2024-12-01', 1440.00, 31),
(32, 1650.00, 165.00, '2024-12-02', 1485.00, 32),
(33, 1700.00, 170.00, '2024-12-03', 1530.00, 33),
(34, 1750.00, 175.00, '2024-12-04', 1575.00, 34),
(35, 1800.00, 180.00, '2024-12-05', 1620.00, 35),
(36, 1850.00, 185.00, '2024-12-06', 1665.00, 36),
(37, 1900.00, 190.00, '2024-12-07', 1710.00, 37),
(38, 1950.00, 195.00, '2024-12-08', 1755.00, 38),
(39, 2000.00, 200.00, '2024-12-09', 1800.00, 39),
(40, 2050.00, 205.00, '2024-12-10', 1845.00, 40),
(41, 2100.00, 210.00, '2024-12-11', 1890.00, 41),
(42, 2150.00, 215.00, '2024-12-12', 1935.00, 42),
(43, 2200.00, 220.00, '2024-12-13', 1980.00, 43),
(44, 2250.00, 225.00, '2024-12-14', 2025.00, 44),
(45, 2300.00, 230.00, '2024-12-15', 2070.00, 45),
(46, 2350.00, 235.00, '2024-12-16', 2115.00, 46),
(47, 2400.00, 240.00, '2024-12-17', 2160.00, 47),
(48, 2450.00, 245.00, '2024-12-18', 2205.00, 48),
(49, 2500.00, 250.00, '2024-12-19', 2250.00, 49),
(50, 2550.00, 255.00, '2024-12-20', 2295.00, 50);

INSERT INTO Products (productCode, description, price, requiredPart) VALUES (1, 'Widget', 10.00, 'Part01'), (2, 'Gadget', 15.00, 'Part02'), (3, 'Tool', 25.00, 'Part03'), (4, 'Accessory', 5.00, 'Part04'), (5, 'Apparel', 50.00, 'Part05'), (6, 'Electronics', 200.00, 'Part06'), (7, 'Furniture', 150.00, 'Part07'), (8, 'Hardware', 30.00, 'Part08'), (9, 'Software', 100.00, 'Part09'), (10, 'Office Supplies', 20.00, 'Part10'), (11, 'Premium Widget', 10.50, 'Part11'), (12, 'Advanced Gadget', 15.50, 'Part12'), (13, 'Compact Tool', 25.50, 'Part13'), (14, 'Luxury Accessory', 5.50, 'Part14'), (15, 'Summer Apparel', 55.00, 'Part15'), (16, 'Smartwatch Electronics', 210.00, 'Part16'), (17, 'Modern Furniture', 160.00, 'Part17'), (18, 'Plastic Hardware', 35.00, 'Part18'), (19, 'Business Software', 110.00, 'Part19'), (20, 'Stationery Supplies', 25.00, 'Part20'), (21, 'Portable Widget', 11.00, 'Part21'), (22, 'Wireless Gadget', 16.00, 'Part22'), (23, 'Electric Tool', 26.00, 'Part23'), (24, 'Gift Accessory', 6.00, 'Part24'), (25, 'Sporty Apparel', 60.00, 'Part25'), (26, 'Bluetooth Electronics', 220.00, 'Part26'), (27, 'Foldable Furniture', 170.00, 'Part27'), (28, 'DIY Hardware', 40.00, 'Part28'), (29, 'Mobile Software', 120.00, 'Part29'), (30, 'Creative Office Supplies', 30.00, 'Part30'), (31, 'Heavy Duty Widget', 11.50, 'Part31'), (32, 'Mobile Gadget', 16.50, 'Part32'), (33, 'Cordless Tool', 26.50, 'Part33'), (34, 'Digital Accessory', 6.50, 'Part34'), (35, 'Winter Apparel', 65.00, 'Part35'), (36, 'Smart Home Electronics', 230.00, 'Part36'), (37, 'Adjustable Furniture', 180.00, 'Part37'), (38, 'Kitchen Hardware', 45.00, 'Part38'), (39, 'Entertainment Software', 130.00, 'Part39'), (40, 'Cleaning Supplies', 35.00, 'Part01'), (41, 'Sturdy Widget', 12.00, 'Part02'), (42, 'Home Gadget', 17.00, 'Part03'), (43, 'Power Tool', 27.00, 'Part04'), (44, 'Elegant Accessory', 7.00, 'Part05'), (45, 'Casual Apparel', 70.00, 'Part06'), (46, '4K Electronics', 240.00, 'Part07'), (47, 'Office Furniture', 190.00, 'Part08'), (48, 'Outdoor Hardware', 50.00, 'Part09'), (49, 'Personal Software', 140.00, 'Part10'), (50, 'Daily Office Supplies', 40.00, 'Part11');

INSERT INTO Part (partNumber, partDescription) VALUES
(1, 'Standard Widget'),
(2, 'Deluxe Gadget'),
(3, 'Heavy Duty Tool'),
(4, 'Basic Accessory'),
(5, 'Winter Apparel'),
(6, 'Smartphone Electronics'),
(7, 'Wooden Furniture'),
(8, 'Metal Hardware'),
(9, 'Business Software'),
(10, 'Stationery Supplies'),
(11, 'Premium Widget'),
(12, 'Advanced Gadget'),
(13, 'Compact Tool'),
(14, 'Luxury Accessory'),
(15, 'Summer Apparel'),
(16, 'Smartwatch Electronics'),
(17, 'Modern Furniture'),
(18, 'Plastic Hardware'),
(19, 'Personal Software'),
(20, 'Office Essentials'),
(21, 'Small Widget'),
(22, 'Mobile Gadget'),
(23, 'Electric Tool'),
(24, 'Gift Accessory'),
(25, 'Sports Apparel'),
(26, 'Bluetooth Electronics'),
(27, 'Foldable Furniture'),
(28, 'Rustic Hardware'),
(29, 'Entertainment Software'),
(30, 'School Supplies'),
(31, 'Heavy Widget'),
(32, 'Portable Gadget'),
(33, 'Cordless Tool'),
(34, 'Digital Accessory'),
(35, 'Spring Apparel'),
(36, 'Gaming Electronics'),
(37, 'Upholstered Furniture'),
(38, 'Garden Hardware'),
(39, 'Creative Software'),
(40, 'Art Supplies'),
(41, 'Mini Widget'),
(42, 'Home Gadget'),
(43, 'Power Tool'),
(44, 'Fashion Accessory'),
(45, 'Casual Apparel'),
(46, 'Camera Electronics'),
(47, 'Living Room Furniture'),
(48, 'Construction Hardware'),
(49, 'Mobile Software'),
(50, 'Tech Supplies');

INSERT INTO Orderline (lineNumber, filled,  Quantity,  unitPrice, TotalPrice, prodcutDescription, Products_productCode, Order_ordernumber, Order_customer_customerid) VALUES
(1, true, 10, 10.00, 100.00, 'Widget', 1, 1, 1),
(2, true, 5, 15.00, 75.00, 'Gadget', 2, 2, 2),
(3, false, 7, 25.00, 175.00, 'Tool', 3, 3, 3),
(4, true, 3, 5.00, 15.00, 'Accessory', 4, 4, 4),
(5, true, 15, 50.00, 750.00, 'Apparel', 5, 5, 5),
(6, false, 8, 200.00, 1600.00, 'Electronics', 6, 6, 6),
(7, true, 10, 150.00, 1500.00, 'Furniture', 7, 7, 7),
(8, false, 6, 30.00, 180.00, 'Hardware', 8, 8, 8),
(9, true, 12, 100.00, 1200.00, 'Software', 9, 9, 9),
(10, true, 4, 20.00, 80.00, 'Office Supplies', 10, 10, 10),
(11, false, 9, 10.50, 94.50, 'Premium Widget', 11, 11, 11),
(12, true, 11, 15.50, 170.50, 'Advanced Gadget', 12, 12, 12),
(13, true, 5, 25.50, 127.50, 'Compact Tool', 13, 13, 13),
(14, false, 7, 5.50, 38.50, 'Luxury Accessory', 14, 14, 14),
(15, true, 10, 55.00, 550.00, 'Summer Apparel', 15, 15, 15),
(16, true, 8, 210.00, 1680.00, 'Smartwatch Electronics', 16, 16, 16),
(17, false, 4, 160.00, 640.00, 'Modern Furniture', 17, 17, 17),
(18, true, 12, 35.00, 420.00, 'Plastic Hardware', 18, 18, 18),
(19, true, 9, 110.00, 990.00, 'Business Software', 19, 19, 19),
(20, false, 6, 25.00, 150.00, 'Stationery Supplies', 20, 20, 20),
(21, true, 14, 11.00, 154.00, 'Portable Widget', 21, 21, 21),
(22, true, 8, 16.00, 128.00, 'Wireless Gadget', 22, 22, 22),
(23, false, 5, 26.00, 130.00, 'Electric Tool', 23, 23, 23),
(24, true, 10, 6.00, 60.00, 'Gift Accessory', 24, 24, 24),
(25, true, 11, 60.00, 660.00, 'Sporty Apparel', 25, 25, 25),
(26, false, 7, 220.00, 1540.00, 'Bluetooth Electronics', 26, 26, 26),
(27, true, 6, 170.00, 1020.00, 'Foldable Furniture', 27, 27, 27),
(28, true, 9, 40.00, 360.00, 'DIY Hardware', 28, 28, 28),
(29, false, 10, 120.00, 1200.00, 'Mobile Software', 29, 29, 29),
(30, true, 4, 30.00, 120.00, 'Creative Office Supplies', 30, 30, 30),
(31, true, 8, 11.50, 92.00, 'Heavy Duty Widget', 31, 31, 31),
(32, false, 12, 16.50, 198.00, 'Mobile Gadget', 32, 32, 32),
(33, true, 7, 26.50, 185.50, 'Cordless Tool', 33, 33, 33),
(34, true, 5, 6.50, 32.50, 'Digital Accessory', 34, 34, 34),
(35, false, 8, 65.00, 520.00, 'Winter Apparel', 35, 35, 35),
(36, true, 6, 230.00, 1380.00, 'Smart Home Electronics', 36, 36, 36),
(37, true, 3, 180.00, 540.00, 'Adjustable Furniture', 37, 37, 37),
(38, false, 9, 45.00, 405.00, 'Kitchen Hardware', 38, 38, 38),
(39, true, 12, 130.00, 1560.00, 'Entertainment Software', 39, 39, 39),
(40, true, 5, 35.00, 175.00, 'Cleaning Supplies', 40, 40, 40),
(41, false, 7, 12.00, 84.00, 'Sturdy Widget', 41, 41, 41),
(42, true, 10, 17.00, 170.00, 'Home Gadget', 42, 42, 42),
(43, true, 6, 27.00, 162.00, 'Power Tool', 43, 43, 43),
(44, false, 5, 7.00, 35.00, 'Elegant Accessory', 44, 44, 44),
(45, true, 8, 70.00, 560.00, 'Casual Apparel', 45, 45, 45),
(46, true, 11, 240.00, 2640.00, '4K Electronics', 46, 46, 46),
(47, false, 6, 190.00, 1140.00, 'Office Furniture', 47, 47, 47),
(48, true, 9, 50.00, 450.00, 'Outdoor Hardware', 48, 48, 48),
(49, true, 10, 140.00, 1400.00, 'Personal Software', 49, 49, 49),
(50, false, 12, 40.00, 480.00, 'Daily Office Supplies', 50, 50, 50);

INSERT INTO productspart (part_partNumber, products_productCode) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35),
(36, 36),
(37, 37),
(38, 38),
(39, 39),
(40, 40),
(41, 41),
(42, 42),
(43, 43),
(44, 44),
(45, 45),
(46, 46),
(47, 47),
(48, 48),
(49, 49),
(50, 50);

INSERT INTO Inventory (backorderedQuantity, onHandQuantity, InventoryDate) VALUES
(10, 50, '2024-11-01'),
(5, 100, '2024-11-02'),
(20, 200, '2024-11-03'),
(15, 150, '2024-11-04'),
(30, 250, '2024-11-05'),
(50, 500, '2024-11-06'),
(25, 200, '2024-11-07'),
(35, 300, '2024-11-08'),
(40, 400, '2024-11-09'),
(60, 600, '2024-11-10'),
(10, 50, '2024-11-11'),
(5, 100, '2024-11-12'),
(20, 200, '2024-11-13'),
(15, 150, '2024-11-14'),
(30, 250, '2024-11-15'),
(50, 500, '2024-11-16'),
(25, 200, '2024-11-17'),
(35, 300, '2024-11-18'),
(40, 400, '2024-11-19'),
(60, 600, '2024-11-20'),
(10, 50, '2024-11-21'),
(5, 100, '2024-11-22'),
(20, 200, '2024-11-23'),
(15, 150, '2024-11-24'),
(30, 250, '2024-11-25'),
(50, 500, '2024-11-26'),
(25, 200, '2024-11-27'),
(35, 300, '2024-11-28'),
(40, 400, '2024-11-29'),
(60, 600, '2024-11-30'),
(10, 50, '2024-12-01'),
(5, 100, '2024-12-02'),
(20, 200, '2024-12-03'),
(15, 150, '2024-12-04'),
(30, 250, '2024-12-05'),
(50, 500, '2024-12-06'),
(25, 200, '2024-12-07'),
(35, 300, '2024-12-08'),
(40, 400, '2024-12-09'),
(60, 600, '2024-12-10'),
(10, 50, '2024-12-11'),
(5, 100, '2024-12-12'),
(20, 200, '2024-12-13'),
(15, 150, '2024-12-14'),
(30, 250, '2024-12-15'),
(50, 500, '2024-12-16'),
(25, 200, '2024-12-17'),
(35, 300, '2024-12-18'),
(40, 400, '2024-12-19'),
(60, 600, '2024-12-20');

INSERT INTO partInventory (inventory_inventoryDate, part_partNumber) VALUES
('2024-11-01', 1),
('2024-11-02', 2),
('2024-11-03', 3),
('2024-11-04', 4),
('2024-11-05', 5),
('2024-11-06', 6),
('2024-11-07', 7),
('2024-11-08', 8),
('2024-11-09', 9),
('2024-11-10', 10),
('2024-11-11', 11),
('2024-11-12', 12),
('2024-11-13', 13),
('2024-11-14', 14),
('2024-11-15', 15),
('2024-11-16', 16),
('2024-11-17', 17),
('2024-11-18', 18),
('2024-11-19', 19),
('2024-11-20', 20),
('2024-11-21', 21),
('2024-11-22', 22),
('2024-11-23', 23),
('2024-11-24', 24),
('2024-11-25', 25),
('2024-11-26', 26),
('2024-11-27', 27),
('2024-11-28', 28),
('2024-11-29', 29),
('2024-11-30', 30),
('2024-12-01', 31),
('2024-12-02', 32),
('2024-12-03', 33),
('2024-12-04', 34),
('2024-12-05', 35),
('2024-12-06', 36),
('2024-12-07', 37),
('2024-12-08', 38),
('2024-12-09', 39),
('2024-12-10', 40),
('2024-12-11', 41),
('2024-12-12', 42),
('2024-12-13', 43),
('2024-12-14', 44),
('2024-12-15', 45),
('2024-12-16', 46),
('2024-12-17', 47),
('2024-12-18', 48),
('2024-12-19', 49),
('2024-12-20', 50);

INSERT INTO productInventory (inventory_inventoryDate, products_productCode) VALUES
('2024-11-01', 1),
('2024-11-02', 2),
('2024-11-03', 3),
('2024-11-04', 4),
('2024-11-05', 5),
('2024-11-06', 6),
('2024-11-07', 7),
('2024-11-08', 8),
('2024-11-09', 9),
('2024-11-10', 10),
('2024-11-11', 11),
('2024-11-12', 12),
('2024-11-13', 13),
('2024-11-14', 14),
('2024-11-15', 15),
('2024-11-16', 16),
('2024-11-17', 17),
('2024-11-18', 18),
('2024-11-19', 19),
('2024-11-20', 20),
('2024-11-21', 21),
('2024-11-22', 22),
('2024-11-23', 23),
('2024-11-24', 24),
('2024-11-25', 25),
('2024-11-26', 26),
('2024-11-27', 27),
('2024-11-28', 28),
('2024-11-29', 29),
('2024-11-30', 30),
('2024-12-01', 31),
('2024-12-02', 32),
('2024-12-03', 33),
('2024-12-04', 34),
('2024-12-05', 35),
('2024-12-06', 36),
('2024-12-07', 37),
('2024-12-08', 38),
('2024-12-09', 39),
('2024-12-10', 40),
('2024-12-11', 41),
('2024-12-12', 42),
('2024-12-13', 43),
('2024-12-14', 44),
('2024-12-15', 45),
('2024-12-16', 46),
('2024-12-17', 47),
('2024-12-18', 48),
('2024-12-19', 49),
('2024-12-20', 50);
 
--Retrieving all columns and rows from the Customer table
SELECT *
FROM Customer;

--Retrieving specific columns from the Customer table
SELECT CustomerID, CustomerName
FROM Customer;

--Retrieve specific columns and filter rows where DiscountRate is 0.15%
SELECT City, StreetNumber, Province, DiscountRate
FROM Customer
WHERE discountRate = '0.15';

--Retrieve specific columns and filter rows where City is 'Toronto' and Province is 'ON'
SELECT City, StreetNumber, Province
FROM Customer
WHERE City = 'Cityville' AND Province = 'ON';

--Perform a single table join between Customer and Order tables
SELECT c.customerID, c.customerName, o.orderNumber
FROM Customer c
JOIN "Order" o ON c.CustomerID = o.Customer_customerID;

--Perform a multi-table join between Customer, Order, and OrderLine tables
SELECT c.CustomerId, o.OrderNumber, o.OrderDate, p.Productcode
FROM Customer c
JOIN "Order" o ON c.CustomerId = o.Customer_CustomerId
JOIN OrderLine od ON o.Ordernumber = od.Order_Ordernumber
JOIN Products p ON od.Products_Productcode = p.Productcode;

--Calculate the total sales amount from the Order table
SELECT SUM (total) AS total_sales
FROM "Order";

--Count the total sales amount for each customer
SELECT customer.customerid, COUNT("Order".ordernumber) AS orderCount
FROM "Order"
JOIN Customer ON customer.customerid = "Order".customer_customerid
TGROUP BY customer.customerid;

--Calculate the total sales amount for each customer and filter for totals greater than $1000
SELECT customer.customerid, SUM(total) AS total_sales
FROM "Order", customer
GROUP BY customer.customerid
HAVING SUM(total) > 1000;

--Use a subquery in the WHERE clause to filter customers with total orders greater than $1000
SELECT customerid, total_sales
FROM(
	SELECT SUM("Order".total) AS total_sales, customer.customerid
	FROM "Order"
	JOIN customer ON customer.customerid = "Order".customer_customerid
	GROUP BY customer.customerid)
WHERE total_sales > 1000;

--Calculates the total sales amount for each customer by joining the customers, Order, orderline, and products tables.
SELECT c.customerid, c.customername, SUM(od.quantity * p.price) AS total_sales
FROM customer c
JOIN "Order" o ON c.customerid = o.customer_customerid
JOIN orderline od ON o.ordernumber = od.order_ordernumber
JOIN products p ON od.products_productcode = p.productcode
GROUP BY c.customerid, c.customername;

-- Views Based on Queries
-- Dynamic View
CREATE VIEW Customer_Toronto AS
SELECT City, streetNumber, Province
FROM Customer
WHERE City = 'Cityville' AND Province = 'ON';
SELECT * FROM Customer_Toronto;

-- Materialized View
CREATE MATERIALIZED VIEW CustomerTotalSales_mv AS
SELECT customer_customerid, SUM(total) AS total_sales
FROM "Order"
GROUP BY customer_customerid
HAVING SUM(total) > 1000;
SELECT * FROM CustomerTotalSales_mv;
