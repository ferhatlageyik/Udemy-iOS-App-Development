/*:
 ## Fonksiyonlar ve Optional Değerler
 
 Bir uygulama, sağladığı bazı hizmetler için kullanıcıların belirli bir yaşın üzerinde olması gerektiğinden kullanıcılara yaşlarını soruyor olabilir. Aşağıya `checkAge` adında, `String` türünden bir parametre alan bir fonksiyon yazın. Bu fonksiyon, parametreyi bir `Int` değerine dönüştürmeyi denemeli ve kullanıcının 18 yaşın üstünde olup olmadığını kontrol etmeli. Kullanıcı 18 yaşından büyükse, konsola "Hoş geldiniz!" yazdırmalı. Değilse, konsolda "Üzgünüz, uygulamamızı kullanmak için en az 18 yaşında olmalısınız." yazmalı. `String` parametresi, bir `Int` değerine dönüştürülemiyorsa, konsola "Bir hata oluştu. Yaşınızı lütfen tekrar girin." yazdırın.
 
 Fonksiyonu çağırın ve parametre olarak `userInputAge` değerini verin. Sonrasında, sayıya dönüştürülebilecek bir `String` değeri verin.
*/

import Foundation
var userInputAge: String = "34e"


func checkAge(_ age:String) ->Int?{
   
    if let convertedAge = Int(age){
        if Int(convertedAge) > 18 {
            print("Welcome to club loosers club")
        }else{
            print("We are sorry, see you when you growed up")
        }
    }else{
        print("Bir hata oluştu. Yaşınızı lütfen tekrar girin!")
    }
  return nil
}

//print(checkAge(userInputAge))
userInputAge = "18"
checkAge(userInputAge)
userInputAge = "19"
checkAge(userInputAge)

/*:
 Geri dönün ve fonksiyonunuzu, yaş değerini `Int` türünden döndürecek şekilde güncelleyin. Fonksiyonunuz her zaman bir değer döndürecek mi? Döndürülen değerin türünün bunu doğru ifade ettiğinden emin olun. Fonksiyonu çağırın ve döndürülen değeri konsola yazdırın.
*/
// iyi de abi bu ifadeyi nasıl ekliyim ki?? sonuçta yaş değeri nil de gelebilir bana ama ben bir Int değer döndürmek zorundayım hangi Int değeri döndürcem bunu neye göre seçecem anlamadım.
// tamamdır videoyu biraz daha izleyince ilerleyen kısımda hocamız bahsetti sağolsun fonksiyonun return değerini belirtiken sonuna ? return değerine de nil ekleyerek bu soruyu da pass geçmiş bulunuyorum. zaten yukarıdaki kodlarla iki soruyu da çözmüş bulunuyorum.
/*:
 Bir market uygulaması geliştirdiğinizi düşünün. Bir ürünün ismini alan ve ürünün fiyatını dönen bir fonksiyon yazın. Fonksiyonun içinde, ürünün stokta olup olmadığını `stock` "dictionary"sinden kontrol edin. Stokta var ise ürünün fiyatını `prices` "dictionary"sinden bulun ve döndürün. Ürün stokta yoksa, `nil` döndürün.
 
 Fonksiyonu çağırın. Parametre olarak, stokta bulunan bir `String` değeri verin.
*/
var prices = ["Chips": 2.99, "Donuts": 1.89, "Juice": 3.99, "Apple": 0.50, "Banana": 0.25, "Broccoli": 0.99]
var stock = ["Chips": 4, "Donuts": 0, "Juice": 12, "Apple": 6, "Banana": 6, "Broccoli": 3]

func getPrice(productName: String) ->Double? {
    
    for (productNames, count) in stock{
        
          if (productName == productNames) && (count > 0){
           
              return prices[productName]
          }
    }
    return nil
 }

if let returnPrice = getPrice(productName: "Juice"){
    print(returnPrice)
}
var returnPrice2 = getPrice(productName: "Donuts")
print(returnPrice2)

// ürün stokta yoksa bir türlü nil döndüremedim ya ona yanarım ya
// ve tam üstteki satırı yazdıktan sonra bastırdım sanırım gördüm hatamı
//print(getPrice(productName: "Juice"))
//print(getPrice(productName: "Apple"))
//print(getPrice(productName: "Donuts"))
//: [Önceki](@previous)  |  sayfa 3 / 6  |  [Sonraki: Öğün Takibi Uygulaması](@next)

