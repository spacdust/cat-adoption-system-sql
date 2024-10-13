# Sistem Adopsi Kucing - Mini Project (Native SQL Query)

## Deskripsi

Sebuah mini project sederhana aplikasi untuk mengelola proses adopsi kucing, termasuk data kucing yang tersedia, calon adopters, proses pengajuan adopsi, dan status adopsi, dan riwayat adopsi.

## Fitur

- Menampilkan daftar kucing yang tersedia untuk diadopsi.
- Menambahkan, mengedit, dan menghapus data kucing.
- Mendaftarkan calon adopter baru.
- Mengajukan permohonan adopsi kucing.
- Mengelola status permohonan adopsi (Disetujui, Ditolak, Pending).
- Melihat riwayat adopsi kucing

## Database Schema

- Cats (catID, name, age, breed, gender, description, status, imageURL)
- Adopters (adopterID, name, email, phone, address, registrationDate)
- AdoptionApplications (applicationID, adopterID, catID, applicationDate, status, approvalDate)
- AdoptionHistory (historyID, adopterID, catID, adoptionDate, returnDate, reason)

## Cara Penggunaan

Gunakan dan jalankan sql query pada folder sql, dimulai dari db_structures_query.sql, lalu input data dengan insert_data_query.sql, dan lakukan transaksi dengan transaction_query.sql. Semua penjelasan mengenai query telah dicantumkan di dalam file.
