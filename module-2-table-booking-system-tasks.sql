
		-- #task 1 --
        
-- Sample customers
INSERT INTO customers (name, phone, email, address) VALUES
('John Doe', '123-456-7890', 'john@example.com', '123 Main St'),
('Alice Smith', '456-789-0123', 'alice@example.com', '456 Elm St'),
('Bob Johnson', '789-012-3456', 'bob@example.com', '789 Oak St');

-- Sample bookings
INSERT INTO bookings (date, table_number, customer_id) VALUES
('2022-10-10', 5, 1),
('2022-11-12', 3, 3),
('2022-10-11', 2, 2),
('2022-10-13', 2, 1);

SELECT * FROM bookings;


		-- #task 2 --

DELIMITER //
CREATE PROCEDURE CheckBooking (IN bookingDate DATE,IN tableNumber INT)
BEGIN
SELECT concat("Table ",tableNumber," is ","already booked") As BookingStatus 
FROM bookings
WHERE date = bookingDate AND table_number = tableNumber;
END //
DELIMITER ;
CALL CheckBooking('2022-11-12',3);

		-- #task 3 --

 DROP PROCEDURE IF EXISTS AddValidBooking;
 
DELIMITER //
CREATE PROCEDURE AddValidBooking (IN bookingDate DATE,IN tableNumber INT,IN customerId INT)
BEGIN

SET @bookingExists = (SELECT COUNT(id) FROM bookings WHERE date = bookingDate AND table_number = tableNumber);

START TRANSACTION;
    
INSERT INTO bookings (date,table_number,customer_id) VALUES 
(bookingDate,tableNumber,customerId);
    
IF @bookingExists < 1 THEN
	SELECT "Booking Added successfully" AS BookingStatus;
	COMMIT;
ELSE
	SELECT concat("Table ",tableNumber," is ","already booked - booking cancelled") AS BookingStatus;
	ROLLBACK;
END IF;
END //
DELIMITER ;

CALL AddValidBooking('2022-12-13',8,1);


		-- #task 4 --

 DROP PROCEDURE IF EXISTS AddBooking ;
 
DELIMITER //
CREATE PROCEDURE AddBooking (IN bookingDate DATE,IN tableNumber INT,IN customerId INT,IN BookingId INT)
BEGIN

INSERT INTO bookings (date,table_number,customer_id)
 VALUES 
(bookingDate,tableNumber,customerId);

SELECT "New Booking Added" AS Confirmation;
    
END //
DELIMITER ;

CALL AddBooking ('2022-12-13',50,1,4);


	-- #task 5 --

 DROP PROCEDURE IF EXISTS UpdateBooking ;
 
DELIMITER //
CREATE PROCEDURE UpdateBooking (IN bookingId INT,IN bookingDate DATE)
BEGIN

UPDATE bookings SET date = bookingDate WHERE id = bookingId;

SELECT concat("Booking ",bookingId," Updated") AS Confirmation;
    
END //
DELIMITER ;

CALL UpdateBooking (1,'2024-12-13');


	-- #task 6 --

 DROP PROCEDURE IF EXISTS CancelBooking ;
 
DELIMITER //
CREATE PROCEDURE CancelBooking (IN bookingId INT)
BEGIN

DELETE FROM bookings WHERE id = bookingId;

SELECT concat("Booking ",bookingId," Cancelled") AS Confirmation;
    
END //
DELIMITER ;

CALL CancelBooking (1,'2024-12-13');




