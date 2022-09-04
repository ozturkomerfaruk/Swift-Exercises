# Patika Swift Eğitim

Mesela iOS Ayarlar menü ekranını tasarlamak istiyoruz. TableViewController kullanıyoruz.

```var tableViewData = [["General", "Accessibility", "Privacy"], ["Password"], ["Safari", "News", "Translate"], ["Developers"]]```

<img width="686" alt="Screen Shot 2022-09-04 at 22 47 29" src="https://user-images.githubusercontent.com/56068905/188331006-5ab8ca8e-0a5e-4050-bf57-d5c2d336526f.png">

Bu üç method sayesinde çok rahat oluşturabiliriz. **numberOfSections** sütun sayısı **numberOfRowsInSection** satırda ki row sayısı şeklinde düşünebiliriz.

```tableViewData``` Array'inde bulunan metinleri bu şekilde ekrana bastırabiliriz.

Mesela Section'da ki Row'a tıklanınca silme gibi özellikleri ekrana alert dialog bastırmak istiyoruz.

<img width="689" alt="image" src="https://user-images.githubusercontent.com/56068905/188331116-904d0061-1efb-4798-8533-a0141d5d90c0.png">

Birden fazla action butonu eklemek, alert dialog kapanırken dismiss eklemek gibi özellikler bu şekilde

Kısaca yapılan işlem: 

<img width="277" alt="image" src="https://user-images.githubusercontent.com/56068905/188331148-ff89d20a-941e-4b22-9e42-132f33a63d2c.png">
