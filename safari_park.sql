DROP TABLE assignment;
DROP TABLE enclosure;
DROP TABLE animal;
DROP TABLE employee;
-- does enclosure need to come first?


CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    employee_number INT
);

CREATE TABLE enclosure (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    capacity INT,
    closed_for_maintenance BOOLEAN
);

CREATE TABLE animal (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    type VARCHAR(255),
    age INT,
    enclosure_id INT REFERENCES enclosure(id)
);


CREATE TABLE assignment (
    id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employee(id),
    enclosure_id INT REFERENCES enclosure(id),
    day VARCHAR(255)
);


INSERT INTO employee (name, employee_number) VALUES ('Mario', 1);
INSERT INTO employee (name, employee_number) VALUES ('Peach', 2);
INSERT INTO employee (name, employee_number) VALUES ('Toad', 3);

INSERT INTO enclosure (name, capacity, closed_for_maintenance) VALUES ('Plain', 400, false);
INSERT INTO enclosure (name, capacity, closed_for_maintenance) VALUES ('River', 70, false);
INSERT INTO enclosure (name, capacity, closed_for_maintenance) VALUES ('Lake', 150, false);
INSERT INTO enclosure (name, capacity, closed_for_maintenance) VALUES ('Lake', 150, false);
INSERT INTO enclosure (name, capacity, closed_for_maintenance) VALUES ('Plain', 400, false);

INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Lion', 'Large Cat', 2, 1);
INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Crocodile', 'Reptile', 50, 2);
INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Flamingo', 'Bird', 3, 3);
INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Hippo', 'Large Semiaquatic Mammal', 23, 3);
INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Fennec Fox', 'Small Mammal', 1, 1);

INSERT INTO assignment (employee_id, enclosure_id) VALUES (1, 2);
INSERT INTO assignment (employee_id, enclosure_id) VALUES (2, 1);
INSERT INTO assignment (employee_id, enclosure_id) VALUES (3, 3);



-- MVP 1:
SELECT animal.name, enclosure.name FROM animal INNER JOIN enclosure ON animal.enclosure_id = enclosure.id;