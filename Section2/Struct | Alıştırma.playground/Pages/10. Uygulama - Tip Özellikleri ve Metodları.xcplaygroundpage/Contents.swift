/*:
 ## Uygulama - Tip Özellikleri ve Metodları
  
 Önceki bir alıştırmada, bir koşudaki ortalama mil süresini hesaplayan bir computed property tanımladınız. Bunun yanında, kullanıcıların belirli bir mesafeyi belirli bir sürede koşmak için tutturmaları gereken ortalama mil süresini hesaplamak isteyebilirsiniz. Bu durumda, `KosuAntrenmani` struct'ında bir `KosuAntrennmani` değişkeni olmadan da kullanabileceğiniz bir tip metodu bulunması işinizi kolaylaştırabilir.
 
 `KosuAntrenmani` struct'ına, `mesafe` ve `sure` değerlerinin `Double` türünden olduğu, `milSuresi(mesafe:sure:)` adında bir tip metodu ekleyin. Bu metod, verilen zamanı verilen süre içerisinde koşmak için gereken ortalama mil süresini hesaplayıp `Double` türünden bir değer döndürmelidir. Mesafeyi metre, süreyi saniye cinsinden, bir mili ise 1600 metre olarak alın.

 Metodu çağırın ve doğru çalıştığından emin olmak için sonucu konsola yazdırın.
 */
struct KosuAntrenmani {
    var mesafe: Double
    var sure: Double
    var yukselti: Double
}
/*:
 `KosuAntrenmani` struct'ında, ölçü birimi dönüşümlerini (örneğin bir milin kaç metre olduğunu) temsil eden birkaç tip özelliği bulunması da işinizi kolaylaştırabilir. Yukarıdaki struct'a `feetCinsindenMetre` adında ve değeri `3.28084` olan bir tip özelliği ekleyin. Sonra, `metreCinsindenMil` adında bir tip özelliği tanımlayın ve `1600.0` değerini atayın. Her iki değeri de konsola yazdırın.
 */


//: Tebrikler, bu projedeki bütün alıştırmaları tamamladınız! 🎉
//:
//: [Önceki](@previous)  |  sayfa 10 / 10
