***friday.gs and friday.min.gs***

bu dosya 3 fonksiyon içerir; artancuma(), azalancuma() ve ChangeMonth()
fonksiyonları dosyada tanımlanmıştır. Bu fonksiyonların amacı
LibreOffice Hesap Tablosu ve belki Microsoft Excel makroları arasında
Kullanıcı Tanımlı Fonksiyonlar olarak tablo formullerinde yararlı
olmasıdır.

***artancuma() ve azalancuma()***

bu fonksiyonlar tek parametre olarak bir tarih girildiği zaman, girilen
tarihten bir sonraki veya bir önceki 13. Cuma tanımına uyan tarihi
döndürür. Fonksiyon parametresi olarak girilen tarih öğesi diğer tüm
fonksiyonlarda olduğu gibi formül ve matematiksel düzenler içerebilir.
Bu fonksiyonlarla girilen tarih verisi olağan arttırım veya azaltım
formül düzenlemeleri yapılarak formül yayma sonuçları döndürmeye
elverişlidir.

***=artancuma("09.08.1945")***

***=azalancuma("08.09.1956")***

***ChangeMonth()***

bu fonksiyon ilk parametre olarak girilen tarih verisinin bir sonraki
veya bir önceki ayın tarihine dönüştürdüğü tarihi döndürür. İkinci
parametresi verilen görevi ve ay düzeltme yönünü bildirir.

***-1 önceki ay***

***1 sonraki ay***

***=ChangeMonth("09.08.1945", -1)***

Kaynak: https://abdil.one/2024/08/05/13-cumalar-ile-buyuk-yikimlar-arasinda-ilgi-var-mi-yok-mu-okuduktan-sonra-kendiniz-karar-verin.html
