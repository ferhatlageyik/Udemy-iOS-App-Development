/*:
 ## Alıştırma - Protocol Oluşturma
 
 İki gereksinimle birlikte `Vehicle` adlı bir protokol oluşturun: `Int` türünde `numberOfWheels` adında bir özellik ve `drive()` olarak adlandırılan bir fonksiyon oluşturun.
 */
protocol VehicleProtocol {
    var numberOfWheels: Int {get}
    func drive()
}

/*:
 `Vehicle` protokolünü uygulayan bir `Vehicle` sınıfı tanımlayın. `numberOfWheels` özelliği 4 değerini ve `drive ()` fonksiyonu "Vroom, vroom!" değerini döndürmelidir. Bir `Car` örneği oluşturun, tekerlek sayısını yazdırın ve ardından `drive()` fonksiyonunu çağırın.``
 */
class Vehicle: VehicleProtocol {
    var numberOfWheels: Int = 4
    
    func drive() {
    print("Vroom, vroom!")
    }
    
}

let car = Vehicle()
print(car.numberOfWheels)
car.drive()

/*:
 `Vehicle` protokolünü uygulayan bir `Bike` sınıfı tanımlayın. `numberOfWheels` özelliği 2 değerini döndürmeli ve `drive()` fonksiyonu "Pedal çevirmeye başla!" değerini döndürmelidir. Bir `Bike` örneği oluşturun, tekerlek sayısını yazdırın, ardından `drive()` fonksiyonunu çağırın.
 */
class Bike: VehicleProtocol{
    var numberOfWheels: Int = 2
    
    func drive() {
        print("En iyi yaptığın işi yap :) pedal çevir uzaklara.")
    }
    
    
}

let myBestFriend = Bike()
print(myBestFriend.numberOfWheels)
myBestFriend.drive()

//: [Önceki](@previous)  |  sayfa 3 / 5  |  [Sonraki: Uygulama - Similar Workouts](@next)
