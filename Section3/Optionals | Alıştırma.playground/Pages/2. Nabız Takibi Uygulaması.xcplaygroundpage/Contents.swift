/*:
 ## Nabız Takibi Uygulaması
 
 >Bu alıştırmalar, Swift konseptlerini bir egzersiz takibi uygulaması çerçevesinde pekiştirmenizi sağlıyor.

 Donanım tarafından sağlanan bilgilerin çoğu, size Optional olarak döner. Örneğin bir nabız ölçme cihazı, eğer cihaz düzgün takılmamışsa ve kullanıcının kalp atışını doğru algılayamıyorsa, size `nil` değerini döndürebilir.
 
 `heartRate` adında, `Int?` türünden bir değişken tanımlayın ve değerine `nil` verin. Değişkeni konsola yazdırın.
 */
var heartRate: Int? = nil
print(heartRate)
/*:
 Bu örnekte, eğer kullanıcı cihazı düzgün bağlarsa, uygulamanız doğru bir ölçüm alabilir. Aşağıda, `heartRate` değerini 74 olarak güncelleyin ve konsola yazdırın.
*/
heartRate = 74
print(heartRate)
// daha doğru kullanımı da biz yazalım
if let checkHeartRate = heartRate{
    print("Evet nabız cihazınız doğru çalışıyor ve nabzınız \(checkHeartRate)")
}
/*:
 Aşağıda, `hrAverage` adında ve `Int` türünden bir değişken tanımlayın. Bu değişkende, aşağıdaki değerleri ve `heartRate` değerini kullanarak ortalama nabız değerini hesaplayın.
*/
let oldHR1 = 80
let oldHR2 = 76
let oldHR3 = 79 
let oldHR4 = 70
var hrAverage: Int
if let checkHeartRate = heartRate{
hrAverage = (oldHR1 + oldHR2 + oldHR3 + oldHR4 + checkHeartRate) / 5
    print("Ortalama nabzınız \(hrAverage)")
}
/*:
 Eğer `heartRate` değerini "unwrap" etmediyseniz, Optional değerler üzerinde matematiksel işlemler yapamayacağınızı görmüş olmalısınız. Öncelikle, `heartRate` değerini "unwrap" etmelisiniz.
 
 `heartRate` değişkenini, "Optional Binding" kullanarak güvenli bir biçimde "unwrap" edin. Eğer bir değeri varsa, o değeri ve yukarıdaki değerleri kullanarak ortalama nabız değerini hesaplayın. Yoksa, eski değerleri kullanarak hesaplayın. Her iki durumda da `hrAverage` değişkeninin değerini konsola yazdırın.
 */
if let checkHeartRate = heartRate{
hrAverage = (oldHR1 + oldHR2 + oldHR3 + oldHR4 + checkHeartRate) / 5
    print("Ortalama nabzınız \(hrAverage)")
}else{
    hrAverage = (oldHR1 + oldHR2 + oldHR3 + oldHR4 ) / 4
    print("Ortalama nabzınız \(hrAverage)")
}

//: [Önceki](@previous)  |  sayfa 2 / 6  |  [Sonraki: Fonksiyonlar ve Optional Değerler](@next)
