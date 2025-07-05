# 📊 Performance Monitoring and Refinement Report

## 🎯 Objective

To monitor and refine database performance by analyzing query execution plans and making schema improvements based on findings.

---

## 🔍 Tools Used

- `EXPLAIN` – to analyze query execution plans
- `SHOW PROFILE` – to understand where time is spent in query execution
- `EXPLAIN ANALYZE` – (if supported) for actual row scan and cost estimation

---

## 🧪 Query Monitoring Examples

### Query 1: Fetch user by email

```sql
EXPLAIN SELECT * FROM User WHERE email = 'test@example.com';
