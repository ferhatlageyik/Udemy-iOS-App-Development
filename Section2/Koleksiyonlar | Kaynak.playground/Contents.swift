import UIKit

// Array
// Aynı türden verileri bir arada tutan yapılardır.

// Array Gösterimi
// [elaman 1, eleman 2, eleman 3, ...]

// Array Tanımlaması
var names: [String] = ["Can", "Eren", "Baran", "Elfin"]
var names2 = ["name 1", "name 2"]

var numbers = [1, 56, -8, 24]
var bools = [true, false, false]

// xyz elemanı bu dizide var mı?
if numbers.contains(24) {
    print("Bu dizide 24 sayısı bulunuyor.")
}

// let ile tanımlanan bir diziye eleman eklenemez veya çıkartılamaz.


// Array Tipleri

// Elemanı olmayan bir Array tanımlaması
var followers: [String] = [] // Elemanı olmayan bir Array
var myArray: Array<Int> = [] // Sıklıkla kullanılmaz. Karşılaşırsanız korkmayın :)

// Tercih Edilen Kullanım
var ages = [Int]()

// Array'ler ile Çalışmak
var zeros = [Int](repeating: 0, count: 100)

// Bir Array'de kaç adet eleman var?
let nameCount = names.count // 4 Elemanlı
let agesCount = ages.count // 0 Elemanlı

// Sıfır elemanlı bir Array nasıl anlaşılır?
// Yöntem 1: count == 0
// Yöntem 2: isEmpty

if ages.isEmpty {
    print("Ages dizisinde hiç eleman bulunmuyor.")
}

// Array'lerde Index

// [eleman1, eleman2, eleman3]
// eleman1: 0
// eleman2: 1
// eleman3: 2

// Index ile Array'in Elemanlarına Ulaşmak
var fruits = ["Armut", "Elma", "Çilek", "Muz"]
let firstFruit = fruits[0]

// DİKKAT: Index ile bir elemana ulaşırken, index'in array.count - 1'den büyük olmadığından emin olmalısınız.

// Index ile Array'deki bir Elemana Değer Atamak
// Array'in 'var' ile tanımlanmış olması gerekiyor.
fruits[1] = "Ananas"

print(fruits)

// Array'e Yeni Elemanlar Eklemek (Append)
// Yöntem 1: += iki array ardı ardına eklenebilir
// Yöntem 2: array.append(element: )

// Her zaman sonuna ekler.
fruits.append("Böğürtlen")
fruits += ["Karpuz", "Kavun"]

print(fruits)

// İstenilen bir Index'e Eleman Eklemek
var heights = [12.56, 34.37, 56.89]

// Eklediğiniz eleman, bulunduğu index'teki eski elemanı bir sağa kaydır.
heights.insert(0.45, at: 0)
heights.insert(1.43, at: 1)

// Array'den Eleman Silmek
// Yöntem: remove(at: index)
var appleProducts = ["iPhone", "iPad", "iMac"]

let extractedElement = appleProducts.remove(at: 0)
// analyticsService.log(cikartilanEleman)

print("Çıkartılan eleman: \(extractedElement)")
print(appleProducts)

// Sonuncu Elemanı Silmek
// array.count - 1 alternatifi
appleProducts.removeLast()

print(appleProducts)

// Tüm Elemanları Silmek
appleProducts.removeAll()

// Birden çok dizinin bir araya gelerek oluşturduğu diziler
let number1 = [1, 3, 5, 7, 9]
let numbers2 = [2, 4, 6, 8, 10]
let allNumbers = number1 + numbers2

// Çok Boyutlu Diziler

/*
 X O X -> array1
 O O X -> array2
 X X O -> array3
 */

let array1 = ["X", "O", "X"]
let array2 = ["O", "O", "X"]
let array3 = ["X", "X", "O"]

let gameBoard = [array1, array2, array3]

gameBoard[0]
gameBoard[1]
gameBoard[2]

// İki boyutlu bir Array'in elemanlarına ulaşmak
gameBoard[1][1]
gameBoard[0][0]

// ---------------------------------------------------------------
// Dictionary

// Dictionary Gösterimi
// [key1: value1, key2: value2, key3: value3]

// NOT: Her key, özel olmalıdır. Yani tekrar edemez. (TC Kimlik Numarası gibi)

// Dictionary Tanımlaması
var scores = ["Beşiktaş": 89, "Galatasaray": 88, "Fenerbahçe": 87]

// Boş Dictionary Tanımlaması
var myDictionary = [String : Int]() // Tercih Edilen Yöntem
var myDictionary2 = Dictionary<String, Int>()
var myDictionary3: [String : Int] = [:]

// Elemanların Değerini Güncellemek
// DİKKAT: Case Sensitive
// NOT: Olmayan bir key ile güncelleme yapmaya çalışırsanız, yeni bir key-value ikilisi eklenir.
scores["Galatasaray"] = 90

// Değer güncellerken eski değerine ulaşmak
let fenerbahcesOldValue = scores.updateValue(91, forKey: "Fenerbahçe")
