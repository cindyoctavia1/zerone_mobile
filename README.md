1.Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

- Stateless widget adalah widget yang bersifat statis dan tidak dapat berubah setelah dibangun. Ini berarti bahwa semua data yang ditampilkan oleh widget ini ditentukan pada saat dibuat, dan widget tidak memiliki state yang berubah-ubah.
- Stateful widget adalah widget yang dapat berubah selama aplikasi berjalan. Ini memungkinkan tampilan untuk diperbarui ketika ada perubahan pada data atau interaksi dengan pengguna. 

Perbedaan:
1.Perubahan Data: 
-Stateless widget tidak dapat berubah setelah aplikasi berjalan. Ini berarti data atau tampilan yang dihasilkan oleh stateless widget bersifat tetap dan tidak akan berubah kecuali widget dibangun ulang dari awal. 
-Stateful widget memungkinkan data atau tampilan berubah selama aplikasi berjalan, misalnya sebagai respons terhadap tindakan pengguna atau perubahan data internal.
2.State: 
-Stateless widget tidak memiliki state, karena sifatnya yang tetap dan tidak berubah. 
-Stateful widget memiliki state yang bisa diperbarui, memungkinkan widget untuk beradaptasi dengan perubahan data secara dinamis.
3.Kapan Dibangun: 
-Stateless widget hanya akan dibangun ulang jika objeknya berubah. Jadi, ketika ada perubahan yang memengaruhi stateless widget, seluruh widget harus direkonstruksi. 
-Stateful widget dibangun ulang ketika state di dalamnya mengalami perubahan, yang dilakukan dengan memanggil fungsi setState.
4.Kinerja: 
-Karena stateless widget tidak perlu melacak perubahan, ia biasanya lebih ringan dan lebih efisien dalam penggunaan sumber daya. -Stateful widget memerlukan lebih banyak sumber daya karena harus melacak perubahan state dan merender ulang tampilan sesuai kebutuhan.

2.Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Text: Digunakan untuk menampilkan teks pada layar. Widget Text digunakan di banyak bagian proyek, misalnya untuk menampilkan teks "ZERONE" pada AppBar, serta judul dan konten di InfoCard.
Icon: Menampilkan ikon di layar. Pada ItemCard, ikon ditampilkan di atas nama tombol untuk membuat tampilan lebih visual.
Card: Widget ini digunakan untuk menampilkan elemen dalam bentuk kartu yang memiliki bayangan, membuatnya tampak seperti elemen yang terangkat. Dalam proyek ini, Card digunakan dalam InfoCard untuk menampilkan informasi dan di ItemCard untuk menampilkan tombol navigasi.
SnackBar: Menampilkan pesan singkat di bagian bawah layar. Di proyek ini, SnackBar digunakan untuk memberikan notifikasi ketika pengguna menekan salah satu ItemCard.


3.Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() adalah fungsi yang digunakan dalam stateful widget untuk memberi tahu Flutter bahwa ada perubahan pada state widget tersebut. Ketika setState() dipanggil, Flutter akan merender ulang tampilan sehingga perubahan pada data bisa terlihat pada antarmuka pengguna.

Variabel yang Terdampak oleh setState() Hanya variabel dalam state kelas yang terpengaruh oleh setState(). Misalnya, jika ada variabel yang menyimpan jumlah klik tombol, ketika setState() dipanggil untuk memperbarui variabel ini, tampilan yang menampilkan jumlah klik akan diperbarui.

4.Jelaskan perbedaan antara const dengan final.
const: Kata kunci const digunakan untuk membuat nilai konstan yang ditentukan pada saat kompilasi (waktu build). Nilai ini tidak akan berubah sepanjang aplikasi berjalan, dan const juga bersifat immutable. Contoh: const myValue = 10;
const digunakan ketika nilai sudah diketahui dan tetap selama compile-time.

final: Kata kunci final digunakan untuk membuat variabel yang nilainya ditentukan hanya satu kali, yaitu pada saat pertama kali diakses. Setelah diinisialisasi, nilai ini tidak dapat diubah, tetapi inisialisasinya bisa ditunda hingga waktu eksekusi. Contoh: final myName = 'Alice';
final bisa digunakan ketika nilai diketahui saat runtime.

5.Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

-Membuat Proyek Flutter Baru:  dengan menjalankan perintah di terminal untuk membuat proyek baru: flutter create ecommerce_app

-Setiap tombol dibuat menggunakan widget ElevatedButton.icon, yang memungkinkan ikon dan teks berada dalam satu tombol.
Ikon yang digunakan adalah Icons.store untuk "Lihat Produk", Icons.add untuk "Tambah Produk", dan Icons.logout untuk "Logout".

-Mengatur warna backgrounf untuk setiap button dengan case switch pada Widget build di class ItemCard.

-Menampilkan pesan dengan ScaffoldMessenger pada saat card di tap pada Widget build di class ItemCard.