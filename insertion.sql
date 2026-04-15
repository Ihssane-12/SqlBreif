INSERT INTO roles (label) VALUES
('Admin'),
('Teacher'),
('Student');


INSERT INTO Users (firstName, lasttName, email, passwork, id_role) VALUES
('Ali', 'Benali', 'ali.admin@gmail.com', 'pass123', 1),
('Sara', 'Karimi', 'sara.teacher@gmail.com', 'pass124', 2),
('Youssef', 'Amrani', 'youssef.student@gmail.com', 'pass125', 3),
('Nadia', 'Lahlou', 'nadia.teacher@gmail.com', 'pass126', 2),
('Hamza', 'Rami', 'hamza.student@gmail.com', 'pass127', 3);


INSERT INTO classes (name, class_number) VALUES
('1st Grade', 101),
('2nd Grade', 102),
('3rd Grade', 103);

INSERT INTO students (dateofbirth, student_number, id_classe, id_user) VALUES
('2005-06-15', 1001, 1, 3),
('2006-03-22', 1002, 2, 5);

INSERT INTO courses (title, descriptions, totale_hours, id_prof) VALUES
('Mathematics', 'Basic math course', 120.000, 2),
('Physics', 'Introduction to physics', 100.000, 4),
('Computer Science', 'Programming basics', 150.000, 2);

INSERT INTO enrollments (enrolled_at, status, id_student, id_cour) VALUES
('2024-09-01', 'active', 1, 1),
('2024-09-01', 'active', 1, 3),
('2024-09-02', 'active', 2, 2);