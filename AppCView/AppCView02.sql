
--AppCView02 - Chung Le
USE GuestHouse2020;
GO

CREATE or ALTER VIEW CustomerInfo
AS
SELECT first_name + ' ' + last_name AS 'Full Name', address
FROM guest;
GO
