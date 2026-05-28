CREATE TABLE time_logs (
    id SERIAL PRIMARY KEY,
    employee_id INTEGER REFERENCES employees(id),
    task_id INTEGER REFERENCES tasks(id),
    hours NUMERIC(5,2) NOT NULL,
    log_date DATE DEFAULT CURRENT_DATE,
    notes TEXT
);
