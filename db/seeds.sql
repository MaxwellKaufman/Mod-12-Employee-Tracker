INSERT INTO department (id, names) 
VALUES 
    (1,"Marketing"),
    (2,"Human Resources"),
    (3,"Finance"),
    (4,"Customer Support"),
    (5,"Research and Development");

INSERT INTO role (id, title, salary, department_id)
VALUES
    (1, "Marketing Manager", 80000, 1),
    (2, "Marketing Specialist", 75000, 1),
    (3, "HR Director", 75000, 2),
    (4, "HR Coordinator", 75000, 2),
    (5, "Finance Manager", 80000, 3),
    (6, "Financial Analyst", 75000, 3),
    (7, "Customer Support Manager", 85000, 4),
    (8, "Customer Support Representative", 80000, 4),
    (9, "Research Director", 80000, 5),
    (10, "Research Assistant", 75000, 5);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES
    (1, "John", "Smith", 1, null),
    (2, "Mark", "Johnson", 2, 1),
    (3, "David", "Brown", 2, 1),
    (4, "Michael", "Clark", 2, 1),
    (5, "William", "Allen", 3, 1),
    (6, "Robert", "Young", 3, 1),
    (7, "James", "Evans", 4, null),
    (8, "Daniel", "Taylor", 5, 7),
    (9, "Emily", "Wilson", 5, 7),
    (10, "Rachel", "Wilson", 5, 7),
    (11, "Brian", "Turner", 5, 7),
    (12, "Anthony", "Scott", 6, null),
    (13, "Christopher", "Parker", 7, 12),
    (14, "Brandon", "Lewis", 7, 12),
    (15, "Kevin", "Clark", 8, null),
    (16, "Jessica", "Taylor", 9, 15),
    (17, "Nicholas", "Walker", 10, 16),
    (18, "Ashley", "Young", 10, 16),
    (19, "Justin", "Hughes", 11, 15),
    (20, "Christopher", "Taylor", 12, 19),
    (21, "Joseph", "Sanders", 12, 19),
    (22, "Gregory", "Olson", 13, null),
    (23, "Hannah", "Parker", 14, 22),
    (24, "Joshua", "Parker", 14, 22),
    (25, "Jessica", "Harris", 15, null),
    (26, "Matthew", "Kim", 16, 25),
    (27, "Sarah", "Lee", 5, 7);
