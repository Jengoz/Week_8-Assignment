Clinic Booking System Database
Description
The Clinic Booking System Database is a MySQL-based relational database designed to manage patients, doctors, appointments, medical records, and departments within a clinic. It supports key functionalities such as:

Storing patient and doctor information
Scheduling and tracking appointments
Maintaining medical records with diagnoses and prescriptions
Managing doctor-department assignments
Enforcing data integrity with constraints (Primary Keys, Foreign Keys, UNIQUE, NOT NULL)

The database includes tables with appropriate relationships:

One-to-Many: Patients to Appointments, Doctors to Appointments
Many-to-Many: Doctors to Departments
One-to-One: Appointments to Medical Records (via unique constraints)

How to Run/Setup the Project

Prerequisites:

MySQL Server installed (e.g., MySQL Community Server 8.0 or later)
MySQL client (e.g., MySQL Workbench, command-line tool, or phpMyAdmin)


Steps to Import the SQL File:

Download the clinic_booking_system.sql file from the repository.
Create the target database in MySQL:mysql -u vudu -p
CREATE DATABASE clinic_booking_system;
EXIT;


Import the SQL file using the command line:mysql -u vudu -p clinic_booking_system < clinic_booking_system.sql

Enter your MySQL password for the vudu user when prompted.
Alternatively, use a MySQL client:
MySQL Workbench:
Go to Server > Data Import > Select the .sql file > Choose the clinic_booking_system database > Follow prompts.
Or use the Query Editor: File > Open SQL Script > Execute in the clinic_booking_system database.


phpMyAdmin:
Select the clinic_booking_system database > Go to Import > Choose the .sql file > Click Go.






Verify Setup:

Connect to the database:mysql -u vudu -p clinic_booking_system
SHOW TABLES;


You should see the tables: Patients, Doctors, Appointments, MedicalRecords, Departments, DoctorDepartments.
Check table structures:DESCRIBE Patients;


Exit MySQL:EXIT;




Optional:

Populate the tables with sample data for testing (not provided in the .sql file).
Use a frontend application or MySQL queries to interact with the database.



Entity-Relationship Diagram (ERD)
The ERD for the Clinic Booking System Database was created using Draw.io (diagrams.net) and visualizes the database structure, including entities, attributes, and relationships.

View the ERD:
Download the exported diagram: erd_clinic_booking_system.png (available in the repository).
View or edit the ERD online: Draw.io ERD.
Download the Draw.io file from Google Drive: Google Drive Link.



To create or edit the ERD in Draw.io:

Go to diagrams.net.
Open the Draw.io file from Google Drive or use the Entity Relationship shape library to recreate it.
Add entities (Patients, Doctors, etc.) and connect them with relationships as described in the project documentation.
Export as PNG (erd_clinic_booking_system.png) or save to your cloud storage.


Repository Contents

clinic_booking_system.sql: The MySQL script containing CREATE TABLE statements for the database.
README.md: This file, providing project details and setup instructions.
erd_clinic_booking_system.png: Pictorial ERD exported from Draw.io.

