#Organizational chart for Deputy Commissioners of the NYPD
#Source: https://en.wikipedia.org/wiki/Organization_of_the_New_York_City_Police_Department
#Support Services Bureau, Training – Acting Commanding Officer Assistant Chief, Strategic Initiatives, Labor Counsel, Labor Relations, Equal Employment Opportunity, Trials, Public Information, Personnel, Operations, Strategic Communications, Department Advocate, Legal Matters, Information Technology, Management and Budget, Internal Affairs, Intelligence & Counterterrorism, Collaborative Policing, Administration, Chief Kevin P. Ward, First Deputy Commissioner, Police Commissioner
#Hierarchy for "Absolute Ranks" Column:
#1. Mayor – Bill de Blasio
#2. Police Commissioner – William Bratton
#3. First Deputy Commissioner – Benjamin B. Tucker
#4. Chief of Staff – Chief Kevin P. Ward
#5. Deputy Commissioner, Administration – Cathleen S. Perez
#5. Deputy Commissioner, Collaborative Policing – Susan A. Herman
#5. Deputy Commissioner, Intelligence & Counterterrorism – John Miller
#5. Deputy Commissioner, Internal Affairs – Joseph J. Reznick
#5. Deputy Commissioner, Management and Budget – Vincent D. Grippo
#5. Deputy Commissioner, Information Technology – Jessica S. Tisch
#5. Deputy Commissioner, Legal Matters – Lawrence Byrne
#5. Deputy Commissioner, Department Advocate – Kevin S. Richardson
#5. Deputy Commissioner, Strategic Communications – William W. Andrews
#5. Deputy Commissioner, Operations – Dermot F. Shea
#5. Deputy Commissioner, Personnel – Michael A. Julian
#5. Deputy Commissioner, Public Information – Stephen P. Davis
#5. Deputy Commissioner, Trials – Rosemarie Maldonado
#5. Deputy Commissioner, Equal Employment Opportunity – Neldra M. Zeigler
#5. Deputy Commissioner, Labor Relations – John P. Beirne
#5. Deputy Commissioner, Labor Counsel – David M. Cohen, Esq.
#5. Deputy Commissioner, Strategic Initiatives – Robert Z. Tumin
#5. Deputy Commissioner, Training – Theresa Shortell
#5. Deputy Commissioner, Support Services Bureau – Robert S. Martinez

DROP TABLE IF EXISTS NYPD;

CREATE TABLE NYPD

(Rank varchar(200), AbsoluteRank int, ReportsToRank varchar(200), ReportsTo int, FirstName varchar(200), LastName varchar(200));

INSERT INTO NYPD
VALUES
('Police Commissioner', 2, 'Mayor', 1, 'William', 'Bratton'),
('First Deputy Commissioner', 3, 'Police Commissioner', 2, 'Benjamin B.', 'Tucker'),
('Chief of Staff', 4, 'Police Commissioner', 2, 'Kevin P.', 'Ward'),
('Deputy Commissioner Administration', 5, 'First Deputy Commissioner', 3, 'Cathleen S.', 'Perez'),
('Deputy Commissioner Collaborative Policing', 5, 'First Deputy Commissioner', 3, 'Susan A.', 'Herman'),
('Deputy Commissioner Intelligence & Counterterrorism ', 5, 'First Deputy Commissioner', 3, 'John', 'Miller'),
('Deputy Commissioner Internal Affairs', 5, 'First Deputy Commissioner', 3, 'Joseph A.', 'Reznick'),
('Deputy Commissioner Management and Budget ', 5, 'First Deputy Commissioner', 3, 'Vincent D.', 'Grippo'),
('Deputy Commissioner Information Technology', 5, 'First Deputy Commissioner', 3, 'Jessica S.', 'Tisch'),
('Deputy Commissioner Legal Matters', 5, 'First Deputy Commissioner', 3, 'Lawrence', ' Byrne'),
('Deputy Commissioner Department Advocate', 5, 'First Deputy Commissioner', 3, 'Kevin S.', 'Richardson'),
('Deputy Commissioner Strategic Communications', 5, 'First Deputy Commissioner', 3, 'William W.', 'Andrews'),
('Deputy Commissioner Operations', 5, 'First Deputy Commissioner', 3, 'Dermot F.', 'Shea'),
('Deputy Commissioner Personnel', 5, 'First Deputy Commissioner', 3, 'Michael A.', 'Julian'),
('Deputy Commissioner Public Information ', 5, 'First Deputy Commissioner', 3, 'Stephen P.', 'Davis'),
('Deputy Commissioner Trials ', 5, 'First Deputy Commissioner', 3, 'Rosmarie', 'Maldonado'),
('Deputy Commissioner Equal Employment Opportunity ', 5, 'First Deputy Commissioner', 3, 'Neldra M.', 'Ziegler'),
('Deputy Commissioner Labor Relations', 5, 'First Deputy Commissioner', 3, 'John P.', 'Beirne'),
('Deputy Commissioner Labor Counsel', 5, 'First Deputy Commissioner', 3, 'David M.', 'Cohen Esq.'),
('Deputy Commissioner Strategic Initiatives', 5, 'First Deputy Commissioner', 3, 'Robert Z.', 'Tumin'),
('Deputy Commissioner Training', 5, 'First Deputy Commissioner', 3, 'Theresa', 'Shortell'),
('Deputy Commissioner Support Services Bureau', 5, 'First Deputy Commissioner', 3, 'Robert S.', 'Martinez');

SELECT FirstName, LastName, Rank 
FROM NYPD
ORDER BY AbsoluteRank