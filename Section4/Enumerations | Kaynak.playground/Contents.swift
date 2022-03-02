import UIKit
/*
 ENUM
 
 Enum nedir?
 
 Bir grup değişken aynı özelliğe sahipse ve bu özellik, kodlama dilindeki türlerden biri değilse enum kullanılır. Enumlar, değişkenleri özelliklerine göre tek bir çatı altında toplarlar.
 */

// Enum Oluşturmak
// NOT1: Enum isimleri Struct'larda olduğu gibi büyük harf ile başlar.

// NOT2: Case isimleri küçük harf ile başlar.

// NOT3: Oluşturulan bir enum objesine sonradan yeni Case'ler eklenemez.
// Sabit isimlerde ve sayıdadır.

enum Yon {
    case kuzey
    case guney
    case dogu
    case bati
}

/*
 enum Yon {
 case kuzey, guney, dogu, bati
 }
 */

// Enum Kullanımı
var suankiYon = Yon.kuzey
let eskiYon: Yon = .guney

suankiYon = .bati

// ---------------------------------------------------------
// Kontrol Mekanizmaları ile Enum Kullanımı

switch suankiYon {
case .kuzey:
    print("Kuzey yönünde ilerliyorsunuz.")
    
case .guney:
    print("Güney yönünde ilerliyorsunuz.")
    
case .dogu:
    print("Doğu yönünde ilerliyorsunuz.")
    
case .bati:
    print("Batı yönünde ilerliyorsunuz.")
}

// ---------------------------------------------------------
// Enum Kullanımı ile Tip Güvenliği

struct Movie {
    var name: String
    var releaseYear: Int
    var genre: String
}

let movie1 = Movie(name: "Parazit", releaseYear: 2019, genre: "Drama")
// Problem: Genre, bir standarda sahip değil. Drama, drama, dram, rama
// Genre bir Enum olmalı.


enum Kategori {
    case aksiyon
    case drama
    case belgesel
    // vb...
}

struct Film {
    var ad: String
    var cikisYili: Int
    var kategori: Kategori
}

let film1 = Film(ad: "Parazit", cikisYili: 2019, kategori: .drama)


// Enum'lar çoğunlukla birşeyin tipini ifade etmek için tercih edilir.

enum KoltukTipi {
    case camKenari
    case orta
    case koridor
}

enum Cinsiyet {
    case erkek
    case kadin
    case belirtilmemis
}

enum AracTipi {
    case binek
    case ticari
}

enum LegoType {
    case technic
    case city
    case starwars
}

struct Price {
    
    enum Currency {
        case turkishLira
        case euro
        case dollar
    }
    
    var value: Double
    var currency: Currency
}

struct Product {
    var name: String
    var price: Price
}

let price1 = Price(value: 12.45, currency: .dollar)
