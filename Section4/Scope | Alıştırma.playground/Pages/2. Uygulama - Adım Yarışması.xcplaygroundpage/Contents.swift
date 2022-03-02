/*:
 ## Uygulama - Adım Yarışması
  
 Aşağıdaki bir `Kullanici` struct'ı ve üç tane `Kullanici` nesnesi bulunmaktadır. Bunlar, aşağıdaki alıştırmalarda fitness uygulamanızdaki bir adım atma yarışmasını simüle etmek için kullanılacak.
 */
struct Kullanici {
    var isim: String
    var bugunkuAdim: Int
   
    init(isim: String, bugunkuAdim: Int){
        self.isim = isim
        self.bugunkuAdim = bugunkuAdim
    }
    init?(isim: String?, bugunkuAdim: Int?){
        guard let isim = isim, let bugunkuAdim = bugunkuAdim  else {return nil}
        self.isim = isim
        self.bugunkuAdim = bugunkuAdim
    }
}

let stepMaster = Kullanici(isim: "StepMaster", bugunkuAdim: 8394)
let activeSitter = Kullanici(isim: "ActiveSitter", bugunkuAdim: 9132)
let monsterWalker = Kullanici(isim: "MonsterWalker", bugunkuAdim: 7193)

let yarismacilar = [stepMaster, activeSitter, monsterWalker]
/*:
 Aşağıdaki fonksiyon bir `Kullanici` nesne dizisi kabul edip en çok atım atmış olan `Kullanici` nesnesini return etmektedir. Fonksiyonun gövdesinde, ilk olarak optional bir `Kullanici` değişkeni yaratıp, sonra dizinin içerisinde yer alan tüm kullanıcıların üzerinden geçmektedir. Döngünün her adımında, `birinciYarismaci` değişkenini unwrap ederek bir değere sahip olup olmadığını kontrol eder. Eğer `birinciYarismaci`'nın bir değeri yoksa, şimdiki kullanıcının en yüksek puana sahip olduğu varsayılıp bu kullanıcı `birinciYarismaci` değişkenine atanmaktadır. Eğer `birinciYarismaci`'nın bir değeri varsa, şimdiki kullanıcının `birinciYarismaci`'dan daha fazla adım atıp atmadığını kontrol eder.
 
 Bu noktada, amacımız puanı daha yüksek olan kullanıcıyı `birinciYarismaci` değişkenine atamaktır. Ancak kod bir compiler error'ı vermektedir, çünkü yanlış variable shadowing'den dolayı `birinciYarismaci` değişkeninin scope'u güncellenmesi için gereken scope'tan daha dardır. Aşağıdaki compiler error'ını düzeltin ve `kazananYarismaci(yarismacilar: )` fonksiyonunu `yarismacilar` dizisi ile çağırın. Return edilen `Kullanici` nesnesinin `isim` özelliğini konsola yazdırın. Eğer fonksiyonu doğru bir şekilde düzelttiyseniz, bu isim `activeSitter` olmalı.
 */
func kazananYarismaci(yarismacilar: [Kullanici]) -> Kullanici? {
    var birinciYarismaci: Kullanici?
    
    for yarismaci in yarismacilar {
        if let tempBirinciYarismaci = birinciYarismaci {
        
            if yarismaci.bugunkuAdim > tempBirinciYarismaci.bugunkuAdim {
                birinciYarismaci = yarismaci
            }
        } else {
            birinciYarismaci = yarismaci
        }
    }
    return birinciYarismaci
}
let winner = kazananYarismaci(yarismacilar: yarismacilar)
print(winner?.isim)
/*:
 Yukarıdaki `Kullanici` struct'ı için, initializer'ın parametrelini isimlendirirken variable shadowing kullanan bir memberwise initiailizer tanımlayın.
 */


/*:
 Şimdi `Kullanici` struct'ının içerisinde sırasıyla optional `String` ve optional `Int` tipinden `isim` ve `bugunkuAdim` isimli iki parametre kabul eden bir failable initializer tanımlayın. Bu initializer, iki parametreden herhangi biri `nil` ise `nil` return etmeli. Parametreleri unwrap ederken variable shadowing kullanın. 
 */

var lastUser = Kullanici(isim: "Ferhat", bugunkuAdim: nil )
print(lastUser?.isim)


  
/*:
 
 _Copyright © 2017 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Previous](@previous)  |  page 2 of 2
