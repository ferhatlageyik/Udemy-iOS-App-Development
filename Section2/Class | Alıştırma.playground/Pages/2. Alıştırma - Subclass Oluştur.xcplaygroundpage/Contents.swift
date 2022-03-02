/*:
 ## Alıştırma - Subclass Oluştur
 
 - Note: Aşağıdaki alıştırmalar, uzaydaki engellerden kaçınan bir uzay gemisinin olduğu bir oyuna dayanmaktadır. Gemi bir çizgide hareket eder ve aşağıya düşen engellerden korunmak için sadece sola ve sağa hareket edebilir. Alıştırmalar boyunca, oyunda kullanılabilecek farklı uzay gemilerini temsil etmek için farklı sınıflar oluşturacaksınız.
 
 
 Kullanacağınız `UzayGemisi` sınıfı, sizin için aşağıda verilmiştir.
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
        konum -= 5
    }
}
/*:
 `UzayGemisi` sınıfını inherit eden `Savasci` adında yeni bir sınıf tanımlayın. `Savasci` sınıfına `silah` adında boş bir `String` (`""`) ve `kalanAtesGucu` adında 5 değerini alan bir değişken tanımlayın.
 */
class Savasci : UzayGemisi {
    var silah: String = String()
    var kalanAtesGucu: Int = 5
    
    func ates(){
        if kalanAtesGucu > 0{
            kalanAtesGucu -= 1
        }else {
            print("Artık ateş gücünüz yok!")
        }
    }
}

/*:
 `Savasci` türünden `yikici` adında yeni bir değişken oluşturun. Bir `Savasci` objesi, üzerine gelen nesnelere ateş etmelidir. `silah` değişkenini "Lazer" ve `kalanAtesGucu` değerini 10 olarak tanımlayın.
 
 > `Savasci` sınıfı, `UzayGemisi` sınıfından inherit ettiği için `isim`, `saglik` ve `konum` özelliklerine ve `solaHareket()`, `sagaHareket()` ve `gemiVuruldu()` fonksiyonlarına sahiptir.
 
 `isim` değişkenini "Yıkıcı" olarak tanımlayın ve `konum` değerini konsola yazdırın. Sonra `sagaHareket()` fonksiyonunu çağırın ve tekrar `konum` değerini konsola yazdırın.
 */
var yikici = Savasci()
yikici.silah = "Lazer"
yikici.kalanAtesGucu = 10
yikici.isim = "Yıkıcı"
print("\(yikici.isim) isimli geminin konumu \(yikici.konum) noktasıdır")
yikici.sagaHareket()
print("\(yikici.isim) isimli geminin konumu \(yikici.konum) noktasıdır")


/*:
 İlk sayfada tanımladığınız `kartal` değişkeninin `silah` özelliğini yazdırmaya çalışın. Sizce bu neden çalışmıyor? Cevabınızı konsola yazın ve çalışmayan kodu silin.
 */
 //print(kartal.silah)  // iyi de kardeşim iyi ki sen diyon ilk sayfada tanımladığımız dedğşkenin bu sayfada işi ne?

/*:
 `Savasci` sınıfına `ates()` adlı bir fonksiyon ekleyin. Bu fonksiyon, `kalanAtesGucu` değerinin 0'dan büyük olup olmadığını kontrol etsin. Eğer `kalanAtesGucu` değeri sıfırdan büyükse, kullanıcı her ateş ettiğinde değer bir azalmalıdır. Eğer 0'dan küçükse konsola "Artık ateş gücünüz yok." yazdırın. `yikici` değişkenine `ates()` fonksiyonunu ekleyerek kodu birkaç kez çağırın. Her çağrışınızdan sonra `kalanAtesGucu` değerini konsola yazdırın.
 */
yikici.ates()
print(yikici.kalanAtesGucu)
yikici.ates()
print(yikici.kalanAtesGucu)
yikici.ates()
print(yikici.kalanAtesGucu)
yikici.ates()
print(yikici.kalanAtesGucu)
yikici.ates()
print(yikici.kalanAtesGucu)
yikici.ates()
print(yikici.kalanAtesGucu)
yikici.ates()
print(yikici.kalanAtesGucu)
yikici.ates()
print(yikici.kalanAtesGucu)
yikici.ates()
print(yikici.kalanAtesGucu)
yikici.ates()
print(yikici.kalanAtesGucu)
yikici.ates()
print(yikici.kalanAtesGucu)


//: [Önceki](@previous)  |  sayfa 2 / 4  |  [Sonraki: Alıştırma - Metodları ve Özellikleri Ovveride Etmek](@next)
