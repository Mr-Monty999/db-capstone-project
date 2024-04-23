use little_lemon_capstone;

-- Sample customers
INSERT INTO customers (name, phone, email, address) VALUES
('John Doe', '123-456-7890', 'john@example.com', '123 Main St'),
('Alice Smith', '456-789-0123', 'alice@example.com', '456 Elm St'),
('Bob Johnson', '789-012-3456', 'bob@example.com', '789 Oak St');

-- Sample bookings
INSERT INTO bookings (date, table_number, customer_id) VALUES
('2024-04-23 12:00:00', 1, 1),
('2024-04-24 18:30:00', 2, 2),
('2024-04-25 20:00:00', 3, 3);

-- Sample orders
INSERT INTO orders (order_date, quantity, total_cost, customer_id) VALUES
('2024-04-23 12:15:00', 2, 25.99, 1),
('2024-04-24 18:45:00', 3, 35.50, 2),
('2024-04-25 20:15:00', 1, 15.25, 3);

-- Sample order delivery status
INSERT INTO order_delivery_status (delivery_date, status, order_id) VALUES
('2024-04-23 12:30:00', 'Delivered', 1),
('2024-04-24 19:00:00', 'In Progress', 2),
('2024-04-25 20:30:00', 'Pending', 3);

-- Sample menu
INSERT INTO menu (name) VALUES
('Starters'),
('Main Course'),
('Desserts');

-- Sample staff
INSERT INTO staff (name, role, salary) VALUES
('Jane Smith', 'Chef', 3500),
('Mark Johnson', 'Waiter', 2500),
('Emily Davis', 'Manager', 5000);

-- Sample items
INSERT INTO items (name, price, menu_id) VALUES
('Caesar Salad', 8.99, 1),
('Grilled Salmon', 19.99, 2),
('Chocolate Cake', 6.99, 3);

-- Sample order items
INSERT INTO order_item (order_id, item_id, quantity) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 3, 1);
