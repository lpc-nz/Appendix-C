--AppCOptimise03 - Chung Le
--This query not optimization much

USE GuestHouse2020;
GO

SET STATISTICS IO ON
SET STATISTICS TIME ON

CREATE or ALTER VIEW [BookingNo.5204]
AS
SELECT booking_id,
			booking_date AS 'Check In', 
			DATEADD(day, nights, booking_date) AS 'Check Out',
			SUM(nights) AS 'Nights'
FROM booking
WHERE booking_id = '5204'
GROUP BY booking_date, nights, booking_id;
GO