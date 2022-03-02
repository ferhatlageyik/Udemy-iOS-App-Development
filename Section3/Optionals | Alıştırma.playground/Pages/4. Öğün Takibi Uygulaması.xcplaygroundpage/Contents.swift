import Foundation
/*:
 ## Öğün Takibi Uygulaması
 
 >Bu alıştırmalar, Swift konseptlerini bir egzersiz takibi uygulaması çerçevesinde pekiştirmenizi sağlıyor.

 Egzersiz takibi uygulamanıza öğün takip etme özelliği eklemek istediğinizi düşünün. Öğünler kaydedildikten sonra, kullanıcılarınız geri dönüp hangi öğünde ne yediklerini görebilmeli.
 
 "Kahvaltı", "Öğle yemeği" veya "Akşam yemeği" değerlerinden birini vereceğiniz, bir `String` parametresi alan bir fonksiyon yazın. Bu fonksiyon, o öğüne ait olan `Meal` nesnesini döndürmeli. Kullanıcı o öğünü daha kaydetmediyse, `nil` döndürmelidir.
 
 Aşağıda bir `Meal` objesi ve öğün kaydını temsilen bir `meals` "dictionary"si sizin için oluşturulmuş durumda. Oluşturduğunuz fonksiyonu birkaç kez çağırın ve dönen değeri konsola yazdırın.
 */
struct Meal {
    var food: [String]
    var calories: Int
}

var meals: [String: Meal] = ["Kahvaltı": Meal(food: ["Yumurta", "Meyve suyu", "Kepekli ekmek"], calories: 530)]

func whatDidIeat(whichMeal: String) ->[String]? {
    for (repast,obje) in meals{
        if whichMeal == repast{
            return obje.food
        }
    }
    return nil
}
// oha ne kod yazdım... ama oluşturduğm fonksiyonu birkaç kez çağırınca ne değişir doğrusu tahmin edemedim. ne değişebilir ki birkaç kez aynı değerle aynı fonksiyonu çağırınca??
whatDidIeat(whichMeal: "Kahvaltı")

let myFoods: [String]? = whatDidIeat(whichMeal: "Kahvaltı")
print(myFoods)

// bir de optinalsız bastıralım
if let myFoods2 = whatDidIeat(whichMeal: "Kahvaltı"){
print(myFoods2)
}


if let myFoods3 = whatDidIeat(whichMeal: "Akşam Yemeği"){  
print(myFoods3)
}

// bakalım fonksiyonumuzdan nil dönüyor mu?

let myFoods4: [String]? = whatDidIeat(whichMeal: "Akşam yemeği")
print(myFoods4)

// tamamdır nil'i de bastırdığımıza göre dğılabiliriz.
//: [Önceki](@previous)  |  sayfa 4 / 6  |  [Sonraki: Bilgisayar](@next)
