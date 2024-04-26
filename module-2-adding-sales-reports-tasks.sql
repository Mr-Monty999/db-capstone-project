
use little_lemon_capstone;


-- CREATE VIEW MenuItemsBiggerGreaterTwoQuantity AS 

-- SELECT menu.name AS menu_name
-- FROM menu 
-- WHERE menu.id = ANY(
-- SELECT items.menu_id FROM items
-- INNER JOIN order_item on items.id = order_item.item_id
-- WHERE order_item.quantity > 2
-- );

-- SELECT * FROM ordersview;
-- SELECT * FROM fourtablesinfo;
-- SELECT * FROM menuitemsbiggergreatertwoquantity;


-- DELIMITER //
-- CREATE PROCEDURE GetMaxQuantity()
-- BEGIN
-- SELECT MAX(quantity) AS 'Max Quantity In Order' FROM orders;
-- END //
-- CALL GetMaxQuantity();


-- PREPARE GetOrderDetail FROM 'SELECT id,quantity,total_cost FROM orders WHERE customer_Id = ?';
-- SET @id = 1;
-- EXECUTE GetOrderDetail USING @id;


-- DELIMITER //
-- CREATE PROCEDURE CancelOrder(IN OrderId INT)
-- BEGIN
-- DELETE FROM orders WHERE id = OrderId;
-- SELECT "Order Is Cancelled" As Confirmation ;
-- END //
-- DELIMITER ;
-- CALL CancelOrder(4);


