# ⚙️ Query Optimization Report

## 🎯 Objective

To improve the performance of a complex query that retrieves booking data along with related user, property, and payment details.

---

## 🔴 Initial Unoptimized Query

```sql
SELECT *
FROM Booking
JOIN User ON Booking.user_id = User.id
JOIN Property ON Booking.property_id = Property.id
JOIN Payment ON Booking.payment_id = Payment.id;
