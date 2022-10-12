#nomer 1
#Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan 
#seseorang yang menghadiri acara vaksinasi sebelumnya.

#a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?
x = 3
p = 0.20
print(dgeom(x, p))

#b. mean Distribusi Geometrik dengan 10000 data random, prob = 0,20 dimana distribusi geometrik acak tersebut X = 3
n = 10000
p = 0.20
x = 3
set.seed(10)
mean(rgeom(n, p)==3)

#c. Bandingkan hasil poin a dan b, apa kesimpulan yang bisa didapatkan?
paste("Pada poin a distribusi geometrik akan menghasilkan nilai tetap. Sedangkan pada poin b distribusi acak akan menghasilkan nilai yang berubah-ubah namun untuk x = 3, nilai yang didapat masih mendekati nilai pada poin a.")

#d. Histogram Distribusi Geometrik, Peluang x = 3 gagal sebelum sukses pertama
n = 10000
p = 0.20
set.seed(10)
hist(rgeom(n,p),
     main="Histrogram Distribusi Geometrik")

#e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik
paste("Rataan", 1/p)
paste("Varian", (1-p)/p^2)

#------------------------------------------------
#nomer 2
#Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2
#Tentukan:

#a. Peluang terdapat 4 pasien yang sembuh
n = 20 
p = 0.2
x = 4
dbinom(x, n, p)

#b. Gambarkan grafik histogram berdasarkan kasus tersebut.
plot(0:20, dbinom(0:20,n,p), 
     type = 'h',
     xlab = 'X',
     ylab = 'Distribusi Binomial',
     main = "Histogram Distribusi Binomial")

#c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial
paste("Rataan", n*p)
paste("Varian", n*p*(1-p))

#------------------------------------------------
#nomer 3
#Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata
#historis 4,5 bayi lahir di rumah sakit ini setiap hari

#a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
x = 6
lambda = 4.5
dpois(x, lambda)
dpois(x, lambda)*365
rpois(365, lambda)==6

#b. Simulasikan dan buatlah hihstogram kelahiran 6 bayi akan lahir di rumah sakit ini
#selama setahun (n = 365)
n = 365
set.seed(10)
hist(rpois(n, lambda),
     main = "Histogram Distribusi Poisson")

#c. Bandingkan hasil poin a dan b, Apa kesimpulan yang bisa didapatkan?
paste("Nilai yang didapatkan pada poin a mendekati nilai dari rata-rata distribusi acak pada poin b dengan x = 6 (dpois(6,3) mendekati mean(rpois(365,3)==6))")

#d. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson
paste("Rataan", lambda)
paste("Varian", lambda)

#------------------------------------------------
#nomer 4
#Diketahui nilai x = 2 dan v = 10. Tentukan:

#a. Fungsi probabilitas dan Distribusi Chi-Square
x = 2
v = 10
dchisq(x, v)

#b. Histogram dari Distribusi Chi-Square dengan 100 data random
n = 100
set.seed(10)
hist(rchisq(n, v),
     main = "Histogran Distribusi Chi-Square")

#c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square
paste("Rataan", v)
paste("Varian", 2*v)

#------------------------------------------------
#nomer 5
#Diketahui bilangan acak berdistribusi eksponensial (lambda = 3). Tentukan

#a. Fungsi probabilitas dari Distribusi Eksponensial
#untuk 100 bilangan
n = 100
lambda = 3
dexp(n, lambda)

#b. Histogram dari Ditribusi Eksponensial untuk 10, 100, 1000 dan 10000 bilangan random
set.seed(10)
n = 10
hist(rexp(n, lambda),
     main = "Histogram Distribusi Eksponensial n=10")
set.seed(10)
n = 100
hist(rexp(n, lambda),
     main = "Histogram Distribusi Eksponensial n=100")
set.seed(10)
n = 1000
hist(rexp(n, lambda),
     main = "Histogram Distribusi Eksponensial n=1000")
set.seed(10)
n = 10000
hist(rexp(n, lambda),
     main = "Histogram Distribusi Eksponensial n=10000")

#c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Eksponensial
n = 100
lambda = 3
set.seed(1)
paste("Rataan", mean(rexp(n,lambda)))
paste("Varian", sd(rexp(n,lambda))^2)

#------------------------------------------------
#nomer 6
#Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

#a. Fungsi probabilitas dan Distribusi normal P(X1 <= x <= X2), hitung Z-Scorenya
#dan plot generate randomnya dalam bentuk grafik.
n = 100
mean = 50
sd = 8
zScore = rnorm(n, mean, sd)
zScore
plot(zScore)

#b. Generate histogram dari Distribusi Normal dengan breaks 50
hist(zScore,
     breaks = 50,
     main = "5025211043_Anas Azhar_Probstat_A_DNhistogram")

#c. Nilai varian (σ²) dari hasil generate random nilai Distribusi Normal
paste("Varian", sd^2)

