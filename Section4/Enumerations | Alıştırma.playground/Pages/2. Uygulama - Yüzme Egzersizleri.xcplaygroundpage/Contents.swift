/*:
 ## Uygulama - Yüzme Egzersizleri
 
 
`YüzmeEgzersizi` adında bir struct yapısı oluşturun ve yapının içine `mesafe`, `sure` ve `stil` adında üç tane değişken tanımlayın. `mesafe` ve `sure` değişkenleri `Double` türünden olmalıdır ve `stil` değişkeni `String` türünden olmalıdır.
 */
struct YüzmeEgzersizi {
    var mesafe: Double
    var sure: Double
    var stil: Stil
    
    enum Stil {
        case serbest
        case kelebek
        case sirtustu
        case kurbaga
    }

    
    static var serbestEgzersiz: [YüzmeEgzersizi] = []
    static var kelebekEgzersiz:  [YüzmeEgzersizi] = []
    static var sirtustuEgzersiz:  [YüzmeEgzersizi] = []
    static var kurbagaEgzersiz:  [YüzmeEgzersizi] = []
    
    func kaydet(){
        
        switch stil {
            
        case.sirtustu:
            YüzmeEgzersizi.sirtustuEgzersiz.append(self)
        case.serbest:
            YüzmeEgzersizi.serbestEgzersiz.append(self)
        case.kelebek:
            YüzmeEgzersizi.kelebekEgzersiz.append(self)
        case.kurbaga:
            YüzmeEgzersizi.kurbagaEgzersiz.append(self)
        }
    }
    
}

/*:
 `stil` değişkeninin alabileceği belirli sayıda değişken olduğu için `String` türünden bir genelleme yapmamız doğru olmaz. `Stil` adında bir enum oluşturun ve `serbest`, `kelebek`, `sirtustu` ve `kurbaga` case'leri olsun. `stil` değişkeninin türünü `String`'den `Stil`'e değiştirin ve iki tane `YüzmeEgzersizi` objesi oluşturun.
 */
enum Stil {
    case serbest
    case kelebek
    case sirtustu
    case kurbaga
}

var ferhatEgzersiz = YüzmeEgzersizi(mesafe: 100, sure: 14, stil: .sirtustu)
var devranEgzersiz = YüzmeEgzersizi(mesafe: 800, sure: 60, stil: .serbest)

/*:
 Stillere göre yüzme egzersizlerinizi kategorilere ayırmak istediğinizi düşünün. Bunun için `YüzmeEgzersizi` struct yapısına her stil için birer array tanımlayabilirsiniz. `YüzmeEgzerisizi` yapısına dört tane static değişken ekleyin: `serbestEgzersiz`, `kelebekEgzersiz`, `sirtustuEgzersiz` ve `kurbagaEgzersiz`. Bu değişkenler `[YüzmeEgzersizi]` türünden olmalıdır ve boş arraylar olmalıdır.
 */


/*:
 `YüzmeEgzersizi` struct yapısına parametre almayan ve return değeri olmayan bir `kaydet()` fonksiyonu ekleyin. Bu fonkisyon yaptığınız egzersizlerin türüne göre egzersizlerinizi önceden tanımladığınız static array'lere ekleyecektir. `kaydet()` fonksiyonunun içine egzersizlerin `stil` özellikliğine göre bir switch yapısı yaratın. Her `stil` case'inde uygulama,  `self` kullanarak değişkeni stiline göre uygun array'e ekleyebilsin. Yarattığınız `YüzmeEgzersizi` değişkenlerinin her biri için `kaydet()` fonksiyonunu cağırın ve oluşturduğunuz arrayleri konsola yazdırın.
 */
ferhatEgzersiz.kaydet()
devranEgzersiz.kaydet()
print(YüzmeEgzersizi.sirtustuEgzersiz)
print(YüzmeEgzersizi.serbestEgzersiz)

// bence kötü bir alıştırma case i olmuş ne istediğini tam anlaymadım. outputlarda sorun var gibi. sanki böyle olmaması gerekiyor.

/*:
 
 _Copyright © 2017 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Önceki](@previous)  |  sayfa 2 / 2
