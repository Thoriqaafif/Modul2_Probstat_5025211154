# Modul2_Probstat_5025211154

## Nomor 1
>Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴\
![table1](soal1.png)\
>Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen  dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.
- Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas\
Pertama, saya menggunakan variabel x dan y untuk menyimpan semua data kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas. Selanjutnya, selisih kedua data tersebut saya masukkan ke dalam variabel d. Standar deviasi kemudian dicari menggunakan fungsi sd pada bahasa r menggunakan code sebagai berikut:
    ```R
    x <- c(78,75,67,77,70,72,78,74,77)
    y <- c(100,95,70,90,90,90,89,90,100)
    d <- y-x
    sd <- sd(d)
    print(sd)
    ```
    Dengan implementasi kode tersebut, didapatkan standar deviasi sebesar:
    '''R
    > print(sd)
    [1] 6.359595
    '''
- carilah nilai t (p-value)\
Untuk mencari mean distribusi geometrik, saya pertama menggunakan rgeom() untuk mengenerate data variabel random distribusi geometrik dan memasukkannya ke dalam variabel x. Nilai mean kemudian didapatkan dengan menggunakan fungsi mean() dengan parameter x==3. Fungsi tersebut akan mengkalkulasi peluang munculnya x=3 dalam 10000 data random tersebut. Untuk lebih jelasnya, berikut kode yang saya gunakan:
    ```R
    #b
    set.seed(10000)
    x <- rgeom(10000, p)
    mean <- (mean(x==3))
    paste("Mean =", mean)
    ```
    Dengan langkah tersebut, didapatkan output "Mean = 0.1023"
- tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”\
Hasil pada poin a dengan b memiliki kemiripan hingga 3 angka di belakang koma. Hal ini menunjukkan bahwa peluang teoritis, dengan menggunakan pdf, dapat mencerminkan peluang eksperimental yang diambil dengan data random (terutama jika volume data besar).

## Nomor 2
>Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer.
- Apakah Anda setuju dengan klaim tersebut?\
Ya, saya setuju
- Jelaskan maksud dari output yang dihasilkan! \
    ![1b](https://github.com/Thoriqaafif/picture/blob/main/Screenshot%202022-10-12%20212825.png)
- Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!\
Nilai rataan dan varian dari distribusi binomial didapat dengan rumus n*p dan n*p*q. Maka, kedua nilai tersebut dapat dicari dengan kode berikut:
    ```R
    #c
    rataan <- n*p
    varian <- n*p*q
    paste("Rataan =", rataan)
    paste("Varian =", varian)
    ```
    Didapatkan hasil Rataan = 4 dan varian = 3,2.

## Nomor 3
>Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.\
![table2](Tabel2.png)\
>Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)? Buatlah :
- H0 dan H1\

- Hitung Sampel Statistik\
    ![1b](https://github.com/Thoriqaafif/picture/blob/main/Screenshot%202022-10-12%20212846.png)
- Lakukan Uji Statistik (df =2)\
Poin a menunjukkan peluang lahirnya 6 bayi dalam sehari sedangkan poin b menunjukkan histogram frekuensi hari di mana bayi lahir sebanyak x. Jika dilihat, histogram menunjukkan bahwa kelahiran 6 bayi terjadi sekitar 20 kali. Dengan n=365, maka kelahiran 6 bayi sebesar 0,05479. Nilai tersebut agak jauh dari poin a, namun terdapat pengaruh jumlah data juga yang hanya 365 hari.
- Nilai Kritikal\
Pada distribusi poisson, rataan dan varian memiliki nilai yang sama dengan lambda sehingga saya hanya perlu memasukkan nilai lambda ke dalam variabel rataan dan varian seperti kode di bawah ini.
    ```R
    #d
    rataan <- lambda
    varian <- lambda
    paste("Rataan =", rataan)
    paste("Varian =", varian)
    ```
- Keputusan\
- Kesimpulan\

## Nomor 4
>Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya ia mengumpulkan data  tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing.\H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama
- Buatlah masing masing jenis spesies menjadi  3 subjek "Grup" (grup 1,grup 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.\

- carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?\
    ![1b](https://github.com/Thoriqaafif/picture/blob/main/Screenshot%202022-10-12%20212903.png)
- Untuk uji ANOVA, buatlah model linier dengan Panjang versus Grup dan beri nama model tersebut model 1.\
- Dari Hasil Poin C , Berapakah nilai-p ? ,  Apa yang dapat Anda simpulkan dari H0?\
- Verifikasilah jawaban model 1 dengan Post-hooc test TukeyHSD ,  dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.\
- Visualisasikan data dengan ggplot2\


## Nomor 5
>Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali 
- Buatlah plot sederhana untuk visualisasi data\

- Lakukan uji ANOVA dua arah untuk 2 faktor\
    n = 10
    ![1b](https://github.com/Thoriqaafif/picture/blob/main/Screenshot%202022-10-12%20212925.png)
    n = 100
    ![1b](https://github.com/Thoriqaafif/picture/blob/main/Screenshot%202022-10-12%20212937.png)
    n = 1000
    ![1b](https://github.com/Thoriqaafif/picture/blob/main/Screenshot%202022-10-12%20212948.png)
    n = 10000
    ![1b](https://github.com/Thoriqaafif/picture/blob/main/Screenshot%202022-10-12%20213004.png)
- Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)\
Untuk mencari nilai rataan dan varian distribusi exponensial, saya pertama mengenerate data random sebanyak 100 dengan menggunakan fungsi rexp() dan dimasukkan ke dalam variabel set. Setelah itu, rataan dan varian dicari dengan menggunakan fungsi mean(set) dan var(set).
    ```R
    #a
    #c
    set.seed(1)
    n <- 100
    set <- rexp(n,lambda)
    rataan <- mean(set)
    varian <- var(set)
    paste("Rataan =", rataan)
    paste("Varian =", varian)
    ```
- Lakukan uji Tukey\
- Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey\
