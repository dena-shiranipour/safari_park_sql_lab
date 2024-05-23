DROP TABLE IF EXISTS enclosure;
DROP TABLE IF EXISTS animal;
-- DROP TABLE IF EXISTS staff;

-- DROP TABLE IF EXISTS assignment;
-- does enclosure need to come first?

CREATE TABLE animal (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    type VARCHAR(255),
    age INT,
    enclosure_id INT REFERENCES enclosure(id)
);

CREATE TABLE enclosure (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    capacity INT,
    closed_for_maintenance BOOLEAN
);

INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Lion', 'Large Cat', 2, 1);
INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Crocodile', 'Reptile', 50, 2);
INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Flamingo', 'Bird', 3, 3);
INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Hippo', 'Large Semiaquatic Mammal', 23, 3);
INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Fennec Fox', 'Small Mammal', 1, 1);



