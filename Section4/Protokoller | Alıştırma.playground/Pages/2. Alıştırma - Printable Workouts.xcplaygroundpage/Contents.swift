/*:
 ## Alıştırma - Printable Workouts

 >Bu alıştırmalar bir fitness takip uygulaması bağlamında Swift kavramlarını daha iyi öğrenmenizi sağlar.
 
 Uygulama egzersizlerinde oluşturduğunuz nesneler, konsola yazdırıldığında çok fazla yararlı bilgi göstermez. Ayrıca karşılaştırmak veya sıralamak çok kolay değildir. Bu alıştırmalar boyunca, aşağıdaki `Workout` sınıfını, bu sorunları çözecek belirli protokolleri benimsettireceksiniz.
 */
class Workout: CustomStringConvertible, Equatable, Comparable, Codable{
  

    var distance: Double
    var time: Double
    var identifier: Int
    
    init(distance: Double, time: Double, identifier: Int) {
        self.distance = distance
        self.time = time
        self.identifier = identifier
    }
    var description: String{
        return "\(distance) mesafeyi, \(time) sürede koştunuz."
    }
    static func == (lhs: Workout, rhs: Workout) -> Bool {
        return lhs.distance == rhs.distance && lhs.time == rhs.time && lhs.identifier == rhs.identifier
    }
    static func < (lhs: Workout, rhs: Workout) -> Bool {
        return lhs.distance < rhs.distance
    }
    

}

/*:
 Yukarıdaki `Workout` sınıfını `CustomStringConvertible` protokolüne uygun hale getirin, böylece `Workout` objesi konsola yazdırıldığında yararlı bilgiler verir. Bir `Workout` objesi oluşturun, ona 1 tanımlayıcısı verin ve konsola yazdırın.
 */
let firstDay = Workout(distance: 3450, time: 13, identifier: 3)
print(firstDay)
print(firstDay.description)

/*:
 Yukarıdaki `Workout` sınıfını `Equatable` protokolüne uygun hale getirin. Aynı özelliklere sahip olmaları durumunda iki `Workout` nesnesi eşit kabul edilmelidir. Bir tane daha `Workout` objesi oluşturun ve oluşturduğunuz ilk `Workout` örneğine eşit olup olmadığını değerlendiren bir `Bool` ifadesi yazın.
 */
let secondDay = Workout(distance: 3450, time: 13, identifier: 3)
    if firstDay == secondDay{
        print("Bir günü ötekine eşit olan zarardadır.") // hadi bakalım yine kodu gediğine oturttuğumu düşünüyorum.
        }
    else{
        print("Dün ile bugün arasında bir fark var ama ne?")
        }


/*:
 Yukarıdaki `Workout` sınıfını, `Workout` objelerini kolayca sıralayabilmeniz için `Comparable` protokolüne uygun hale getirin. `Workout` nesneleri içindeki özelliklere göre sıralanmalıdır.
 
 Sırasıyla 3, 4 ve 5 tanımlayıcıları veren üç tane daha `Workout` nesnesi oluşturun. Ardından, `[Workout]` türünde `workouts` adında bir dizi oluşturun ve bu diziye oluşturduğunuz beş `Workout` nesnesinin tümü ile bir dizi değişmez değeri atayın. Bu nesneleri diziye sıraya uymayacak şekilde yerleştirin. Ardından, `[Workout]` türünde `sortWorkouts` adında başka bir dizi oluşturun. Bu dizinin içerisindeki elemenalar, tanımlayıcıya göre sıralanmıştır.
 */
let thirdDay = Workout(distance: 3300, time: 14, identifier: 4)
let fourthDay = Workout(distance: 2200, time: 11, identifier: 5)
let fifthDay = Workout(distance: 4500, time: 33, identifier: 1)

let workouts: [Workout] = [thirdDay, secondDay, fourthDay, fifthDay, firstDay]
let sortWorkouts = workouts.sorted(by: <)

for results in sortWorkouts{
    print(results)
}

/*:
 `Workout` objesini `Codable` protokolünü benimsetin, böylece` Workout` nesnelerini depolanabilen veriler olarak kolayca kodlayabilirsiniz. `Workout` nesnelerinizden birini kodlamak için bir `JSONEncoder` kullanın. Ardından bir `String` oluşturmak için kodlanmış verileri kullanın ve konsola yazdırın.
 */
import Foundation

let encoder = JSONEncoder()
let jsonData = try! encoder.encode(workouts)
let jsonString = String(data: jsonData, encoding: .utf8)
print(jsonString)
//: [Önceki](@previous)  |  sayfa 2 / 5  |  [Sonraki: Alıştırma - Protocol Yaratma](@next)
