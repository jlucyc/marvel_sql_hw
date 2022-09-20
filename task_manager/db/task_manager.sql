DROP TABLE IF EXISTS tasks;
CREATE TABLE tasks(
    id SERIAL PRIMARY KEY,
    description VARCHAR(255),
    assignee VARCHAR(255),
    duration INT,
    completed BOOLEAN DEFAULT FALSE
);

INSERT INTO tasks (description, assignee, duration) VALUES ('Walk dog', 'Jack Jarvis', 60); 
INSERT INTO tasks (description, assignee, duration) VALUES ('Feed cat', 'Victor McDade', 5);



