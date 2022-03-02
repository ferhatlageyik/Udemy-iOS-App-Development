/*:
 ## Uygulama - Antrenman Metodları
 
 Aşağıdaki `KosuAntrenmani` struct'ına, koşunun detaylarını yazdıran bir `antrenmanDegerleriniGoster` metodu ekleyin. Daha sonra, bir `KosuAntrenmani` değişkeni tanımlayın ve üzerinde `antrenmanDegerleriniGoster()` metodunu çağırın.
 */
struct KosuAntrenmani {
    var mesafe: Double
    var sure: Double
    var yukselti: Double
    func antrenmanDegerleriniGoster(){
        print("\(yukselti) metre yükseltide bu da ne demek oluyorsa artık \(mesafe) km'yi \(sure) dakikada koştunuz.")
    }
}

var ikinciGun = KosuAntrenmani(mesafe: 2.3, sure: 45, yukselti: 15)
ikinciGun.antrenmanDegerleriniGoster()
/*:
 Aşağıda, gün içerisinde attığınız adımları takip etmenizi sağlayan bir `Adim` struct'ı bulunuyor. Bu struct'ın içerisine, attığınız adımların sayısını bir arttıran bir `adimAt`  metodu ekleyin. Bir `Adim` değişkeni tanımlayıp üzerinde metodu çağırın. Adım sayısının arttığını görmek için, metodu çağırmadan önce ve sonra `adimSayisi` özelliğini konsola yazdırın.
 */
struct Adim {
    var adimSayisi: Int
    var hedef: Int
    
    mutating func adimAt(){
        adimSayisi += 1
    }
}

var ilkGun = Adim(adimSayisi: 8756, hedef: 10000)
print(ilkGun.adimSayisi)
ilkGun.adimAt()
print(ilkGun.adimSayisi)
//: [Önceki](@previous)  |  sayfa 6 / 10  |  [Sonraki: Alıştırma - Computed Property ve Property Observer](@next)
