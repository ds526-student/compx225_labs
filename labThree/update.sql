-- which instruments are played by each student
INSERT INTO Plays (student_id, instrument_name) VALUES
-- John Smith plays Piano and Guitar
(1, 'Piano'),
(1, 'Guitar'),
-- Jane Johnson plays Flute
(2, 'Flute'),
-- Michael Brown plays Drums and Piano
(3, 'Drums'),
(3, 'Piano'),
-- Emily Davis plays Cello and Oboe
(4, 'Cello'),
(4, 'Oboe'),
-- David Wilson plays Violin
(5, 'Violin');

-- which instruments are taught by each tutor
INSERT INTO Teach (staff_id, instrument_name) VALUES
-- Alice Taylor teaches Piano and Violin
(101, 'Piano'),
(101, 'Violin'),
-- Bob Anderson teaches Guitar and Drums
(102, 'Guitar'),
(102, 'Drums'),
-- Charlie Thomas teaches Flute and Oboe
(103, 'Flute'),
(103, 'Oboe'),
-- Diana Jackson teaches Cello and Piano
(104, 'Cello'),
(104, 'Piano'),
-- Ethan White teaches Guitar and Flute
(105, 'Guitar'),
(105, 'Flute');