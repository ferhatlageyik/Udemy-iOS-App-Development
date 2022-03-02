/*:
 ## Alıştırma - Scope
 
 Bir comment veya print komutu içerisinde, eğer aşağıdaki kodda 10. satırı un-comment ederseniz neden compiler error ile karşılaşacağınızı açıklayın.
*/
// Cevap: çünkü for un içi local bir alan, o alanda tanımlanmış bir sabite, ancak o alanın içerisinde erişilebilir yani "{}" parantezleri içinde kalan bir değişkene o parantez içinden erişilebilir.
for _ in 0..<10 {
    let foo = 55
    print("The value of foo is \(foo)")
}
//print("The value of foo is \(foo)")


/*:
 Bir comment veya print komutu içerisinde, aşağıdaki kodun yukarıdaki örneğe görüntü olarak benzemesine rağmen neden hata olmadan compile ettiğini açıklayın. `x` hangi scope içerisinde tanımlı, ve hangi scope içerisinde güncelleniyor? Buna kıyasla, `foo` hangi scope içerisinde tanımlı ve kullanılıyor?
 */
// Cevap: x global scope'ta tanımlı olduğundan dolayı her yerden x değişkenine erişlebilir.
var x = 10
for _ in 0..<10 {
    x += 1
    print("The value of x is \(x)")
}
print("The final value of x is \(x)")


/*:
 Aşağıdaki `selam` fonksiyonunun gövdesi içerisinde, `selam` değişkenini unwrap ederken variable shadowing kullanın. Eğer `selam` başarılı bir şekilde unwrap edildiyse, konsola verilen selamlaşmayı ve ismi kullanan bir cümle yazdırın (örneğin `selam` değişkeni unwrap edildikten sonra "N'aber" değerine sahipse ve `isim` "Can" değerine sahipse, "N'aber, Can" cümlesini yazdırın). Eğer `selam` unwrap edilemiyorsa, "Merhaba" selamlaşmasını kullanarak bir cümle yazdırın. Fonksiyonu iki kere çağırın: ilkinde `selam` için bir değer verin, ikincisinde ise `selam` değişkenine `nil` değerini verin.
 */
func selam(selam: String?, isim: String) {
    guard let selam = selam else {
        return print("Merhaba \(isim)")
    }
    print(selam,isim)
}

selam(selam: "Hi", isim: "Rachel")
selam(selam: nil, isim: "nil")

/*:
 `Araba` isimli bir class tanımlayın. Bu class'in sırayla `String`, `String` ve `Int` tipinden olan `marka`, `model` ve `yil` isimli üç özelliği olmalı. Bu bir class olduğundan, kendi memberwise initializer'ınızı yazmanız gerekecek. Since this is a class, you'll need to write your own memberwise initializer. Initializer'ınızdaki parametreleri isimlendirirken shadowing kullanın. 
 */

class Araba {
    var marka: String
    var model: String
    var yil: Int
    
    init(marka: String, model: String, yil: Int){
        self.marka = marka
        self.model = model
        self.yil = yil
    }
}

let myFirstCar = Araba(marka: "Peugeot", model: "206", yil: 2004)
print(myFirstCar.marka,myFirstCar.model,myFirstCar.yil)

sayfa 1 / 2  |  [Sonraki: Uygulama - Adım Yarışması](@next)
