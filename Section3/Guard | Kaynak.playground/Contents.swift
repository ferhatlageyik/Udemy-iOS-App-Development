import UIKit

/*
 Buradaki hayali kod satırları guard yapısının neden kullanıldığını göstermektedir.
 
func dogumGunuMuziginiCal() {
    if dogumGunuBugunMu {
        if !davetliLstesi.isEmpty {
            if pastaUzerindekiMumHazırMı {
                Dogum gunu müziğini çalma zamanı...
            }
        }
    }
}

func dogumGunuMuziginiCal() {
    guard dogumGunuBugunMu else {
        Bugün kimsenin doğum günü değil.
        return
    }
 
    guard !davetliLstesi.isEmpty else {
        Kimse partide değil :(
        return
    }
    
    guard pastaUzerindekiMumHazırMı else {
        Mumlar hazır değil.
        return
    }
    
    print("Doğum günün kutlu olsun!")
}
*/

/*
func divide(_ number: Double, by divisor: Double) {
    if divisor != 0 {
        let result = number / divisor
        print(result)
    }
}
*/

func divide(_ number: Double, by divisor: Double) {
    
    // Aşağıdaki bu guard yapısının koşulu eğer false değerini döndürürse süslü parantezlerin içerisinde yazan return çalışacak ve fonksiyon boşa dönecektir. Eğer koşulu true değerini döndürürse kodlar çalışmaya devam edecektir.
    guard divisor != 0 else { return }
    let result = number / divisor
    
    print(result)
}

// Guard ile Optonals
struct Book {
    var title: String
    var price: Double
    var pages: Int
}

// Kütüphaneye kitap eklemek için kullanılıyor
/*
func processBook(title: String?, price: Double?, pages: Int?) {
    if let title = title, let price = price, let pages = pages {
        let book = Book(title: title, price: price, pages: pages)
    }
}
 */

func processBook(title: String?, price: Double?, pages: Int?) {
    
    // Optional parametrelerin "nil" olup olmadığını kontrol etmek için aşağıdaki guard yapısını yazıyoruz. Parametrelerin "nil" değerine eşit olması durumunda süslü parantezlerin içerisindeki kod çalışacak ve fonksiyon orada duracaktır. "nil" olmaması durumunda ise guard kelimesinden hemen sonra gelen sabitler tanımlanacaktır.
    guard let theTitle = title, let thePrice = price, let thePages = pages else { return }
    let book = Book(title: theTitle, price: thePrice, pages: thePages)
}
