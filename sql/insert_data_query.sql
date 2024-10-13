-- menambah data kucing
INSERT INTO cats (name, age, breed, gender, description, status, imageURL)
VALUES ('Milo', 2, 'Siamese', 'Male', 'Friendly and active', 'Available', 'http://example.com/images/milo.jpg');

--menambah data adopter
INSERT INTO adopters (name, email, phone, address, registrationDate)
VALUES ('Tegar', 'tegar1234@gmail.com', '081922557621', 'Sinduadi, Mlati, Sleman', CURRENT_DATE());
