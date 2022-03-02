/*:
 ## Alıştırma - Metodlar
 
 Aşağıda bir `Kitap` struct'ı bulunuyor. Bu struct'a, kitabın bilgilerini bir cümle olarak yazdıracak `aciklama` adında bir metod ekleyin. Sonra bir `Kitap` değişkeni tanımlayıp üzerinde metodu çağırın.
 */
struct Kitap {
    var ad: String
    var yazar: String
    var sayfaSayisi: Int
    var fiyat: Double
    
    func aciklama(){
        print("\(ad) isimli kitabın yazarı \(yazar)'dir. Sayfa sayısı \(sayfaSayisi) ve fiyatı \(fiyat) liradır.")
    }
}

let theMostBoredKitap = Kitap(ad: "Ölü Canlar", yazar: "Gogol", sayfaSayisi: 550, fiyat: 25.65)
print(theMostBoredKitap.aciklama())

/*:
 Aşağıda bir sosyal medya gönderisini temsil eden bir `Gonderi` struct'ı bulunuyor. Bu struct'a, `begeniSayisi`'nı bir arttıran, `begen` adında bir mutating metod ekleyin. Bir `Gonderi` değişkeni tanımlayın ve `begen()` metodunu çağırın. Beğenilerin arttığını görmek için, metodu çağırmadan önce ve sonra `begeniSayisi` özelliğini konsola yazdırın.
 */
struct Gonderi {
    var mesaj: String
    var begeniSayisi: Int
    var yorumSayisi: Int
    
    mutating func begen (){
        begeniSayisi += 1
    }
}
var manzara = Gonderi(mesaj: "Memleketten bir kare :)", begeniSayisi: 23, yorumSayisi: 1)
print(manzara.begeniSayisi)
manzara.begen()
print(manzara.begeniSayisi)
//: [Önceki](@previous)  |  sayfa  5 / 10  |  [Sonraki: Uygulama - Antrenman Metodları](@next)
