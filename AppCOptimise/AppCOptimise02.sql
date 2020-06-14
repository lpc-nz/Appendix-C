
--AppCOptimise02 - Chung Le
--Before
--Using CONCAT(first_name, ' ', last_name)

USE GuestHouse2020;
GO

SET STATISTICS IO ON
SET STATISTICS TIME ON

CREATE or ALTER VIEW CustomerInfo
AS
SELECT (first_name + ' ' + last_name) AS 'Full Name', address
FROM guest;
GO



