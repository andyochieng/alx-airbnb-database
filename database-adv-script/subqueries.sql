
-- 🧩 PART 1: NON-CORRELATED SUBQUERY
SELECT *
FROM properties
WHERE property_id IN (
    -- Subquery: Get property IDs with an average rating above 4.0
    SELECT property_id
    FROM reviews
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);

-- 🧩 PART 2: CORRELATED SUBQUERY

SELECT u.user_id, u.first_name, u.last_name, u.email
FROM users u
WHERE (
    -- Subquery: Count how many bookings this specific user has made
    SELECT COUNT(*)
    FROM bookings b
    WHERE b.user_id = u.user_id
) > 3;
