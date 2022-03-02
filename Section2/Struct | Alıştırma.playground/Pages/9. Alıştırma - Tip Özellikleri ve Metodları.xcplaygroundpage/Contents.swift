/*:
 ## Alıştırma - Tip Özellikleri ve Metodları
  
 Kullanıcıların giriş yapması gerektiği bir uygulama geliştirdiğinizi düşünün. Bu durumda, aşağıdakine benzer bir `Kullanici` struct'ınız olabilir. Ancak, kullanıcı bilgilerini tutmaya ek olarak, şu anda giriş yapmış olan kullanıcının kim olduğunu öğrenmenin bir yoluna sahip olmak isteyebilirsiniz. `Kullanici` struct'ında `simdikiKullanici` adında değişken bir tip özelliği (`static var`) tanımlayın ve sizi temsil eden bir `Kullanici` değeri atayın. Artık şimdiki kullanıcıya `Kullanici` struct'ı üzerinden erişebilirsiniz! `simdikiKullanici`'nın özelliklerini konsola yazdırın.
 */
struct Kullanici {
    
    var simdikiKullanici = "Ferhat Geyik"
    
    var kullaniciAdi: String
    var eposta: String
    var yas: Int
    
   mutating func girisYap(kullanici: Kullanici){
       simdikiKullanici = kullanici
    }
    
}

/*:
 `Kullanici` struct'ında bir tip özelliği veya metodu olabilecek birkaç özellik daha var. Bunlardan biri, giriş yapmak için bir metod olabilir. Yukarıdaki `Kullanici` struct'ına geri dönün ve  `girisYap(kullanici:)` adında bir tip metodu tanımlayın. Bu metoddaki `kullanici` parametresinin türü `Kullanici` olmalı. Metodun içerisinde, verilen kullanıcıyı `simdikiKullanici` özelliğine atayın ve giriş yapan kullanıcının adını konsola yazdırın.

 `girisYap(kullanici:)` metodunu aşağıda çağırın, ancak metoda yukarıda `simdikiKullanici` değerine atadığınızdan farklı bir `Kullanici` değeri verin. Konsoldaki çıktıyı gözlemleyin.
 */
var user: Kullanici = Kullanici()
Kullanici.girisYap(user)



//: [Önceki](@previous)  |  sayfa 9 / 10  |  [Sonraki: Uygulama - Tip Özellikleri ve Metodları](@next)
