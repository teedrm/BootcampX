CREATE TABLE cohorts (
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR (500) NOT NULL,
    start_date DATE,
    end_date DATE
);

CREATE TABLE students (
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR (500),
    email VARCHAR (200),
    phone VARCHAR (15),
    github VARCHAR(500),
    start_date DATE,
    end_date DATE,
    cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
);

-- ON DELETE CASE = used to auto remove the matching records from child table when delete the rows from parent
