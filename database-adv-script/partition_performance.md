# 🧩 Partitioning Performance Report

## 🎯 Objective

To improve query performance on the large `Booking` table by implementing **partitioning based on the `start_date` column**.

---

## 🧱 Partitioning Strategy

We recreated the `Booking` table with **RANGE partitioning** on the `YEAR(start_date)`.

```sql
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION pmax  VALUES LESS THAN MAXVALUE
);
