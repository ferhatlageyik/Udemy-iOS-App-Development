/*:
 ## Alıştırma - Computed Property ve Property Observer
  
 Aşağıdaki `Dikdortgen` struct'ında, genişliği ve yüksekliği temsil eden iki tane özellik bulunuyor. Bu veriler ile dikdörtgenin alanını (`genislik * yukseklik`) hesaplayan bir computed property ekleyin. Bir `Dikdortgen` değişkeni tanımlayın ve eklediğiniz özelliği konsola yazdırın.
 */
struct Dikdortgen {
    var genislik: Int
    var yukseklik: Int
    
    var alan: Int{
        return genislik * yukseklik
    }
}
var room1 = Dikdortgen(genislik: 4, yukseklik: 8)
print(room1.alan)
room1.genislik = 6  // burada sadece genişlik değerini değiştirerek aslında bir değişken olan alanı değiştirebildik. custom init ile olan farkına dikkat etmek lazım
                    // custom init'de sonradan güncellenen bir değer init esnasında hespalanan değişkenlerin değerinin güncellenmesine etki etmiyor. ilk başta nasıl init edilmişlerse o şekilde kalıyor.
print(room1.alan)
/*:
 Aşağıdaki `Boy` struct'ı bir kullanıcının boyunu inç cinsinden ve santimetre cinsinden temsil ediyor. Ancak `incCinsindenBoy` değiştiğinde, `santimetreCinsindenBoy` da ona göre güncellenmeli. Bunu sağlamak için, her iki özelliğe de diğer özelliğin değerinin doğru olup olmadığını kontrol eden ve yanlışsa o değeri güncelleyen bir `didSet` ekleyin.
 
 * Callout(İpucu):
    Diğer değişkenin değerini, değişmesi gerekip gerekmediğini kontrol etmeden güncelleseydiniz, her iki değişkenin de birbirini güncellediği sonsuz bir döngü ile karşılaşırdınız.
 */
  struct Boy {
    var incCinsindenBoy: Double{
        didSet{
            if incCinsindenBoy != oldValue{
            print("eski değer \(oldValue) yeni değer \(incCinsindenBoy)")
            }
        }
    }
    

    var santimetreCinsindenBoy: Double{
        
        santimetreCinsindenBoy = incCinsindenBoy * 2.54
        didSet {
            if oldValue != santimetreCinsindenBoy{
                print("eski değer \(oldValue) yeni değer \(santimetreCinsindenBoy)")
            }
        }
        return santimetreCinsindenBoy
    }
    
    init(incCinsindenBoy: Double) {
        self.incCinsindenBoy = incCinsindenBoy
        self.santimetreCinsindenBoy = incCinsindenBoy * 2.54
    }
    
    init(santimetreCinsindenBoy: Double) {
        self.santimetreCinsindenBoy = santimetreCinsindenBoy
        self.incCinsindenBoy = santimetreCinsindenBoy / 2.54
    }
}


//: [Önceki](@previous)  |  sayfa 7 / 10  |  [Sonraki: Uygulama - Mil Süresi ve Tebrik Mesajı](@next)
