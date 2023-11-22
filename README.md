# HSR Game Inventory - Mobile
- [Tugas 7](#tugas-7)
- [Tugas 8](#tugas-8)
- [Tugas 9](#tugas-9)

## Tugas 7

> Apa perbedaan utama antara *stateless* dan *stateful widget* dalam konteks pengembangan aplikasi Flutter?

Perbedaan utama antara *stateless* dan *stateful widget* di Flutter adalah tentang bagaimana *widget* tersebut bereaksi ketika terdapat suatu *event*. Pada *stateless widget*, jika terjadi suatu *event*, biasanya tampilan *widget* tersebut sendiri tidak berubah namun bisa saja *widget* tersebut menyebabkan perubahan di bagian lain seperti berpindah halaman ketika menekan suatu tombol. Di lain sisi, pada *stateful widget*, ketika terjadi suatu *event*, biasanya tampilan dari *widget* itu sendiri berubah, namun perubahan tersebut tidak mempengaruhi *widget* lain.

---
> Sebutkan seluruh *widget* yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

- Widget Flutter
    - MaterialApp
        
        Merupakan *widget* dasar yang menjadi tumpuan untuk *widget-widget* lain.
    
    - ThemeData

        Merupakan *widget* yang berfungsi untuk memgkonfigurasi tema visual dari MaterialApp.
    
    - ColorScheme

        Merupakan *widget* yang berfungsi untuk mengkonfigurasi skema warna yang akan digunakan pada ThemeData.

    - Scaffold

        Merupakan *widget* dasar yang berguna sebagai "alas" bagi *widget-widget* lain.

    - AppBar

        Merupakan *widget* yang berguna untuk menampilkan menu bar pada bagian atas aplikasi yang nantinya bisa ditambahkan dengan *widget-widget* lain untuk keperluan navigasi.

    - SingleChildScrollView

        Merupakan *widget* yang memungkinkan kita meng-*scroll* suatu bagian.

    - Padding

        Merupakan *widget* yang berfungsi untuk menambahkan padding di sekitar anak dari *widget* tersebut.

    - EdgeInsets

        Merupakan *widget* yang berfungsi mengatur besarnya *offset* yang akan diberikan kepada suatu *widget* yang bersifat *immutable*.

    - Column

        Merupakan *widget* yang berfungsi untuk menampilkan anak-anaknya dalam sebuah array vertikal, sehingga pada tampilan aplikasi, *widget-widget* yang merupakan anak dari Column akan tergambar dari atas ke bawah dalam halaman yang menggunakan Column.

    - Text

        Merupakan *widget* yang berfungsi untuk menampilkan teks pada aplikasi.

    - TextAlign

        Merupakan *widget* yang berguna untuk mengkonfigurasi *alignment* dari teks pada *widget* Text.

    - TextStyle

        Merupakan *widget* yang berguna untuk mengkonfigurasi bentuk dari teks pada *widget* Text.

    - FontWeight

        Merupakan *widget* yang berguna untuk mengkonfigurasi ketebalan teks pada *widget* Text.

    - GridView

        Merupakan *widget* yang memungkinkan kita meng-*scroll* *widget-widget* dalam sebuah *grid* 2 dimensi (dapat *scroll* ke kanan/kiri dan atas/bawah, tergantung setting `scrollDirection`). 

    - Material

        Merupakan *widget* dasar untuk membuat suatu *widget* khusus dengan *clipping*, elevasi, dan *ink effects* yang sesuai dengan yang diinginkan.

    - Colors

        Merupakan *widget* yang berguna untuk mengkonfigurasi warna dari sebuah *widget*.

    - InkWell

        Merupakan *widget* yang akan merespon ketika ditekan dengan menimbulkan efek visual untuk menunjukkan *widget* tersebut telah ditekan.

    - ScaffoldMessenger

        Merupakan *widget* yang berfungsi untuk menampilkan dan menghilangkan *widget* SnackBar.

    - SnackBar

        Merupakan *widget* yang berfungsi untuk menampilkan pesan selama durasi waktu tertentu pada bagian bawah layar, yang setelah durasi tersebut akan hilang.

    - Container

        Merupakan *widget* yang mirip dengan *tag* `<div>` pada HTML, yang di dalamnya sudah terdapat batasan *layout* dan properti dalam penggambaran *widget*, seperti padding, di dalam Container sehingga anaknya tidak perlu melakukan konfigurasi terhadap properti atau *layout*.

    - Center

        Merupakan *widget* yang berfungsi untuk meletakkan anaknya di bagian tengah pada letak *widget* Center sendiri.

    - MainAxisAlignment

        Merupakan *widget* untuk mengkonfigurasi di mana anak dari *widget* yang memiliki properti `mainAxisAlignment` harus di letakkan pada sumbu utamanya.

    - Icon

        Merupakan *widget* yang berguna menampilkan suatu *icon* dengan font yang sesuai dengan konfigurasi pada IconData, dalam kasus ini, font yang digunakan bersesuaian dengan Icon yang dipilih melalui *class* `Icons`.

- Widget Buatan
    - MyApp

        Berguna sebagai perantara untuk *widget* MaterialApp.

    - HomePage

        Berguna untuk menampilkan halaman utama dari aplikasi.

    - MenuCard

        Berguna untuk menampilkan tombol-tombol pada menu HomePage.

---
> Jelaskan bagaimana cara kamu mengimplementasikan *checklist* di atas secara *step-by-step* (bukan hanya sekadar mengikuti tutorial)
1. Pertama, saya menginisialisasi projek dengan perintah `flutter create hsr_inventory` lalu juga menginisialisasi git melalui perintah `git init` dan menambahkan *remote repository* melalui `git remote add origin https://github.com/MightyZanark/hsr-inventory-mobile.git`. Setelah itu, saya membuat commit inisial dan melakukan push.

2. Setelah itu, saya membuat *file* baru bernama `menu.dart` dan memindahkan *class* `MyHomePage` dari `main.dart` ke `menu.dart` serta merubah namanya menjadi `HomePage` saja.

3. Kemudian, saya mulai mengubah isi dari `HomePage` yang kurang lebih mirip dengan tutorial namun saya mengubah beberapa hal lain untuk mengakomodasi perbedaan kebutuhan, seperti mengubah teks dan *icon* yang digunakan.

4. Pada *class* `MenuCard` yang merupakan ekuivalen dari `ShopCard`, saya menambahkan atribut `color` yang merupakan sebuah warna *random* dari semua pilihan warna yang ada tersedia di *class* `Colors`.

5. Saya juga membuat *file* bernama `item.dart` yang kurang lebih saya ambil dari [sini](https://github.com/MightyZanark/OprecRistek/blob/f640536662cdb751ed3d1303a5daa8b60ffe4295/lib/api_fetch.dart) dengan memodifikasi untuk kebutuhan aplikasi ini.

---
## Tugas 8

> Jelaskan perbedaan antara `Navigator.push()` dan `Navigator.pushReplacement()`, disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

*Function* `Navigator.push()` akan meletakkan halaman baru "di atas" halaman sebelumnya sehingga jika tombol *back* ditekan pada *device*, layar akan kembali ke halaman sebelumnya. Sedangkan, *function* `Navigator.pushReplacement()` akan menggantikan halaman sebelumnya dengan halaman baru sehingga tidak dapat kembali ke halaman sebelumnya jika tombol *back* pada *device* ditekan.

Contoh penggunaan `Navigator.push()` yang tepat adalah ketika halaman yang ingin ditampilkan bersifat sementara seperti halaman untuk melihat detil suatu barang ketika gambar dari barang tersebut ditekan.

Contoh penggunaan `Navigator.pushReplacement()` yang tepat adalah ketika halaman sebelumnya tidak perlu ditampilkan lagi seperti ketika seorang pengguna berhasil *login*.

---
> Jelaskan masing-masing *layout widget* pada Flutter dan konteks penggunaannya masing-masing!
- ListView
    
    Merupakan *layout widget* yang akan menampilkan anak-anaknya dalam arah *scroll* dan biasa digunakan untuk menampilkan suatu *list of items* yang dapat berupa halaman-halaman yang dapat diakses atau barang-barang yang dijual di sebuah toko.

- Align

    Merupakan *layout widget* yang berguna untuk meletakkan anaknya pada bagian tertentu di dalamnya seperti di bagian kanan atas atau bagian kiri bawah. *Widget* ini biasa digunakan ketika kita ingin mengatur peletakkan suatu *widget* secara spesifik pada suatu bagian.

- Center

    Merupakan *layout widget* yang mirip seperti Align, namun hanya mampu untuk meletakkan anaknya tepat di tengah dari dirinya sendiri. *Widget* ini biasa digunakan ketika kita tau bahwa kita hanya ingin meletakkan suatu *widget* tertentu tepat di bagian tengah.

- Padding

    Merupakan *layout widget* untuk menambahkan area kosong di sekitar anaknya. *Widget* ini biasa digunakan ketika kita ingin memberikan jarak antara 2 atau lebih *widget* agar tidak terlihat terlalu berdekatan. 

- Column

    Merupakan *layout widget* yang akan menampilkan anak-anaknya secara dalam sebuah *array* vertikal dan anak-anaknya akan memenuhi area horizontal sesuai dengan kebutuhan masing-masing. *Widget* ini biasa digunakan ketika kita ingin menampilkan sebuah *list of items* dari atas ke bawah atau sebaliknya.

---
> Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

- TextFormField

    Elemen input ini saya gunakan agar dapat menerima input berupa teks dari pengguna aplikasi

- ElevatedButton

    Elemen input ini saya gunakan untuk melakukan validasi terhadap input teks yang dimasukkan pengguna pada TextFormField dan kemudian menampilkan pesan berhasil serta keterangan apa saja yang di input oleh pengguna. 

---
> Bagaimana penerapan *clean architecture* pada aplikasi Flutter?

Penerapan *clean architecture* pada aplikasi Flutter adalah dengan memisahkan *widget* dan halaman yang kita buat sendiri ke dalam suatu *file* khusus untuk *widget* atau halaman tersebut agar setiap *widget* dan halaman yang kita buat terdapat dalam *file*nya tersendiri. *File-file* tersebut kemudian akan diletakkan ke dalam sebuah direktori seperti `widgets` untuk menampung semua *file* yang mengandung *widget* yang kita buat dan `screens` untuk menampung semua *file* yang mengandung halaman yang kita buat. 

---
> Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)

1. Pertama, saya membuat direktori `widgets` dan `screens` kemudian memindahkan `menu.dart` ke direktori `screens` dan `item.dart` ke direktori `widgets`. Setelah itu, saya menghapus deklarasi `MenuItem` dan `MenuCard` pada *file* `menu.dart` dan memindahkannya ke *file* baru bernama `menu_card.dart` pada direktori `widgets` dan menyesuaikan *import* di *file-file* terkait.

2. Setelah pemisahan tersebut, saya membuat *file* `drawer.dart` pada direktori `widgets` yang akan diisi kode untuk berpindah halaman dari `Home` ke `Add Item`. Kode dari `drawer.dart` kurang lebih sama dengan yang ada di tutorial, hanya berbeda pada teks dan *style* nya saja.

3. Setelah itu saya membuat *file* baru lagi bernama `add_item.dart` pada direktori `screens` guna menampung *code* untuk halaman *form* untuk menambahkan `item`. Isi dari *file* `add_item.dart` tersebut juga kurang lebih sama dengan yang ada di tutorial, hanya berbeda pada teks dan penamaan variabel. Saya berpikir untuk menambahkan satu lagi input yang berupa pilihan namun karena waktu yang terbatas, saya belum sempat melakukannya.

4. Setelah kode `add_item.dart` selesai, saya tambahkan *routing* nya pada file `drawer.dart` dan mengubah `menu.dart` untuk menampilkan *drawer* yang telah saya buat pada `drawer.dart`. Saya juga mengubah `menu_card.dart` agar ketika nama tombol adalah `Add Item`, pengguna akan diarahkan ke halaman untuk menambahkan *item* yang saya telah buat di `add_item.dart`.

---
## Tugas 9

> Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Bisa, tapi akan membuat mengolah data JSON lebih rumit dibanding jika kita membuat model terlebih dahulu yang akan merepresentasikan data JSON ke dalam bentuk yang lebih mudah di olah dalam *code*.

---
> Jelaskan fungsi dari `CookieRequest` dan jelaskan mengapa *instance* `CookieRequest` perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

Berdasarkan *source code*nya, fungsi dari `CookieRequest` adalah untuk membantu dalam membuat *HTTP Requests* ke *back-end* Django tanpa kita sendiri harus memikirkan bagaimana meng-*handle* *cookies* dan data yang dikirimkan dari Django. *Instance* `CookieRequest` perlu dibagikan ke semua komponen di aplikasi Flutter karena menyimpan *cookies* yang akan diperlukan untuk melakukan *request* lain, seperti *request* untuk meminta *list* barang yang dimiliki oleh pengguna.

---
> Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.

1. Data berupa data JSON diambil dari *back-end* Django menggunakan GET Request melalui *library* `pbp_django_auth`.
2. Data yang diterima akan di-*decode* di Flutter dan kemudian di ubah menjadi model yang sesuai.
3. Model kemudian akan ditampilkan melalui *widget* `FutureBuilder` yang menunggu hingga *request asynchronous* mengembalikan data dan kemudian menampilkan data tersebut melalui *widget-widget* lain.

---
> Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

1. Input data akun pada Flutter akan dikirimkan ke *back-end* Django menggunakan POST Request melalui *library* `pbp_django_auth` dalam bentuk JSON.
2. Data tersebut kemudian akan di proses oleh *back-end* Django dan setelah itu Django akan mengirimkan *response* yang berisi data hasil proses autentikasi.
3. Flutter akan menerima *response* yang dikirimkan Django dan jika autentikasi berhasil, maka tampilan akan berubah menjadi `HomePage`, sedangkan jika gagal tampilan akan tetap berada pada halaman autentikasi.

---
> Sebutkan seluruh *widget* yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.

- FutureBuilder

    Merupakan *widget* yang berfungsi untuk membuat *widget* lain secara *asynchronous*, sehingga bergantung pada kapan data berhasil didapatkan dari API untuk menampilkan data.

- CircularProgressIndicator

    Hanya merupakan *widget* visual yang digunakan untuk mengindikasikan halaman sedang di *load*.

- TextEditingController

    Merupakan *widget* yang berfungsi untuk memberikan informasi kepada *event listeners* dari sebuah `TextField` ketika *text* yang berada di dalam `TextField` tersebut berubah.

- SizedBox

    Merupakan *widget* yang membuat sebuah kotak sesuai dengan tinggi dan lebar yang dispesifikasikan. *Widget* tersebut menurut saya biasanya hanya digunakan sebagai spasi antara *widget-widget* lain.

---
> Jelaskan bagaimana cara kamu mengimplementasikan *checklist* di atas secara *step-by-step*! (bukan hanya sekadar mengikuti tutorial).

1. Pertama, saya melakukan *copy-paste* untuk `login.dart` dari hasil tutorial saya karena pada dasarnya hal yang dibutuhkan sama. Setelah itu, saya melakukan *copy-paste* sekali lagi dan membuat *file* baru bernama `register.dart` untuk mengurus pembuatan akun baru dari Flutter. Di halaman login, saya juga menambahkan tombol yang ketika ditekan akan mengarahkan pengguna ke halaman register.

2. Setelah itu, saya memodifikasi *project* Django saya untuk dapat menerima *request* untuk login, logout, dan register dari Flutter, serta mengambil *item* apa saja yang dimiliki pengguna yang sedang login dan menambahkan item untuk pengguna itu. 

3. Kemudian, saya memodifikasi *file* `add_item.dart` dan `view_item.dart` agar terintegrasi dengan Django. Hal ini dilakukan dengan menggunakan `CookieRequest` dan melakukan GET *request* ke *endpoint* yang sesuai.

4. Setelah hal teknis selesai, saya membuat *file* `item_detail.dart` yang berfungsi untuk memperlihatkan *detail* dari sebuah *item* ketika *card* dari *item* itu ditekan dan `item_card.dart` yang berfungsi untuk menampilkan *item* di halaman `view_item.dart`.
