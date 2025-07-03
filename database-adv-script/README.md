SQL Joins & Subqueries Assignment

Author: Andy Ochieng

Objective:
This assignment demonstrates advanced SQL techniques using a sample booking platform database. It covers the use of JOIN operations and subqueries to retrieve, relate, and analyze data efficiently.

Task Breakdown:

1. INNER JOIN – Bookings with User Details
   Retrieves all bookings along with the corresponding user who made each booking.
   Only bookings linked to valid users are shown.

2. LEFT JOIN – Properties with or without Reviews
   Displays all properties and their associated reviews.
   Properties without reviews are still included in the result.

3. FULL OUTER JOIN – All Users and All Bookings
   Combines all users and all bookings into one result set.
   Includes:
   - Users who have not made any bookings
   - Bookings that are not linked to any user

4. Non-Correlated Subquery – Properties with Average Rating > 4.0
   Selects properties where the average review rating exceeds 4.0.
   The subquery runs independently and returns property IDs meeting the condition.

5. Correlated Subquery – Users with More Than 3 Bookings
   Retrieves users who have made more than three bookings.
   The subquery runs per user and counts bookings linked to that user.

How to Run:
- Ensure your database includes the following tables: users, bookings, properties, reviews.
- Use a SQL client (e.g., MySQL Workbench, DBeaver, pgAdmin).
- Copy and run each SQL query from the assignment file.
- Review the output for each task to verify correctness.

Note:
All queries were tested for correctness and clarity. Indexing and optimization strategies can be applied to enhance performance for large datasets.
