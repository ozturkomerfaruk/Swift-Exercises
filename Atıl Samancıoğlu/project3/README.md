# Proje 3

## Temel Ama Önemli Noktalar Var

<img width="1435" alt="image" src="https://user-images.githubusercontent.com/56068905/189347065-3c3d8dd5-fed8-407e-8241-d1acdd5b1cfe.png">

### Ekran Tasarımı

Burada önemli olan kısım İki tane view Controller arasında Segue kullanılması

### SecondViewController

<img width="1435" alt="image" src="https://user-images.githubusercontent.com/56068905/189347253-3add5e58-b76b-47d9-a461-a3fce7510e20.png">

Amaç sadece birinciView dan gelen veriyi ekrana bastırmak

### ViewController Segue

<img width="426" alt="image" src="https://user-images.githubusercontent.com/56068905/189347353-e2147aee-3554-4c38-8df9-33b0c4e30ffa.png">

<img width="662" alt="image" src="https://user-images.githubusercontent.com/56068905/189347553-17be5a79-b96d-489e-8d0f-8d8babed0c2f.png">

View did load --> ilk çalıştığında bir kez çağrılıyor sonra bir daha çağrılmıyor
 
View will appear --> Her açıldığında çağrılıyor
 
View did appear --> sayfa yüklendikten sonra çağrılıyor ve sayfa açıldığında gerçekleşiyor

## Ek Olarak Storyboard Ekranı Olmadan Tasarım Yapabilmek

<img width="888" alt="image" src="https://user-images.githubusercontent.com/56068905/189347806-233de3e2-2f2b-47f5-bb94-ad8c10c772e5.png">

Flutter'da ki gibi MediaQuery kullanımı var.

Kordinat olarak CGRect verebilmek mümkün


## SharedPreferences Kulanmak

Swift karşılığı UserDefaults olan SharedPreferences'ın kullanımı şu şekildedir:

### Kaydet butonuna kaydedilecek veriyi yazıyoruz.

```UserDefaults.standard.set(textField.text, forKey: "sharedPreferences") ```

Örneğin View Will Appear 'da da bunu

<img width="607" alt="image" src="https://user-images.githubusercontent.com/56068905/189353689-45998107-5e57-4fbe-ae33-37969fb2cb16.png">

### Silme işlemi için

<img width="694" alt="image" src="https://user-images.githubusercontent.com/56068905/189355480-73ddfd4c-de8d-42f9-b763-2b1653737bb3.png">



## imageView Tıklanabilirlik

Değişkenler tanımlandı ve tıklanabilirlik geldi

``` @IBOutlet weak var imageLabel: UILabel!```

```@IBOutlet weak var imageView: UIImageView!```

<img width="764" alt="image" src="https://user-images.githubusercontent.com/56068905/189425995-1ab4af48-e7ea-44c6-9020-ec9210232862.png">

Çok basit bir alıştırma

<img width="623" alt="image" src="https://user-images.githubusercontent.com/56068905/189426079-14de5acb-9579-4f0e-8a41-7d16954e4f25.png">

<img width="694" alt="image" src="https://user-images.githubusercontent.com/56068905/189355480-73ddfd4c-de8d-42f9-b763-2b1653737bb3.png">

## Timer Kullanma

<img width="814" alt="image" src="https://user-images.githubusercontent.com/56068905/189426132-b0fc4e14-f905-459d-91ce-2ade607e50b4.png">

