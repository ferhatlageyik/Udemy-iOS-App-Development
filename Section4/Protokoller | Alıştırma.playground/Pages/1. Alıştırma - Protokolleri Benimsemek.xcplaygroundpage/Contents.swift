/*:
 ## Alıştırma - Protokolleri Benimsemek: CustomStringConvertible, Equatable ve Comparable

 `Human` adında yeni bir sınıfı oluşturun: `name` adında, `String` türünden ve `age` adında, `Int` türünden iki özelliğe sahip olmalıdır. Sınıf için bir "initializer" oluşturmanız gerekir. Bu iki `Human` özelliği "initializer"ın içerisinde yazın.
 */
class Human: CustomStringConvertible, Equatable, Comparable, Codable{
     
    var name: String
    var surname: String
    var age: Int
    var height: Double
//-------------------------------------------------------
    //Evet tam da tahmin ettiğim gibi oldu. enum'ı son soruya gelmeden kendim eklemek istemiştim buraya maksat kullanmak olsun diye son soruya kadar sıkıntı da çıkarmadı zaten fakat compiler codable protokolünü tanımlamak istememden sonra "type human does not conform protochol decodable ve encodable uyarısı verdi. ben de hatayı searchledim stackoverflowdaki "In order for a class or a struct to conform to a protocol, all properties of that class or struct must conform to the same protocol." yazısını okumak yetti. Acaba enum desteklemiyor olabilir mi derken tam da öyleymiş. o yüzden burayı commentledim.
//    var hairColoıur: HairColour
//
//    enum HairColour {
//        case black
//        case brown
//        case yellow
//        case white
//    }
    
    init(name: String, surname: String, age: Int, height: Double){
        self.name = name
        self.surname = surname
        self.age = age
        self.height = height
  //
    }
    
    var description: String{
        return "name: \(name) age: \(age)"
    }
    
    static func == (lhs: Human, rhs: Human) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
    
    static func < (lhs: Human, rhs: Human) -> Bool {
        return lhs.age < rhs.age
    }
    
    
}

/*:
 `Human` sınıfının `CustomStringConvertible`ı benimsemesini sağlayın. Az önce yazdığınız `Human` objesinin iki özelliğini de konsola yazdırın.
 */
let person1 = Human(name: "Ozan", surname: "Taş", age: 30, height: 1.85)
print(person1)
print(person1.description)

/*:
 `Human` sınıfının `Equatable` protokolünü benimsemesini sağlayın. İsimleri ve yaşları birbiriyle özdeş ise iki `Human` örneği eşit kabul edilmelidir. İki "Human" nesnesinin birbirine eşit olup olmadığını değerlendiren bir `Bool` ifadesinin sonucunu `==` kullanarak konsola yazdırın. Ardından, 'Human' nesnelerinin birbiriyle eşit olup olmadığını değerlendiren bir `Bool` ifadesinin sonucunu `!=` Kullanarak konsola yazdırın.
 */
let person2 = Human(name: "Ozan", surname: "Taş", age: 30, height: 1.85)
if person1 == person2 {
    print("İki nesne birbirinin aynısı!")
}else {
    print("Aynı değil")
}

let myBoolean: Bool = person1 != person2
print(myBoolean)
/*:
 `Human` sınıfının `Comparable` protokolünü benimsemesini sağlayın. Sıralama yaşa göre yapılmalıdır. Bir `Human` nesnesinin diğer üç özelliğini oluşturun, ardından oluşturduğunuz tüm `Human` nesnelerinin bulunduğu `[Human]` türündeki `people` adlı bir dizi oluşturun. Yaşa göre sıralanmış `people` dizisinin içerisindeki elemanlardan olaşacak `[Human]` türünde `sortPeople` adlı yeni bir dizi oluşturun.
 */
let person3 = Human(name: "Kemal", surname: "Karadeniz", age: 21, height: 1.79)
let person4 = Human(name: "Salih", surname: "Danışman", age: 24, height: 1.82)
let person5 = Human(name: "Sedat", surname: "Sancar", age: 27, height: 1.80)
let person6 = Human(name: "Şenol", surname: "Aslan", age: 35, height: 1.80)

let people: [Human] = [person2, person3, person5, person4, person1, person6]
let sortPeople = people.sorted(by: <)

for notSorted in people {
    print(notSorted)
}
print("Şimdi bir de yaşa göre sıralayalım.")

for person in sortPeople {
    print(person)
}

/*:
 `Human` sınıfının `Codable` protokolünü benimsemesini sağlayın. Bir `JSONEncoder` oluşturun ve  `Human` nesnelerinden birini veri olarak kodlamak için kullanın. Saklanan verileri temsil eden bir `String` oluşturmak ve konsola yazdırmak için `Data` nesnesini kullanabilirsiniz.
 */
import Foundation
let encoder = JSONEncoder()

let jsonData = try! encoder.encode(people)
let jsonString = String(data: jsonData, encoding: .utf8)
print(jsonString)

//: sayfa 1 / 5  |  [Sonraki: Uygulama - Printable Workouts](@next)
