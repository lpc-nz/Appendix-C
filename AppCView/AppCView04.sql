--AppCView04 - Chung Le

USE GuestHouse2020;
GO

CREATE or ALTER VIEW [BookingOn26-11-2019]
AS
SELECT first_name + ' ' + last_name AS 'Full Name',
			room_no AS 'Room Number',
			booking_date
FROM booking b
INNER JOIN guest g
ON
b.guest_id = g.id
WHERE
booking_date = '2016-Nov-26';
GO