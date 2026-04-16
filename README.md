# EduSync

# Database Design Documentation

This document explains the database structure of the project and the relationships between entities. The goal is to ensure a normalized, scalable, and efficient database design.

## Types of Relationships

### 1:1 (One-to-One)

A record in Table A is linked to only one record in Table B.

Example:
A user has one profile.

### 1:N (One-to-Many)

A record in Table A can have multiple records in Table B.

Example:
One user can have multiple courses.

### N:N (Many-to-Many)

Records in Table A can relate to multiple records in Table B and vice versa.

Example:
Students can enroll in multiple courses, and courses can have multiple students.

## Project Relationships

## roles->users(only one -> one to many)

One role can be assigned to multiple users, but each user has only one role.

## users->studenst(only one ->only one )

Each user is linked to exactly one student, and each student corresponds to one user.

## students ->classes(only one ->one to many)

one student can be assigned to one classe , but one classe can assigned to multiple students

## students ->enrollments (only many->only one)

One student can have multiple enrollments, but each enrollment belongs to only one student.

## enrollments -> courses (only one -> only many)

Each enrollment is linked to one course, but a course can have many enrollments.
