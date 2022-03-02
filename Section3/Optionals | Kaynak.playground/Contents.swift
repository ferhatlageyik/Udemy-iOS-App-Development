import UIKit

// Optionals
// ?!

// Gözle görtünür, ama içi boş olan kutu
var name: String = ""

// Gözle görünmüyor henüz, ama birgün olacağı biliniyor.
var age: Int? // Memory'de yaşamıyor, ama birgün yaşayabilir. Yaşamayadabilir.

// Nil
// Değer olmayışı = nil olma durumu
var test: String? = nil

// ? -> Bir değer olabilir (String, Int, Bool, etc.) veya olmayabilir (nil).

// ---------------------------------------------------------------------------------------------------
// Örnek
struct Book {
    var name: String // nil olamaz
    var publicationYear: Int? // nil olabilir
}

let book1 = Book(name: "Book 1", publicationYear: 1997)
let book2 = Book(name: "Book 2", publicationYear: 1998)
let book3 = Book(name: "Book 3", publicationYear: 1999)

// Henüz yayınlanmamış bir kitap?
// Bu yanlış. Neden? Kitap 0 yılında yayınlanmış ve 2020 yaşında gibi duruyor...
let yayinlanmamisKitap = Book(name: "Book 4", publicationYear: 0)

// nil -> Değerin olmayışı
let yayinlanmamisKitap2 = Book(name: "Book 5", publicationYear: nil)


// Optional Olanların Tipini Belirtmek
var serverResponseCode = 404 // Değeri nil olamayan bir tanımlama
//var serverResponseCode2 = nil | Bir değişkenin tipini belirtmeden değerini 'nil' belirleyemezsiniz.
var serverResponseCode3: Int? = 404 // Şu anki değer 404, ama ileride 'nil' olabilir.
var serverResponseCode4: Int? = nil // Şu anki değeri 'nil' ama ileride bir tam sayı olabilir.

// ---------------------------------------------------------------------------------------------------
// Optional Olan Değerler ile Çalışmak

// Bir değerin 'nil' olup olmadığını nasıl kontrol edersiniz? (If)
var publicationYear: Int? = 2010

if publicationYear != nil {
    // Değeri 'nil' değilse...
    // ! -> force-unwrap operator 'nil' olabilecek değerleri zorunlu çıkartır.
    // 'nil' değilmiş gibi kullanmak için sonuna '!' eklenir. DİKKAT: O an değeri nil ise uygulamanız çökecek.
    // Bu yüzden değernin nil olmadığından önce emin olmalısınız
    let actualYear = publicationYear!
    print(actualYear)
}

// If-Let
if let actualYear = publicationYear {
    // 'publicationYear' nil değilse, onun değerini '!' ile unwrap eder ve 'actualYear' olarak sunar.
    print(actualYear)
}

if let bookYear = book3.publicationYear {
    print("Book3's publication year is \(bookYear)")
}

// If-Let-Else
if let year = book2.publicationYear {
    print("Book2's publication year is \(year)")
}else {
    // book2.publicationYear = nil ise...
}

// ---------------------------------------------------------------------------------------------------
// Fonksiyonlar & Optionals
let string = "1234a"
let possibleNumber = Int(string) // Optional bir sonuç verir.
// Neden? Çünkü her yazı bir tam sayı ifade etmeyebilir.
// Örnek: "123" -> Tam Sayı olabilirken, "abc" -> tam sayıya dönüşemez. Bu durumda sonuç 'nil' olur.

// Fonksiyon Örneği
func printFullName(firstName: String, middleName: String?, lastName: String) {
    // MiddleName önce if let ile kontrol edilmeli, sonra kullanılmalı.
}

// Bir websitesinin içeriğini metin olarak döndürür. (websitesi varsa...)
func textFromURL(url: URL) -> String? {
    return nil
}

// ---------------------------------------------------------------------------------------------------
// Failable Initializers (Initialize edilemeyen objeler...)
struct Cocuk {
    var name: String
    var monthsOld: Int
    
    init?(name: String, monthsOld: Int) {
        if monthsOld < 12 || monthsOld > 36 {
            return nil
        }else {
            self.name = name
            self.monthsOld = monthsOld
        }
    }
}

let c1 = Cocuk(name: "Ad 1", monthsOld: 5)
let c2 = Cocuk(name: "Ad 2", monthsOld: 34)

if let cocuk1 = c1 {
    // Buraya girmez. Nede? c1 -> 'nil'
}

if let cocuk2 = c2 {
    // Buraya girer. Nede? c2 != nil
    print(cocuk2.monthsOld)
}

// ---------------------------------------------------------------------------------------------------
// Optional Chaining
// xyz?.abc?.123

struct Person {
    var age: Int
    var residence: Residence?
}

struct Residence {
    var address: Address?
}

struct Address {
    var buildingNumber: String
    var streetName: String
    var apartmentNumber: String?
}

let person = Person(age: 24, residence: nil)

// Pek hoş değil :)
if let residence = person.residence {
    if let address = residence.address {
        if let apartmentNumber = address.apartmentNumber {
            print("Kişi \(apartmentNumber) numaralı apartmanda yaşıyor.")
        }
    }
}

// Optional Chaining
if let apartmentNumber = person.residence?.address?.apartmentNumber {
    // Zincirin kırılmaması için tüm optional değerlerden geçilmesi gerekiyor.
    print("Kişi \(apartmentNumber) numaralı apartmanda yaşıyor.")
}
