# SQL Hospital Analytics Assignment

This project creates a small hospital database, inserts sample records, and runs analysis queries for reporting.

## Quick Start (Simple)

1. Open your MySQL client (MySQL Workbench, CLI, etc.).
2. Run `Creations.sql` to create the database and tables.
3. Run `Insertions.sql` to populate sample data.
4. Run `Queries.sql` to view analytics results.

Execution order is important:

`Creations.sql -> Insertions.sql -> Queries.sql`

---

## Project Structure

- `Creations.sql`: Database and table creation scripts.
- `Insertions.sql`: Sample data insertion scripts.
- `Queries.sql`: Analytical SQL queries for insights.

---

## Detailed Explanation

## 1) Database Setup (`Creations.sql`)

### Database
- Creates database: `hospital_db`
- Selects it with `USE hospital_db`

### Tables

1. `Patients`
- `patient_id` (Primary Key)
- `name`
- `age`
- `gender`

2. `Doctors`
- `doctor_id` (Primary Key)
- `name`
- `specialization`

3. `Appointments`
- `appointment_id` (Primary Key)
- `patient_id` (Foreign Key -> `Patients.patient_id`)
- `doctor_id` (Foreign Key -> `Doctors.doctor_id`)
- `date`

4. `Treatments`
- `treatment_id` (Primary Key)
- `patient_id` (Foreign Key -> `Patients.patient_id`)
- `diagnosis`
- `cost`

This design models patient records, doctor profiles, visit history, and treatment costs.

---

## 2) Sample Data (`Insertions.sql`)

### Seeded entities
- 3 doctors with different specializations
- 4 patients
- 5 appointments (using `CURDATE() - INTERVAL ... DAY` for recent historical dates)
- 5 treatment records with diagnoses and costs

### Notes
- The inserted values are designed to support aggregation and ranking queries.
- One patient can have multiple appointments and multiple treatments.

---

## 3) Analytics Queries (`Queries.sql`)

### Query 1: Most Consulted Doctors
Counts how many appointments each doctor handled.
- Output columns: doctor name, total visits
- Sorted descending by visits

### Query 2: Total Revenue per Month
Calculates monthly revenue by joining treatments with appointments (through patient IDs).
- Output columns: month number, total revenue
- Sorted by month

### Query 3: Most Common Diseases
Counts occurrences of each diagnosis in treatments.
- Output columns: diagnosis, cases
- Sorted descending by cases

### Query 4: Patient Visit Frequency
Counts appointments per patient.
- Output columns: patient name, visit count
- Sorted descending by frequency

### Query 5: Doctor Performance
Computes revenue associated with each doctor via appointment-patient-treatment joins.
- Output columns: doctor name, total revenue
- Sorted descending by revenue

---

## Important Query Interpretation

Because `Treatments` is linked by `patient_id` (not by `appointment_id` or treatment date), revenue-based joins in Query 2 and Query 5 may count all treatments of a patient across that patient's appointments. This is acceptable for basic assignment analytics, but in real systems you usually connect treatments directly to appointments to avoid overcounting.

---

## Requirements

- MySQL 8.x recommended
- Any SQL client that supports MySQL syntax (`CURDATE()`, `INTERVAL`, `MONTH()`)

---

## Suggested Improvements

- Add `AUTO_INCREMENT` to primary keys for easier inserts.
- Add `NOT NULL` constraints where applicable.
- Link `Treatments` to `Appointments` using `appointment_id` for more accurate revenue attribution.
- Add indexes on foreign keys (`patient_id`, `doctor_id`) for better performance.
- Include a cleanup script (`DROP DATABASE IF EXISTS hospital_db;`) for repeatable testing.

---

## Author

Prepared as a SQL assignment project for hospital data analysis.
