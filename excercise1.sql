CREATE TABLE Account (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255),
    password VARCHAR(40),
    createdOn DATETIME,
    modifiedOn DATETIME
);

CREATE TABLE AddressBook (
    id INT AUTO_INCREMENT PRIMARY KEY,
    accountId INT,
    name VARCHAR(255),
    createdON DATETIME,
    modifiedOn DATETIME
);

CREATE TABLE Entry (
    id INT PRIMARY KEY AUTO_INCREMENT,
    addressBookId INT,
    firstName VARCHAR(60),
    lastName VARCHAR(60),
    birthday DATETIME,
    type ENUM('phone', 'address', 'electronic-mail')
);
CREATE TABLE Address(
    id INT AUTO_INCREMENT PRIMARY KEY,
    entryId INT,
    type ENUM('home','work', 'other'),
    addressline1 VARCHAR(255),
    addressline2 VARCHAR(255),
    city VARCHAR(255),
    province VARCHAR(128),
    country VARCHAR(128),
    postalCode VARCHAR(10)
);

CREATE TABLE Phone (
    id INT AUTO_INCREMENT PRIMARY KEY,
    entryId INT,
    type ENUM('phone', 'work', 'other'),
    subtype ENUM('landline', 'cellular', 'fax'),
    content VARCHAR(255)
);

CREATE TABLE ElectronicMail (
    id INT AUTO_INCREMENT PRIMARY KEY,
    entryId INT,
    type ENUM('home', 'work', 'other'),
    content VARCHAR(255)
);