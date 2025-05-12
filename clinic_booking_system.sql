-- Clinic Booking System Database --
-- Creating tables for a clinic booking system to manage patients, doctors, appointments, and medical records--
USE clinic_booking_system;

CREATE TABLE Patients (
patient_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
date_of_birth DATE NOT NULL,
gender ENUM('M', 'F', 'Other') NOT NULL,
phone VARCHAR(15) NOT NULL,
email VARCHAR(100) UNIQUE,
address VARCHAR(255) NOT NULL
);

CREATE TABLE Doctors (
doctor_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
specialty VARCHAR(100) NOT NULL,
phone VARCHAR(15) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Appointments (
appointment_id INT PRIMARY KEY AUTO_INCREMENT,
patient_id INT NOT NULL,
doctor_id INT NOT NULL,
appointment_date DATETIME NOT NULL,
status ENUM('Scheduled', 'Completed', 'Cancelled') DEFAULT 'Scheduled',
reason VARCHAR(255),
FOREIGN KEY (patient_id) REFERENCES Patients(patient_id) ON DELETE CASCADE,
FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id) ON DELETE CASCADE,
UNIQUE (doctor_id, appointment_date)
);

CREATE TABLE MedicalRecords (
record_id INT PRIMARY KEY AUTO_INCREMENT,
patient_id INT NOT NULL,
doctor_id INT NOT NULL,
appointment_id INT NOT NULL,
diagnosis TEXT NOT NULL,
prescription TEXT,
record_date DATE NOT NULL,
FOREIGN KEY (patient_id) REFERENCES Patients(patient_id) ON DELETE CASCADE,
FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id) ON DELETE CASCADE,
FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id) ON DELETE CASCADE
);

CREATE TABLE Departments (
department_id INT PRIMARY KEY AUTO_INCREMENT,
department_name VARCHAR(100) NOT NULL UNIQUE,
location VARCHAR(255) NOT NULL
);

CREATE TABLE DoctorDepartments (
doctor_id INT NOT NULL,
department_id INT NOT NULL,
PRIMARY KEY (doctor_id, department_id),
FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id) ON DELETE CASCADE,
FOREIGN KEY (department_id) REFERENCES Departments(department_id) ON DELETE CASCADE
);
