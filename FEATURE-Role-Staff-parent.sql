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
  
DROP TABLE IF EXISTS `myTable`;

CREATE TABLE `myTable` (
  `parent_ID` mediumint(8) unsigned NOT NULL auto_increment,
  `first_name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `address_line1` varchar(255) NOT NULL,
  `address_line2` varchar(255) NOT NULL,
  `town` varchar(255),
  `county` varchar(50) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `contact_number` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`parent_ID`)
) AUTO_INCREMENT=1;

INSERT INTO `myTable` (`parent_ID`,`first_name`,`surname`,`address_line1`,`address_line2`,`town`,`county`,`postcode`,`contact_number`,`email`)
VALUES
  (1,"Naomi","Fuentes","183-3382 Elementum Rd.","597-5028 Diam Road","Penicuik","Essex","M8 8WB","0800 343876","arcu.vestibulum.ante@hotmail.couk"),
  (2,"Dorothy","Matthews","Ap #500-5650 Fringilla St.","Ap #485-5148 Dis Rd.","Chepstow","Yorkshire","M3K 4OJ","0500 935568","pellentesque.ut@hotmail.edu"),
  (3,"Amy","Ingram","8063 Proin Rd.","Ap #465-5850 Non St.","Hunstanton","Cheshire","CF47 6UN","(028) 3765 7856","lorem@google.couk"),
  (4,"Teagan","Sykes","7078 Arcu Avenue","241-1631 Mi Rd.","Wellingborough","Argyllshire","J21 8IP","(0115) 834 2177","id.erat@aol.net"),
  (5,"Kevyn","Davenport","Ap #732-2444 Dui. St.","Ap #529-6514 Orci Rd.","Kington","Essex","S2 2LF","07618 751712","donec.nibh@aol.couk"),
  (6,"Preston","Mccarthy","975-8471 In Street","478-8912 Elit, St.","Carmarthen","Northumberland","CT4B 5CG","(0121) 946 2742","nec.urna@protonmail.net"),
  (7,"Lacota","Welch","P.O. Box 985, 4151 Blandit Rd.","6469 Erat Avenue","Torquay","Fife","ON7W 3XW","(0161) 419 2617","egestas.nunc@outlook.edu"),
  (8,"Phelan","Rutledge","Ap #400-7328 Amet St.","5003 Interdum Av.","Buckley","Warwickshire","V7A 6QM","(01317) 617869","iaculis.lacus@hotmail.net"),
  (9,"Lucius","Alston","Ap #431-8004 Urna Avenue","9171 Condimentum Rd.","Lanark","Northumberland","UT2U 5HX","07216 134625","lobortis.ultrices@icloud.net"),
  (10,"Keiko","Terry","Ap #916-6739 Non, Ave","971-8000 Libero. Rd.","Carlisle","Warwickshire","UE9 2RE","(0101) 618 5826","ipsum.leo@outlook.org");
INSERT INTO `myTable` (`parent_ID`,`first_name`,`surname`,`address_line1`,`address_line2`,`town`,`county`,`postcode`,`contact_number`,`email`)
VALUES
  (11,"Ciara","Franks","Ap #600-3275 Donec Avenue","7421 Nulla St.","Inverurie","Inverness-shire","LI8P 5LZ","(015638) 58622","laoreet.ipsum@icloud.couk"),
  (12,"Farrah","Mcfarland","942-6486 Nulla. Ave","Ap #159-3729 Augue Rd.","Canterbury","Lancashire","FZ73 1FX","0819 543 0226","quam@hotmail.couk"),
  (13,"Leroy","Rivers","Ap #627-8752 Molestie St.","Ap #525-1320 Ante Rd.","Llangollen","Buckinghamshire","OO4 2HG","0800 669642","elit.a@google.org"),
  (14,"Guinevere","Mack","1095 Adipiscing Ave","P.O. Box 849, 3881 Ornare. St.","Tiverton","Kent","GS64 5DO","0800 1111","a.feugiat@yahoo.ca"),
  (15,"Kelsey","Pearson","Ap #297-4848 Vivamus Av.","228-9847 Habitant Ave","Nuneaton","Perthshire","E76 5CS","055 1481 9065","dui@yahoo.couk"),
  (16,"Justina","Downs","606-5356 Vitae, Street","Ap #533-1780 Sapien, Av.","Llangefni","Gloucestershire","J33 0JH","(0111) 412 0642","nunc.mauris@yahoo.org"),
  (17,"Rogan","Lowe","Ap #681-8051 Urna Rd.","Ap #920-2215 Nullam Road","Macclesfield","Cardiganshire","X83 7EV","(01168) 46148","suspendisse.tristique@google.couk"),
  (18,"Aidan","Becker","Ap #390-2995 Turpis St.","3973 Velit. Road","Truro","West Lothian","ET3Y 9CX","070 7713 0432","ultrices.sit@icloud.com"),
  (19,"Madonna","Ayers","109-7333 Vulputate Road","Ap #772-8379 Nullam Avenue","Kettering","Westmorland","Y9V 5WR","076 4483 3173","tincidunt@aol.com"),
  (20,"Maite","Chen","Ap #964-1106 Faucibus Rd.","9446 Mi Avenue","Huntingdon","Sussex","N45 8ME","07624 713396","tincidunt.congue@outlook.org");  