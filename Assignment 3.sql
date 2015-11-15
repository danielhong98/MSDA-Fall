DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS groups;
DROP TABLE IF EXISTS rooms;

CREATE TABLE users
(userid int primary key, username varchar(100));
INSERT INTO users
(userid, username) VALUES (1, 'Modesto');
INSERT INTO users (userid, username) VALUES (2, 'Ayine');
INSERT INTO users (userid, username) VALUES (3, 'Christopher');
INSERT INTO users (userid, username) VALUES (4, 'Cheong Woo');
INSERT INTO users (userid, username) VALUES (5, 'Saulat');
INSERT INTO users (userid, username ) VALUES (6, 'Heidy');

CREATE TABLE groups
(groupid int PRIMARY KEY, groupname varchar (100), userid int NULL REFERENCES username);
INSERT INTO groups (groupid, groupname, userid) VALUES (1, 'I.T', 1);
INSERT INTO groups (groupid, groupname, userid ) VALUES (2, 'I.T', 2);
INSERT INTO groups (groupid, groupname, userid) VALUES (3, 'Sales', 3);
INSERT INTO groups (groupid, groupname, userid) VALUES (4, 'Sales', 4);
INSERT INTO groups (groupid, groupname, userid) VALUES (5, 'Administration', 5);
INSERT INTO groups (groupid, groupname, userid) VALUES (6, 'Operations', NULL);

CREATE TABLE rooms
(roomid int PRIMARY KEY, roomname varchar(100), groupid int NULL REFERENCES groups);
INSERT INTO rooms (roomid, roomname, groupid) VALUES (1, '101', 1);
INSERT INTO rooms (roomid, roomname, groupid) VALUES (2, '102', 2);
INSERT INTO rooms (roomid, roomname, groupid) VALUES (3, '102', 3);
INSERT INTO rooms (roomid, roomname, groupid) VALUES (4, 'Auditorium A', 4);
INSERT INTO rooms (roomid, roomname, groupid) VALUES (5, 'Auditorium B', NULL);

SELECT b.groupid, b.groupname, a.userid, a.username FROM users a RIGHT JOIN groups b ON a.userid = b.userid;
SELECT b.roomid, b.roomname, a.groupid, a.groupname FROM groups a RIGHT JOIN rooms b ON a.groupid = b.groupid;
SELECT a.userid as UserID, a.username as EmployeeName, b.groupname as GroupName, c.roomname as RoomName
FROM users a LEFT JOIN groups b ON a.userid = b.userid JOIN rooms c ON b.groupid = c.groupid
ORDER BY a.username, b.groupname, c.roomname