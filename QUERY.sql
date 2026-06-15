-- =========================================================================
-- SYSTEM: Football Ticket Booking System Database Setup Template
-- DESCRIPTION: Pseudo-DDL Template for Table Creation & Data Insertion
-- INSTRUCTIONS: Replace 'TYPE' and the constraint placeholders with your own
--               actual data types, relational keys, and check criteria.
-- =========================================================================
create database football_ticket_bookings;
-- DROP TABLES IF THEY ALREADY EXIST TO PREVENT CONFLICTS
DROP TABLE IF EXISTS Bookings;
DROP TABLE IF EXISTS Matches;
DROP TABLE IF EXISTS Users;

-- =========================================================================
-- 1. CREATE USERS TABLE
-- =========================================================================
CREATE TABLE Users (
    user_id int primary key,
    full_name varchar(100) not null,
    email varchar(150) unique not null,
    role varchar(50),
    phone_number varchar(20),
    check(role in('Ticket Manager','Football Fan')));
    -- Write your constraint to make 'user_id' the Primary Key
    -- Write your constraint to ensure 'email' values are never duplicated
    -- Write your check constraint to restrict 'role' to specific allowed strings


-- =========================================================================
-- 2. CREATE MATCHES TABLE
-- =========================================================================
CREATE TABLE Matches (
    match_id int primary key,
    fixture varchar(150) not null,
    tournament_category varchar(150) not null,
    base_ticket_price decimal(10,2) check(base_ticket_price >=0),
    match_status varchar(50) 
  check(match_status in('Available','Selling Fast','Sold Out','Postponed')));
    

-- =========================================================================
-- 3. CREATE BOOKINGS TABLE
-- =========================================================================
CREATE TABLE Bookings (
    booking_id int primary key,
    user_id int references Users(user_id),
    match_id int references Matches(match_id),
    seat_number varchar(20),
    payment_status varchar(50) 
        check (payment_status in ('Pending','Confirmed','Cancelled','Refunded')),
    total_cost decimal(10,2)
          check (total_cost >=0));
  

