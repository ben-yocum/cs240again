DROP TABLE IF EXISTS `batches`;
DROP TABLE IF EXISTS `fields`;
DROP TABLE IF EXISTS `projects`;
DROP TABLE IF EXISTS `records`;
DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `values`;
DROP TABLE IF EXISTS `fieldValues`;

CREATE TABLE projects
(
id integer NOT NULL PRIMARY KEY,
title text,
recordsPerImage integer,
firstYCoord integer,
recordHeight integer
);

CREATE TABLE batches
(
id integer NOT NULL PRIMARY KEY,
projectID integer,
userID integer,
completed int(1),
file text
);

CREATE TABLE records
(
id integer NOT NULL PRIMARY KEY,
batchID integer
);

CREATE TABLE fields
(
id integer NOT NULL PRIMARY KEY,
projectID integer,
title text,
xCoord integer,
width integer,
helpHTML text,
knownData text
);

CREATE TABLE users
(
id integer NOT NULL PRIMARY KEY,
userName text,
password text,
firstName text,
lastName text,
email text,
indexedRecords integer
);

CREATE TABLE fieldValues
(
id integer NOT NULL PRIMARY KEY,
recordID integer,
fieldID integer,
value text
);