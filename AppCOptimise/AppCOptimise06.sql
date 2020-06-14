--AppCOptimise06 - Chung Le
--Before using bad query

--FROM booking b, guest g
--WHERE b.guest_id = g.id
--AND
--booking_id = '5046'

USE GuestHouse2020;
GO

SET STATISTICS IO ON
SET STATISTICS TIME ON

CREATE or ALTER VIEW [GuestBookingNo.5046]
AS
SELECT b.booking_id, 
			g.first_name, g.last_name, b.occupants,
			b.booking_date AS 'Check In',
			DATEADD(day, b.nights, b.booking_date) AS 'Check Out',
			SUM(b.nights) AS 'Nights'
FROM booking b
INNER JOIN guest g
ON
b.guest_id = g.id
WHERE booking_id = '5046'
GROUP BY b.booking_id, g.first_name, g.last_name, b.occupants, b.nights, b.room_no, b.booking_date;
GO