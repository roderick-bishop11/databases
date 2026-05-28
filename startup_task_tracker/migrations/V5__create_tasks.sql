CREATE TABLE tasks (
    id SERIAL PRIMARY KEY,
    project_id INTEGER REFERENCES projects(id),
    title VARCHAR(200) NOT NULL,
    description TEXT,
    priority VARCHAR(10) CHECK (priority IN ('low', 'medium', 'high')),
    due_date DATE,
    status VARCHAR(20) CHECK (status IN ('todo', 'in_progress', 'done'))
);

TODO: reference employee for assignedTo
