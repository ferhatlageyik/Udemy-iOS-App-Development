/*:
 ## Alıştırma - Array'ler
 
Bir parti düzenlediğinizi ve katılımcıların listesini oluşturduğunuzu düşünün. `katilimListesi` adında üç tane `String` bulunduran bir değişken oluşturun.
 */

import Darwin
var katilimciListesi: [String] = [String](repeating: "", count: 3)


/*:
 Arkadaşınız Can, partinize katılabileceğini haber verdi. Can'ın adını `katilimListesi` değişkenine ekleyin. Bunu `append(_:)` metodunu kullanarak yapın. `katilimListesi`'ni konsola yazdırın.
 */
katilimciListesi.append("Can")
print(katilimciListesi)

/*:
 Dört arkadaşınız daha katılabileceklerini söyledi. `+=` işlemini kullanarak arkadaşlarınızın isimlerini `katilimciListesi` arrayinize ekleyin.`katilimciListesi`'ni konsola yazdırın.
 */
katilimciListesi += ["Alper", "Cemal", "Şenol", "Yusuf"]
print(katilimciListesi)
/*:
 `katilimciListesi` arrayinizin ikinci elemanına `Nadin` ismini ekleyin. Bunu `insert(_:at:)` metodunu kullanarak yapabilirsiniz. `katilimListesi`'ni konsola yazdırın.
 */
katilimciListesi.insert("Nadin", at: 1)
print(katilimciListesi)

/*:
 Arkadaşlarınızdan biri bir işi çıktığını ve kendisi yerine başkasının geleceğini bildirdi. Array subscripting kullanarak 6. elemanı `Sergen` ismiyle değiştirin. `katilimListesi`'ni konsola yazdırın.
 */
katilimciListesi[5] = "Sergen"
print(katilimciListesi)

/*:
 `removeLast()` fonksiyonunu kullanarak `katilimciListesi` değişkeninin son elemanını silin. Eğer doğru yazdıysanız, bu fonksiyon `Sergen` elemanını değişkeninizdem silecektir. `removeLast()` fonksiyonunun sonucunu `silinenEleman` değişkenine atayın ve konsola `silinenEleman`'ı yazdırın.
 */
var silinenEleman = katilimciListesi.removeLast()
print(katilimciListesi)
print("Silinen eleman \(silinenEleman)")
// yani kodum doğru çalışıyo reis sergen değil silinmesi gereken kişi sen karıştırıyosun
//: sayfa 1 / 4  |  [Sonraki: Uygulama - Challenge'lar](@next)
