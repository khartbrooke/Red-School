CREATE SCHEMA IF NOT EXISTS red_school;

USE red_school;
SHOW tables;

CREATE TABLE IF NOT EXISTS roles (
    role_id int NOT NULL AUTO_INCREMENT,
    role_name varchar(30) NOT NULL,
    PRIMARY KEY(role_id)
);

DROP TABLE IF EXISTS staff;
CREATE TABLE IF NOT EXISTS staff (
    staff_id int NOT NULL AUTO_INCREMENT,
    fk_role_id int NOT NULL,
    first_name varchar(60) NOT NULL,
    last_name varchar(60) NOT NULL,
    address varchar(60) NOT NULL,
    city varchar(60),
    county varchar(60),
    postcode varchar(60) NOT NULL,
    phone_number varchar(30) NOT NULL,
    email varchar(60) NOT NULL,
    PRIMARY KEY(staff_id),
    FOREIGN KEY(fk_role_id) REFERENCES roles(role_id)
);

SELECT *
FROM roles;

SELECT *
FROM staff;

INSERT INTO `roles` (`role_name`)
VALUES
    ('Head Teacher'),
    ('Deputy Head'),
    ('Teacher'),
    ('Caretaker'),
    ('Receptionist');    

INSERT INTO `staff` (`fk_role_id`, `first_name`,`last_name`,`address`,`city`,`county`,`postcode`,`phone_number`,`email`)
VALUES
  (1, "Nora","Klein","252-2416 Donec Rd.","Turriff","Argyllshire","Y26 8ED","0845 46 40","n.klein4679@redschool.ac.uk"),
  (2, "Declan","Golden","Ap #494-2963 Nibh. Rd.","Walsall","Lancashire","R2A 1FH","055 6762 2909","d.golden1938@redschool.ac.uk"),
  (3, "Acton","Mills","632 Metus Rd.","Tregaron","Cornwall","G86 4CX","076 4282 8713","a.mills@redschool.ac.uk"),
  (3, "Clio","Santana","P.O. Box 833, 2291 Turpis St.","Stoke-on-Trent","West Lothian","JC11 0TA","(01542) 083823","c.santana@redschool.ac.uk"),
  (3, "Steven","Thompson","765-6480 Gravida. Rd.","Morpeth","Ross-shire","PJ8 3NB","0845 46 40","s.thompson@redschool.ac.uk"),
  (3, "Julian","Vinson","1862 Est. Road","Coatbridge","Leicestershire","P6M 6CN","0315 299 2328","j.vinson@redschool.ac.uk"),
  (3, "Jenna","Cameron","Ap #267-6310 Ipsum. St.","Dumbarton","Suffolk","NG5U 8XJ","0845 46 48","j.cameron@redschool.ac.uk"),
  (3, "Macy","Russell","P.O. Box 271, 8686 Tortor. Road","Ayr","Worcestershire","W5 1EK","0872 068 5635","m.russel@redschool.ac.uk"),
  (4, "Dustin","Cunningham","799-6329 Ullamcorper Avenue","Hastings","Cambridgeshire","M5 7ED","055 6162 6154","d.cunningham2049@redschool.ac.uk"),
  (4,"Sarah","Mcmillan","857-1823 Dignissim St.","Forres","Bedfordshire","O31 3UU","0395 011 3896","s.mcmillan@redschool.ac.uk"),
  (5, "Tyler","Bennett","951-2123 In St.","Thurso","Leicestershire","R9 2JX","07862 086253","t.bennett@redschool.ac.uk");   