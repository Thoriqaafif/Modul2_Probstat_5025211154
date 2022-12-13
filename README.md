# Modul2_Probstat_5025211154
## Nomor 1
>Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴\
>![table1](soal1.jpg)\Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen  dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.
- Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi?\
Kasus tersebut merupakan salah satu bentuk distribusi geometrik sehingga P(X=3) dapat dicari dengan menggunakan fungsi bawaan r, yaitu dgeom. Fungsi dgeom memiliki parameter x, nilai random variabelnya, dan p, yaitu peluang berhasil. Pada kasus ini, x bernilai 3 dan p bernilai 0.2. Saya menggunakan kode sebagai berikut:
    ```R
    #a
    p <- 0.2
    q <- 1-p
    x <- 3
    fx <- dgeom(x, p, log=FALSE)
    paste("P(X=3) =", fx)
    ```
    Dengan implementasi kode tersebut, didapatkan output "P(X=3) = 0.1024"
- mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3\
Untuk mencari mean distribusi geometrik, saya pertama menggunakan rgeom() untuk mengenerate data variabel random distribusi geometrik dan memasukkannya ke dalam variabel x. Nilai mean kemudian didapatkan dengan menggunakan fungsi mean() dengan parameter x==3. Fungsi tersebut akan mengkalkulasi peluang munculnya x=3 dalam 10000 data random tersebut. Untuk lebih jelasnya, berikut kode yang saya gunakan:
    ```R
    #b
    set.seed(10000)
    x <- rgeom(10000, p)
    mean <- (mean(x==3))
    paste("Mean =", mean)
    ```
    Dengan langkah tersebut, didapatkan output "Mean = 0.1023"
- Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?\
Hasil pada poin a dengan b memiliki kemiripan hingga 3 angka di belakang koma. Hal ini menunjukkan bahwa peluang teoritis, dengan menggunakan pdf, dapat mencerminkan peluang eksperimental yang diambil dengan data random (terutama jika volume data besar).
- Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama\
Untuk membuat histogram, saya menggunakan fungsi hist(x,main='Histogram Distribusi Geometrik',ylab='Frekuensi'). x merupakan sekumpulan data random yang didapat dari proses b, parameter main digunakan untuk memberi judul histogram, dan ylab merupakan nama label sumbu y. Didapatkan histogram sebagai berikut:\
    ![1b](https://github.com/Thoriqaafif/picture/blob/main/Screenshot%202022-10-12%20212746.png)
- Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.\
Pada distribusi geometrik, nilai rataan dan varian mengikuti rumus q/p dan q/(p^2) sehingga digunakan kode berikut untuk mencarinya:
    ```R
    rataan <- q/p
    varian <- q/(p**2)
    paste("Rataan =", rataan)
    paste("Varian =", varian)
    ```

## Nomor 2
>Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2
- Peluang terdapat 4 pasien yang sembuh.\
Kasus di atas merupakan salah satu bentuk distribusi binomial. Dengan begitu, nilai peluang terdapat pasien sembuh bisa didapatkan dengan menggunakan fungsi dbinom(x,n,p) dengan x nilai variabel random, n jumlah percobaan yang dilakukan, dan p peluang sembuh. Berikut potongan kode yang saya gunakan:
    ```R
    #a
    n <- 20
    p <- 0.2
    q <- 1-p
    x <- 4
    fx <- dbinom(x, n, p)
    paste("P(X=4) =", fx)
    ```
    Maka, didapatkan hasil P(X=4) = 0.218199401946101
- Gambarkan grafik histogram berdasarkan kasus tersebut.\
    ![1b](https://github.com/Thoriqaafif/picture/blob/main/Screenshot%202022-10-12%20212825.png)
- Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.\
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
>Diketahui data dari  sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
- Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
Kasus di atas merupakan kasus distribusi poisson sehingga peluangnya dapat dicari dengan fungsi dpois() yang memiliki parameter x dan lambda. x merupakan nilai random variabelnya (dalam hal ini 6) dan lambda merupakan rata-rata bayi lahir di rumah sakit per hari (dalam hal ini 4,5 bayi). Implementasi yang saya gunakan adalah:
    ```R
    #a
    lambda <- 4.5
    x <- 6
    fx <- dpois(x, lambda)
    paste("P(X=6)", fx)
    ```
    Maka, didapatakn P(X=6) = 0.128120143864584
- simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini  selama setahun (n = 365)\
    ![1b](https://github.com/Thoriqaafif/picture/blob/main/Screenshot%202022-10-12%20212846.png)
- Bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan\
Poin a menunjukkan peluang lahirnya 6 bayi dalam sehari sedangkan poin b menunjukkan histogram frekuensi hari di mana bayi lahir sebanyak x. Jika dilihat, histogram menunjukkan bahwa kelahiran 6 bayi terjadi sekitar 20 kali. Dengan n=365, maka kelahiran 6 bayi sebesar 0,05479. Nilai tersebut agak jauh dari poin a, namun terdapat pengaruh jumlah data juga yang hanya 365 hari.
- Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.\
Pada distribusi poisson, rataan dan varian memiliki nilai yang sama dengan lambda sehingga saya hanya perlu memasukkan nilai lambda ke dalam variabel rataan dan varian seperti kode di bawah ini.
    ```R
    #d
    rataan <- lambda
    varian <- lambda
    paste("Rataan =", rataan)
    paste("Varian =", varian)
    ```

## Nomor 4
>Diketahui nilai x = 2 dan v = 10.
- Fungsi Probabilitas dari Distribusi Chi-Square.\
Fungsi probabilitas distribusi Chi-Square dapat dicari dengan menggunakan fungsi dchisq. Fungsi ini memerlukan dua parameter, yaitu x dan derajat kebebasan (dalam soal ini v). Maka, probabilitasnya dapat didapatkan dengan:
    ```R
    #a
    #a
    x <- 2
    v <- 10
    prob <- dchisq(x, v)
    paste("Peluang =", prob)
    ```
    Didapatkan hasil Peluang = 0.00766415502440505.
- Histogram dari Distribusi Chi-Square dengan 100 data random.\
    ![1b](https://github.com/Thoriqaafif/picture/blob/main/Screenshot%202022-10-12%20212903.png)
- Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.\
Nilai rataan dan varian distribusi Chi-Square bernilai v dan 2*v. Maka, saya hanya memasukkan nilai v dan 2*v ke dalam variabel rataan dan varian seperti berikut:
    ```R
    #c
    rataan <- v
    varian <- 2*v
    paste("Rataan =", rataan)
    paste("Varian =", varian)
    ```
    Didapatkan hasil Rataan = 10 dan Varian = 20.

## Nomor 5
>Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3).
- Fungsi Probabilitas dari Distribusi Exponensial\
Probabilitas dari dsitribusi exponensial bisa didapatkan menggunakan fungsi dexp() dengan parameter banyaknya data dan lambda. Pada soal, lambda bernilai 3, sehingga nilai probabilitasnya dapat dicari dengan kode berikut:
    ```R
    #a
    lambda <- 3
    prob <- dexp(1, rate = lambda)
    paste("Peluang =", prob)
    ```
    Didapatkan hasil Peluang = 0.149361205103592
- Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random\
    n = 10
    ![1b](https://github.com/Thoriqaafif/picture/blob/main/Screenshot%202022-10-12%20212925.png)
    n = 100
    ![1b](https://github.com/Thoriqaafif/picture/blob/main/Screenshot%202022-10-12%20212937.png)
    n = 1000
    ![1b](https://github.com/Thoriqaafif/picture/blob/main/Screenshot%202022-10-12%20212948.png)
    n = 10000
    ![1b](https://github.com/Thoriqaafif/picture/blob/main/Screenshot%202022-10-12%20213004.png)
- Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3\
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

## Nomor 6
>Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8.
- Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik.\
Pertama, saya mengenerate 100 data random dengan fungsi rnorm dan disimpan pada variabel data. Untuk mencari x1, saya menggunakan perulangan di mana jika nilai data[i] kurang dari mean dan lebih dari x1, rewrite nilai x1 dengan data[i]. Untuk mencari x2, saya juga melakukan cara yang sama, tetapi dengan kondisi data[i] lebih dari mean. Setelah itu, P(X1 ≤ x ≤ X2) dicari dengan mengurangi P(X=X2) dengan P(X=X1). Untuk z scores, saya menggunakan rumus (data-mean)/sd.
    ```R
    set.seed(100)
    data <- rnorm(n, mean, sd)
    data
    x1=min(data)
    x2=max(data)
    for(i in 1:n)
    {
        if(data[i]<mean&&data[i]>x1)
        {
            x1 = data[i]
        }
    }
    for(i in 1:n)
    {
        if(data[i]>mean&&data[i]<x2)
        {
            x2=data[i]
        }
    }
    x1
    x2
    prob <- (pnorm(x2,mean,sd)-pnorm(x1,mean,sd))
    paste("P(X1 ≤ x ≤ X2) =", prob)
    z_scores <- (data-mean)/sd
    z_scores
    plot(data)
    ```
    Plot Data
    ![1b](https://github.com/Thoriqaafif/picture/blob/main/Screenshot%202022-10-12%20213039.png)
- Generate Histogram dari Distribusi Normal dengan breaks 50 \
    ![1b](https://github.com/Thoriqaafif/picture/blob/main/Screenshot%202022-10-12%20213057.png)
- Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.\
Saya menggunakan data random yang telah digenerate pada poin a.
