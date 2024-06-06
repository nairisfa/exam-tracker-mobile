# Exam Tracker Mobile

# Tugas 7

### Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
Dalam pengembangan aplikasi Flutter, perbedaan utama antara StatelessWidget dan StatefulWidget terletak pada kemampuannya menangani perubahan status. StatelessWidget ideal untuk widget yang tampilannya tetap konstan setelah dibuat; mereka tidak memiliki keadaan internal yang dapat berubah, dengan semua properti penentu penampilan ditetapkan pada konstruksi. Sifat statis ini membuat StatelessWidget lebih sederhana dan efisien. Sebaliknya, StatefulWidget cocok untuk widget yang perlu mengubah tampilannya seiring waktu, misalnya sebagai respons terhadap interaksi pengguna atau pembaruan data. StatefulWidget menyertakan objek State terpisah untuk menyimpan dan mengelola status internalnya. Saat status ini berubah, widget akan dirender ulang, menambah kompleksitas namun mengaktifkan fungsionalitas dinamis penting dalam aplikasi. Keputusan antara keduanya bergantung pada apakah antarmuka aplikasi harus tetap statis atau beradaptasi secara dinamis.

### Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
