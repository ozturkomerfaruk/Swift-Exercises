# Project 2

https://user-images.githubusercontent.com/56068905/188413790-1ac3547b-78a9-4f21-b91b-3d0a4dc6d063.mp4

* Veriler local veri tabanı olan CoreData'ya kaydedildi.

* Alert Dialog kullanıldı.

* Bar Buton Item kullanıldı.

* TableView, ViewController'ın içerisinde çağrıldı.

* TableView trailing butonlar

* Fonksiyonlar parçalanarak yazıldı.

## Ekranların Hazırlanması

<img width="897" alt="image" src="https://user-images.githubusercontent.com/56068905/188414548-b32a75f2-870a-4886-a2e8-56a6840268b9.png">

### İlk başta TableView eklendi. Eklendikten sonra Content'de Dynamic Prototypes de 1 girildi ve Cell hücresinde identifier kısmına cell yazıldı.

### Daha sonra navigation Controller eklendi.

## Veri Tabanının Hazırlanması

<img width="788" alt="image" src="https://user-images.githubusercontent.com/56068905/188415107-07dca03d-ee2d-4dd8-b49b-e2e7a9745dda.png">

### Entity olarak ListItem eklendi ve attribute olarak title eklendi.

## Controller Yazılmaya Başlandı

### Değişkenlerin tanımlanması

<img width="358" alt="image" src="https://user-images.githubusercontent.com/56068905/188415664-37e2fc03-9769-41de-bf9d-9dc38f6c1196.png">

İlk olarak tableView bağlandı. Daha sonra alertController için gerekli olan değişken methodların üstünde tanımlandı.

Burada önemli olan husus Array içerisinde ki değişkenin String olmaması. NSManagedObject tipinde bir değişken olarak tanımlandı.

<img width="438" alt="image" src="https://user-images.githubusercontent.com/56068905/188415978-2717debf-28d3-4356-aad6-43d8c1ec2dd2.png">

**title** NavigationController'ın title'ını değiştirmektedir.

tableView'ın iki tane önemli hususu bulunmaktadır. Delegate ve DataSource. Verilerin ekranda gösterilmesini sağlayan dataSource iken, ekranda düzenlenmesi, silinmesi gibi fonksiyonerlikleri delegate yapmaktadır.

### fetch fonksiyonu

<img width="608" alt="image" src="https://user-images.githubusercontent.com/56068905/188416564-9b74988f-27ff-4025-b84b-0664437117e5.png">

cast yapılarak türetilen AppDelegate NSFetchRequest ile fetch işlemi entity girilerek yapılabilmektedir.

Bu veritabanını artık **managedObjectContext** ile çok rahat bir şekilde kullanabilirim artık. Öyleyse array'in içerisinde veritabanını fetch metodunu kullanarak oluşturduğumuz fetchRequest'e atıyoruz. Böylelikle uygulama açılırken fetch edilerek açılacak. Aynı zamanda bu fetch işlemlerini kullanmak için gerekli olan 

### Alert Fonksiyonu

<img width="609" alt="image" src="https://user-images.githubusercontent.com/56068905/188417696-7f7cad99-8475-4be8-b8e8-fd6c4cc902aa.png">

Method halinde kullanılabilmesi şeklinde yazıldı.

### Sol üst Trash Butonu

<img width="639" alt="image" src="https://user-images.githubusercontent.com/56068905/188417383-beaedcf2-dbeb-4505-9a3d-72fbb5f7c625.png">

### Uyarı ve Ekleme Alerti

<img width="684" alt="image" src="https://user-images.githubusercontent.com/56068905/188424088-c0c8cca6-c56c-4788-8ce0-9a53b818b704.png">

### TableView kodlarının yazılması

## Temel 2 fonksiyon

<img width="675" alt="image" src="https://user-images.githubusercontent.com/56068905/188424225-d8799b90-91f6-4753-9024-d1e8974f81d7.png">

## TableView da sağa kaydırıldığında düzenleme ve silme

### Silme

<img width="675" alt="image" src="https://user-images.githubusercontent.com/56068905/188424443-1f358588-47db-413a-9640-a507a5916144.png">

### düzenleme

<img width="647" alt="image" src="https://user-images.githubusercontent.com/56068905/188424502-5ea0d194-7728-4450-b73c-c28fa1a7c33e.png">

