import Foundation

// Veri Tipler
// String, Double, Int, Bool, İnsan

// Ürün
    // - var adı: String
    // - var stok: Int
    // - var fiyat: Double

// Kendi veri tiplerinizi Struct'lar yardımı ile oluştursbilirsiniz.

// Bir Struct'ta Neler Var?
// 1 - Değişkenler ve sabitler (Property)
// 2 - Initializers
// 3 - Fonksiyonlar (Method)
// 4 - enum'lar, başka Struct'lar (opsiyonel)

struct Price {
    
    // Bu enum yalnızca Price Struct'ı içerisinde geçerlidir.
    //Dış dünya tanımaz!
    enum Currency: String {
        case dollar = "$"
        case turkishLira = "₺"
        case euro = "€"
    }
    
    // Properties
    var value: Double
    var currency: Currency
    
    // Functions
    /// Dövizin ikonu ve değerini bir araya getirir. ($13.56)
    func priceTag() -> String {
        return currency.rawValue + String(value)
    }
}

let macBookPrice = Price(value: 5999.0, currency: .turkishLira)

print(macBookPrice.priceTag())

struct Human {
    var name: String
    
    func sayHello() {
        print("Merhaba! Benim adım \(name)")
    }
}

// İnsan türünden bir Nesne Oluşturmak
let human1 = Human(name: "Emirhan")

human1.sayHello()
print(human1.name)

// -------------------------------------------------
// Nesneler

/*
 
 enum Beden {
    case xsSmall
    case small
    case medium
    case large
 }
 
 enum Renk {
    case kırmızı
    case mavi
    case yeşil
    case beyaz
 }
 
struct Tshirt {
    var beden: Beden
    var renk: Renk
}

 let tshirt1 = Tshirt(beden: .large, renk: .yeşil)
 let tshirr2 = Tshirt(beden: .xsmall, renk: .beyaz)
 */

struct Car {
    var make: String
    var model: String
    var year: Int
    var topSpeed: Int
    
    func startEngine() {
        print("Üreticisi: \(make), modeli: \(model), yılı: \(year) ve maksimum hızı: \(topSpeed) olan arabanın motoru çalıştırıldı.")
    }
    
    func drive() {
        print("Üreticisi: \(make), modeli: \(model), yılı: \(year) ve maksimum hızı: \(topSpeed) olan araba hareket halinde.")
    }
    
    func park() {
        print("Üreticisi: \(make), modeli: \(model), yılı: \(year) ve maksimum hızı: \(topSpeed) olan araba park edildi.")
    }
}

let car1 = Car(make: "Honda", model: "Civic", year: 2010, topSpeed: 180)
let car2 = Car(make: "Ford", model: "Mustang", year: 2020, topSpeed: 350)

car1.startEngine()
car1.drive()

car2.park()

// --------------------------------------------------------
// Initializers
// Initializer -> Parametreli bir fonksiyon ve compiler tarafından oluşturulur.

var string = String.init() // ""
var integer = Int.init() // 0
var bool = Bool.init() // false


// Kısa Yöntem
var string2 = String() // ""
var integer2 = Int() // 0
var bool2 = Bool() // false


// Initializers | Varsayılan Değerler

// Kilometre sayacı
struct Odometer {
    var count: Int = 0
}

// count = 0, Odometer(count: 0)
let odometer1 = Odometer()

print(odometer1.count)

// Memberwise Initializers
// Swift tarafından tüm özellklerin içerildiği initializer'lardır.
let odometer2 = Odometer(count: 12)
print(odometer2.count)

struct Person {
    var name: String = ""
}

// Hatalı bir varsayılan değer kullanımı. Bu, adı "" olan bir insan oluşturmaya neden olabilir!
let person1 = Person()

// Custom Initializers
struct Temperature {
    var celcius: Double
    
    init(celcius: Double) {
        self.celcius = celcius
    }
    
    init(fahrenheit: Double) {
        celcius = (fahrenheit - 32) / 1.8
    }
    
    init(kelvin: Double) {
        celcius = kelvin - 273.15
    }
}

let temperature1 = Temperature(celcius: 32)

// Problem: Sıcaklık bilgisini verecek kişi, fahrenheit türünden anlıyor.
let fahrenheit = 98.4 // Kullanıcı girdisi
let celciusValue = (fahrenheit - 32) / 1.8 // Bilgi türü dönüşümü

let temperature2 = Temperature(celcius: celciusValue)

// Custom Init Kullanımı
let currentTemperature = Temperature(fahrenheit: 87)
let boiling = Temperature(celcius: 100)
let freezing = Temperature(kelvin: 273.15)

print(currentTemperature.celcius)
print(boiling.celcius)
print(freezing.celcius)

// --------------------------------------------------------
// Instance Methods (Nesne Methodları)

struct Size {
    var width: Double
    var height: Double
    
    func area() -> Double {
        return width * height
    }
}

let size1 = Size(width: 12.56, height: 2.78)
let area1 = size1.area()

// Computed Properties (Hesaplanan Özellikler)
// Read Only

var xyz = 12

xyz = 15
print(xyz)

// Property Observers
// willSet (değer değişmek üzere, henüz değişmedi), didSet (değer değişti)

struct StepCounter {
    var stepCount: Int = 0 {
        willSet {
            // Burası willSet için olan kod bloğu.
            // newValue -> Yeni gelecek olan değer.
            print("adimSayisi, birazdan \(newValue) olacak.")
        }
        didSet {
            // Burası da didSet için ayrılan kod bloğu.
            // oldValue -> Yeni değer gelmeden önceki değer.
            if stepCount > oldValue {
                // Adım atılmış. İleri yönde hareket
                print("\(stepCount - oldValue) adım atıldı!")
            }
        }
    }
}

var stepCount = StepCounter()
stepCount.stepCount = 3
stepCount.stepCount = 178

// Instance -> Obje
// Type -> Veri Tipi (Struct)

// Type Methods and Properties
// static

struct DecimalNumber {
    static var pi: Double = 3.14
}

//let piSayisi = OndalikliSayi(deger: 3.14)
//piSayisi.deger

DecimalNumber.pi

// Fonksiyonlar da 'static' olabilir
let smallestNumber = Double.minimum(12, 34.65)
let largestNumber = Double.maximum(34.56, 36.12)

var someSize = Size(width: 250, height: 1000)
var anotherSize = someSize

someSize.width = 32

print(someSize.width)
print(anotherSize.width)

var number1 = 45
var number2 = number1

// Struct nesnleri, kopyalanarak taşınır.

number1 = 56

print(number2)
