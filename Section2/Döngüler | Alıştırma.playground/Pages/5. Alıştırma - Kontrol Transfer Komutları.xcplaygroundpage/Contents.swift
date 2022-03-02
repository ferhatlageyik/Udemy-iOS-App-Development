/*:
 ## Alıştırma - Kontrol Transfer Komutları
 
 Aşağıdaki `alfabe` string'inde yer alan karakterlerin üzerinden geçerek her iki harften birini ("ACDF...") konsola yazdıracak bir for-in döngüsü yazın. Bunun için, konsola yazdırmak istemediğiniz bir harfteyseniz `continue` komutu ile döngünün sonraki tekrarına geçebilirsiniz. (İpucu: Sadece çift sayılı index'lerdeki harfleri yazdırmak için modulo operatörünü kullanabilirsiniz.) */
let alfabe = "ABCÇDEFGĞHIİJKLMNOÖPRSŞTUÜVYZ"

for (index, character) in alfabe.enumerated(){
    if index % 2 == 0{
        print(character, terminator: " ")
    }else{
        continue
    }
}

/*:
 Key'lerin ülkeler ve value'ların bu ülkelerin başkentleri olduğu, en az üç key/value çifti içeren bir `[String: String]` dictionary'si tanımlayın. Bu çiftlerden birisi Türkiye ve Ankara olsun. Şimdi bir döngü kullanarak dictionary'nin içerisinde her çiftin üzerinden geçip key ve value'ları yazdırın, ama üzerinde bulunduğunuz çiftin Türkiye-Ankara olup olmadığını kontrol eden bir if komutu ekleyin. Eğer öyleyse, konsola "Evimi buldum!" cümlesini yazdırın ve `break` komutu ile döngüden çıkın.
 */
let cultural = ["France" : "Paris", "England" : " London" , "Germany": "Berlin", "Türkiye" : "Ankara", "Ukraine" : "Kyiv"]
for (countries, Cities) in cultural {
    if countries == "Türkiye" {
        print("\nEvimi buldum!")
        break
    } else {
    print("\nThe capital of \(countries) is \(Cities) ")
    }
}

//: [Önceki](@previous)  |  sayfa 5 / 6  |  [Sonraki: Uygulama - Aktivite Önerme](@next)
