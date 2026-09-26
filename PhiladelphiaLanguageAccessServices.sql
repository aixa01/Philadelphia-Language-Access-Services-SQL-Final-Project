--      NAME:           Aixa Roblero
--      Assignment:     Collaborative Group Final Project Spring 2026 
--      Project Name:   Philadelphia Language Access Services
--      Date:           April 24, 2026
--      Semester:       Spring 2026
--      Professor:      Craig Nelson


--  CREATE THE DATABASE FOR PhiladelphiaLanguageAccessServices
DROP DATABASE IF EXISTS PhiladelphiaLanguageAccessServices;
CREATE DATABASE PhiladelphiaLanguageAccessServices;
USE PhiladelphiaLanguageAccessServices;


--  CREATE TABLES For The Database 
CREATE TABLE languages (
    language_id     SMALLINT PRIMARY KEY,
    language_name   VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE translationService (
    service_id      INT AUTO_INCREMENT PRIMARY KEY,
    service_type    VARCHAR(30) NOT NULL
);

CREATE TABLE department (
    department_id   CHAR(3) PRIMARY KEY,
    department_name VARCHAR(150) NOT NULL UNIQUE
);

CREATE TABLE languageService (
    language_id     SMALLINT,
    service_id      INT,
    department_id   CHAR(3),
    PRIMARY KEY (language_id, service_id, department_id),
    FOREIGN KEY (language_id) REFERENCES languages(language_id),
    FOREIGN KEY (service_id) REFERENCES translationService(service_id),
    FOREIGN KEY (department_id) REFERENCES department(department_id)
);


--  INSERT INTO languages TABLE
--  Sample Data For Language Table
--  All Languages Listed By Alphabetical Order
INSERT INTO languages (language_id, language_name)
VALUES (0000, 'Arabic');

INSERT INTO languages (language_id, language_name)
VALUES (0001, 'Armenian');

INSERT INTO languages (language_id, language_name)
VALUES (0002, 'Albanian');

INSERT INTO languages (language_id, language_name)
VALUES (0003, 'Bangla');

INSERT INTO languages (language_id, language_name)
VALUES (0004, 'Burmese');

INSERT INTO languages (language_id, language_name)
VALUES (0005, 'Chinese Mandarin');

INSERT INTO languages (language_id, language_name)
VALUES (0006, 'Chinese Cantonese');

INSERT INTO languages (language_id, language_name)
VALUES (0007, 'Dari');

INSERT INTO languages (language_id, language_name)
VALUES (0008, 'Dutch');

INSERT INTO languages (language_id, language_name)
VALUES (0009, 'French');

INSERT INTO languages (language_id, language_name)
VALUES (0010, 'Georgian');

INSERT INTO languages (language_id, language_name)
VALUES (0011, 'German');

INSERT INTO languages (language_id, language_name)
VALUES (0012, 'Greek');

INSERT INTO languages (language_id, language_name)
VALUES (0013, 'Haitian Creole');

INSERT INTO languages (language_id, language_name)
VALUES (0014, 'Hindi');

INSERT INTO languages (language_id, language_name)
VALUES (0015, 'Indonesian');

INSERT INTO languages (language_id, language_name)
VALUES (0016, 'Japanese');

INSERT INTO languages (language_id, language_name)
VALUES (0017, 'Javanese');

INSERT INTO languages (language_id, language_name)
VALUES (0018, 'Korean');

INSERT INTO languages (language_id, language_name)
VALUES (0019, 'Khmer');

INSERT INTO languages (language_id, language_name)
VALUES (0020, 'Ki''che''');

INSERT INTO languages (language_id, language_name)
VALUES (0021, 'Lao');

INSERT INTO languages (language_id, language_name)
VALUES (0022, 'Lithuanian');

INSERT INTO languages (language_id, language_name)
VALUES (0023, 'Mayan');

INSERT INTO languages (language_id, language_name)
VALUES (0024, 'Nepali');

INSERT INTO languages (language_id, language_name)
VALUES (0025, 'Oromo');

INSERT INTO languages (language_id, language_name)
VALUES (0026, 'Pashto');

INSERT INTO languages (language_id, language_name)
VALUES (0027, 'Portuguese');

INSERT INTO languages (language_id, language_name)
VALUES (0028, 'Quechuan');

INSERT INTO languages (language_id, language_name)
VALUES (0029, 'Russian');

INSERT INTO languages (language_id, language_name)
VALUES (0030, 'Spanish');

INSERT INTO languages (language_id, language_name)
VALUES (0031, 'Swahili');

INSERT INTO languages (language_id, language_name)
VALUES (0032, 'Tagalog');

INSERT INTO languages (language_id, language_name)
VALUES (0033, 'Turkish');

INSERT INTO languages (language_id, language_name)
VALUES (0034, 'Urdu');

INSERT INTO languages (language_id, language_name)
VALUES (0035, 'Uzbek');

INSERT INTO languages (language_id, language_name)
VALUES (0036, 'Vietnamese');

INSERT INTO languages (language_id, language_name)
VALUES (0037, 'Yoruba');

INSERT INTO languages (language_id, language_name)
VALUES (0038, 'Zulu');


--  INSERT INTO For translationServices TABLE
--  Sample Data For Translation Services
--  Displays Available Translation Services
INSERT INTO translationService (service_type)
VALUES ('Telephonic Consecutive'),
       ('Video Consecutive'),
       ('Document Translation'),
       ('Onsite Consecutive');


--  INSERT INTO For department TABLE
--  Sample Data For Department
--  The Following Are Departments That May Request Translation Services
--  For Multiple Philadelphia City Departments In Alphabetical Order
INSERT INTO department (department_id, department_name)
VALUES ('000', 'Ambulatory Health Services');

INSERT INTO department (department_id, department_name)
VALUES ('001', 'Department of Labor');

INSERT INTO department (department_id, department_name)
VALUES ('002', 'Department of Public Health');

INSERT INTO department (department_id, department_name)
VALUES ('003', 'City Council');

INSERT INTO department (department_id, department_name)
VALUES ('004', 'Department of Behavioral Health and Intellectual Disabilities');

INSERT INTO department (department_id, department_name)
VALUES ('005', 'Department of Public Health Services');

INSERT INTO department (department_id, department_name)
VALUES ('006', 'DHS - Child Welfare Operations');

INSERT INTO department (department_id, department_name)
VALUES ('007', "Mayor's Office");

INSERT INTO department (department_id, department_name)
VALUES ('008', 'Health and Human Services');

INSERT INTO department (department_id, department_name)
VALUES ('009', 'Office of Domestic Violence Services');

INSERT INTO department (department_id, department_name)
VALUES ('010', 'Office of Arts, Culture, and the Creative Economy');

INSERT INTO department (department_id, department_name)
VALUES ('011', 'Office of Criminal Justice');

INSERT INTO department (department_id, department_name)
VALUES ('012', 'Office of Human Resources');

INSERT INTO department (department_id, department_name)
VALUES ('013', 'Office of Immigrant Affairs');

INSERT INTO department (department_id, department_name)
VALUES ('014', 'Office of Transportation and Infrastructure and Sustainability');

INSERT INTO department (department_id, department_name)
VALUES ('015', 'Office of Violence Prevention');

INSERT INTO department (department_id, department_name)
VALUES ('016', 'Opioid Response Unit');

INSERT INTO department (department_id, department_name)
VALUES ('017', 'Philly 311');

INSERT INTO department (department_id, department_name)
VALUES ('018', 'Philadelphia Police Department');

INSERT INTO department (department_id, department_name)
VALUES ('019', 'Philadelphia Water Department');

INSERT INTO department (department_id, department_name)
VALUES ('020', 'Police Advisory Commission');

INSERT INTO department (department_id, department_name)
VALUES ('021', 'Radio/ Communications (911)');

INSERT INTO department (department_id, department_name)
VALUES ('022', 'Revenue');


--  INSERT INTO Sample Data Into Database
INSERT INTO languageService (language_id, service_id, department_id)
VALUES 
    (0000, 1, '012'),   -- Query 1
    (0030, 1, '017'),   -- Query 2
    (0009, 2, '008'),   -- Query 3
    (0029, 3, '011'),   -- Query 4
    (0036, 1, '022'),   -- Query 5
    (0035, 2, '004'),   -- Query 6
    (0032, 1, '010'),   -- Query 7
    (0019, 1, '016'),   -- Query 8
    (0001, 4, '012'),   -- Query 9
    (0016, 2, '007'),   -- Query 10
    (0012, 3, '020'),   -- Query 11
    (0005, 2, '013'),   -- Query 12
    (0031, 1, '000'),   -- Query 13
    (0008, 4, '003'),   -- Query 14
    (0028, 3, '015'),   -- Query 15
    (0038, 3, '006'),   -- Query 16
    (0006, 4, '007'),   -- Query 17
    (0030, 2, '013'),   -- Query 18
    (0036, 4, '001'),   -- Query 19
    (0002, 1, '014');   -- Query 20
    --  There Are 20 Queries Listed
    --  However, There Will Only Be 19 Queries Listed In The Terminal Due To The DELETE Function
    --  The DELETE Function Will Delete Language 0038 Zulu


--  CREATE the VIEW
CREATE VIEW languageAccessView AS
SELECT 
    l.language_id,
    l.language_name,
    ts.service_id,
    ts.service_type,
    d.department_id,
    d.department_name
FROM languageService ls
JOIN languages l ON ls.language_id = l.language_id
JOIN translationService ts ON ls.service_id = ts.service_id
JOIN department d ON ls.department_id = d.department_id;

SELECT * FROM languageAccessView;

--  UNION Query
SELECT language_name AS name FROM languages
UNION
SELECT department_name FROM department;


--  INTERSECTION Query
--  Display All Languages That Are In Use
SELECT DISTINCT l.language_id
FROM languages l
INNER JOIN languageService ls ON l.language_id = ls.language_id;


--  DIFFERENCE Query 1
--  Display Languages That Have No Service Requests
SELECT language_id FROM languages
WHERE language_id NOT IN (SELECT language_id FROM languageService);

--  DIFFERENCE Query 2
--  Display All Services With No Language Requests
SELECT service_id FROM translationService
WHERE service_id NOT IN (SELECT service_id FROM languageService);


--  JOIN Query
SELECT l.language_name, ts.service_type, d.department_name
FROM languageService ls
JOIN languages l ON ls.language_id = l.language_id
JOIN translationService ts ON ls.service_id = ts.service_id
JOIN department d ON ls.department_id = d.department_id;


--  ALTER Query 1
--  Add A Column
ALTER TABLE languages ADD COLUMN language_region VARCHAR(50);

--  ALTER Query 2
--  Modify Column Size
ALTER TABLE department MODIFY department_name VARCHAR(200);


--  UPDATE Query 1
--  Update language_region for Arabic (New Column Via ALTER TABLE)
UPDATE languages SET language_region = 'Middle East' WHERE language_id = 0000;

--  UPDATE Query 2
--  Update language_name for Khmer
UPDATE languages SET language_name = 'Khmer (Cambodian)' WHERE language_id = 0019;


--  DELETE Query 1
--  Delete 0038 (Zulu) From Junction Table
DELETE FROM languageService WHERE language_id = 0038;

--  DELETE Query 2
--  Delete 0038 (Zulu) From Entity Table
DELETE FROM languages WHERE language_id = 0038;


--  AGGREGATE Query 1
--  Count How Many Services Requests For Each Language
SELECT language_id, COUNT(*) AS total_requests
FROM languageService
GROUP BY language_id;

--  AGGREGATE Query 2
--  Count How Many Languages Each Department Requested
SELECT department_id, COUNT(*) AS languages_requested
FROM languageService
GROUP BY department_id;

--  SELECT Query With HAVING CLAUSE 1
--  Languages Requested More Than Once
SELECT language_id, COUNT(*) AS total
FROM languageService
GROUP BY language_id
HAVING COUNT(*) > 1;

--  SELECT Query With HAVING CLAUSE 2
--  Departments That Requested More Than 1 Language
SELECT department_id, COUNT(*) AS total
FROM languageService
GROUP BY department_id
HAVING COUNT(*) > 1;


--  SELECT Query With HAVING CLAUSE 1
--  SELECT Query With GROUP BY CLAUSE 1
--  Service Types Used More Than Once Grouped By Service
SELECT service_id, COUNT(*) AS usage_count
FROM languageService
GROUP BY service_id
HAVING COUNT(*) > 1;

--  SELECT Query With HAVING CLAUSE 2
--  SELECT Query With GROUP BY CLAUSE 2
--  Departments With Exactly 1 Request
SELECT department_id, COUNT(*) AS total
FROM languageService
GROUP BY department_id
HAVING COUNT(*) = 1;


--  SELECT Query with ORDER BY CLAUSE 1
SELECT * FROM languages ORDER BY language_name ASC;

--  SELECT Query with ORDER BY CLAUSE 2
SELECT * FROM department ORDER BY department_name DESC;


--  CREATE VIEW And Execute View Queries 1 And 2
CREATE VIEW departmentServiceView AS
SELECT d.department_name, ts.service_type, COUNT(*) AS request_count
FROM languageService ls
JOIN department d ON ls.department_id = d.department_id
JOIN translationService ts ON ls.service_id = ts.service_id
GROUP BY d.department_name, ts.service_type;

SELECT * FROM departmentServiceView;


--  CREATE TWO USERS
--  Show User Privileges Before Granting
CREATE USER 'analyst'@'localhost' IDENTIFIED BY 'password123';
CREATE USER 'reviewer'@'localhost' IDENTIFIED BY 'password456';

--  Grant Privileges To Both User
GRANT SELECT ON PhiladelphiaLanguageAccessServices.languages 
    TO 'analyst'@'localhost';
GRANT SELECT ON PhiladelphiaLanguageAccessServices.languages 
    TO 'reviewer'@'localhost';

--  Show Privileges Once Granted
SHOW GRANTS FOR 'analyst'@'localhost';
SHOW GRANTS FOR 'reviewer'@'localhost';

--  REVOKE Privileges From both Users
REVOKE SELECT ON PhiladelphiaLanguageAccessServices.languages 
    FROM 'analyst'@'localhost';
REVOKE SELECT ON PhiladelphiaLanguageAccessServices.languages 
    FROM 'reviewer'@'localhost';

--  Show Privileges ONCE Revoked
SHOW GRANTS FOR 'analyst'@'localhost';
SHOW GRANTS FOR 'reviewer'@'localhost';

--  SELECT * FROM To View Tables
SELECT LPAD(language_id, 4, '0') AS language_id, language_name
FROM languages
ORDER BY language_id;

SELECT * FROM translationService;
SELECT * FROM languageService;
SELECT * FROM department;
SELECT * FROM languageAccessView;
SELECT * FROM departmentServiceView;




--  EXTRA CREDIT QUERIES
--  THE FOLLOWING ARE EXTRA CREDIT QUERIES
CREATE TABLE languagesBackup (
    backup_id       INT AUTO_INCREMENT PRIMARY KEY,
    language_id     SMALLINT,
    language_name   VARCHAR(30),
    language_region VARCHAR(50),
    action_type     VARCHAR(10),
    backup_time     DATETIME
);


--  CREATE The IN and OUT Parameter
--  Write Stored Procedure
DELIMITER //
CREATE PROCEDURE getLanguageInfo(
    IN p_language_id SMALLINT,
    OUT p_language_name VARCHAR(30)
)
BEGIN
    DESCRIBE languages;
    SELECT * FROM languages;
    SELECT language_name INTO p_language_name
    FROM languages
    WHERE language_id = p_language_id;
    SELECT p_language_name AS requested_language;
END //
DELIMITER ;

CALL getLanguageInfo(0030, @lang_name);
SELECT @lang_name AS language_result;


--  CREATE IN Parameter With Binary Choice
--  Write A Store Procedure That Implements A Selection Sequence
DELIMITER //
CREATE PROCEDURE checkLanguageDemand(
    IN p_language_id SMALLINT
)
BEGIN
    DECLARE v_count INT;
    SELECT COUNT(*) INTO v_count
    FROM languageService
    WHERE language_id = p_language_id;
    IF v_count > 1 THEN
        SELECT p_language_id AS language_id,
               v_count AS total_requests,
               'High Demand Language' AS demand_status;
    ELSE
        SELECT p_language_id AS language_id,
               v_count AS total_requests,
               'Low Demand Language' AS demand_status;
    END IF;
END //
DELIMITER ;

CALL checkLanguageDemand(0030);
CALL checkLanguageDemand(0008);


--  Write And Execute Stored Trigger 1
DELIMITER //
CREATE TRIGGER before_language_update
BEFORE UPDATE ON languages
FOR EACH ROW
BEGIN
    INSERT INTO languagesBackup
        (language_id, language_name, language_region, action_type, backup_time)
    VALUES
        (OLD.language_id, OLD.language_name, OLD.language_region, 'UPDATE', NOW());
END //
DELIMITER ;


--  Write And Execute Stored Trigger 2
DELIMITER //
CREATE TRIGGER before_language_delete
BEFORE DELETE ON languages
FOR EACH ROW
BEGIN
    INSERT INTO languagesBackup
        (language_id, language_name, language_region, action_type, backup_time)
    VALUES
        (OLD.language_id, OLD.language_name, OLD.language_region, 'DELETE', NOW());
END //
DELIMITER ;

--  Show backup table BEFORE any operations
SELECT * FROM languagesBackup;

--  Invoke UPDATE trigger 1
--  UPDATE Languages To Trigger before_languages_update
UPDATE languages
SET language_name = 'Yoruba (West African)'
WHERE language_id = 0037;

--  Show backup table AFTER update
SELECT * FROM languagesBackup;

--  Invoke Stored Trigger 2
--  DELETE From Languages To Trigger before_language_delete
DELETE FROM languageService WHERE language_id = 0037;
DELETE FROM languages WHERE language_id = 0037;

--  Show backup table AFTER delete
SELECT * FROM languagesBackup;
