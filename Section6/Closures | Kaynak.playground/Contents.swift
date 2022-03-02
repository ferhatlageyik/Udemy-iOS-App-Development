import UIKit

// Klasik Fonksiyon Yazımı
func sum(numbers: [Int]) -> Int {
    return 100
}

// Closure Örneği
let sumClosure = { (number: [Int]) -> Int in
    return 100
}

// Closure Kullanımı
let sum = sumClosure([1, 2, 3, 4, 5])


print(sum)


// Swift'te tüm değerlerin bir tipi vardır;
// Örn: Int, Bool, [String], etc.

// Closure'ların tipleri, aldıkları parametreler ve dönüş tipinin birleşimi ile ifade edilir.
// sumClosure için veri tipi: (number: [Int]) -> Int

// Aynı fonksiyonlarda olduğun gibi, Closure'ların da tipleri var;

// MARK: - Closure 1
// Parametresiz ve dönüşsüz

// Void: Dönüş tipin in olmamasını anlatır.
let printClosure = { () -> Void in
    print("Print Closure Executed.")
}

printClosure()

// MARK: - Closure 2
// Parametreli, dönüşsüz
let complexPrintClosure = { (string: String) -> Void in
    print(string)
}

complexPrintClosure("Merhaba!")

// MARK: - Closure 3
// Parametresiz, dönüşlü
let randomNumberClosure = { () -> Int in
    return Int.random(in: 1...100)
}

randomNumberClosure()

// MARK: - Closure 4
// Parametreli ve dönüşlü

let complexRandomNumberClosure = { (minValue: Int, maxValue: Int) -> Int in
    return Int.random(in: minValue...maxValue)
}

complexRandomNumberClosure(10, 50)

// Closure'ların argüman olarak kullanımı
let playlist = ["Track 3", "Track 1", "Track 2"]

// Bu fonksiyon ile Array'ler üzerinde isteiğiniz biçimde sıralama yapabilirsiniz.
let sortedPlaylist = playlist.sorted { (left, right) -> Bool in
    return left < right
}
print(sortedPlaylist)


// Closure'ların Kısa Kullanımı
// Closure'ların parametre isimleri olarak '$' işareti kullanılabilir.
// ("str1", "str2") $0 -> "str1", $1 -> "str2"
let sortedPlaylist2 = playlist.sorted(by: { return  $0 > $1 })
print(sortedPlaylist2)


// Koleksiyonlar üzerinde tanımlı olan diğer Closure örnekleri

// MARK: Map
// Array'ler üzerinde tanımlı olan bir method. Array'de bulunan her bir elemanın ne şekilde değişeceğini belirtir.
let names = ["Mehmet", "Alp", "Mustafa", "Berkin"]

// Closure Olmadan...
// Boş bir Array oluşturulur. Bu Array, ad + soyad bilgilerini tutacak.
var fullNames = [String]()

for name in names {
    let fullName = name + " " + "Kabakçıoğlu"
    fullNames.append(fullName)
}

print(fullNames)

// Closure ile...
let fullNames2 = names.map { (name) -> String in
    return name + " " + "Kabakçıoğlu"
}

// Sadeleştirilmiş Closure...
let fullNames3 = names.map { $0 + " Kabakçıoğlu" }

print(fullNames3)

// MARK: Filter
// Bu fonksiyon, belirtmiş olduğunuz kritere göre yeni bir Array oluşturur.

// Closure olmadan...
let numbers = [4, 8, 12, 56, 34, 78]
var numbersLessThan20 = [Int]()

for number in numbers {
    if number < 20 {
        numbersLessThan20.append(number)
    }
}

print(numbersLessThan20)

// Closure ile...
let lessThan20 = numbers.filter { (number) -> Bool in
    // number, Array'İn o anki elemanı.
    // return edilmesi gereken bilgi ise, o elemanın yeni oluşturulacak Array'de olup olmaması bilgisi.
    return number < 20
}

print(lessThan20)

// Sadeleştirilmiş Closure...
let lessThanTwenty = numbers.filter { $0 < 20 }

print(lessThanTwenty)

// MARK: Reduce
// Array'de bulunan tüm elemanları kullanarak tek bir eleman oluşturur.

// Closure olmadan...
let numbers2 = [1, 6, 3, 5, 4, 8]
var total = 0

for number in numbers2 {
    total += number
}

print(total)

// Closure ile...
let total2 = numbers2.reduce(0) { (currentTotal, newValue) -> Int in
    return currentTotal + newValue
}

print(total2)

// Sadeleştirilmiş Closure...
let total3 = numbers2.reduce(0, { $0 + $1 })

print(total3)
