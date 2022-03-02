import UIKit

// Protocol
// Bir dizi fonksiyon ve değişkenlerden oluşan bir şablondur.

// Swift'te var olan bazı Protokoller;
// CustomStringCenvertable
// Equatable
// Comparable
// Codable

// ---------------------------------------------------------------
// CustomStringCenvertable

let string = "Hello, World!"
print(string)

let number = 43
print(number)

let boolean = false
print(boolean)


struct Ayakkabi {
    var color: String
    var size: Int
}

let ayakkabi1 = Ayakkabi(color: "Siyah", size: 41)
print(ayakkabi1)

// 'description' adında bir read-only property ekler.
struct Shoe: CustomStringConvertible {
    var color: String
    var size: Int
    var hasLaces: Bool
    
    var description: String {
        let doesOrDoesNot = hasLaces ? "does" : "does not"
        let text = "This shoe is \(color), size \(size), and \(doesOrDoesNot) have laces."
        
        return text
    }
}

let shoe1 = Shoe(color: "Black", size: 41, hasLaces: false)
print(shoe1.description)


// ---------------------------------------------------------------
// Equatable -> Bilgi kıyaslaması

struct Employee: Equatable {
    var firstName: String
    var lastName: String
    var jobTitle: String
    var phoneNumber: String
    
    static func == (lhs: Employee, rhs: Employee) -> Bool {
        // İki Employee objesinin birbirine olan eşitliğini
        // hangi koşullarda sağlanacağını belirtiyoruz.
        return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName
    }
}

struct Company {
    var name: String
    var employees: [Employee]
}

// Uygulamaya giriş yapmış olan kişi
let currentEmployee = Employee(firstName: "Emirhan", lastName: "Erdoğan", jobTitle: "Tech Avangelist", phoneNumber: "")

// Üstüne tıklanarak seçilen kişi
let selectedEmployee = Employee(firstName: "Berkin", lastName: "Ceylan", jobTitle: "Content Director", phoneNumber: "")

// İki kişiyi kıyaslamalız ve,
// eğer birbirlerine eşitse; kişi kendi bilgilerini düzenleyebilmeli.
// eğer eşit değilse: düzenleme özelliği kapanmalı.

if currentEmployee == selectedEmployee {
    print("Profil düzenlenebilir.")
}else {
    print("Profil düzenlenemez. Başkasına bakılıyor.")
}

// ---------------------------------------------------------------
// Comparable -> Bilgi Sıralaması

struct Employee2: Equatable, Comparable {
        
    // MARK: - Properties
    var firstName: String
    var lastName: String
    var jobTitle: String
    var phoneNumber: String
    
    // MARK: - Functions
    static func == (lhs: Employee2, rhs: Employee2) -> Bool {
        // İki Employee objesinin birbirine olan eşitliğini
        // hangi koşullarda sağlanacağını belirtiyoruz.
        return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName
    }
    
    static func < (lhs: Employee2, rhs: Employee2) -> Bool {
        return lhs.lastName < rhs.lastName
    }
}

let employee1 = Employee2(firstName: "fname 1", lastName: "fname 1", jobTitle: "title 1", phoneNumber: "phone 1")
let employee2 = Employee2(firstName: "fname 2", lastName: "fname 2", jobTitle: "title 2", phoneNumber: "phone 2")
let employee3 = Employee2(firstName: "fname 3", lastName: "fname 3", jobTitle: "title 3", phoneNumber: "phone 3")
let employee4 = Employee2(firstName: "fname 4", lastName: "fname 4", jobTitle: "title 4", phoneNumber: "phone 4")
let employee5 = Employee2(firstName: "fname 5", lastName: "fname 5", jobTitle: "title 5", phoneNumber: "phone 5")

let employees = [employee2, employee1, employee4, employee5, employee3]

// sorted(by: )
// Array'ler üzerinde çalışan bir sıralama fonksiyonu.
let sortedEmployees = employees.sorted(by: <)

for employee in sortedEmployees {
    print(employee)
}


// ---------------------------------------------------------------
// Codable -> Bilginin 'Dictionary' formuna geçirilmesi (key-value ikilleri)

struct Employee3: Equatable, Comparable, Codable {
        
    // MARK: - Properties
    var firstName: String
    var lastName: String
    var jobTitle: String
    var phoneNumber: String
    
    // MARK: - Functions
    static func == (lhs: Employee3, rhs: Employee3) -> Bool {
        // İki Employee objesinin birbirine olan eşitliğini
        // hangi koşullarda sağlanacağını belirtiyoruz.
        return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName
    }
    
    static func < (lhs: Employee3, rhs: Employee3) -> Bool {
        return lhs.lastName < rhs.lastName
    }
}

let bestEmployee = Employee3(firstName: "Ben", lastName: "Atkins", jobTitle: "Front Desk", phoneNumber: "")

// Codable protokolünü destekleyen bir veri modelinden 'Dictionary' formunda veri oluşturabilmek için;
// JSONEncoder adını verdiğimiz bir Class kullanılır.
let encoder = JSONEncoder()

let jsonData = try! encoder.encode(bestEmployee)
let jsonString = String(data: jsonData, encoding: .utf8)

print(jsonString)

// ---------------------------------------------------------------
// Protokol Oluşturmak

// Bir değişkenin değerini veya fonksiyonun ne yaptığını Protokoller belirtmez.
// Yalnızca isim ve tür belirtirler.
// { get } -> Yalnızca değeri okunabilir.
// { get set } -> Değeri hem okunabilir hem yazılabilir.

protocol FullyNamed {
    var fullName: String { get }
    
    func sayFullName()
}

// NOT: ':' kullanımı her zaman inheritance anlamına gelmeyebilir.
struct Person: FullyNamed {
    var firstName: String
    var lastName: String
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    func sayFullName() {
        print(fullName)
    }
}

// Design Pattern: Delegation
