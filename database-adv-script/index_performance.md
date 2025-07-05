<!-- # 📈 Index Performance Analysis

## 🎯 Objective

The goal of this task is to improve the performance of frequently used SQL queries by identifying high-usage columns and creating indexes on them. Indexes help speed up SELECT queries by allowing the database to find rows more efficiently.

---

## 📊 Tables and Indexed Columns

The following tables were analyzed for indexing:

### 1. `User` Table
- Indexed Column: `email`  
  - Reason: Frequently used in `WHERE` clauses for user authentication and filtering.

### 2. `Booking` Table
- Indexed Columns: `user_id`, `property_id`, `created_at`  
  - Reason: Commonly used in JOINs and filters.

### 3. `Property` Table
- Indexed Columns: `city`, `price`  
  - Reason: Used in search filters and sorting results.

---

## ⚙️ Index Creation (SQL)

See `database_index.sql` for actual SQL commands. Example:

```sql
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_created_at ON Booking(created_at);
CREATE INDEX idx_property_city ON Property(city);
CREATE INDEX idx_property_price ON Property(price); -->
# 📊 Index Performance Analysis

## 🎯 Objective

Improve database query performance by identifying and indexing high-usage columns in the `User`, `Booking`, and `Property` tables.

---

## ⚙️ Indexes Created

| Table     | Column         | Index Name              |
|-----------|----------------|--------------------------|
| User      | email          | idx_user_email           |
| Booking   | user_id        | idx_booking_user_id      |
| Booking   | property_id    | idx_booking_property_id  |
| Booking   | created_at     | idx_booking_created_at   |
| Property  | city           | idx_property_city        |
| Property  | price          | idx_property_price       |

---

## 🧪 Query Performance Comparison Using EXPLAIN

### 🔍 Query 1: Find a user by email

```sql
EXPLAIN SELECT * FROM User WHERE email = 'test@example.com';
