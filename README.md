***python3 friday.py***

Bir sonraki 13.Cuma'ya kaç gün kaldığını gösteriyor.

```libfaketime``` diye bir şeyler var. ```yay libfaketime``` şeklinde arch linux'te kurarak sistem zamanını değiştirmeden python scriptini deneyebiliyorsunuz. Debian ve Windows için indirmeleri de var sanıyorum.

***$ faketime '2024-09-13' /bin/bash -c 'python3 friday.py'***

yazdığınızda programın verdiğiniz tarihteki çıktısını alabilirsiniz.

***$ echo 'python3 ~/DosyayıKaydettiğinizYer/friday.py' >> ~/.bashrc***

dosyayı kaydettiğiniz dizini düzelterek bu komutu terminalde çalıştırırsanız. Terminali her açtığınızda programı çalıştırarak size 13. Cuma'ya kaç gün kaldığını hatırlatacaktır.

![Ekran görüntüsü](https://github.com/metatronslove/cuma13/blob/main/Ekran%20görüntüsü_2024-08-03_13-06-32.png?raw=true "Ekran görüntüsü")

![Ekran görüntüsü](https://github.com/metatronslove/cuma13/blob/main/Ekran%20görüntüsü_2024-08-03_18-42-55.png?raw=true "Ekran görüntüsü")