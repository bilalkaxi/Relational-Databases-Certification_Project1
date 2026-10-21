# Celestial Bodies Database

A PostgreSQL relational database project completed as part of the freeCodeCamp Relational Database Certification.

## Overview

The Celestial Bodies Database stores information about celestial objects in the universe, including galaxies, stars, planets, and moons. This project demonstrates relational database design and the use of SQL to organize and manage data.

## Technologies Used

- PostgreSQL
- SQL

## Database Features

- Tables for different celestial bodies.
- Primary keys for unique record identification.
- Foreign keys to establish relationships between tables.
- Data types and constraints to maintain data integrity.
- SQL queries for creating and managing relational data.

## Database Structure

The database includes tables representing celestial entities, such as:

- `galaxy`
- `star`
- `planet`
- `moon`
- `more_info`

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/bilalkaxi/Relational-Databases-Certification_Project1.git
```

### 2. Navigate to the project directory

```bash
cd Relational-Databases-Certification_Project1
```

### 3. Import the database

Make sure PostgreSQL is installed, then run:

```bash
psql -U postgres -d universe -f universe.sql
```

This command imports the SQL file into a database named `universe`. Create the database first if it does not exist.

## Learning Outcomes

- Relational database design
- SQL table creation and modification
- Primary and foreign key implementation
- Database constraints and relationships
- Managing structured data with PostgreSQL

## Certification

Completed as part of the [freeCodeCamp Relational Database Certification](https://www.freecodecamp.org/learn/relational-database/).

## Author

**Bilal Kaxi**

- GitHub: [@bilalkaxi](https://github.com/bilalkaxi)
- Repository: [Relational-Databases-Certification_Project1](https://github.com/bilalkaxi/Relational-Databases-Certification_Project1)
