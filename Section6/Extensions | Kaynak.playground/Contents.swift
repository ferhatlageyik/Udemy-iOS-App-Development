import UIKit

// EXTENSIONS

// extension SomeType {

// }

// Extension ile Computed Property Eklemek
extension UIColor {
    
    static var favoriteColor: UIColor {
        return UIColor(red: 0.23, green: 0.12, blue: 0.8, alpha: 1.0)
    }
}

// Instance veya Type methodları eklemek

// Use Case: Tekil kelimeleri çoğul hale getirmek istiyorsunuz.
// Fakat String üzerinbde bu işi yapabilecek bir fonksiyon bulunmuyor :(

extension String {
    
    mutating func pluralized() -> String {
        // Kompleks bir fonksiyon. Yaptığı iş ise var olan String değerini çoğul hale getirmek...
        return ""
    }
}

var elma = "Elma"
var masa = "Masa"
var sandalye = "Sandalye"

elma.pluralized()
masa.pluralized()
sandalye.pluralized()

// Kodunuzu Organize Etmek için Extenion Kullanımı

class Restaurant {
    // var name: String
    // var menuItems: [MenuItem]
    // var servers: [Employee]
    // var cookingStaff: [Employee]
    // var customers: [Customer]
}

// MARK: - Restaurant Methods
extension Restaurant {
    
    // func add(menuItem: MenuItem)
    // func remove(menuItem: MenuItem)
    // func welcome(guest: Customer)
    // func serve(item: MenuItem, to guest: Guest)
}

struct Employee {
    
    var firstName: String
    var lastName: String
    var jobTitle: String
    var phoneNumber: String
    
    func fullName() -> String {
        return firstName + " " + lastName
    }
}

extension Employee: Equatable {
    
    static func ==(lhs: Employee, rhs: Employee) -> Bool {
        return lhs.firstName == rhs.firstName &&
            lhs.lastName == rhs.lastName &&
            lhs.jobTitle == rhs.jobTitle &&
            lhs.phoneNumber == rhs.phoneNumber
    }
}
