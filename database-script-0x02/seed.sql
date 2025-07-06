-- Insert sample users
INSERT INTO users (name, email, phone) VALUES
('Alice Johnson', 'alice@example.com', '0700000001'),
('Bob Smith', 'bob@example.com', '0700000002'),
('Charlie Lee', 'charlie@example.com', '0700000003');

-- Insert sample properties
INSERT INTO properties (name, location, description, owner_id) VALUES
('Cozy Cottage', 'Nairobi', 'A lovely 2-bedroom cottage.', 1),
('Modern Studio', 'Mombasa', 'Studio apartment near the beach.', 2),
('Treehouse', 'Naivasha', 'A fun treehouse experience.', 1);

-- Insert sample bookings
INSERT INTO bookings (user_id, property_id, start_date, end_date, status) VALUES
(2, 1, '2025-07-10', '2025-07-15', 'confirmed'),
(3, 2, '2025-07-12', '2025-07-18', 'pending');

-- Insert sample payments
INSERT INTO payments (booking_id, amount, payment_method, payment_date) VALUES
(1, 5000.00, 'Mpesa', '2025-07-09'),
(2, 7500.00, 'Credit Card', '2025-07-11');
