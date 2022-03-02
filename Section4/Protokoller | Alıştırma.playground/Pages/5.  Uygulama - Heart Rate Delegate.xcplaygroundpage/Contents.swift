import UIKit
/*:
 ## Uygulama - Heart Rate Delegate
 
 Aşağıdaki `HeartRateReceiver` sınıfı, kalp atış hızının izlenmesi ile bunun nasıl görünebileceğinin çok basitleştirilmiş bir örneğini temsil eder. `startHeartRateMonitoringExample` fonksiyonu rastgele kalp atış hızları oluşturur ve bunları `currentHR` sabitine atar, bu da bir `HeartRateReceiver` nesnesinin belirli aralıklarla yeni kalp atış hızı okumalarını nasıl alabileceğini simüle eder.
 
 Aşağıdaki `HeartRateViewController`, kullanıcıya kalp atış hızı bilgilerini sunacak elemandır. Aşağıdaki alıştırmalar boyunca, bir `HeartRateReceiver` örneğinden `HeartRateViewController` elemanına bilgi aktarmak için temsilci kalıbını kullanacaksınız, böylece her yeni bilgi elde edildiğinde kullanıcıya sunulur.
 */
protocol HeartRateReceiverDelegate {
    func heartRateUpdated(bpm: Int)
}



class HeartRateReceiver {
    var delegate: HeartRateReceiverDelegate?
    var currentHR: Int? {
        didSet {
            if let currentHR = currentHR {
                delegate?.heartRateUpdated(bpm: currentHR)
                print("The most recent heart rate reading is \(currentHR).")
            } else {
                print("Looks like we can't pick up a heart rate.")
            }
        }
    }
    
    func startHeartRateMonitoringExample() {
        for _ in 1...10 {
            let randomHR = 60 + Int(arc4random_uniform(UInt32(15)))
            currentHR = randomHR
            Thread.sleep(forTimeInterval: 2)
        }
    }
}

class HeartRateViewController: UIViewController, HeartRateReceiverDelegate {
    func heartRateUpdated(bpm: Int) {
        print("Kalp atış hızınız \(bpm)")
    }
    
    var heartRateLabel: UILabel = UILabel()
}
/*:
 İlk olarak, bir `HeartRateReceiver` nesnesi oluşturun ve `startHeartRateMonitoringExample` fonksiyonunu çağırın. Her iki saniyede bir `currentHR` sabiti ayarlandığına ve yeni kalp atış hızı değerini konsola yazdırdığına dikkat edin.
 */
var firstDay = HeartRateReceiver()
firstDay.startHeartRateMonitoringExample()

/*:
 Gerçek bir uygulamada, konsola yazdırmak kullanıcıya bilgi göstermez. `HeartRateReceiver` elemanından `HeartRateViewController` elemanına bilgi aktarmanın bir yoluna ihtiyacınız var. Bunu yapmak için, `heartRateUpdated(bpm:)` adlı bir fonksiyon gerektiren `HeartRateReceiverDelegate` adlı bir protokol oluşturun; burada bpm parametresi,`Int` türündedir ve yeni hızı dakikada atım olarak temsil eder. Playground'lar yukarıdan aşağıya okunduğundan ve daha önce bildirilen iki sınıfın bu protokolü kullanması gerekeceğinden, bu protokolü `HeartRateReceiver` sınıfının üstünde yazmanız gerekecektir.
 
 Şimdi `HeartRateViewController` elemanını az önce oluşturduğunuz protokolü benimseyin. Gerekli yöntemin gövdesinde `heartRateLabel` elemanının metnini ayarlamanız ve yazdırmanız gerekir: "Kullanıcıya <KALP ATIŞ HIZINI BURAYA EKLEYİN>."
 
 Şimdi `HeartRateReceiver` elemanına` HeartRateReceiverDelegate?` türünden `delegate` adlı bir özellik ekleyin. `currentHR` sabitinin başarıyla açıldığı `currentHR` sabitinin `didSet` öğesinde, `delegate` özelliğinde `heartRateUpdated(bpm:)` fonksiyonunu çağırın.
 
 Son olarak, bir `HeartRateReceiver` nesnesini oluşturduktan hemen sonra kod satırına dönün. Bir `HeartRateViewController` örneği başlatın. Ardından, `HeartRateReceiver` örneğinizin `delegate` özelliğini, yeni oluşturduğunuz `HeartRateViewController` nesnesi olarak ayarlayın. Kodunuzun derlenmesini bekleyin ve konsola yazdırılanları gözlemleyin. `currentHR` her ayarlandığında, hem en son kalp atış hızının bir çıktısını hem de kalp atış hızının kullanıcıya gösterildiğini belirten yazdırma bildirimini görmelisiniz.
 */

var heartRateView = HeartRateViewController()
firstDay.delegate = heartRateView
firstDay.startHeartRateMonitoringExample()
// bu egzersiz de gerçekten çok kafa karıştırıcı. çünkü oluşturduğumuz class'a protokolü benimsetmedik ama class ın içinde bir tane değişken tanımladık değişken ne peki direkt protokol türünden bir variable ??? acaba içine bir yere de tanımlasak oluyor mu yani?? kafamda deli sorular yine gece 2. keşke birebirde sorabilecğim birileri olsaydı. Şey kısmı da çok özel mesela heartRateReceiver nesnesinden oluşturdğumuz objenin delegate özelliğine yani protokolümüze heartRateViewController classımızdaki objemizi atıyoruz.

// bu protokoller konusu bayaa karışık gibi.



/*:
 
 _Copyright © 2017 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//:[Previous](@previous)  |  page 5 of 5
