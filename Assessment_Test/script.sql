START TRANSACTION;
SET FOREIGN_KEY_CHECKS = 0;

-- script to create table Employee
CREATE TABLE `Employee` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `EmployeeId` varchar(10) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `BirthDate` date NOT NULL,
  `Address` varchar(500) DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UniqueEmployeeId` (`EmployeeId`) USING BTREE,
  KEY `EmployeeId` (`EmployeeId`) USING BTREE
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
  
-- script to create table PositionHistory
CREATE TABLE `PositionHistory` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `PosId` varchar(10) NOT NULL,
  `PosTitle` varchar(100) NOT NULL,
  `EmployeeId` varchar(10) NOT NULL,  
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- script to insert data to table Employee
INSERT INTO `Employee` (`EmployeeId`, `FullName`, `BirthDate`, `Address`) 
VALUES
('10105001', 'Ali Anton', '1982-08-19', 'Jakarta Utara'),
('10105002', 'Rara Siva', '1982-01-01', 'Mandalika'),
('10105003', 'Rini Aini', '1982-02-20', 'Sumbawa Besar'),
('10105004', 'Budi', '1982-02-22', 'Mataram Kota');

-- script to insert data to table PositionHistory
INSERT INTO `PositionHistory` (`PosId`, `PosTitle`, `EmployeeId`, `StartDate`, `EndDate`)
VALUES
('50000', 'IT Manager', '10105001', '2022-01-01', '2022-02-28'),
('50001', 'IT Sr. Manager', '10105001', '2022-03-01', '2022-12-31'),
('50002', 'Programmer Analyst', '10105002', '2022-01-01', '2022-02-28'),
('50003', 'Sr. Programmer Analyst', '10105002', '2022-03-01', '2022-12-31'),
('50004', 'IT Admin', '10105003', '2022-01-01', '2022-02-28'),
('50005', 'IT Secretary', '10105003', '2022-03-01', '2022-12-31');

SET FOREIGN_KEY_CHECKS = 1;
COMMIT;