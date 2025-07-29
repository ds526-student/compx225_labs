-- Insert data for Students, Tutors, and Instruments in the Musical Instrument Tuition Database

-- INSERT statements for 5 students, 5 tutors, and 7 instruments
INSERT INTO Student (student_id, first_name, last_name, email) VALUES
(1, 'John', 'Smith', 'john.smith@email.com'),
(2, 'Jane', 'Johnson', 'jane.johnson@email.com'),
(3, 'Michael', 'Brown', 'michael.brown@email.com'),
(4, 'Emily', 'Davis', 'emily.davis@email.com'),
(5, 'David', 'Wilson', 'david.wilson@email.com');

INSERT INTO Tutor (staff_id, tutor_first_name, tutor_last_name) VALUES
(101, 'Alice', 'Taylor'),
(102, 'Bob', 'Anderson'),
(103, 'Charlie', 'Thomas'),
(104, 'Diana', 'Jackson'),
(105, 'Ethan', 'White');

INSERT INTO Instrument (instrument_name, instrument_type) VALUES
('Oboe', 'woodwind'),
('Flute', 'woodwind'),
('Piano', 'percussion'),
('Drums', 'percussion'),
('Guitar', 'strings'),
('Violin', 'strings'),
('Cello', 'strings');