TUGAS 7
1.Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

- Stateless widget adalah widget yang bersifat statis dan tidak dapat berubah setelah dibangun. Ini berarti bahwa semua data yang ditampilkan oleh widget ini ditentukan pada saat dibuat, dan widget tidak memiliki state yang berubah-ubah.
- Stateful widget adalah widget yang dapat berubah selama aplikasi berjalan. Ini memungkinkan tampilan untuk diperbarui ketika ada perubahan pada data atau interaksi dengan pengguna. 

Perbedaan:
1.Perubahan Data: 
- Stateless widget tidak dapat berubah setelah aplikasi berjalan. Ini berarti data atau tampilan yang dihasilkan oleh stateless widget bersifat tetap dan tidak akan berubah kecuali widget dibangun ulang dari awal. 
- Stateful widget memungkinkan data atau tampilan berubah selama aplikasi berjalan, misalnya sebagai respons terhadap tindakan pengguna atau perubahan data internal.
2.State: 
- Stateless widget tidak memiliki state, karena sifatnya yang tetap dan tidak berubah. 
- Stateful widget memiliki state yang bisa diperbarui, memungkinkan widget untuk beradaptasi dengan perubahan data secara dinamis.
3.Kapan Dibangun: 
- Stateless widget hanya akan dibangun ulang jika objeknya berubah. Jadi, ketika ada perubahan yang memengaruhi stateless widget, seluruh widget harus direkonstruksi. 
- Stateful widget dibangun ulang ketika state di dalamnya mengalami perubahan, yang dilakukan dengan memanggil fungsi setState.
4.Kinerja: 
- Karena stateless widget tidak perlu melacak perubahan, ia biasanya lebih ringan dan lebih efisien dalam penggunaan sumber daya. - Stateful widget memerlukan lebih banyak sumber daya karena harus melacak perubahan state dan merender ulang tampilan sesuai kebutuhan.

2.Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
- Text: Digunakan untuk menampilkan teks pada layar. Widget Text digunakan di banyak bagian proyek, misalnya untuk menampilkan teks "ZERONE" pada AppBar, serta judul dan konten di InfoCard.
- Icon: Menampilkan ikon di layar. Pada ItemCard, ikon ditampilkan di atas nama tombol untuk membuat tampilan lebih visual.
- Card: Widget ini digunakan untuk menampilkan elemen dalam bentuk kartu yang memiliki bayangan, membuatnya tampak seperti elemen yang terangkat. Dalam proyek ini, Card digunakan dalam InfoCard untuk menampilkan informasi dan di ItemCard untuk menampilkan tombol navigasi.
- SnackBar: Menampilkan pesan singkat di bagian bawah layar. Di proyek ini, SnackBar digunakan untuk memberikan notifikasi ketika pengguna menekan salah satu ItemCard.


3.Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() adalah fungsi yang digunakan dalam stateful widget untuk memberi tahu Flutter bahwa ada perubahan pada state widget tersebut. Ketika setState() dipanggil, Flutter akan merender ulang tampilan sehingga perubahan pada data bisa terlihat pada antarmuka pengguna.

Variabel yang Terdampak oleh setState() Hanya variabel dalam state kelas yang terpengaruh oleh setState(). Misalnya, jika ada variabel yang menyimpan jumlah klik tombol, ketika setState() dipanggil untuk memperbarui variabel ini, tampilan yang menampilkan jumlah klik akan diperbarui.

4.Jelaskan perbedaan antara const dengan final.
const: Kata kunci const digunakan untuk membuat nilai konstan yang ditentukan pada saat kompilasi (waktu build). Nilai ini tidak akan berubah sepanjang aplikasi berjalan, dan const juga bersifat immutable. Contoh: const myValue = 10;
const digunakan ketika nilai sudah diketahui dan tetap selama compile-time.

final: Kata kunci final digunakan untuk membuat variabel yang nilainya ditentukan hanya satu kali, yaitu pada saat pertama kali diakses. Setelah diinisialisasi, nilai ini tidak dapat diubah, tetapi inisialisasinya bisa ditunda hingga waktu eksekusi. Contoh: final myName = 'Alice';
final bisa digunakan ketika nilai diketahui saat runtime.

5.Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

- Membuat Proyek Flutter Baru:  dengan menjalankan perintah di terminal untuk membuat proyek baru: flutter create ecommerce_app

- Setiap tombol dibuat menggunakan widget ElevatedButton.icon, yang memungkinkan ikon dan teks berada dalam satu tombol.
Ikon yang digunakan adalah Icons.store untuk "Lihat Produk", Icons.add untuk "Tambah Produk", dan Icons.logout untuk "Logout".

- Mengatur warna background untuk setiap button dengan case switch pada Widget build di class ItemCard.

- Menampilkan pesan dengan ScaffoldMessenger pada saat card di tap pada Widget build di class ItemCard.



TUGAS 8
1.Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

Di Flutter, kata kunci const digunakan untuk mendefinisikan objek atau widget yang bersifat konstan atau immutable (tidak bisa diubah setelah didefinisikan, objek tersebut dibuat pada saat compile time dan tidak akan dibuat ulang saat aplikasi berjalan).

Kegunaan const di Flutter:
-Immutability: const memastikan bahwa nilai dari objek tersebut tidak bisa diubah setelah didefinisikan. Ini membuat kode lebih aman dan lebih mudah dipahami karena tidak akan ada perubahan yang tidak terduga.
-Penghematan Memori: Karena const mendukung canonicalization, objek yang sama dapat dibagikan antar bagian berbeda dari aplikasi tanpa menduplikasi memori.

Keuntungan Menggunakan const:
- Performa Lebih Baik: Widget const tidak akan dibuat ulang saat build() - dipanggil, yang dapat mengurangi kerja yang dilakukan oleh Flutter dan meningkatkan efisiensi.
- Kode Lebih Mudah Dipahami: Dengan menggunakan const, Anda menandai bahwa objek tersebut tidak akan berubah, sehingga kode Anda lebih dapat diprediksi.
- Optimalisasi Memori: Objek const hanya diinisialisasi satu kali dan dapat digunakan kembali di seluruh aplikasi.

Kapan Sebaiknya Menggunakan const: Gunakan const pada widget dan nilai yang tidak akan berubah sepanjang waktu aplikasi berjalan, seperti teks statis, padding, margin, atau elemen visual lainnya yang tidak dipengaruhi oleh data dinamis.

Kapan Sebaiknya Tidak Menggunakan const:Jika widget atau objek  perlu diperbarui berdasarkan data yang berubah, jangan gunakan const. Misalnya, jika suatu widget bergantung pada input pengguna atau data API yang berubah, const tidak akan cocok.

2.Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

Column dan Row adalah widget di Flutter yang digunakan untuk menyusun widget lainnya dalam bentuk tata letak vertikal dan horizontal.

Penjelasan Singkat:
Column: Menyusun widget anak dalam orientasi vertikal (dari atas ke bawah).
Row: Menyusun widget anak dalam orientasi horizontal (dari kiri ke kanan).

Perbedaan: 
Column digunakan untuk menyusun widget dalam orientasi vertikal, artinya widget akan diatur dari atas ke bawah. Ini cocok untuk membuat tata letak yang memerlukan penyusunan elemen secara vertikal, seperti daftar item, formulir, atau tampilan layar penuh yang berisi teks dan tombol yang disusun bertumpuk.Penggunaan Column sebaiknya dipilih saat Anda ingin membuat tata letak vertikal, misalnya jika Anda mendesain layar dengan teks yang diikuti oleh gambar dan tombol di bawahnya.

contoh:
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
    Text('Item 1'),
    Text('Item 2'),
    ElevatedButton(
      onPressed: () {},
      child: Text('Button'),
    ),
  ],
)

Penjelasan: widget disusun secara vertikal dengan mainAxisAlignment.center, yang menempatkan widget di tengah-tengah sumbu utama. crossAxisAlignment.start mengatur agar widget sejajar di sisi kiri sumbu silang.

Row, di sisi lain, digunakan untuk menyusun widget dalam orientasi horizontal, artinya widget akan diatur dari kiri ke kanan. Ini ideal untuk tata letak yang memerlukan elemen yang sejajar secara horizontal, seperti bar navigasi, deretan ikon, atau grup tombol yang berada dalam satu baris.Penggunaan Row lebih cocok untuk menampilkan widget yang perlu disusun dalam baris, seperti elemen menu horizontal atau tampilan grid sederhana.

contoh:
Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: <Widget>[
    Icon(Icons.star),
    Text('Hello'),
    ElevatedButton(
      onPressed: () {},
      child: Text('Click Me'),
    ),
  ],
)

Penjelasan: widget disusun secara horizontal dengan mainAxisAlignment.spaceAround, yang mendistribusikan ruang secara merata di antara widget. crossAxisAlignment.center memastikan widget sejajar di tengah sumbu silang (vertikal).


3.Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Dalam halaman form yang saya buat pada tugas ini, elemen input yang saya gunakan meliputi:

- TextFormField: Untuk input teks seperti product, description, dan price.

Namun, ada beberapa elemen input Flutter lain yang tidak saya gunakan pada tugas ini, seperti:
- DropdownButtonFormField: Digunakan untuk memilih pilihan dari daftar dropdown.
- RadioListTile: Digunakan untuk memilih salah satu pilihan dari beberapa pilihan yang disajikan dalam bentuk radio button.
- CheckboxListTile: Digunakan untuk memilih lebih dari satu pilihan (ceklist).
- dll.

4.Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Mengatur tema di Flutter dilakukan dengan memanfaatkan properti theme pada widget MaterialApp.
Cara Mengatur Tema di Flutter:
1. Buat ThemeData: Tentukan skema warna, teks, dan gaya visual lainnya menggunakan ThemeData.
2. Integrasikan dengan MaterialApp: Pasang theme di dalam MaterialApp untuk menerapkannya ke seluruh aplikasi.

Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat? Ya

5.Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

Untuk menangani navigasi dalam aplikasi Flutter dengan banyak halaman, Anda dapat menggunakan Navigator untuk navigasi dasar dengan push (Menambahkan halaman baru ke stack) dan pop (Menghapus halaman teratas dari stack dan kembali ke halaman sebelumnya), atau rute bernama (pushNamed) untuk struktur yang lebih terorganisir.

