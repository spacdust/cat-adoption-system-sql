--membuat database
CREATE DATABASE cats_adopt;

--membuat tabel data kucing
CREATE TABLE cats (
    catID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    breed VARCHAR(50),
    gender ENUM('Male', 'Female'),
    description TEXT,
    status ENUM('Available', 'Adopted'),
    imageURL VARCHAR(255)
)

--membuat tabel data adopter
CREATE TABLE adopters (
    adopterID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    email VARCHAR(50),
    phone VARCHAR(50),
    address VARCHAR(255),
    registrationDate DATE
)

--membuat tabel data permintaan adopsi
create TABLE adoption_applications (
    applicationID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    adopterID INT,
    catID INT,
    applicationDate DATE,
    status ENUM('Pending', 'Approved', 'Rejected'),
    approvalDate DATE,
    FOREIGN KEY (adopterID) REFERENCES adopters(adopterID),
    FOREIGN KEY (catID) REFERENCES cats(catID)
)

--membuat tabel data riwayat adopsi
create TABLE adoption_history (
    historyID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    adopterID INT,
    catID INT,
    adoptionDate DATE,
    returnDate DATE,
    reason text,
    FOREIGN KEY (adopterID) REFERENCES adopters(adopterID),
    FOREIGN KEY (catID) REFERENCES cats(catID)
)