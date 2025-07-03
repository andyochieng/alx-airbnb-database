-- ===============================================
-- SQL Queries: Booking Counts and Property Ranking
-- ===============================================

-- 1️⃣ Total Number of Bookings Made by Each User
-- This query counts how many bookings each user has made.
-- Users with no bookings are still shown (with 0).
-- ===============================================

SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    COUNT(b.booking_id) AS total_bookings
FROM users u
LEFT JOIN bookings b ON u.user_id = b.user_id
GROUP BY u.user_id, u.first_name, u.last_name
ORDER BY total_bookings DESC;

-- 2️⃣ Rank Properties Based on Number of Bookings
-- This query ranks all properties by the number of bookings they have received.
-- RANK() assigns the same rank to properties with equal booking counts.
-- ===============================================

SELECT 
    p.property_id,
    p.property_name,
    COUNT(b.booking_id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS booking_rank
FROM properties p
LEFT JOIN bookings b ON p.property_id = b.property_id
GROUP BY p.property_id, p.property_name
ORDER BY booking_rank;
