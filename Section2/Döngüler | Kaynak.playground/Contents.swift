import UIKit

// For Döngüleri (for-in)
// Kapalı Aralık: ...
// Açık Aralık: ..<

for index in 1...5 {
    print("Sayı: \(index)")
}

// Döngüde kaçıncı elemanda olduğunuzu bilmek istemiyorsanız...
for _ in 1...3 {
    print("Merhaba!")
}

let names = ["Name 1", "Name 2", "Name 3"]

// 'names' dizisindeki tüm elemanlar için çalışacak.
// Her çalıştığında, 'name' parametresinindeğeri o anki elamana eşit olacak.
// Bu tür döngüler, kaç kez çalışacağını array'in eleman sayısında kendi hesaplar.
for name in names {
    print("Merhaba \(name)")
}

// EK BİLGİ: Strng'ler de aslında bir koleksiyondur!
"merhaba" // -> ["m", "e", "r", "h", "a", "b", "a"]

for character in "merhaba" {
    print("Harf: \(character)")
}

// Bir Array üstünde çalışan for döngüsünde hem elemanların index,
// hem de kendi değerlerine aynı anda ulşamak isterseniz...
// array.enumerated() -> [(index, değer)]

for (index, character) in "Emirhan".enumerated() {
    print("\(index). harf: \(character)")
}

// For-in Döngüleri ve Dictionary'ler
let vehicles = ["bisiklet": 3, "scooter": 2, "araba": 1]

for (vehicleName, count) in vehicles {
    print("\(count) adet \(vehicleName) var.")
}

// NOT: Dictionary'ler ASLA sıralı değildir.

// -----------------------------------------------------------
// While Döngüleri
var numberOfLives = 3

/*
 while numberOfLives > 0 {
    hamleniYap()
    canSayısınıGüncelle()
 }
 */

var stillAlive = true

while stillAlive {
    // Hayatta ise çalışacak..
    numberOfLives -= 1
    
    if numberOfLives == 0 {
        stillAlive = false
    }
}

// Bazen döngü tamamlanmadan bitirmek isterseniz... (While ve For-in)
// Yöntem: break

for index in -3...3 {
    print(index)
    
    if index == 0 {
        break // index 0 olduğu zaman döngü kırılır. Artık index değeri de artmaz.
    }
}

