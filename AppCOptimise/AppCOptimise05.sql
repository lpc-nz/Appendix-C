--AppCOptimise05 - Chung Le
--Before, Using Bad query

-- FROM booking b, guest g
--WHERE b.guest_id = g.id
			--AND
			--booking_date = '2016-Nov-26'
			--AND
			--room_no = 209;

USE GuestHouse2020;
GO

SET STATISTICS IO ON
SET STATISTICS TIME ON

CREATE or ALTER VIEW [Room209On26-11-2019]
AS
SELECT first_name + ' ' + last_name AS 'Full Name',
			room_no AS 'Room Number',
			booking_date
FROM booking b
INNER JOIN guest g
ON
b.guest_id = g.id
WHERE
booking_date = '2016-Nov-26'
AND
room_no = 209;
GO