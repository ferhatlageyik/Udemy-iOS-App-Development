/*:
 ## Alıştırma - Koleksiyon Fonksiyonları

 Aşağıdaki kodu kullanarak, değerleri orijinal tamsayı değerine eşit olan bir dizi `Int` değeri oluşturmak için `map` fonksiyonunu kullanın. (Sayılar birer birer artsın.) Dizinin değerleri arasında yineleme yaparken `$0` kullanın. Ortaya çıkan koleksiyonu yazdırın.
 */
let testScores = [65, 80, 88, 90, 47]
let increasedValue = testScores.map { $0 + 1 }
print(increasedValue)

/*:
 Aşağıdaki kodu kullanarak yeni bir `String` dizisi oluşturmak için `filter` fonksiyonunu kullanın. Yeni dizi yalnızca dört karakterden daha uzun yazılar içermelidir. Yazıların değerleri arasında yineleme yaparken `$0` kullanın. Ortaya çıkan koleksiyonu yazdırın.
 */
let schoolSubjects = ["Math", "Computer Science", "Gym", "English", "Biology"]
let filtered = schoolSubjects.filter { $0.count > 4}
print(filtered)

/*:
 Aşağıdaki kodu kullanarak, yazıdaki tüm değerleri başlangıç değerinden (100) çıkarmak için `reduce` işlevini kullanın. Ortaya çıkan değeri yazdırın.
 */
let damageTaken = [25, 10, 15, 30, 20]
let reduced = damageTaken.reduce(100,{$0 - $1})
print(reduced)

let reduced2 = damageTaken.reduce(100) { (partialResult, newValue) -> Int in
    return partialResult - newValue
}
print(reduced2)

/*:
 _Copyright © 2018 Apple Inc._

 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_

 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._

 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Önceki](@previous)  |  sayfa 3 / 3
