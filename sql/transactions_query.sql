--menampilkan data kucing yang tersedia untuk di adopsi
SELECT * FROM cats WHERE status = 'Available';

--mengajukan permohonan adopsi
INSERT INTO adoption_applications (adopterID, catID, applicationDate, status)
VALUES (1, 1, CURRENT_DATE(), 'Pending');

--menyetujui permohonan adopsi
--1 update status permohonan
UPDATE adoption_applications
SET status = 'Approved', approvalDate = CURRENT_DATE()
WHERE applicationID = 1;
--2 update status kucing
UPDATE cats
SET Status = 'Adopted'
WHERE CatID = (SELECT catID FROM adoption_applications WHERE applicationID = 1);
--3 input ke history adopsi (returnDate dan reason sifatnya opsional)
INSERT INTO adoption_history (adopterID, catID, adoptionDate)
VALUES ((SELECT adopterID FROM adoption_applications WHERE applicationID = 1), (SELECT catID FROM adoption_applications WHERE applicationID = 1), CURRENT_DATE());

--menolak permohonan adopsi
UPDATE adoption_applications
SET status = 'Rejected', approvalDate = CURRENT_DATE()
WHERE applicationID = 1;

--menampilkan riwayat adopsi
SELECT ah.historyID, ah.adoptionDate, c.name AS catName, c.breed,a.name AS adopterName, ah.returnDate, ah.reason
FROM adoption_history ah
JOIN cats c ON ah.catID = c.catID
JOIN adopters a ON ah.adopterID = a.adopterID;

--menampilkan kucing yang di adopsi dalam periode tertentu 
SELECT  c.catID, c.name, a.name AS adopterName, aa.approvalDate
FROM cats c
JOIN adoption_applications aa ON c.catID = aa.catID
JOIN adopters a ON aa.adopterID = a.adopterID
WHERE aa.status = 'Approved'
  AND aa.approvalDate BETWEEN '2024-01-01' AND '2024-12-31';

--menghapus data kucing yang tidak tersedia lagi (jika dibutuhkan)
DELETE FROM cats
WHERE catID = 2;
