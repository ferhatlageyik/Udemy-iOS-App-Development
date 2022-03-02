/*:
 ## Bilgisayar
  
 Bir `Computer` objesi oluşturun ve içerisine `ram` ve `yearManufactured` adında, `Int` türünden iki özellik tanımlayın. Sadece `ram` değeri sıfırdan büyükse ve `yearManufactured` değeri 1970'den büyük, 2020'den de küçükse bir `Computer` nesnesi oluşturacak bir "Failable Initializer" oluşturun.
 */
struct Computer{
    var ram: Int
    var yearManufactured: Int
    
    init?(ram: Int, yearManufactured: Int){
        if (ram > 0) && (yearManufactured > 1970 && yearManufactured < 2020) {
            self.ram = ram
            self.yearManufactured = yearManufactured
        }else{
            return nil
        }
    }
}

/*:
 "Failable Initializer"ı kullanarak iki farklı `Computer?` nesnesi oluşturun. Nesnelerden biri, tanımladığınız değer aralıklarının içinde değerler kullanmalı, diğeri ise `nil` dönecek şekilde olmalı. İki `Computer?` nesnesini de `if let` yapısını kullanarak "unwrap" edin ve değer mevcutsa `ram` ve `yearManufactured` değerlerini konsola yazdırın.
*/
let comp1 = Computer(ram: 4096, yearManufactured: 2008)
let comp2 = Computer(ram: 16000, yearManufactured: 2022)

if let oldComp = comp1{
    print(oldComp.ram,oldComp.yearManufactured)
}

if let newComp = comp2{
    print(newComp.ram,newComp.yearManufactured)
}



//: [Önceki](@previous)  |  sayfa 5 / 6  |  [Sonraki: Egzersiz Takibi Uygulaması](@next)
