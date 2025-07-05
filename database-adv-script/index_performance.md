# 📈 Index Performance Analysis

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
CREATE INDEX idx_property_price ON Property(price);
