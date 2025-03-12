CREATE TABLE info(username VARCHAR(200), password VARCHAR(500), name VARCHAR(100), prof INT, street VARCHAR(100), city VARCHAR(50), phone VARCHAR(32), PRIMARY KEY(username));

--CREATE TABLE members(username VARCHAR(200), plan VARCHAR(100), trainor VARCHAR(200), FOREIGN KEY(username) references info(username), PRIMARY KEY(username), FOREIGN KEY(trainor) references info(username));

CREATE TABLE plans(name VARCHAR(100), PRIMARY KEY(name));

CREATE TABLE receps(username VARCHAR(200), PRIMARY KEY(username), FOREIGN KEY(username) references info(username));

CREATE TABLE trainors(username VARCHAR(200), PRIMARY KEY(username), FOREIGN KEY(username) references info(username));

CREATE TABLE members(username VARCHAR(200), plan VARCHAR(100), trainor VARCHAR(200), PRIMARY KEY(username), FOREIGN KEY(username) references info(username), FOREIGN KEY(plan) references plans(name), FOREIGN KEY(trainor) references trainors(username));

ALTER TABLE info ADD time TIMESTAMP DEFAULT CURRENT_TIMESTAMP;--done for all tables
                                                                                                 
INSERT INTO info(username, password, name, prof, street, city, phone) VALUES('saydotech', '$5$rounds=535000$ajR8hAzSoSF.NhEs$MaLn1dbnXq9eu2W5Ge3c1ScAS9960yLBFv3aU9zaxc0', 'Abbey', 1, 'Brown crescent', 'Lagos', 08139357520);--admin's password is admin

CREATE TABLE progress(username VARCHAR(200), date DATE, daily_result VARCHAR(200), time TIMESTAMP DEFAULT CURRENT_TIMESTAMP, PRIMARY KEY(username, date), FOREIGN KEY(username) references members(username));


INSERT INTO info(username, password, street, city, phone, name, prof)
 VALUES('saydotech', '$5$rounds=535000$ajR8hAzSoSF.NhEs$MaLn1dbnXq9eu2W5Ge3c1ScAS9960yLBFv3aU9zaxc0', 
 	'Brown crescent', 'Lagos', '08139357520', 'Abbey', 1);