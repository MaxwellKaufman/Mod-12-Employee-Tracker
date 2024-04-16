-- Drop the existing database if it exists
DROP DATABASE IF EXISTS regularCompany_db;

-- Create a new database called regularCompany_db
CREATE DATABASE regularCompany_db;

-- Use the regularCompany_db database
USE regularCompany_db;

-- Define the department table
CREATE TABLE department (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for the department
    name VARCHAR(30) UNIQUE -- Name of the department (must be unique)
);

-- Define the role table
CREATE TABLE role (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for the role
    title VARCHAR(30), -- Title of the role
    salary INT, -- Salary for the role
    department_id INT, -- Foreign key referencing the department table
    FOREIGN KEY (department_id)
    REFERENCES department(id)
    ON DELETE SET NULL -- Set department_id to NULL if the referenced department is deleted
);

-- Define the employee table
CREATE TABLE employee (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for the employee
    first_name VARCHAR(30), -- First name of the employee
    last_name VARCHAR(30), -- Last name of the employee
    role_id INT, -- Foreign key referencing the role table
    manager_id INT, -- Foreign key referencing the employee table (manager of the employee)
    FOREIGN KEY (role_id)
    REFERENCES role(id)
    ON DELETE SET NULL, -- Set role_id to NULL if the referenced role is deleted
    FOREIGN KEY (manager_id)
    REFERENCES employee(id)
    ON DELETE SET NULL -- Set manager_id to NULL if the referenced employee is deleted
);
