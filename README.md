Praktikum Sesi 8 - Flutter REST API (User & Admin)

Aplikasi Flutter untuk mengimplementasikan operasi CRUD (Create, Read, Update, Delete) menggunakan REST API dengan package http. Proyek ini mengelola data User dan Admin yang terhubung ke layanan API eksternal.

Identitas Mahasiswa
Nama: Darrell Putra Prayata
NIM: 20250801150
Kode Proyek: p4

Fitur Aplikasi

1. Manajemen User (UserTab & UserDetailPage)
   GET All Users: Menampilkan daftar seluruh pengguna dari API.
   GET User Detail: Menampilkan detail informasi pengguna (ID, Nama, Email, Kota) berdasarkan ID (1150).
   POST User: Menambahkan data pengguna baru dengan ID berdasarkan 3 digit terakhir NIM (1150).
   PUT User: Memperbarui seluruh data (nama dan email) pengguna dengan ID 1150.
   PATCH User: Memperbarui sebagian data pengguna (menambahkan teks " - Flutter Developer" pada nama).
   DELETE User: Menghapus data pengguna dengan ID 1150.

2. Manajemen Admin (AdminTab & AdminDetailPage)
   GET All Admins: Menampilkan daftar seluruh admin beserta departemennya.
   GET Admin Detail: Menampilkan halaman detail admin (ID, Nama, Email, Department) berdasarkan ID (2150).
   DELETE Admin: Menghapus data admin baik langsung dari tombol ikon hapus pada daftar maupun melalui halaman detail admin.