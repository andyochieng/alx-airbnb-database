-- Create index on email for quick user lookup
CREATE INDEX idx_user_email ON User(email);

-- Create indexes for Booking table (used in joins and filtering)
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_created_at ON Booking(created_at);

-- Create indexes for Property search and sort
CREATE INDEX idx_property_city ON Property(city);
CREATE INDEX idx_property_price ON Property(price);
