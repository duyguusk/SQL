# SQL
#SQL Select

Select sorguları, SQL’de en sık kullanılan deyimdir.
 SELECT deyimi, bir veritabanından veri seçmek için kullanılır. Bu işleme sorgulama denir.
 SELECT komutunun döndürülen veriler sonuç kümesi adı verilen bir tabloda saklanır.
SQL SELECT deyimi, verileri  bir veritabanı tablosundan sonuç tablosu biçiminde almak
 için kullanılır.
 Bu sonuç tabloları sonuç kümeleri olarak adlandırılır.
 Tüm tabloyu ya da belirli kurallara göre belirli kayıtlar alabiliriz.
SELECT komut deyiminin SELECT yan tümcesiyle, sorgu sonucunda görüntülenmesini
 istediğimiz sütunları ve isteğe bağlı olarak, sonuç tablosunun üzerinde görmek 
 istediğimiz sütun başlıklarını belirleriz.

#SELECT Kullanımı


..Veri çekme, listleme ve fonksiyon gibi bir çok işlemleri çalıştırmak için kullanılır.

SELECT
  *
FROM Employees

 Bir diğer kullanımı şekli:

 SELECT
  Employees.*
FROM Employees

.....AS Kullanımı.....

Tablo isimlerini kısaltmak veya sorgu sonuçlarında sütunlara belirli adlar vermek için
kullanılan ALIASES yani geçici bir addır.

SELECT
  e.FirstName AS Ad
 ,e.LastName AS Soyad
FROM Employees AS e

.....WHERE Kullanımı.....

Koşul ifadesidir.

SELECT
  *
FROM Employees AS e
WHERE e.Country = 'USA'

......AND Kullanımı.....

Her iki koşulun da doğru olması gerektiği durumlarda kullanılır.

SELECT
  *
FROM Employees AS e
WHERE e.City = 'London'
AND e.TitleOfCourtesy = 'Mr.'

......OR Kullanımı.....

Birinci veya ikinci koşuldan biri doğru olması gerektiği durumlarda kullanılır.

SELECT
  *
FROM Employees AS e
WHERE e.City = 'London'
OR e.TitleOfCourtesy = 'Mr.'

.....ORDER BY Kullanımı.....

Artan veya azalan değerler belirtmek için kullanılır.

SELECT
  *
FROM Employees AS e
ORDER BY e.FirstName

DESC eklediğinde azalarak devam eder.

SELECT
  *
FROM Employees AS e
ORDER BY e.FirstName DESC

.....IN Kullanımı.....

Bir sütun için birden çok olası değerleri belirtmek için kullanılır.

SELECT
  *
FROM Employees AS e
WHERE e.City IN ('London', 'Redmond'

.....NOT IN Kullanımı.....

Bir sütun için birden çok değerin barındırmaması için kullanılan koşuldur.

SELECT
  *
FROM Employees AS e
WHERE e.City NOT IN ('London', 'Redmond')

.....BETWEEN Kullanımı.....

Belirli kriterler arasındaki değerleri getirir.

SELECT
  *
FROM Employees AS e
WHERE e.Extension BETWEEN 3000 AND 4000

Bir diğer kullanım şekli:

SELECT
  *
FROM Employees
WHERE FirstName BETWEEN 'S' AND 'T'

.....NOT BETWEEN Kullanımı.....

Belirli kriterler dışındaki değerleri getirir.

SELECT
  *
FROM Employees AS e
WHERE e.Extension NOT BETWEEN 3000 AND 4000

Bir diğer kullanım şekli:

SELECT
  *
FROM Employees
WHERE FirstName NOT BETWEEN 'S' AND 'T'


#Select Kullanım Biçimi:
Eğer bütün alanlardan veri çekeceksek, Select ifadesinden sonra * işareti konulur.
Böylece bütün alanlardan veri çekileceği belirtilmiş olunur.

SELECT *
FROM tablo_adi
Eğer birkaç tane alanlardan veri çekeceksek,
 Select ifadesinden sonra alanarı virgüller ayırarak yazarız.

SELECT alan_adi1, alan_adi2
FROM tablo_adi

#Örnek Tablo Uygulaması:

Örnek olarak aşağıdaki gibi Personel isimli tablomuz olsun.
id  	Adi_soyadi	      Sehir	          Bolum         	Sicil No
1	  Salih ESKİOĞLU	 İstanbul	Bilgi İşlem Sorumlusu	1234567
2	  Ayhan ÇETİNKAYA	 Kocaeli	İdari İşler Yöneticisi	2345678
3	  Serkan ÖZGÜREL	 Erzincan	Bilgi İşlem Sorumlusu	3456789


#Örnek1:

SELECT * FROM Personel  (Personel tablosundaki bütün kayıtları çeker.)

Bu kod ile tablodaki bütün alanlarda bulunan kayıtları seçmiş oluruz.
Daha sonra bunu kullandığımız programlama ortamında ekrana yazdırırız.

#Örnek2:

SELECT Adi_soyadi, Bolum FROM Personel

Bu örnekte Personel tabosundan sadece adı soyadı ve bölüm bilgisinin tutulduğu alanlar
seçilmektedir.Diğer alanlar işleme alınmaz. Kullandığımız programlama ortamına kayıtları
aktarırken sadece bu iki alan dikkate alınacaktır.Eğer kullandığımız programlama ortamında
Şehir bilgisine erişmek istersek hata alırız.

 

Bütün programlama ortamlarında (ASP, PHP, .Net vb.) sorgu sonucu elde edilen veriler
üzerinde ilk kayda gitme, önceki kayda gitme, sonraki kayda gitme ve en son kayda gitme
gibi özel tanımlı komutlar vardır. Bu komutlar sayesinde Select ile elde edilen veriler
üzerinde işlem yapılabilir.
