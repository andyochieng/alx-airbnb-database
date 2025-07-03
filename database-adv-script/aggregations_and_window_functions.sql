-- ==================================================
-- SQL AGGREGATION AND WINDOW FUNCTIONS ASSIGNMENT
-- ==================================================

-- 1. Find the total number of bookings made by each user using COUNT function and GROUP BY clause
-- ==================================================

SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    COUNT(b.booking_id) AS total_bookings
FROM users u
LEFT JOIN bookings b ON u.user_id = b.user_id
GROUP BY u.user_id, u.first_name, u.last_name, u.email
ORDER BY total_bookings DESC, u.last_name;


-- ==================================================
-- 2. Use window functions to rank properties based on total number of bookings they have received
-- ==================================================

-- Using ROW_NUMBER() - assigns unique sequential numbers
SELECT 
    property_id,
    property_name,
    property_type,
    location,
    total_bookings,
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS row_rank
FROM (
    SELECT 
        p.property_id,
        p.property_name,
        p.property_type,
        p.location,
        COUNT(b.booking_id) AS total_bookings
    FROM properties p
    LEFT JOIN bookings b ON p.property_id = b.property_id
    GROUP BY p.property_id, p.property_name, p.property_type, p.location
) property_booking_counts
ORDER BY row_rank;


-- Using RANK() - assigns same rank to ties, skips next rank
SELECT 
    property_id,
    property_name,
    property_type,
    location,
    total_bookings,
    RANK() OVER (ORDER BY total_bookings DESC) AS property_rank
FROM (
    SELECT 
        p.property_id,
        p.property_name,
        p.property_type,
        p.location,
        COUNT(b.booking_id) AS total_bookings
    FROM properties p
    LEFT JOIN bookings b ON p.property_id = b.property_id
    GROUP BY p.property_id, p.property_name, p.property_type, p.location
) property_booking_counts
ORDER BY property_rank;


-- Using DENSE_RANK() - assigns same rank to ties, does not skip next rank
SELECT 
    property_id,
    property_name,
    property_type,
    location,
    total_bookings,
    DENSE_RANK() OVER (ORDER BY total_bookings DESC) AS dense_rank
FROM (
    SELECT 
        p.property_id,
        p.property_name,
        p.property_type,
        p.location,
        COUNT(b.booking_id) AS total_bookings
    FROM properties p
    LEFT JOIN bookings b ON p.property_id = b.property_id
    GROUP BY p.property_id, p.property_name, p.property_type, p.location
) property_booking_counts
ORDER BY dense_rank;