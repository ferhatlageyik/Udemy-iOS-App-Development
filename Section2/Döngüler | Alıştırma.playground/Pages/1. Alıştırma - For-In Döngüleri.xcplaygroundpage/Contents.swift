/*:
 ## Alıştırma - For-In Döngüleri
 
 1 ila 100 arasındaki sayıların üzerinden geçerek her birinin değerini konsola yazdıran bir for-in döngüsü yazın.
 */
for index in 1...100{
    print(index, terminator: " ")
}

/*:
 Aşağıdaki `alfabe` string'inin içerisinde yer alan her karakterin üzerinden geçerek o karakteri ve index'ini konsola yazdıran bir for-in döngüsü yazın.
 */
let alfabe = "ABCÇDEFGĞHIİJKLMNOÖPRSŞTUÜVYZ"

for (index, character) in alfabe.enumerated(){
    print("\(index)th charecter is \(character)")
}
/*:
 Key'lerin ülkeler ve value'ların bu ülkelerin başkentleri olduğu, en az üç key/value çifti içeren bir `[String: String]` dictionary'si tanımlayın. Bir for-in döngüsü kullanarak her çiftin üzerinden geçin, key ve value'ları "Başkent, Ülke" (örneğin "Ankara, Türkiye") şeklinde konsola yazdırın.
 */
let cultural = ["France" : "Paris", "England" : " London" , "Germany": "Berlin"]
for (countries, Cities) in cultural {
    print("The capital of \(countries) is \(Cities) ")
}
//: sayfa 1 / 6  |  [Sonraki: Uygulama - Hareketler](@next)
