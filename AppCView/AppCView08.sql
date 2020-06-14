--AppCView08 - Chung Le

USE GuestHouse2020;
GO

CREATE or ALTER VIEW [TotalPay.Dr Andrew Murrison]
AS
SELECT first_name +' '+last_name AS 'Full Name',
			SUM(nights * amount) AS 'Total'
FROM guest
JOIN booking
ON  guest.id = booking.guest_id
JOIN rate
ON booking.room_type_requested = rate.room_type 
	AND booking.occupants = rate.occupancy
WHERE first_name = 'Dr Andrew' AND last_name = 'Murrison'
GROUP BY first_name +' '+last_name
GO
