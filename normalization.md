# Database Normalization Process (Up to 3NF)

## Step 1: First Normal Form (1NF)

**Definition:** Each table should have atomic values, no repeating groups or arrays.

**Action Taken:**
- Split any multi-valued fields (e.g., property images, phone numbers) into separate rows or tables.
- All fields now contain only atomic values.

## Step 2: Second Normal Form (2NF)

**Definition:** Must be in 1NF and all non-key attributes should be fully dependent on the entire primary key.

**Action Taken:**
- Ensured all tables with composite keys were redesigned to use single primary keys (e.g., `id`).
- All non-key attributes now fully depend on the primary key.

## Step 3: Third Normal Form (3NF)

**Definition:** Must be in 2NF and all attributes must depend only on the primary key (no transitive dependencies).

**Action Taken:**
- Removed derived or dependent attributes (e.g., total price or host name in `property`).
- Foreign key relationships represent dependencies (e.g., `property.owner_id` references `user.id`).

## Final Tables:
- `users`, `properties`, `bookings`, `payments`

All tables are now in **3NF**, ensuring minimal redundancy and optimized structure.
