/*:
 ## Alıştırma - Initializer
 
 Struct ve Varsayılan Değerler alıştırmasında, `enlem` ve `boylam` için varsayılan değerlere sahip bir `GPS` struct'ı oluşturdunuz. `GPS` struct'ınızı bu sefer varsayılan değerler olmadan yeniden oluşturun. İki özelliğin tipini de `Double` olarak belirleyin.
 */
struct GPS {
    var enlem: Double
    var boylam: Double
}

/*:
 `galataKulesi` adında bir `GPS` sabiti oluşturun. Memberwise initializer ile `enlem` değerini `41.0256541` olarak, `boylam` değerini ise `28.9741433` olarak ayarlayın. Her iki değeri de konsola yazdırın.
 */
var galataKulesi = GPS(enlem: 41.0256541, boylam: 28.9741433)
print(galataKulesi.enlem, galataKulesi.boylam)
/*:
Aynı alıştırmada bir `Kitap` struct'ı oluşturun. Bu struct'ı varsayılan değerler atamadan yeniden oluşturun. Her özelliğe gereken türü atayın. `enSevdigimKitap` değişkenini yine tanımlayın, ancak bu sefer en sevdiğiniz kitabın bilgilerini memberwise initializer ile belirleyin. En sevdiğiniz kitabın bilgilerini, `enSevdigimKitap` değişkenininin özelliklerini kullanarak konsola yazdırın.
 */
struct Kitap {
    var ad: String
    var yazar: String
    var sayfaSayisi: Int
    var fiyat: Double
}

var enSevdigimKitap = Kitap(ad: "Kuyucaklı Yusuf", yazar: "Sebahattin Ali", sayfaSayisi: 350, fiyat: 24.99)
print(enSevdigimKitap.ad)
print(enSevdigimKitap.yazar)
print(enSevdigimKitap.sayfaSayisi)
print(enSevdigimKitap.fiyat)
/*:
 Bir `Boy` struct’ı oluşturun ve `incCinsindenBoy` ve `santimetreCinsindenBoy` adında Double türünden özellikler tanımlayın. İki özellik de `Double` türünden olmalı.
 
 İki tane custom initializer oluşturun: Biri boyu inç cinsinden temsil eden bir `Double` değeri alsın. Diğeri ise, boyu santimetre cinsinden temsil eden bir `Double` değeri alsın. Her iki initializer da verilen argümanları kullanarak her iki özelliği de hesaplamalı.
 
 * Callout(İpucu):
        1 inç = 2.54 santimetre
 
 - Callout(Örnek):
    İnç cinsinden olan initializer'a 65 değerini verdiğinizde, bu initializer `incCinsindenBoy`'u 65, `santimetreCinsindenBoy`'u 165.1 olarak atamalı.
 */
struct Boy {
    var incCinsindenBoy: Double
    var cmCinsindenBoy: Double
    
    init(cmCinsindenBoy: Double){
        self.cmCinsindenBoy = cmCinsindenBoy
        incCinsindenBoy = cmCinsindenBoy / 2.54
    }
    init(incCinsindenBoy: Double){
        cmCinsindenBoy = incCinsindenBoy * 2.54
        self.incCinsindenBoy = incCinsindenBoy
    }
}
/*:
 Şimdi `boyum` adında bir `Boy` değişkeni tanımlayın ve kendi boyunuzla initialize edin. `incCinsindenBoy` ve `santimetreCinsindenBoy` değerlerinin doğru olup olmadığını kontrol edin.
 */
var boyum = Boy(cmCinsindenBoy: 178)
print(boyum.cmCinsindenBoy)
print(boyum.incCinsindenBoy)

var nowitzkininBoyu = Boy(cmCinsindenBoy: 254)
print(nowitzkininBoyu.cmCinsindenBoy)
print(nowitzkininBoyu.incCinsindenBoy)


//: [Önceki](@previous)  |  sayfa 3 / 10  |  [İleri: App Exercise - Users and Distance](@next)
