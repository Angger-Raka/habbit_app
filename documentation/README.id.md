# Dokumentasi (Penjelasan)

pada projek ini saya memisahkan antara feature dan core. untuk feature berisi fitur yang di dalam aplikasi. dan untuk core berisi fungsi fungsi yang reusable untuk membantu membuat feature

## menambahkan feature

untuk features kita membuat baru dengan template module. untuk membuatnya dengan command line sebagai berikut:

```shell
cd features
flutter create --template module <nama_module>
```

## menambahkan dependensi

untuk depedensi saya taruh ke satu module yaitu core sehingga jika membutuhkan tinggal masuk ke module core

```shell
cd libraries/core/
flutter pub add <nama dependensi>
flutter pub get
```

maka dengan ini tidak perlu pub get lagi pada features. tinggal import package yang ingin di pakai
