--AppCOptimise07 - Chung Le
--Before using bad query

--FROM booking, rate, extra
--WHERE
		--booking.room_type_requested = rate.room_type
		--AND booking.occupants = rate.occupancy
		--AND booking.booking_id = extra.booking_id
		--AND booking.booking_id = 5128



USE GuestHouse2020;
GO

SET STATISTICS IO ON
SET STATISTICS TIME ON

CREATE or ALTER VIEW [TotalBillBookingNo.5128]
AS
SELECT b.booking_id,
			((b.nights * r.amount) + SUM(e.amount)) AS 'Total Bill'
FROM booking b
JOIN rate r
ON b.room_type_requested = r.room_type
		AND b.occupants = r.occupancy
JOIN extra e
ON b.booking_id = e.booking_id
WHERE b.booking_id = 5128
GROUP BY b.booking_id, b.nights, r.amount;
GO
