import UIKit

// Tipler Arası Dönüşüm
// func getClientPet() -> Cat, Dog, Bird => Animal
// let pet = getClientPet() Bird, Cat, Dog

/*
 func walk(dog: Dog) {
 }
 
 func cleanLitterBox(cat: Cat) {
 }
 
 func cleanCage(bird: Bird) {
 }
 */

/*
 let pets = allClientPets() // Tüm evcil hayvanları getirir.
 
 for pet in pets {
    let dog = pet as! Dog -> Tercih edilmemeli. Ya pet, Dog türünden değilse?
 
    if let dog = pet as? Dog {
        walk(dog: dog)
    }else if let cat = pet as? Cat {
        cleanLitterBox(cat: cat)
    }else if let bird = pet as? Bird {
        cleanCage(bird: bird)
    }
 }
 
 as! -> Force Cast: Eğer alt sınıf üst sınıftan türemiyorsa sonuç nil olur ve uygulama çöker.
 */

class Animal { }
class Cat: Animal { }
class Dog: Animal { }
class Bird: Animal { }

// Eğer bir Array'de birden farklı veri tipi aynı anda kullanılabiliyorsa o Array'in veri tipi nedir?
// [String], [Int], [Bool] -> Hayır

// ----------------------------------------------------------------------------------------
// 'ANY' Anahtar Kelimesi
// Any -> Her tür veri tipi olabilir demek...

// Örnek
var array: [Any] = [5, "Can", 4.78, Dog()]

// Array'in ikinci elemanını bir String türü olarak kullanabiliyor muyum?
if let firstItem = array[1] as? String {
    // Array'in ikinci elemanı bir String türündendir ve değeri 'firstItem' değerine atanmıştır.
    print(firstItem)
}
