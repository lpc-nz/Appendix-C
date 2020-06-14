--AppCOptimise09 - Chung Le
--Before
--Warn with CLUSTERED

USE GuestHouse2020;
GO

SET STATISTICS IO ON
SET STATISTICS TIME ON

CREATE or ALTER VIEW [TotalPay.Sir P_rd]
AS
SELECT first_name, last_name,
			SUM(nights * amount) AS 'Total'
FROM guest g
JOIN booking b
ON  g.id = b.guest_id
JOIN rate r
ON b.room_type_requested = r.room_type 
	AND b.occupants = r.occupancy
WHERE first_name LIKE 'Sir P%' AND last_name LIKE '%rd'
GROUP BY first_name, last_name;
GO

CREATE NONCLUSTERED INDEX [IX_room_type]
ON [dbo].[rate] ([room_type]);
GO

--DROP INDEX [IX_room_type] 
--ON [dbo].[rate];
--GO