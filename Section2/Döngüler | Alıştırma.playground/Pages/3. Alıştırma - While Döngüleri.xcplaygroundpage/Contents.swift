import Foundation
/*:
 ## Alıştırma - While Döngüleri
 
 6 yüzlü bir zarın 1 çıkana kadar tekrar tekrar atılmasını simüle eden bir while döngüsü yazın. Her atıştan sonra, zarda çıkan sayıyı konsola yazdırın. (İpucu: `Int.random(in: 1...6)` satırıyla 1 ila 6 arasında rastgele bir sayı oluşturabilirsiniz.)
 */
var myBoolean: Bool = true
while (myBoolean)
{
    let diceNumber: Int = Int.random(in: 1...6)
    print(diceNumber)
    if diceNumber == 1 {
        myBoolean = false
    }
}

print("Hello world")
// baaklım commit atabilecek miyiz

//: [Önceki](@previous)  |  sayfa 3 / 6  |  [Sonraki: Uygulama - Koşu Kadansı](@next)
