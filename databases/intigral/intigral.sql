BEGIN TRANSACTION;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id serial,
    userName varchar NOT NULL,
    firstName varchar,
    lastName varchar,
    password varchar,
    CONSTRAINT pk_users_id PRIMARY KEY (id)
    );
    
INSERT INTO users (id, userName, firstName, lastName, password) VALUES (1, 'myUser', 'Me', 'lastNameMe', 'password');

COMMIT TRANSACTION;

SELECT * FROM users;