CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    role VARCHAR(50),
    hire_date DATE,
    department_id INTEGER REFERENCES departments(id)
);
