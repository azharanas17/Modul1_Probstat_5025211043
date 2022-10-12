# Modul1_Probstat_5025211043
**Anas Azhar_Probstat(A)_5025211043**
<br><br>

### 1. Distribusi Geometrik
#### Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?
```
x = 3
p = 0.20
print(dgeom(x, p))
```
Dalam bahasa R sudah terdapat fungsi untuk menghitung distribusi geometrik secara langsung yaitu dengan memanggil fungsi dgeom() dengan parameter nilai x dan peluang.

b. mean Distribusi Geometrik dengan 10000 data random, prob = 0,20 dimana distribusi geometrik acak tersebut X = 3
```
n = 10000
p = 0.20
x = 3
set.seed(10)
mean(rgeom(n, p)==3)
```
Dalam bahasa R juga sudah terdapat fungsi untuk menghitung distribusi acak pada distribusi geometrik yaitu dengan memanggil fungsi rgeom() dengan parameter nilai random dan peluang. Karena yang kita minta adalah nilai distribusi acak yang bernilai 3 maka hasil fungsi rgeom() disamadengankan 3. Lalu hitung rata-ratanya dengan fungsi mean.
Dalam soal ini juga menggunakan fungsi set.seed untuk mempertahankan data acak yang sama pada setiap percobaan.

c. Bandingkan hasil poin a dan b, apa kesimpulan yang bisa didapatkan?
```
Pada poin a distribusi geometrik akan menghasilkan nilai tetap. Sedangkan pada poin b distribusi acak akan menghasilkan nilai yang berubah-ubah namun untuk x = 3, nilai yang didapat masih mendekati nilai pada poin a.
```

d. Histogram Distribusi Geometrik, Peluang x = 3 gagal sebelum sukses pertama

Hasil dari histogram bisa dilihat pada gambar. Dalam hal ini juga digunakan fungsi set.seed() agar data acak yang dihasilkan selalu sama pada setiap percobaan.

e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik
Untuk menghitung rumus dan varian pada Distribusi Geomterik digunakan rumus:
/home/naz17/Documents/Rumus_1.png
Sehingga didapatkan hasil:
/home/naz17/Documents/Probstat_1_e

