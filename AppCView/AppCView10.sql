--AppCView10 - Chung Le

USE GuestHouse2020;
GO

CREATE or ALTER VIEW [GuestLiveIn.East]
AS
SELECT TOP (100) PERCENT last_name AS 'Last Name', 
			first_name AS 'First Name',
			 address, 
			 ISNULL(nights, 0) AS 'Nights'
FROM guest
FULL OUTER JOIN booking
ON guest.id = booking.guest_id
WHERE address LIKE '%East%'
ORDER BY last_name, first_name;
GO