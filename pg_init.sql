DROP DATABASE IF EXISTS postgres_demo_sam;
CREATE DATABASE postgres_demo_sam;

DROP TABLE IF EXISTS UserLogin ;
create table UserLogin
(
    id              INT PRIMARY KEY ,
    email            VARCHAR(255)   NOT NULL,
    password            VARCHAR(255)   NOT NULL,
    firstName            VARCHAR(255)   NOT NULL,
    lastName            VARCHAR(255)   NOT NULL,
    lastLogin      date
);
INSERT INTO UserLogin(id, email, password, firstName, lastName, lastLogin)
VALUES (1,'sam@gmail.com','Jwz46QaZQt5erXLie-yEYqYH28uz7lsuzPrNEA4jDCNvwss9CPBLoMuZmTl_affhlGL9XlO7qnsG7ZB-Pt2Spw==','Sam','Chen','2022-02-02');
