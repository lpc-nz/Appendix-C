----AppCView03 - Chung Le

USE GuestHouse2020;
GO

CREATE or ALTER VIEW [BookingNo.5204]
AS
SELECT booking_id,
			booking_date AS 'Check In', 
			DATEADD(day, nights, booking_date) AS 'Check Out',
			SUM(nights) AS 'Nights'
FROM booking
WHERE booking_id = 5204
GROUP BY booking_date, nights, booking_id;
GO