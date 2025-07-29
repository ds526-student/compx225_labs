CREATE TABLE IF NOT EXISTS ZooKeepers (
    keeper_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100)
);

INSERT INTO ZooKeepers (keeper_id, first_name, last_name, email) VALUES
(1, 'John', 'Doe', 'john.doe@example.com'),
(2, 'Jane', 'Smith', 'jane.smith@example.com'),
(3, 'Emily', 'Johnson', 'emily.johnson@example.com'),
(4, 'Michael', 'Brown', 'michael.brown@example.com'),
(5, 'Sarah', 'Davis', 'sarah.davis@example.com'),
(6, 'David', 'Wilson', 'david.wilson@example.com'),
(7, 'Laura', 'Garcia', 'laura.garcia@example.com'),
(8, 'James', 'Martinez', 'james.martinez@example.com');

CREATE TABLE IF NOT EXISTS Speciality (
    keeper_id INT,
    animal_name VARCHAR(100),
    PRIMARY KEY (keeper_id, animal_name),
    FOREIGN KEY (keeper_id) REFERENCES ZooKeepers(keeper_id) ON DELETE CASCADE,
    FOREIGN KEY (animal_name) REFERENCES Animals(animal_name) ON DELETE CASCADE
);

INSERT INTO Speciality (keeper_id, animal_name) VALUES
-- john specialises in lions
(1, 'Lion'),
-- jane specialises in crocodiles
(2, 'Crocodile'),
-- emily specialises in elephants and rhinoceros
(3, 'Elephant'),
(3, 'Rhinoceros'),
-- michael specialises in giraffes
(4, 'Giraffe'),
-- sarah specialises in zebras and red pandas
(5, 'Zebra'),
(5, 'Red Panda'),
-- david specialises in pythons
(6, 'Python'),
-- Laura specialises in kangaroos
(7, 'Kangaroo'),
-- james specialises in penguins
(8, 'Penguin');

CREATE TABLE IF NOT EXISTS available_shifts (
    shift_id INT PRIMARY KEY,
    shift_day CHAR(10) NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL
);

INSERT INTO available_shifts (shift_id, shift_day, start_time, end_time) VALUES
(101, 'Monday', '08:00:00', '16:00:00'),
(102, 'Tuesday', '08:00:00', '16:00:00'),
(103, 'Wednesday', '08:00:00', '16:00:00'),
(104, 'Thursday', '08:00:00', '16:00:00'),
(105, 'Friday', '08:00:00', '16:00:00'),
(106, 'Saturday', '09:00:00', '17:00:00'),
(107, 'Sunday', '09:00:00', '17:00:00');

CREATE TABLE IF NOT EXISTS shifts (
    keeper_id INT,
    shift_id INT,
    PRIMARY KEY (keeper_id, shift_id),
    FOREIGN KEY (keeper_id) REFERENCES ZooKeepers(keeper_id) ON DELETE CASCADE,
    FOREIGN KEY (shift_id) REFERENCES available_shifts(shift_id) ON DELETE CASCADE
);

INSERT INTO shifts (keeper_id, shift_id) VALUES
-- john works on Monday and Tuesday
(1, 101),
(1, 102),
-- jane works on Wednesday and Thursday
(2, 103),
(2, 104),
-- emily works on Friday and Saturday
(3, 105),
(3, 106),
-- michael works on Sunday
(4, 107),
-- sarah works on Monday and Tuesday
(5, 101),
(5, 102),
-- david works on Wednesday and Thursday
(6, 103),
(6, 104),
-- laura works on Friday and Saturday
(7, 105),
(7, 106),
-- james works on Sunday
(8, 107);