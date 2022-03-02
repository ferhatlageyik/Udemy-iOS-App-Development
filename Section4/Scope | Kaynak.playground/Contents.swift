import UIKit
/*
 SCOPE
 
 Scope nedir?
 
 Bir değişkenin programın ne tarafında kullanılabildiğini belirten özelliğe scope denir. Scope hatalarını engellemek için programın anlaşılır ve iyi kurulmuş olması gerektir. Programcılar bu hataları engelleyebilmek için genelde programlarını olabildiğince basit yapmaya çalışırlar ve satırlar arasındaki boşluklara, genel olarak programın düzenine özen gösterirler.
 */
// Scope : { }
// if, for, class, struct


// Global Scope
var age = 24

func printMyAge() {
    print("My age is \(age)")
}

print(age)
printMyAge()


func printBottleCount() {
    // şişe sayısını ekrana yazdırır.
    let bottleCount = 120
    print(bottleCount)
}


printBottleCount()
// print(bottleCount) Bu sabite ulaşamazsınız.

func PrintTenNames() {
    // 10 isim yazdırır
    var name = "Can"
    
    for index in 1...10 {
        print("\(index): \(name)")
    }
    
    // print(index) index yalnızca for içerisinden ulaşılabilen bir sabittir.
    print(name)
}

PrintTenNames()

// ------------------------------------------------------------------------
// Variable Shadowing

func printComplexScope() {
    let points = 100
    print(points)
    
    for index in 1...3 {
        let points = 200
        print("Loop \(index): \(points + index)")
    }
    
    print(points)
}

printComplexScope()

var name: String? = "Nadin"

// If-let ve guard-let kullanımlarında shadowing tercih edin.
// Kafa karışıklığının önüne geçin.
if let name = name {
    
}

// ------------------------------------------------------------------------
// Shadowing and Initializers

struct Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let emir = Person(name: "Emirhan", age: 24)

print(emir.name)
print(emir.age)


