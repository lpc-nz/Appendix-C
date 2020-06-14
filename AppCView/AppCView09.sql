--AppCView09 - Chung Le

USE GuestHouse2020;
GO

CREATE or ALTER VIEW [TotalPay.Sir P_rd]
AS
SELECT first_name, last_name,
			SUM(nights * amount) AS 'Total'
FROM guest
JOIN booking
ON  guest.id = booking.guest_id
JOIN rate
ON booking.room_type_requested = rate.room_type 
	AND booking.occupants = rate.occupancy
WHERE first_name LIKE 'Sir P%' AND last_name LIKE '%rd'
GROUP BY first_name, last_name;
GO
