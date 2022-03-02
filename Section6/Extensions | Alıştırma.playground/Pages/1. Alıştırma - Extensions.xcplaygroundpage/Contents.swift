/*:
 ## Alıştırma - Extensions
 
 `isVowel()` fonksiyonunu içeren `Character` objesi için bir extension tanımlayın. Karakter sesli harf (a, e, i, o, u) ise fonksiyon `true`, aksi takdirde `false` değerini döndürür. Büyük ve küçük harfleri doğru şekilde kullandığınızdan emin olun.
 */
extension Character {
    
    func isVowel() -> Bool{
        let vowels: [Character] = ["a","A","e","E","i","I","o","O","u","U"]
        return vowels.contains(self)
  }
}




/*:
 `myVowel` ve `myConsonant` adında iki `Character` sabiti oluşturun ve bunları sırasıyla bir sesli harf ve ünsüz olarak ayarlayın. Sesli harf olup olmadığını belirlemek için her sabitte `isVowel()` fonksiyonunu kullanın.
 */
let myVowel: Character = "o"
let myConstant: Character = "x"
print(myVowel.isVowel())
print(myConstant.isVowel())
print(myVowel)
print(myConstant)

/*:
 Her ikisi de `Double` türünden olmak üzere iki değişken özelliğe sahip, `length` ve `width` olan bir `Rectangle` objesi oluşturun. `Rectangle` objesine `half()` fonksiyonunu içeren bir extension yazın. Bu fonksiyon, orijinal dikdörtgenin yarı boyutunda yeni bir `Rectangle` örneği döndürür.
 */
struct Rectangle {
    var width: Double
    var length: Double
}

extension Rectangle {
    func half() -> Rectangle{
        return Rectangle(width: width/2, length: length/2)
    }
    mutating func halved(){
        let halvedRectangle = half().self
        self.length = halvedRectangle.length
        self.width = halvedRectangle.width
        
    }
}

/*:
 Mevcut `Rectangle` extension'ları içine, orijinal dikdörtgenin yarı boyutunda olacak şekilde güncellenen yeni bir mutasyon fonksiyonu olan `halved()` ekleyin. `halved()` için uygulamanın bir parçası olarak `half()` fonksiyonunu kullanın.
 */


/*:
 `myRectangle` adlı bir `Rectangle` oluşturun ve uzunluğunu 10 ve genişliğini 5 olarak ayarlayın. `mySmallerRectangle` adlı ikinci bir değer oluşturun, bu da `myRectangle` da `half()` fonksiyonunun sonucudur. Ardından, `halved()` fonksiyonunu çağırarak `myRectangle` değerlerini güncelleyin. Her örneği yazdırın.
 */
var myRectangle: Rectangle = Rectangle(width: 5, length: 10)
print("myRectangle ilk değeri \(myRectangle)")

var mySmallerReactangle = myRectangle.half()
print("mySmallerRectangle ilk değeri \(mySmallerReactangle)")

mySmallerReactangle.half()
print("mySmallerRectangle mutating olmayan fonksiyon çağrıldıktan sornaki değeri \(mySmallerReactangle)")

mySmallerReactangle.halved()
print(mySmallerReactangle.half())

print("myRectangle halved sonrası değeri \(myRectangle)")
print("mySmallerRectangle halved sonrası değeri \(mySmallerReactangle)")


//: sayfa 1 / 2  |  [Sonraki: Uygulama - Workout Extensions](@next)
