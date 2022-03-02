/*:
 ## Uygulama - Kullanıcılar ve Mesafe
 
 Çoğu uygulamada, bir kullanıcı hakkında bilgileri tutacak bir veri modeline ihtiyaç duyarsınız. Temel kullanıcı verilerini barındıracak bir `Kullanici` struct’ı oluşturun. Bu struct'ta kullanıcının ismini, yaşını, boyunu, ağırlığını ve aktivite seviyesini temsil eden özellikler bulunmalı. `isim` değişkenini bir `String`, `yas` değişkenini bir `Int`, `boy` ve `agirlik` değişkenlerini `Double`, `aktiviteSeviyesi` değişkenini ise kullanıcınının ne kadar aktif olduğunu 1 ve 10 arasında  puanlayan bir `Int` olarak tanımlayın.
*/
struct Kullanici {
    var isim: String
    var yas: Int
    var boy: Double
    var agirlik: Double
    var aktiviteSeviyesi: Int
}

/*: 
 Adı kendi adınız olan bir `Kullanici` değişkeni oluşturun. Memberwise initializer ile bu değişkene kendi bilgilerinizi verin. Oluşturduğunuz değişkenin özelliklerini kullanarak bilgilerinizi konsola yazdırın.
 
 */
var ben = Kullanici(isim: "Ferhat", yas: 29, boy: 1.77, agirlik: 75, aktiviteSeviyesi: 5)
print(ben.isim, ben.yas, ben.boy, ben.agirlik, ben.aktiviteSeviyesi)

/*:
 Önceki uygulama alıştırmalarında, mesafe değerini tek bir sayı ile belirttiniz. Ancak mesafeler, çeşitli ölçü birimleri ile ifade edilebilir. Mesafeyi birden fazla ölçü biriminde temsil edecek bir `Mesafe` struct'ı oluşturun. Struct'ta `metre` ve `feet` adında iki değişken özellik tanımlayın. Her iki değişken için, ikisini de doğru şekilde hesaplayan initializer'lar tanımlayın.
 
 * Callout(İpucu):
    1 metre = 3.28084 feet
 
 - Callout(Örnek):
    Metre için olan initializer'a 1600 değerini verdiğinizde, `metre`'nin değeri 1600 ve `feet`'in değeri 5249.344 olarak ayarlanmalı.
 */
struct Mesafe{
    var metre: Double
    var feet: Double
    
    init(metre: Double){
        self.metre = metre
        feet = metre * 3.28084
    }
    init(feet: Double){
        self.feet = feet
        metre = feet / 3.28084
    }
}

/*:
 Şimdi `mil` adında bir `Mesafe` değişkeni tanımlayın. Metre için olan initializer ile mesafeyi 1600 metreye ayarlayın. Feet için olan özelliği yazdırın ve `5249.344`'e eşit olup olmadığını kontrol edin.
 */
var mil = Mesafe(metre: 1600)
print(mil.feet)    // perfectly done



//: [Önceki](@previous)  |  sayfa 4 / 10  |  [Sonraki: Alıştırma - Metodlar](@next)
