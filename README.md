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
    - SnackBar
    - Container
    - Center
    - MainAxisAlignment
    - Icon

- Widget Buatan
    - MyApp

        Berguna sebagai perantara untuk *widget* MaterialApp.

    - HomePage

        Berguna untuk menampilkan halaman utama dari aplikasi.

    - MenuCard

        Berguna untuk menampilkan tombol-tombol pada menu HomePage.

---
> Jelaskan bagaimana cara kamu mengimplementasikan *checklist* di atas secara *step-by-step* (bukan hanya sekadar mengikuti tutorial)