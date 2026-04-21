-- Most Consulted Doctors

SELECT d.name, COUNT(a.appointment_id) AS total_visits
FROM Doctors d
JOIN Appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.name
ORDER BY total_visits DESC;


-- Total Revenue per Month

SELECT MONTH(a.date) AS month,
       SUM(t.cost) AS revenue
FROM Treatments t
JOIN Appointments a ON t.patient_id = a.patient_id
GROUP BY MONTH(a.date)
ORDER BY month;

-- Most common diseases
SELECT diagnosis, COUNT(*) AS cases
FROM Treatments
GROUP BY diagnosis
ORDER BY cases DESC;


-- Patient Visit Freq
SELECT p.name, COUNT(a.appointment_id) AS visit_count
FROM Patients p
JOIN Appointments a ON p.patient_id = a.patient_id
GROUP BY p.name
ORDER BY visit_count DESC;


-- Doctor Performance

SELECT d.name, SUM(t.cost) AS total_revenue
FROM Doctors d
JOIN Appointments a ON d.doctor_id = a.doctor_id
JOIN Treatments t ON a.patient_id = t.patient_id
GROUP BY d.name
ORDER BY total_revenue DESC;