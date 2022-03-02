import Foundation
/*:
 ## Uygulama - Koşu Temposu
  
 Fitness uygulamanız, koşu yapan kullanıcıların tempolarını, yani kadanslarını, takip edip geliştirmesine yardımcı oluyor. Koşu kadansı, koşucunun bir dakika içinde attığı adım sayısıdır. Sporculara yardımcı olmak için, uygulamanız kullanıcıların bir kadans girmesine izin verip her bir adım atmaları gerektiğinde bir ses çalacak.
 
 Bu alıştırma için, uygulamanızın kadans özelliğini kodlayacaksınız. Aşağıdaki `testAdimlari` değişkenini kullanan bir while döngüsü yazıp konsola 10 kez "Bir adım at" cümlesini yazdırın. Bunu yaptıktan sonra, while döngünüzün sonuna bu kod satırını ekleyin: `Thread.sleep(forTimeInterval: 60/kadans)`. Böylece döngünüz her çalıştığında kod bir süre ara verecek ve `print` komutlarınız doğru kadansta yazdırılacaktır.
 */
let kadans: Double = 180
var testAdimlari = 0

/*:
Yukarıdaki kadans örneğini bir repeat-while döngüsü ile yeniden yazın.
 */
testAdimlari = 0


//: [Önceki](@previous)  |  sayfa 4 / 6  |  [Sonraki: Alıştırma - Kontrol Transfer Komutları](@next)
