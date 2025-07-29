-- Musical Instrument Tuition Database

-- create Student table
CREATE TABLE Student (
    student_id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- create Instrument table
CREATE TABLE Instrument (
    instrument_name VARCHAR(50) PRIMARY KEY NOT NULL,
    instrument_type VARCHAR(50) NOT NULL
);

-- create Tutor table
CREATE TABLE Tutor (
    staff_id INT PRIMARY KEY NOT NULL,
    tutor_first_name VARCHAR(50) NOT NULL,
    tutor_last_name VARCHAR(50) NOT NULL
);

-- plays relationship table - many-to-many between Student and Instrument
CREATE TABLE Plays (
    student_id INT,
    instrument_name VARCHAR(50),
    PRIMARY KEY (student_id, instrument_name),
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (instrument_name) REFERENCES Instrument(instrument_name)
);

-- teach relationship table - many-to-many between Tutor and Instrument
CREATE TABLE Teach (
    staff_id INT,
    instrument_name VARCHAR(50),
    PRIMARY KEY (staff_id, instrument_name),
    FOREIGN KEY (staff_id) REFERENCES Tutor(staff_id),
    FOREIGN KEY (instrument_name) REFERENCES Instrument(instrument_name)
);