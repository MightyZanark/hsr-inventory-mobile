# HSR Game Inventory - Mobile
- [Tugas 7](#tugas-7)


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