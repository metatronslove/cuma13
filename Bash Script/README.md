***./friday.sh***

Bir sonraki 13.Cuma'nın hangi gün olduğunu gösteriyor.

```libfaketime``` diye bir şeyler var. ```yay libfaketime``` şeklinde arch linux'te kurarak sistem zamanını değiştirmeden python scriptini deneyebiliyorsunuz. Debian ve Windows için indirmeleri de var sanıyorum.

***$ faketime '2024-09-13' /bin/bash -c './friday.sh'***

yazdığınızda programın verdiğiniz tarihteki çıktısını alabilirsiniz.

***$ echo './~/DosyayıKaydettiğinizYer/friday.sh' >> ~/.bashrc***

dosyayı kaydettiğiniz dizini düzelterek bu komutu terminalde çalıştırırsanız. Terminali her açtığınızda programı çalıştırarak size 13. Cuma'nın hangi gün olduğunu hatırlatacaktır.

Python olmasa bile bu bash script ile 13. Cumaları keşfedebilirsin.