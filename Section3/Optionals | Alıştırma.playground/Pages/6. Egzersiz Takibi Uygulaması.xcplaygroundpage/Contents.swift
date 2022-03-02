/*:
 ## Egzersiz Takibi Uygulaması
 
 >Bu alıştırmalar, Swift konseptlerini bir egzersiz takibi uygulaması çerçevesinde pekiştirmenizi sağlıyor.

 Bir uygulamada yanlışlıkla bir butona dokunduğunuz oldu mu? Bu, oldukça sık karşılaşılan bir durumdur. Egzersiz takibi uygulamanızda, kullanıcı egzersizi başlatma butonuna yanlışlıkla dokunur ve 10 saniye içinde egzersizi bitirirse, egzersizi oluşturup kaydetmek istemezsiniz. Aksi durumda, kullanıcının geçmiş ekranına gidip egzersiz kaydını silmesi gerekirdi.
 
`startTime` ve `endTime` adında, `Double` türünden iki özelliğe sahip bir `Workout` objesi oluşturun. Tarihler ile çalışmak zor olduğundan, zamanı gece yarısından itibaren geçen saniye olarak belirtmek için `Double` türünü kullanacaksınız. Örneğin 28800 değeri, gece yarısından sonra 28800 saniyeyi, yani tam olarak sabah saat 8'i ifade eder.

 Başlangıç ve bitiş zamanı için iki parametre alan bir "Failable Initializer" yazın. Eğer değerlerin arasında en az 10 saniye varsa, özelliklere gereken değerleri vermeli. Değilse, "initializer"ınız `nil` döndürmeli.
*/
struct Workout{
    var startTime: Double
    var endTime: Double
    
    init?(startTime: Double, endTime: Double){
        if (endTime - 10 ) >= startTime{
            self.startTime = startTime
            self.endTime = endTime
        }else{
            return nil
        }
    }
}


/*:
 İki farklı `Workout` nesnesi oluşturup konsola yazdırmayı deneyin. Nesnelerden biri, başlangıç ve bitiş zamanları birbirine çok yakın olduğu için oluşmamalı. Diğerindeyse bir `Workout` nesnesi başarıyla oluşmalıdır.
 */
let trueWorkout = Workout(startTime: 2230, endTime: 2245)
let falseWorkout = Workout(startTime: 2240, endTime: 2245)

if let works = trueWorkout{
    print("\(works.endTime - works.startTime)" + "Süre çalıştınız")
}

if let fatal = falseWorkout{
    print("\(fatal.endTime - fatal.startTime)" + "Süre çalıştınız")
}
// Yessss!!!
/*:
 
 _Copyright © 2017 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Geri](@previous)  |  Sayfa 6 / 6
