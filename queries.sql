CREATE DATABASE CUCS;
USE CUCS;
CREATE TABLE BLOSSOMS(
S_RegNo BIGINT,
S_Name TEXT(10) NOT NULL,
S_Class VARCHAR(6) NOT NULL,
S_Event TEXT(15) NOT NULL,
S_Team VARCHAR(7) NOT NULL,
PRIMARY KEY(S_RegNo));

INSERT INTO BLOSSOMS(S_RegNo, S_Name, S_Class, S_Event, S_Team)
VALUES
(2147156, 'Jenifer', 'MCA-A', 'Dancing', 'TeamD1'),
(2147124, 'Brian', 'MCA-A', 'Singing', 'TeamS1'),
(2147231, 'Luke', 'MCA-B', 'Dancing', 'TeamD1'),
(2147126, 'Cassidy', 'MCA-A', 'Theatre', 'TeamT1'),
(2147209, 'Eddie', 'MCA-B', 'Theatre', 'TeamT1'),
(2147198, 'Logan', 'MCA-A', 'Monologue', 'TeamM1'),
(2147214, 'Bruce', 'MCA-B', 'Poetry', 'TeamP1'),
(2147210, 'Charles', 'MCA-B', 'Monologue', 'TeamM1'),
(2147187, 'Kevin', 'MCA-A', 'Fashion Show', 'TeamF1'),
(2147123, 'Tim', 'MCA-A', 'Poetry', 'TeamP1'),
(2147245, 'Robert', 'MCA-B', 'Fashion Show', 'TeamF1'),
(2147290, 'Alfred', 'MCA-B', 'Singing', 'TeamS1');