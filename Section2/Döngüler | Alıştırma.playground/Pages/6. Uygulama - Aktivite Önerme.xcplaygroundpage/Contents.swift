/*:
 ## Uygulama - Aktivite Önerme

 Uygulamanıza yeni bir özellik eklemek istiyorsunuz. Kullanıcı, ulaşmak istediği bir nabız aralığı belirttikten sonra uygulama kullanıcının geçmişte bu nabız aralığına ulaştığı aktiviteleri önerecek. Aşağıda yer alan `aktiviteNabizlari` dictionary'si, kullanıcının geçmişte yaptığı aktiviteleri ve bu aktivitelerdeki ortalama nabzını bulunduruyor.
 
 Bir döngü kullanarak `aktiviteNabizlari` dictionary'sinde key-valu çiftlerinin üzerinden geçin. Eğer aktivitenin ortalama nabzı `altSinir` ve `ustSinir` arasında değilse, `continue` ile sonraki çifte devam edin. Eğer ortalama nabız doğru aralıktaysa, "<AKTİVİTE> aktivitesini yapabilirsiniz!" cümlesini konsola yazdırın. 
*/

import Darwin
let altSinir = 110
let ustSinir = 125
var aktiviteNabizlari: [String: Int] = ["Yürüme": 85, "Koşma": 120, "Yüzme": 130, "Bisiklet": 128, "Kayak": 114, "Tırmanma": 129]

for (activities, pulses) in aktiviteNabizlari {
    
    if pulses < altSinir || pulses > ustSinir {
        continue
    }
    else {
        print("\(activities) aktivitesini yapabilirsiniz!")
    }
}

/*:
 
 _Copyright © 2017 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Önceki](@previous)  |  sayfa 6 / 6
