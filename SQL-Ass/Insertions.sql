INSERT INTO Doctors VALUES
(1, 'Dr. Sharma', 'Cardiology'),
(2, 'Dr. Reddy', 'Orthopedics'),
(3, 'Dr. Khan', 'General');

INSERT INTO Patients VALUES
(101, 'Vignesh', 20, 'Male'),
(102, 'Rahul', 25, 'Male'),
(103, 'Sneha', 22, 'Female'),
(104, 'Arjun', 30, 'Male');

INSERT INTO Appointments VALUES
(1, 101, 1, CURDATE() - INTERVAL 5 DAY),
(2, 102, 1, CURDATE() - INTERVAL 10 DAY),
(3, 103, 2, CURDATE() - INTERVAL 2 DAY),
(4, 101, 3, CURDATE() - INTERVAL 20 DAY),
(5, 104, 1, CURDATE() - INTERVAL 15 DAY);

INSERT INTO Treatments VALUES
(1, 101, 'Fever', 500),
(2, 102, 'Heart Issue', 5000),
(3, 103, 'Fracture', 3000),
(4, 101, 'Cold', 300),
(5, 104, 'Fever', 700);