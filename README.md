# Exam Tracker Mobile

# Tugas 7

### Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
Dalam pengembangan aplikasi Flutter, perbedaan utama antara StatelessWidget dan StatefulWidget terletak pada kemampuannya menangani perubahan status. StatelessWidget ideal untuk widget yang tampilannya tetap konstan setelah dibuat; mereka tidak memiliki keadaan internal yang dapat berubah, dengan semua properti penentu penampilan ditetapkan pada konstruksi. Sifat statis ini membuat StatelessWidget lebih sederhana dan efisien. Sebaliknya, StatefulWidget cocok untuk widget yang perlu mengubah tampilannya seiring waktu, misalnya sebagai respons terhadap interaksi pengguna atau pembaruan data. StatefulWidget menyertakan objek State terpisah untuk menyimpan dan mengelola status internalnya. Saat status ini berubah, widget akan dirender ulang, menambah kompleksitas namun mengaktifkan fungsionalitas dinamis penting dalam aplikasi. Keputusan antara keduanya bergantung pada apakah antarmuka aplikasi harus tetap statis atau beradaptasi secara dinamis.

### Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

# Tugas 8

### Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
Perbedaan utama antara `Navigator.push()` dan `Navigator.pushReplacement()` terletak pada cara keduanya mengelola view stack. `push` cukup menambahkan route baru ke top of stack, sementara `pushReplacement` terlebih dahulu menghapus route saat ini dari stack sebelum menambahkan yang baru. Ini berarti `pushReplacement` menggantikan route sebelumnya. Dalam praktiknya, jika kita ingin pengguna dapat bernavigasi kembali ke halaman sebelumnya, misalnya bernavigasi di dalam stacking pages, kita harus menggunakan `push`. Di sisi lain, `pushReplacement` cocok ketika, misalnya, bernavigasi menggunakan drawer dan kita ingin menghapus drawer dari tampilan saat mengubah route.

### Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
#### Container: Kotak serbaguna untuk mengatur tata letak dan gaya widget anak.
#### Row: Susun widget secara horizontal.
#### Column: Susun widget secara vertikal.
#### Stack: Susun widget secara bertumpuk.
#### ListView: Tampilkan daftar item yang dapat di-scroll.
#### GridView: Susun item dalam bentuk grid yang dapat di-scroll.
#### Expanded: Perluas widget anak untuk mengisi ruang yang tersedia.
#### Padding: Tambahkan ruang di sekitar widget anak.
#### Align: Susun widget anak berdasarkan alignment.
#### Center: Susun widget anak di tengah-tengah.
#### SizedBox: Widget dengan ukuran tertentu atau ruang kosong.
#### Flexible: Kendalikan bagaimana widget anak berfleksibilitas.
#### Spacer: Tambahkan ruang kosong di antara widget dalam Flex.
#### Wrap: Susun widget anak dalam baris/kolom, pindah ke baris/kolom berikutnya jika kehabisan ruang.
#### Table: Susun widget dalam tabel dengan baris dan kolom yang tetap.

### Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
TextFormField digunakan karena input yang diminta berupa string dan kemudahannya dalam penggunaannya membuatnya menjadi pilihan yang tepat.

### Bagaimana penerapan clean architecture pada aplikasi Flutter?
Penerapan Clean Architecture pada aplikasi Flutter melibatkan pemisahan kode menjadi lapisan-lapisan yang terpisah, masing-masing bertanggung jawab atas tugas-tugas tertentu. Clean Architecture bertujuan untuk memudahkan pengujian, pemeliharaan, dan pengembangan selanjutnya dengan meminimalkan ketergantungan antar-lapisan.

Berikut adalah langkah-langkah umum untuk menerapkan Clean Architecture pada aplikasi Flutter:

1. **Tentukan Struktur Proyek:**
   - Buat folder untuk masing-masing lapisan (misalnya, `presentation`, `domain`, `data`).
   - Di dalam setiap folder, buat subfolder sesuai kebutuhan (misalnya, `widgets`, `models`, `repositories`, `use_cases`).

2. **Lapisan Presentasi (`presentation`):**
   - Berisi UI dan logika tampilan.
   - Gunakan widget Flutter untuk membuat antarmuka pengguna.
   - Pisahkan UI dari logika bisnis.

3. **Lapisan Domain (`domain`):**
   - Berisi logika bisnis aplikasi.
   - Definisikan entitas (model) dan use case (interactors) yang menggambarkan aturan bisnis.

4. **Lapisan Data (`data`):**
   - Berisi logika akses data, seperti penyimpanan lokal atau koneksi jaringan.
   - Buat repository untuk menghubungkan antara lapisan domain dan sumber data.

5. **Dependency Rule:**
   - Pastikan bahwa lapisan domain tidak bergantung pada lapisan presentasi atau data. Sebaliknya, keduanya harus bergantung pada lapisan domain.
   - Gunakan konsep seperti Dependency Injection atau Service Locator untuk menyediakan dependensi yang diperlukan.

6. **Implementasi Use Case:**
   - Implementasikan use case (interactors) di lapisan domain.
   - Use case harus tidak bergantung pada platform atau infrastruktur tertentu.

7. **Unit Testing:**
   - Tulis unit test untuk setiap lapisan, memastikan bahwa setiap bagian aplikasi dapat diuji secara terpisah.
   - Gunakan mock objects untuk mengisolasi kode yang diuji.

8. **Integrasi dengan Framework:**
   - Khusus untuk Flutter, gunakan widget sebagai bagian dari lapisan presentasi.
   - Pastikan bahwa lapisan presentasi hanya menangani logika tampilan dan tidak berurusan dengan logika bisnis atau akses data langsung.

Dengan mematuhi prinsip-prinsip Clean Architecture, aplikasi Flutter Anda akan menjadi lebih terstruktur, mudah diuji, dan mudah dipelihara seiring berjalannya waktu.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
Pertama, saya membuat widget form baru. Form ini terdiri dari tiga TextInputField yang dihubungkan dengan event listener onChanged untuk mengupdate state komponen. Setelah itu, saya menambahkan tombol simpan yang akan memicu fungsi untuk menampilkan popup yang menginformasikan pengguna bahwa data baru berhasil ditambahkan. Saya juga menyertakan validasi dengan parameter validation untuk memastikan input sudah sesuai.

Selanjutnya, saya menambahkan form tersebut ke dalam daftar elemen yang akan ditampilkan di body scaffold, menggantikan halaman sebelumnya yang hanya berisi Card kosong.

Selain itu, saya menambahkan drawer dan appbar. Saya membuat komponen Drawer baru yang berisi ListView dengan ListTile sebagai navigasi. Untuk mendukung navigasi antar halaman pada halaman utama, saya membuat fungsi callback pada menu utama yang memungkinkan drawer mengubah halaman. Fungsi callback ini menggunakan setState untuk mengupdate indeks halaman yang sedang ditampilkan.




