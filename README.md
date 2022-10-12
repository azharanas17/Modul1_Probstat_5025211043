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
![1_a.png](https://github.com/azharanas17/documentation/blob/main/Probstat_1_a)

Dalam bahasa R sudah terdapat fungsi untuk menghitung distribusi geometrik secara langsung yaitu dengan memanggil fungsi dgeom() dengan parameter nilai x dan peluang.

b. mean Distribusi Geometrik dengan 10000 data random, prob = 0,20 dimana distribusi geometrik acak tersebut X = 3
```
n = 10000
p = 0.20
x = 3
set.seed(10)
mean(rgeom(n, p)==3)
```
![1_b.png](https://github.com/azharanas17/documentation/blob/main/Probstat_1_b)

Dalam bahasa R juga sudah terdapat fungsi untuk menghitung distribusi acak pada distribusi geometrik yaitu dengan memanggil fungsi rgeom() dengan parameter nilai random dan peluang. Karena yang kita minta adalah nilai distribusi acak yang bernilai 3 maka hasil fungsi rgeom() disamadengankan 3. Lalu hitung rata-ratanya dengan fungsi mean.
Dalam soal ini juga menggunakan fungsi set.seed untuk mempertahankan data acak yang sama pada setiap percobaan.

c. Bandingkan hasil poin a dan b, apa kesimpulan yang bisa didapatkan?
<br>
```Pada poin a distribusi geometrik akan menghasilkan nilai tetap. Sedangkan pada poin b distribusi acak akan menghasilkan nilai yang berubah-ubah namun untuk x = 3, nilai yang didapat masih mendekati nilai pada poin a.```
<br><br>
d. Histogram Distribusi Geometrik, Peluang x = 3 gagal sebelum sukses pertama

![1_d.png](https://github.com/azharanas17/documentation/blob/main/Probstat_1_d?raw=true)
Hasil dari histogram bisa dilihat pada gambar. Dalam hal ini juga digunakan fungsi set.seed() agar data acak yang dihasilkan selalu sama pada setiap percobaan.

e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik
Untuk menghitung rumus dan varian pada Distribusi Geomterik digunakan rumus:
```
Rataan = 1/p
Varian = (1-p)/p^2
```
Sehingga didapatkan hasil:
![1_e.png](https://github.com/azharanas17/documentation/blob/main/Probstat_1_e)


### 2. Distribusi Binomial
#### Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan:

a. Peluang terdapat 4 pasien yang sembuh
```
n = 20 
p = 0.2
x = 4
dbinom(x, n, p)
```
![2_a.png](https://github.com/azharanas17/documentation/blob/main/Probstat_2_a)

Seperti soal pertama, untuk menghitung distribusi binomial dapat langsung menggunakan fungsi yang sudah disediakan bahasa R. Tinggal menyesuaikan parameter yang dibutuhkan, dalam hal ini yaitu nilai yang sembuh, jumlah seluruh pasien dan peluang sembuh.

b. Gambarkan grafik histogram berdasarkan kasus tersebut.

![2_b.png]https://github.com/azharanas17/documentation/blob/main/Probstat_2_b)

Menggunakan fungsi plot() dan dbinom() dengan parameter nilai orang yang sembuh yaitu 0 sampai 20, jumlah orang 20 dan peluang sembuh yaitu 0.2

c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial
Didapatkan nilai rataan dan varian untuk distribusi binomial, sebagai berikut:

![2_c.png](https://github.com/azharanas17/documentation/blob/main/Probstat_2_c)


### 3. Distribusi Poisson
#### Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari

a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
```
x = 6
lambda = 4.5
dpois(x, lambda)
```
Sehingga didapatkan hasil sebagai berikut:

![3_a.png](https://github.com/azharanas17/documentation/blob/main/Probstat_3_a)

b. Simulasikan dan buatlah hihstogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)

![3_b,png](https://github.com/azharanas17/documentation/blob/main/Probstat_3_b)

Menggunakan fungsi hist() dan rpois()

c. Bandingkan hasil poin a dan b, Apa kesimpulan yang bisa didapatkan?
<br>
```Nilai yang didapatkan pada poin a mendekati nilai dari rata-rata distribusi acak pada poin b dengan x = 6 (dpois(6,3) mendekati mean(rpois(365,3)==6))```
<br><br>

d. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson
Didapatkan nilai hasil rataan dan varian dari Distribusi Poisson, sebagai berikut:

![3_d.png](https://github.com/azharanas17/documentation/blob/main/Probstat_3_d)


### 4. Distribusi Chi-Square
#### Diketahui nilai x = 2 dan v = 10. Tentukan:

a. Fungsi probabilitas dan Distribusi Chi-Square
```
x = 2
v = 10
dchisq(x,v)
```
Sehingga didaptkan hasil sebagai berikut:

![4_a.png](https://github.com/azharanas17/documentation/blob/main/Probstat_4_a)

b. Histogram dari Distribusi Chi-Square dengan 100 data random

![4_b.png](https://github.com/azharanas17/documentation/blob/main/Probstat_4_b)

Menggunakan fungsi hist() dan rchisq()

c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square
Didapatkan nilai hasil rataan dan varian dari Distribusi Chi-Square, sebagai berikut:

![4_c.png](https://github.com/azharanas17/documentation/blob/main/Probstat_4_c)

### 5. Distribusi Eksponensial
#### Diketahui bilangan acak berdistribusi eksponensial (lambda = 3). Tentukan

a. Fungsi probabilitas dari Distribusi Eksponensial
fungsi untuk 100 bilangan
```
n = 100
lambda = 3
dexp(n, lambda)
```
Sehingga didapatkan hasil sebagai berikut:

![5_a.png](https://github.com/azharanas17/documentation/blob/main/Probstat_5_a)

b. Histogram dari Ditribusi Eksponensial untuk 10, 100, 1000 dan 10000 bilangan random

![5_b.png](https://github.com/azharanas17/documentation/blob/main/Probstat_5_b)

c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Eksponensial
Didapatkan nilai hasil dari rataan dan varian dari Distribusi Eksponensial, sebagai berikut:

![5_c.png](https://github.com/azharanas17/documentation/blob/main/Probstat_5_c)

### 6. DIstribusi Normal
#### Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

a. Fungsi probabilitas dan Distribusi normal P(X1 <= x <= X2), hitung Z-Scorenya dan plot generate randomnya dalam bentuk grafik.
```
n = 100
mean = 50
sd = 8
zScore(n, mean, sd)
zScore
plot(zScore)
```
Sehingga didapatkan hasil sebagai berikut:

![6_a.png](https://github.com/azharanas17/documentation/blob/main/Probstat_6_a)

b. Generate histogram dari Distribusi Normal dengan breaks 50
 
![5_b.png](https://github.com/azharanas17/documentation/blob/main/Probstat_5_b)
 
c. Nilai varian (σ²) dari hasil generate random nilai Distribusi Normal
Didapatkan nilai hasil varian dari Distribusi Normal adalah sebagai berikut:

![6_c.png](https://github.com/azharanas17/documentation/blob/main/Probstat_6_c)
