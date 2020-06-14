--AppCView07 - Chung Le

USE GuestHouse2020;
GO

CREATE or ALTER VIEW [TotalBillBookingNo.5128]
AS
SELECT booking.booking_id,
			((booking.nights * rate.amount) + SUM(extra.amount)) AS 'Total Bill'
FROM booking
JOIN rate
ON booking.room_type_requested = rate.room_type
		AND booking.occupants = rate.occupancy
JOIN extra
ON booking.booking_id = extra.booking_id
WHERE booking.booking_id = 5128
GROUP BY booking.booking_id, booking.nights, rate.amount;
GO
