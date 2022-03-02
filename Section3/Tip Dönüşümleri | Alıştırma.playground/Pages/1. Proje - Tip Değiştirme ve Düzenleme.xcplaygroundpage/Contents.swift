/*:
 ## Proje - Tip Değiştirme ve Düzenleme
 
 `[Any]` türünden bir koleksiyon oluşturun ve koleksiyonun içine `Double`, `Integer`, `String` ve `Bool` türünden değişkenler ekleyin. Koleksiyonunuzun içeriklerini konsola yazdırın.
 */
var myArray: [Any] = [23.20, 23, "Ferhat", false]

if let number = myArray[0] as? Double{
    print(number)
}

if let number = myArray[1] as? Int{
    print(number)
}
if let name = myArray[2] as? String{
    print(name)
}
if let davranıs = myArray[3] as? Bool{
    print(davranıs)
}
/*:
 Koleksiyonunuz için bir döngü oluşturun. Koleksiyonda bulunan her bir `Integer` değeri için `Integer` değerinin takip ettiği “Integer değişkeninin değeri: ” mesajını konsola yazdırın. Bu adımı `Double`, `String` ve `Bool` değerleri için tekrar edin.
 */
for val in myArray{
    if let integerNumber = val as? Int{
        print("Integer değişkeninin değeri:  \(integerNumber)")
    }
    if let doubleNumber = val as? Double{
        print("Double değişkeninin değeri: \(doubleNumber)")
    }
    if let name = val as? String{
        print("String değişkeninin değeri: \(name)")
    }
    if let boolean = val as? Bool{
        print("Boolean değişkeninin değeri: \(boolean)")
    }
}

/*:
 İçindeki değerlerin `Double`, `Integer`, `String` ve `Bool` türünde olduğu bir `[String: ]` sözlüğü oluşturun. Koleksiyondaki anahtar kelime ve değer ikililerini konsola yazdırın.
 */
var myDictioonary: [String: [Any]] = ["Informations": [23.20, 23, "Ferhat", false]]

print(myDictioonary)

if let valuesInDictionary = myDictioonary["Informations"]{
    print(valuesInDictionary)
}
// bir de aynı arrayin elamanlarını köşeli parantezler içinde değil de teker teker ekrana bastıralım dersek bakalım nasıl yazacaz
//for (_, valuesInDict) in myDictioonary{
//    if let willBePrint = valuesInDict{  // hmm bak bu kadar basit bir şekilde bastıramıyormuşuz demek yukarıdaki gibi her bir tip için ayrı ayrı if let yapısı yazmamız lazım.
//        print(willBePrint)
//    }
//}
/*:
 `Double` türünde ve `total` adında bir değişken oluşturun ve değişkenin değerini 0 olarak ayarlayın. Daha sonra ise sözlük içinde bir döngü yaratın ve `total` adlı değişkeninize sözlükteki tüm `Integer` ve `Double` değişkenlerinin değerlerini ekleyin. Her bir `String` değişkeni için `total`değişkenine 1 ekleyin. `total` değişkeninden değeri `true` olan her `Bool` türündeki değişken için 2, değeri `false` olan her `Bool` değişkeni için ise 3 çıkarın.

 */
var total: Double = 0


// var myArray: [Any] = [23.20, 23, "Ferhat", false] // buradan zaten 46.20 geliyor. string için +1 false için -3 derken 44.20 olur sonuç bakalım olacak mı.
for(_, arraysInDict) in myDictioonary{
   
    for valuesInDict in arraysInDict{
        
    if let integerNumber = valuesInDict as? Int{
        total += Double(integerNumber)
    }
    if let doubleNumber = valuesInDict as? Double{
        total += doubleNumber
    }
    if let text = valuesInDict as? String{ // şuradaki "text' i kulllanmıyosun bak" hatasını yok edemedim ya.
        total += 1
    }
    if let boolean = valuesInDict as? Bool{
        if boolean{
            total += 2
        }else{
            total -= 3
        }
    }
    }
}

print(total)
/*:
 `Double` türünde ve `total2` adında bir değişken oluşturun ve değişkenin değerini 0 olarak ayarlayın. Koleksiyonun içinde bir döngü oluşturup tüm `Integer` ve `Double` değişkenlerinin değerlerini `total2` değişkenine ekleyin. Döngüde karşılaştığınız her bir `String` değişkenini bir sayıya çevirmeye çalışın ve elde ettiğiniz değerleri de `total2` değişkenine ekleyin. Bu adımda `Bool` değişkenlerini görmezden gelebilirsiniz. Son olarak, `total2` değişkenini konsola yazdırın.

 */
// anladım hocam yani demek istiyorsun ki string ise bile sayı olarak girilmiş olabilir. ya da sayılar da zaten klavyeden girilince string olarak algılandığı için bir de içine ekstra bir if ile string mi yoksa sayı mı olup olmadığını kontrol et. peki

var total2: Double = 0

myDictioonary["Informations"]?.append(10)  // evet şimdi bu satırda türünü belirtmeden key:value çiftimizden any türden dataları array olarak barındıran value'ya son eleman olarak 10 sayısını ekledik. bakalım bunu string olarak mı ekliycek yoksa int mı?
print(myDictioonary)

for(_, arraysInDict) in myDictioonary{
   
    for valuesInDict in arraysInDict{
        
    if let integerNumber = valuesInDict as? Int{
        total2 += Double(integerNumber)
    }
    if let doubleNumber = valuesInDict as? Double{
        total2 += doubleNumber
    }
    if let text = valuesInDict as? String{
        if let textIsNumber = Double(text){
            total += textIsNumber
        }
    }

    }
}
print(total2)
//: sayfa 1 / 2  |  [Sonraki: Fitness Uygulaması: Aktivite Türleri](@next)
