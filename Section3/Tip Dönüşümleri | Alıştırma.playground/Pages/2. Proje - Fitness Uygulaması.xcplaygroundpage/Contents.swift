/*:
 ## Fitness Uygulaması: Aktivite Türleri
 
 >Bu egzersizler, fitness takip uygulaması bağlamında Swift kavramlarını güçlendirir. 🏋️‍♂️
 
 Fitness uygulamanız kullanıcıların farklı türlerde spor aktivitelerini takip edebilmelerini sağlayacak. Uygulamanızı tasarlarken diğer aktivite sınıflarına da kendi özelliklerinden aktarabilen `Aktivite` adlı bir sınıf oluşturacaksınız. Aşağıda üç tane sınıf görüyorsunuz. `Aktivite` adındaki sınıf `süre` ve `mesafe` özelliklerine sahip temel bir sınıf iken `Koşu` ve `Yüzme` adlı sınıflar ise `Aktivite` sınıfına yeni özellikler ekleyen alt sınıflardır.
 
 Aşağıda geçmiş aktivitelerin kaydını tutan `aktiviteler` adında bir dizi göreceksiniz. Egzersizleri tamamlamak için bu diziyi ve sınıfları kullanacaksınız.
 */
class Aktivite {
    let süre: Double
    let mesafe: Double
    
    init(süre: Double, mesafe: Double) {
        self.süre = süre
        self.mesafe = mesafe
    }
}

class Koşu: Aktivite {
    let ritim: Double
    
    init(ritim: Double, süre: Double, mesafe: Double) {
        self.ritim = ritim
        super.init(süre: süre, mesafe: mesafe)
    }
   
}

class Yüzme: Aktivite {
    let stil: String
    init(stil: String, süre: Double, mesafe: Double) {
        self.stil = stil
        super.init(süre: süre, mesafe: mesafe)
    }
}

var aktiviteler: [Aktivite] = [
    Koşu(ritim: 80, süre: 1200, mesafe: 4000),
    Yüzme(stil: "Serbest", süre: 32.1, mesafe: 50),
    Yüzme(stil: "Kelebek", süre: 36.8, mesafe: 50),
    Yüzme(stil: "Serbest", süre: 523.6, mesafe: 500),
    Koşu(ritim: 90, süre: 358.9, mesafe: 1600)
]
/*:
  Sırasıyla bir `Koşu` ve `Yüzme` objesi alan `koşuÖzeti(koşu: )` ve `yüzmeÖzeti(yüzme: )` adlarında iki tane basit fonksiyon oluşturun. Her bir fonksiyon ritim ya da stil de dahil olmak üzere yapılan aktivitenin açıklamasını konsola yazdırmalıdır. Süre saniye cinsinden, mesafe metre cinsinden ve ritim de bir dakikada atılan adım sayısı cinsinden verilmelidir.
 */
func kosuOzeti(koşu: Koşu ){
    print("\(koşu.süre) saniye boyunca \(koşu.ritim) ritminde \(koşu.mesafe) metre koştunuz, tebrikler!")
}

func yuzmeOzeti(yuzme: Yüzme){
    print("\(yuzme.stil) stilde \(yuzme.mesafe) metre mesafeyi \(yuzme.süre) saniyede yüzdünüz, tebrikler!")
}

/*:
 Şimdi ise `aktiviteler` dizisinde bir döngü oluşturun ve tür değiştirme kurallarını kullanarak her bir aktivite için `koşuÖzeti(koşu: )` veya `yüzmeÖzeti(yüzme: )` fonksiyonlarını çağırın. Konsola yazılan değerleri gözlemleyin.
 */
for activities in aktiviteler{

    if let isRunning = activities as? Koşu{
        kosuOzeti(koşu: isRunning)
    }
    if let isSwimming = activities as? Yüzme{
        yuzmeOzeti(yuzme: isSwimming)
    }
}
// vallahi çok güzel yazdım kendimi tebrik ediyorum yine ertesi gün iş olan bir hafta içi gecesi yan gelip yatmadım umarım bu yolun sonu aydınlıktır. Burayı da günlük olarak kullanmam yazılım metodolojisine ne kadar ters olsa da sonuçta benden başka kimse görmeyeceği için bence sorun yok hem yazılım öğreniyosun hem de günlük yazıyosun win win :) hadi içeri pushlayıp uyuyalım yarın iş var kardeşim 14.01.22 1.20 AM.
/*:
 
 _Copyright © 2017 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Önceki](@previous)  |  sayfa 2 / 2

