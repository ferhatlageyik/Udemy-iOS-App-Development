/*:
 ## Alıştırma - Metodları ve Özellikleri Ovveride Etmek
 
 - Note: Aşağıdaki alıştırmalar, uzaydaki engellerden kaçınan bir uzay gemisinin olduğu bir oyuna dayanmaktadır. Gemi bir çizgide hareket eder ve aşağıya düşen engellerden korunmak için sadece sola ve sağa hareket edebilir. Alıştırmalar boyunca, oyunda kullanılabilecek farklı uzay gemilerini temsil etmek için farklı sınıflar oluşturacaksınız.
 
 
 `UzayGemisi` ve subclass `Savasci` sizin için aşağıda verilmiştir.
 
 override: Geçersiz kılmak
*/
class UzayGemisi {
    var isim: String = ""
    var saglik = 100
    var konum = 0
    
    func solaHareket() {
        konum -= 1
    }
    
    func sagaHareket() {
        konum += 1
    }
    
    func gemiVuruldu() {
        saglik -= 5
    }
}

class Savasci: UzayGemisi {
    var silah = ""
    var kalanAtesGucu = 5
    
    func ates() {
        if kalanAtesGucu > 0 {
            kalanAtesGucu -= 1
        } else {
            print("Artık ateş gücünüz yok.")
        }
    }
}
/*:
 `Savasci` sınıfından inherit edilen yeni bir `KalkanliGemi` sınıfı tanımlayın. Bu sınıfa `kalkanGücü` adında bir değişken ekleyin ve değerini 25 yapın.
 
 `KalkanliGemi` türünden `savunma` adında yeni bir değişken tanımlayın. `isim` değerini "Savunma" ve `silah` değerini "Top" yapın. `sagaHareket()` fonksiyonunu çağırın ve `konum` değerini konsola yazdırın. Ardından `ates()` fonksiyonunu çağırın ve `kalanAtesGucu` değerini konsola yazdırın.
 */
class KalkanliGemi : Savasci {
    var kalkanGucu: Int = 25
//    override func gemiVuruldu() {
//        if kalkanGucu > 0 {
//            kalkanGucu -= 5
//        }else {
//            saglik -= 5
//        }
//    }
    
}

let savunma = KalkanliGemi()
savunma.isim = "Savunma"
savunma.silah = "Top"
savunma.sagaHareket()
print(savunma.konum)
savunma.ates()
print(savunma.kalanAtesGucu)
    
/*:
 `KalkanliGemi` objenize geri dönün ve `gemiVuruldu()` fonksiyonunu override edin. Fonksiyonda `kalkanGucu` değerinin 0'dan büyük olup olmadığını kontrol edin. Eğer `kalkanGucu` değeri 0'dan büyükse, `kalkanGucu` değerini 5 azaltın. Aksi takdirde, `saglik` değerini 5 azaltın. `savunma` değişkeninin `gemiVuruldu()` fonksiyonunu çağırın ve `kalkanGucu` ve `saglik` değerlerini konsola yazdırın.
 */
//savunma.gemiVuruldu()
//
//print(savunma.kalkanGucu)
//print(savunma.saglik)

/*:
 `kalkanGucu` değeri 0'a eşit olduğunda, `gemiVuruldu()` fonksiyonu `saglik` değerini 5 azaltır. `UzayGemisi` sınıfındaki `gemiVuruldu()` fonksiyonu da aynı işlevi görür. `KalkanliGemi` sınıfındaki `gemiVuruldu()` fonksiyonunu silin ve yerine superclass kullanarak `UzayGemisi` sınıfından `gemiVuruldu()` fonksiyonunu çağırın.
 
 
 `savunma` değerinin `gemiVuruldu()` fonksiyonu çağırın. `kalkanGucu` ve `saglik` değerlerini konsola yazdırın.
 */
savunma.gemiVuruldu()

print(savunma.kalkanGucu)
print(savunma.saglik)

// evet baba buradan da çıkarılması gereken ders ne imiş. her kuşun eti yenmez imiş. bakalım kahramanlarımızı yeni bölümde nasıl maceralar bekliyor.
//: [Önceki](@previous)  |  sayfa 3 / 4  |  [Sonraki: Alıştırma - Class Memberwise Initializer'lar ve Reference](@next)
