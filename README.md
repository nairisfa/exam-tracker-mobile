# Exam Tracker Mobile

# Tugas 7

### Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
Dalam pengembangan aplikasi Flutter, perbedaan utama antara StatelessWidget dan StatefulWidget terletak pada kemampuannya menangani perubahan status. StatelessWidget ideal untuk widget yang tampilannya tetap konstan setelah dibuat; mereka tidak memiliki keadaan internal yang dapat berubah, dengan semua properti penentu penampilan ditetapkan pada konstruksi. Sifat statis ini membuat StatelessWidget lebih sederhana dan efisien. Sebaliknya, StatefulWidget cocok untuk widget yang perlu mengubah tampilannya seiring waktu, misalnya sebagai respons terhadap interaksi pengguna atau pembaruan data. StatefulWidget menyertakan objek State terpisah untuk menyimpan dan mengelola status internalnya. Saat status ini berubah, widget akan dirender ulang, menambah kompleksitas namun mengaktifkan fungsionalitas dinamis penting dalam aplikasi. Keputusan antara keduanya bergantung pada apakah antarmuka aplikasi harus tetap statis atau beradaptasi secara dinamis.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
1. Generate proyek Flutter baru dengan nama exam_tracker
2. Merapikan Struktur Proyek
3. Membuat Widget Sederhana pada Flutter




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


# Tugas 9

### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Ya, Anda bisa mengambil data dari JSON tanpa membuat model terlebih dahulu. Ini sering digunakan dalam situasi di mana Anda perlu mengambil data dari API atau dari penyimpanan data yang sudah ada dalam format JSON. Proses ini disebut deserialisasi, di mana data JSON diubah menjadi struktur data yang dapat langsung digunakan dalam bahasa pemrograman seperti objek dalam Python atau array dalam JavaScript.

Keuntungan utama dari pendekatan ini adalah kemudahan dan kecepatan dalam implementasinya. Anda dapat langsung mengambil data JSON dan menggunakannya sesuai kebutuhan tanpa perlu menentukan struktur data terlebih dahulu.

Tetapi, jika data Anda kompleks atau memerlukan validasi dan transformasi yang konsisten, maka membuat model terlebih dahulu bisa lebih bermanfaat. Dengan membuat model, Anda dapat mengonversi data JSON menjadi objek yang sesuai dengan struktur model, yang memudahkan dalam manipulasi dan validasi data.

Keputusan terbaik tergantung pada kebutuhan aplikasi Anda. Jika Anda hanya perlu akses cepat dan sederhana ke data JSON tanpa memerlukan validasi yang rumit, maka mengambil data tanpa membuat model mungkin lebih cocok. Namun, jika Anda membutuhkan kontrol lebih besar atas struktur data dan memerlukan validasi atau transformasi yang lebih kompleks, maka membuat model terlebih dahulu bisa lebih baik.


### Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
Dalam konteks Flutter, `CookieRequest` berfungsi sebagai objek yang digunakan untuk mewakili permintaan HTTP yang berisi cookie. Ini memungkinkan aplikasi Flutter untuk berkomunikasi dengan server yang menerapkan autentikasi berbasis cookie atau membutuhkan data yang dikirim melalui cookie.

Penting bagi instance `CookieRequest` untuk dibagikan ke semua komponen di aplikasi Flutter agar komponen-komponen tersebut dapat saling berkomunikasi dengan server menggunakan cookie yang sama. Hal ini esensial karena ketika aplikasi berhubungan dengan server yang membutuhkan autentikasi berbasis cookie, informasi otentikasi harus disertakan dalam setiap permintaan HTTP yang dikirimkan. Dengan menggunakan instance `CookieRequest` yang sama di seluruh aplikasi, kita memastikan bahwa setiap permintaan HTTP yang dikirim oleh komponen-komponen tersebut akan menggunakan cookie yang sama untuk otentikasi.

Dengan demikian, berbagi instance `CookieRequest` memungkinkan aplikasi untuk berbagi informasi otentikasi di seluruh bagian aplikasi Flutter, sehingga setiap komponen dapat mengakses sumber daya yang memerlukan otentikasi tanpa perlu melakukan proses autentikasi berulang kali. Ini juga membantu menjaga konsistensi dan integritas otentikasi di seluruh aplikasi.

### Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
Proses pengambilan data dari JSON hingga dapat ditampilkan di Flutter melibatkan beberapa tahapan yang penting. Pertama-tama, Anda perlu mengambil data JSON dari sumbernya, yang bisa berupa API web atau penyimpanan lokal. Ini bisa dilakukan dengan menggunakan paket HTTP seperti `http` atau paket khusus seperti `dio` untuk mengirim permintaan HTTP dan menerima respons JSON.

Selanjutnya, setelah menerima respons JSON, langkah berikutnya adalah mengonversi data JSON menjadi struktur data yang dapat digunakan di dalam aplikasi Flutter. Ini sering disebut sebagai tahap deserialisasi. Anda bisa menggunakan berbagai teknik deserialisasi, misalnya, mengubah JSON menjadi objek Dart atau menggunakan model yang sudah disesuaikan dengan struktur data JSON.

Setelah data terdeserialisasi, tahap berikutnya adalah pengolahan data sesuai kebutuhan aplikasi. Ini bisa berupa pengolahan tambahan seperti filtering, sorting, atau transformasi data agar sesuai dengan kebutuhan aplikasi.

Setelah data diolah, langkah terakhir adalah menampilkannya pada widget Flutter. Ada berbagai macam widget yang dapat Anda gunakan, seperti `ListView`, `GridView`, `Text`, `Image`, atau widget kustom sesuai dengan kebutuhan tata letak aplikasi Anda.

Selain itu, penting juga untuk memperhatikan manajemen state aplikasi agar tampilan selalu diperbarui dengan benar ketika ada perubahan data. Anda bisa menggunakan berbagai pendekatan manajemen state seperti `setState`, Provider, BloC, atau Riverpod.

Terakhir, dalam proses pengambilan data, juga penting untuk menangani kasus-kasus khusus seperti indikator loading saat data sedang diambil atau menampilkan pesan kesalahan saat terjadi kesalahan dalam pengambilan data.

Dengan memahami dan mengikuti langkah-langkah ini, Anda dapat mengambil data dari JSON dan menampilkannya dengan sukses dalam aplikasi Flutter.

### Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Proses autentikasi dari pengisian data akun pada Flutter hingga munculnya menu pada Flutter melibatkan beberapa langkah antara aplikasi klien (Flutter) dan server (Django). Ini adalah gambaran ringkasnya:

1. **Pengisian Data Akun di Flutter**: Pengguna memasukkan data akun, seperti nama pengguna dan kata sandi, melalui antarmuka aplikasi Flutter.

2. **Permintaan Autentikasi ke Django**: Setelah pengguna mengisi data akun, aplikasi Flutter mengirim permintaan autentikasi ke server Django. Biasanya ini berupa permintaan HTTP POST ke endpoint autentikasi yang telah ditetapkan di Django.

3. **Validasi Data Akun di Django**: Server Django menerima permintaan autentikasi dan memvalidasi data akun yang diterima dari aplikasi Flutter. Ini melibatkan pengecekan apakah data akun yang diterima valid, seperti memeriksa apakah nama pengguna dan kata sandi cocok dengan data yang ada di basis data Django.

4. **Proses Autentikasi oleh Django**: Jika data akun valid, Django akan mulai proses autentikasi. Ini mungkin termasuk pembuatan token sesi atau token akses JWT (JSON Web Token) yang akan digunakan untuk mengidentifikasi pengguna yang berhasil masuk.

5. **Pembuatan dan Pengiriman Token ke Flutter**: Setelah proses autentikasi berhasil, server Django akan membuat token sesi atau token akses JWT dan mengirimkannya sebagai respons ke aplikasi Flutter. Token ini berfungsi sebagai kredensial otentikasi untuk pengguna yang berhasil masuk.

6. **Penyimpanan Token di Flutter**: Aplikasi Flutter akan menyimpan token sesi atau token akses JWT yang diterima dari server Django. Biasanya, ini disimpan dalam penyimpanan lokal, seperti Shared Preferences atau Secure Storage, untuk digunakan dalam permintaan HTTP selanjutnya.

7. **Permintaan Menu dari Flutter ke Django**: Setelah pengguna berhasil masuk, aplikasi Flutter dapat mengirimkan permintaan ke endpoint Django yang menyediakan data menu yang perlu ditampilkan.

8. **Penerimaan dan Penyajian Menu oleh Flutter**: Server Django memproses permintaan dan mengirimkan data menu sebagai respons ke aplikasi Flutter. Selanjutnya, aplikasi Flutter menampilkan menu tersebut kepada pengguna melalui antarmuka pengguna.

Dengan cara ini, aplikasi Flutter dapat mengelola proses autentikasi dengan menggunakan Django sebagai backend server dan menampilkan menu kepada pengguna setelah proses autentikasi berhasil.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
1.  integrasi sistem autentikasi pada Django
2.  membuat model kustom
3.  menerapkan Fetch Data dari Django Untuk Ditampilkan ke Flutter
4.  mengintegrasi Form Flutter Dengan Layanan Django
5.  mengimplementasi Fitur Logout

   
