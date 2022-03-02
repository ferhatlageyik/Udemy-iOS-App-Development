/*:
 ## Alıştırma - Closure Oluşturma
 
 Parametresi ve dönüş değeri olmayan bir `blankClosure` sabitine atanmış bir closure oluşturun.
 */
let blankClosure = { () -> Void  in
    
}

/*:
 Parametresi olmayan `fourClosure` adında `Int` töründe bir sabite closure atayın. Closure elemanının gövdesi (body) daima 4 değerini döndürmelidir. Closure elemanını dört kez arayın.
 */
let fourClosure = { () -> Int in
    return 4
}

for i in 1...4{
    print(fourClosure())
}


/*:
 Dönüş değeri olmayan, `name` adında `String` türünden bir parametreyi kabul eden `greeting` adında bir sabite atanmış bir closure oluşturun. Closure gövdesi içinde, argümanı yazdırın. "Gary", "Jane", "Rick" ve "Beth" değerlerini kullanarak closure elemanını dört kez çağırın.
 */
let greeting = { (name: String) -> Void in
   print(name)
}

let names: [String] = ["Gary","Jane","Rick","Beth"]

for name in names {
    greeting(name)
}

//: sayfa 1 / 3  |  [Sonraki: Alıştırma - Passing Closures as Arguments and Syntactic Sugar](@next)
