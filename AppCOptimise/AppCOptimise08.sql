--AppCOptimise08 - Chung Le
--Before
--Have error CLUSTERED

USE GuestHouse2020;
GO

SET STATISTICS IO ON
SET STATISTICS TIME ON

CREATE or ALTER VIEW [TotalPay.Dr Andrew Murrison]
AS
SELECT first_name +' '+last_name AS 'Full Name',
			SUM(nights * amount) AS 'Total'
FROM guest g
JOIN booking b
ON  g.id = b.guest_id
JOIN rate r
ON b.room_type_requested = r.room_type 
	AND b.occupants = r.occupancy
WHERE first_name = 'Dr Andrew' AND last_name = 'Murrison'
GROUP BY first_name +' '+last_name
GO

CREATE NONCLUSTERED INDEX [IX_room_type]
ON [dbo].[rate] ([room_type]);
GO

--DROP INDEX [IX_room_type] 
--ON [dbo].[rate];
--GO