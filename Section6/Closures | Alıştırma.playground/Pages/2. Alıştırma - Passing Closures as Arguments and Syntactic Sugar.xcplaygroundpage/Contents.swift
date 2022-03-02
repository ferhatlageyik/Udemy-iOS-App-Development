/*:
 ## Alıştırma - Passing Closures as Arguments and Syntactic Sugar

  `name1` ve `name2` adında `String` türünden iki tane değişkeni ve `Bool` türünde değer döndüren `forwards` adında bir fonksiyon tanımlayalım. Fonksiyon tanımında, değişkenlerin her birini yazdırın, ardından `name1` değerinin `name2` değerinden küçük olup olmadığını döndürün. Dizelerdeki alfabetik sırayı karşılaştırmak için `<` ve `>` gibi karşılaştırma operatörlerini kullanabilirsiniz.
 */
func forwards(name1: String, name2: String) ->Bool{
    print(name1 + " " + name2)
    return name1 < name2
}

/*:
 Arkadaşlarınızın ve ailenizin adlarını kullanarak bir `[String]` dizisi oluşturun. Değişken olarak koleksiyonun `sorted(by:)` fonksiyonunu çağırın. Sonucu `sortCollection1` adında bir değişkende saklayın ve bu değişkeni yazdırın. Bu, koleksiyonunuzu alfabetik olarak sıralamalıdır.
 */
let names: [String] = ["Kemal","Sedat","Melih","İntizar","Mehmet","Salih"]
let sortCollection1 = names.sorted(by: { return $0 < $1 })
print(sortCollection1)
/*:
 İlk sıralanmamış arkadaşlar ve aile adları koleksiyonunuzu kullanarak, koleksiyonun `sorted(:)` fonksiyonunu çağırın, ancak `forwards` fonksiyonu yerine kendi closure elemanınızı iletin. Closure elemanı, koleksiyonu `forwards` fonksiyonu ile aynı şekilde sıralamalıdır. Parametre adlarını, parametre türlerini ve closure elemanlarına `return` ifadesini eklediğinizden emin olun. Sonucu `sortCollection2` adlı bir değerde saklayın ve bu değeri yazdırın.
 */


/*:
 Önceki alıştırmaya benzer şekilde, koleksiyonun `` sıralama (:) '' işlevini çağırın, ancak gereksiz kapatma sözdizimini olabildiğince kaldırın. Sonucu "sortCollection3" de saklayın ve sonucu yazdırın.

 Similar to the previous exercise, call the collection's `sorted(by:)` function, but remove as much of the unnecessary closure syntax as you can. Store the result in `sortedCollection3`, then print the result.
 */


//: [Önceki](@previous)  |  sayfa 2 / 3  |  [Sonraki: Alıştırma - Koleksiyon Fonksiyonları](@next)
