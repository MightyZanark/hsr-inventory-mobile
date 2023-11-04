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

    - Scaffold

        Merupakan *widget* dasar yang berguna sebagai "alas" bagi *widget-widget* lain.

    - AppBar
    - SingleChildScrollView
    - Padding
    - Column
    - Text
    - GridView
    - Material
    - InkWell
    - ScaffoldMessenger
    - SnackBar
    - Container
    - Center
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