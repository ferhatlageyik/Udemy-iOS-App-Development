/*:
 ## Uygulama - Workout Extensions

 Aşağıdaki `Workout` yapısına bir extension ekleyin ve `CustomStringConvertible` adlı protokolü benimsemesini sağlayın.
 */
struct Workout {
    var distance: Double
    var time: Double
    var averageHR: Int
}

extension Workout: CustomStringConvertible{
    var description: String {
        return "Congrats! Your daily workout has been done with this parameters; Distance: \(distance), Time: \(time) AverageHR: \(averageHR)"
            
    }
    
    
}
/*:
 Şimdi `Workout` için başka bir extension oluşturun ve `speed` adında `Double` türünden bir özellik ekleyin.
 */
extension Workout {
    var speed: Double {
        return distance / time
    }
}

/*:
 Şimdi parametre almayan ve başka bir `Workout` objesi döndüren bir `harderWorkout` fonksiyonu oluşturun. Bu fonksiyon `distance` ve `time` özelliklerini iki katına çıkarmalı ve `averageHR` değerine 40 eklemelidir. `Egzersiz` örneği oluşturun ve konsola yazdırın. Ardından `harderWorkout` fonksiyonunu çağırın ve yeni` Workout` objesini konsola yazdırın.
 */

extension Workout{
    func harderWorout() -> Workout {
        return Workout(distance: distance*2, time: time*2, averageHR: averageHR+40)
    }
}
let dailyWorkout: Workout = Workout(distance: 5000, time: 45.32, averageHR: 90)
print(dailyWorkout.description)
print(dailyWorkout.harderWorout())
let newWorkout: Workout = dailyWorkout.harderWorout()
print(dailyWorkout)
print(newWorkout)



/*:

 _Copyright © 2018 Apple Inc._

 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_

 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._

 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Previous](@previous)  |  page 2 of 2
