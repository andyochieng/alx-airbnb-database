-- Recreate Booking table with partitioning on start_date
DROP TABLE IF EXISTS Booking;

CREATE TABLE Booking (
    id INT PRIMARY KEY,
    user_id INT,
    property_id INT,
    payment_id INT,
    start_date DATE,
    end_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION pmax  VALUES LESS THAN MAXVALUE
);
