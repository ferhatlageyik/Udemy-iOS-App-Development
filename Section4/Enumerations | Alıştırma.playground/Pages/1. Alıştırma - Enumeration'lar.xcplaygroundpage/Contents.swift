/*:
 ## Alıştırma - Enumeration'lar
 
 Üç tane "case" bulunduran `Sinif` adında iskambil sınıflarını temsil eden bir enum oluşturun. Caselerinizin adı `sinek`, `maça`, `kupa` ve `karo` olsun
 */
enum Sinif {
    case sinek
    case maca
    case kupa
    case karo
}

/*:
 Bir sihirbazlık gösterisinde sizden bir kart çekip çektiğiniz kardın sınıfını hatırlamanız istendi. `Sinif`'tan `elimdekiKart` adında bir **variable instance** (`Sinif`'a bağlı bir değişken) tanımlayın ve `kupa` değerini atayın. Değişkeninizi konsola yazdırın.
 */
var elimdekiKart = Sinif.kupa
print(elimdekiKart)

/*:
 Şimdi elinizdeki kardı desteye geri koyduğunuzu ve başka bir kart seçtiğinizi hayal edin. Değişkeninizin değerini `maça` yapın.
 */
elimdekiKart = .maca
print(elimdekiKart)

/*:
 İskambil falı bakan bir uygulama yarattığınızı düşünün. Çektiğiniz karda göre bir yorum yapmanız gerekir. `falBak(kardinSinifi:)` adında bir fonksiyon tanımlayın ve `Sinif` türünden bir parametresi olsun. Fonksiyonun içinde bir switch yapısı oluşturun ve `kardinSinifi` değişkeninin alabileceği her sınıf için birer fal yazın. `kardinSinifi` değerine farklı değerler atayarak fonksiyonu birkaç kez çağırın.
 */
func falBak (kartınSinifi: Sinif){
    
    switch kartınSinifi {
        
    case.maca:
        print("Elindeki maça :) neyse gerisi bende kalsın :D ")
    case.kupa:
        print("Seni seven kimse yok kanka gg")
    case.karo:
        print("Sana bir yol göründü ama radar var dikkat et")
    case.sinek:
        print("Raaiddddd!! maksat bir şeyleri printlemek olsun ben ne anlarım faldan :(")
    
    }
}

falBak(kartınSinifi: elimdekiKart)
elimdekiKart = .sinek
falBak(kartınSinifi: elimdekiKart)
elimdekiKart = .kupa

/*:
 `Kart` adında bir struct yapısı oluşturun. Bu sefer kartların hem sınıfını hem de değerini tanımlayacağız. Bu yüzden struct yapınızın içine iki türden değişken tanımlamalısınızdır: `sinif` adında, `Sinif` türünde bir değişken ve `deger` adında `Int` türünde bir başka değişken.
 */
struct Kart {
    var sinif: Sinif
    var deger: Deger
}

/*:
 `deger` değişkeniniz kaç tane değer alabilir? `deger` değişkeninin alabileceği değerler sınırlı olduğundan bu değişken türü için de bir enum tanımlamamız gerekir. `Deger` adında bir enum tanımlayın ve `as`, `iki`, `üç`, `dört`, `beş`, `altı`, `yedi`, `sekiz`, `dokuz`, `on`, `joker`, `papaz` ve `kız` caseleri olsun. Geri dönün ve struct yapınızdaki `deger` değişkeninin türünü `Int`'ten `Deger`'e değiştirin. İki tane `Kart` objesi oluşturun ve kardın özelliklerini konsola yazdırın.
 */
enum Deger {
    case iki, uc, dort, bes, alti, yedi, sekiz, dokuz, on, vale, kiz, papaz, ass
    
}

let kupaKizi = Kart(sinif: .kupa, deger: .kiz)
let sinekValesi = Kart(sinif: .sinek, deger: .vale)

print(kupaKizi.sinif,kupaKizi.deger)
print(sinekValesi.sinif,sinekValesi.deger)




//: sayfa 1 / 2  |  [Sonraki: Uygulama - Yüzme Egzersizi](@next)
