/*:
 ## Optional Değerler
   
 > Yapacağınız egzersizler boyunca, Optional değerleri konsola yazdıracaksınız. Xcode size şöyle bir uyarı verecek: "Expression implicitly coerced from Int? to Any". Sadece bu egzersizler için, bu hatayı görmezden gelebilirsiniz.
 
 Bir kullanıcıya yaşını klavyeyi kullanarak girmesini isteyen bir uygulama geliştirdiğinizi düşünün. Uygulamanız bir kullanıcının metin girmesine izin verdiğinde, girilen değer size `String` olarak verilir. Ancak siz, bu değeri `Int` olarak almak istiyorsunuz. Kullanıcının bir hata yapması ve girilen değerin sizin istediğiniz türden olmaması mümkün mü?
 
 `userInputAge` adında, `String` türünden bir değişken tanımlayın. Değerini `"34e"` olarak verin. Bu, yaşın hatalı girilmesi durumunu test etmemizi sağlayacak. Sonra, `userAge` adında bir `Int` tanımlayın ve `Int` "initializer"ında `userInputAge` değerini kullanın. Nasıl bir hata ile karşılaşıyorsunuz?
*/
var userInputAge: String = "34"
var userAge: Int? = Int.init(userInputAge)


/*:
 Geri dönün, `userAge` değişkeninin türünü `Int?` olarak değiştirin ve `userAge` değişkenini konsola yazdırın. `userAge` değişkeninin değeri neden `nil`?
*/
print(userAge)  //Çünkü optinal tanımladık. Bu da demektir ki ben bir şey tanımlıyorum ama henüz bir değeri yok bunun ileride olabilir bellki olmaya da bilir.

/*:
 Şimdi geri dönün ve `userInputAge` değerindeki hatayı düzeltin. Konsola yazdırılan değerde bir gariplik var mı?
 
 `userAge` değişkenini yeniden yazdırın, ancak bu sefer ünlem işaretiyle `userAge` değerini "unwrap" edin.
 */
// Optinal(34)
print(userAge!) // burada ise direkt 34 sayısını yazdırdı. Ben forceladım compiler i eminim dedim bu değer bugün nil değil. ama olabilirdi de yaptığım risk almaktı. eğer bugün userAge değişkenin değeri dolu değil de nil olsaydı uygulamam çökerdi.
/*:
 `userAge` değerini "Optional Binding" kullanarak "unwrap" edin. Eğer `userAge` değişkeninin bir değeri varsa, onu konsola yazdırın.
 */
if let actualAge = userAge {
    print("Evet userAge değeri nil değil ve değeri \(actualAge)")
}

//: sayfa 1 / 6  |  [Sonraki: Nabız Takibi Uygulaması](@next)
