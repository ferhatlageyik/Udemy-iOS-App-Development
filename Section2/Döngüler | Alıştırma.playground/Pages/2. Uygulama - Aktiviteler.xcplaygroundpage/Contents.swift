/*:
 ## Uygulama - Aktiviteler
  
 Diyelim ki fitness uygulamanız, kullanıcının takip edebileceği çeşitli aktivitelerin bir listesini içeriyor. Bu listedeki her elemanı, kullanıcıya göstermek istiyorsunuz. Bir for-in döngüsü kullanarak aşağıdaki `aktiviteler` listesinin her elemanını konsola yazdırın.
 */
let aktiviteler: [String] = ["Yürüme", "Koşma", "Yüzme", "Bisiklet", "Kayak", "Tırmanma"]
for (activities) in aktiviteler {
    print(activities)
}

/*:
 Uygulamanız, kullanıcının her aktivitedeki ortalama nabzını kaydetmek için bir dictionary kullanıyor. Bu dictionary'nin key'lerinde yukarıda listenen aktiviteler, value'larında ise kullanıcının ortalama nabzı yer alıyor. Bir döngü kullanarak aşağıda verilen `aktiviteNabizlari` dictionary'sinin içerisinde yer alan tüm key/value çiftlerinin üzerinden geçip her aktiviteyi ve ortalama nabzı konsola yazdırın.
 */
var aktiviteNabizlari: [String: Int] = ["Yürüme": 85, "Koşma": 120, "Yüzme": 130, "Bisiklet": 128, "Kayak": 114, "Tırmanma": 129]

var count: Double = 0
var averagePulse: Double = 0
var sumOfPulses: Double = 0

for (activityName, pulse) in aktiviteNabizlari {
    
    count += 1
    sumOfPulses += Double(pulse)
    averagePulse = sumOfPulses / count
    print("\(activityName) aktivitesi yaparkenki nabzınız \(pulse)")
    print("Ortalama nabzınız \(averagePulse)")
    
}

//: [Önceki](@previous)  |  sayfa 2 / 6  |  [Sonraki: Alıştırma - While Döngüleri](@next)
