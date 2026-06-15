# Football Ticket Booking SQL Project

This project contains a SQL setup script for a simple football ticket booking system. It creates a database schema, inserts sample data, and includes practice queries for filtering, joins, null handling, aggregation, and pagination.

## Project Files

- `QUERY.sql` - Main SQL script containing table creation, sample inserts, and queries.

## Database Overview

The database is named `football_ticket_bookings` and includes three core tables:

- `Users` - Stores football fans and ticket managers.
- `Matches` - Stores match fixtures, tournament categories, ticket prices, and match status.
- `Bookings` - Stores ticket bookings linked to users and matches.

## Features Covered

- Primary key constraints
- Unique email constraint
- Foreign key relationships
- Check constraints
- Sample data insertion
- Filtering with `WHERE`
- Case-insensitive search with `ILIKE`
- Handling `NULL` values with `COALESCE`
- Inner joins and left joins
- Subqueries with aggregate functions
- Sorting, `LIMIT`, and `OFFSET`

## How to Run

Use PostgreSQL or a PostgreSQL-compatible SQL environment.

1. Open your SQL client.
2. Run the contents of `QUERY.sql`.
3. Execute the included queries to view results.

Example using `psql`:

```bash
psql -U your_username -f QUERY.sql
```

## Sample Queries Included

The script includes queries to:

- Find available Champions League matches.
- Search users by name.
- Show bookings with missing payment status.
- Display booking details with user and match information.
- List all users, including those without bookings.
- Find bookings above the average ticket cost.
- Retrieve expensive matches using sorting and pagination.

## Notes

The script is written as a learning/practice database assignment. Some SQL clients may require you to connect to the created database manually after running `CREATE DATABASE football_ticket_bookings;`.
