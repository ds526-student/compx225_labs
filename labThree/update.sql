-- which instruments are played by each student
INSERT INTO Plays (student_id, instrument_name) VALUES
-- John Smith
(1, 'Piano'),
(1, 'Guitar'),
-- Jane Johnson
(2, 'Flute'),
-- Michael Brown
(3, 'Drums'),
(3, 'Piano'),
-- Emily Davis
(4, 'Cello'),
(4, 'Oboe'),
-- David Wilson
(5, 'Violin');

-- which instruments are taught by each tutor
INSERT INTO Teach (staff_id, instrument_name) VALUES
-- Alice Taylor
(101, 'Piano'),
(101, 'Violin'),
-- Bob Anderson
(102, 'Guitar'),
(102, 'Drums'),
-- Charlie Thomas
(103, 'Flute'),
(103, 'Oboe'),
-- Diana Jackson
(104, 'Cello'),
(104, 'Piano'),
-- Ethan White
(105, 'Guitar'),
(105, 'Flute');