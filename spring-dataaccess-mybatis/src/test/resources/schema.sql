CREATE TABLE user
(
	id INTEGER GENERATED BY DEFAULT AS IDENTITY (START WITH 1, INCREMENT BY 1) NOT NULL,
	username VARCHAR(20) NOT NULL,
	fullName VARCHAR(100) NOT NULL,
	firstName VARCHAR(100) NOT NULL,
	lastName VARCHAR(100) NOT NULL,
	createdBy VARCHAR(100) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE role
(
	id INTEGER GENERATED BY DEFAULT AS IDENTITY (START WITH 1, INCREMENT BY 1) NOT NULL,
	name VARCHAR(20) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE user_role
(
	userId INTEGER NOT NULL,
	roleId INTEGER NOT NULL
);

ALTER TABLE user_role ADD CONSTRAINT fk_user_role_role FOREIGN KEY (roleId) REFERENCES role (id);

ALTER TABLE user_role ADD CONSTRAINT fk_user_role_user FOREIGN KEY (userId) REFERENCES user (id);