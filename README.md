# 🏥 Clinic Booking System Database

## 📘 Description

The **Clinic Booking System Database** is a MySQL-based relational database designed to manage:

- Patients
- Doctors
- Appointments
- Medical Records
- Departments

It supports key functionalities such as:

- Storing patient and doctor information
- Scheduling and tracking appointments
- Maintaining medical records with diagnoses and prescriptions
- Managing doctor-department assignments
- Enforcing data integrity with constraints: `PRIMARY KEY`, `FOREIGN KEY`, `UNIQUE`, `NOT NULL`

---

## 🧩 Database Relationships

- **One-to-Many**:  
  - Patients → Appointments  
  - Doctors → Appointments

- **Many-to-Many**:  
  - Doctors ↔ Departments

- **One-to-One**:  
  - Appointments → Medical Records (via unique constraint)

---

## ⚙️ How to Run / Setup the Project

### 🔧 Prerequisites

- MySQL Server (e.g., MySQL Community Server 8.0+)
- MySQL client (Workbench / Command Line / phpMyAdmin)

### 🛠️ Steps to Import the SQL File

1. **Download** the `clinic_booking_system.sql` file from this repository.
2. **Create the target database**:
   ```bash
   mysql -u vudu -p
   CREATE DATABASE clinic_booking_system;
   EXIT;
   ```

3. **Import the SQL**:
   ```bash
   mysql -u vudu -p clinic_booking_system < clinic_booking_system.sql
   ```

4. **Alternatively, use a MySQL client**:

   - **MySQL Workbench**:  
     - `Server > Data Import > Select File > Choose database > Start Import`

   - **phpMyAdmin**:  
     - `Select database > Import tab > Choose .sql file > Click Go`

---

### ✅ Verify Setup

Connect to MySQL and verify:
```bash
mysql -u vudu -p clinic_booking_system
SHOW TABLES;
DESCRIBE Patients;
EXIT;
```

---

### 🔄 Optional

- Populate tables with sample data (not included in this version).
- Use a frontend application or manual SQL queries for interaction/testing.

---

## 🧮 Entity-Relationship Diagram (ERD)

The ERD visualizes entities, attributes, and relationships using Draw.io.

### 📥 View the ERD

- `erd_clinic_booking_system.png` — available in this repo  
- *(Optional)* View or edit on [Draw.io](https://draw.io)  
- *(Optional)* Google Drive backup: `Google Drive Link`

---

### 🛠️ Edit or Recreate the ERD in Draw.io

1. Go to [diagrams.net](https://diagrams.net)
2. Use the **Entity Relationship** shape library
3. Add entities (Patients, Doctors, etc.)
4. Export as PNG or save to cloud

---

## 📂 Repository Contents

| File                          | Description                                                    |
|-------------------------------|----------------------------------------------------------------|
| `clinic_booking_system.sql`   | MySQL script with `CREATE TABLE` statements                    |
| `README.md`                   | This file — project overview & setup guide                     |
| `erd_clinic_booking_system.png`| ERD exported from Draw.io showing database relationships       |

---

> 🎉 You're all set to explore, extend, or integrate the Clinic Booking System Database.