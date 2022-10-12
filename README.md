# Modul1_Probstat_5025211043
##Praktikum Probabilitas dan Statistika Modul 1
##Anas Azhar_Probstat(A)_5025211043

# 1. Distribusi Geometrik
##Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?
/home/naz17/Documents/Probstat_1_a
Dalam bahasa R sudah terdapat fungsi untuk menghitung distribusi geometrik secara langsung yaitu dengan memanggil fungsi dgeom() dengan parameter nilai x dan peluang.

b. mean Distribusi Geometrik dengan 10000 data random, prob = 0,20 dimana distribusi geometrik acak tersebut X = 3
/home/naz17/Documents/Probstat_1_b
Dalam bahasa R juga sudah terdapat fungsi untuk menghitung distribusi acak pada distribusi geometrik yaitu dengan memanggil fungsi rgeom() dengan parameter nilai random dan peluang. Karena yang kita minta adalah nilai distribusi acak yang bernilai 3 maka hasil fungsi rgeom() disamadengankan 3. Lalu hitung rata-ratanya dengan fungsi mean.
Dalam soal ini juga menggunakan fungsi set.seed untuk mempertahankan data acak yang sama pada setiap percobaan.

c. Bandingkan hasil poin a dan b, apa kesimpulan yang bisa didapatkan?
Probstat_1_c

d. Histogram Distribusi Geometrik, Peluang x = 3 gagal sebelum sukses pertama
Probstat_1_d
Hasil dari histogram bisa dilihat pada gambar. Dalam hal ini juga digunakan fungsi set.seed() agar data acak yang dihasilkan selalu sama pada setiap percobaan.

e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik
Untuk menghitung rumus dan varian pada Distribusi Geomterik digunakan rumus:
/home/naz17/Documents/Rumus_1.png
Sehingga didapatkan hasil:
/home/naz17/Documents/Probstat_1_e

